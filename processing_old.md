---
title: Manual
shorttitle: Manual
layout: page
lang: en
identifier: processing_old
breadcrumbs: manual
---

# Processing and visualizing OBIS data using R

- [Installing R and RStudio](#installing)  
- [Getting data into R](#intor)  
- [Example: killer whale](#visualizing)  
    - [ggplot2](#ggplot)  
    - [leaflet](#leaflet)  
- [Example: quality flags](#qc)  
- [Example: cod](#cod)  
- [Example: country statistics](#country)  
    - [Getting the data from the database](#gettingdata)  
    - [Records per year and phylum](#yearphylum)  
    - [Some numbers](#numbers)  
    - [Custom taxonomic groups](#custom)  
    - [Rarefaction curves](#rarefaction)  
- [Example: OBIS summaries](#summaries)  
- [Example: North Sea Benthos Survey](#nsbs)  

<a class="anchor" name="installing"></a>

## Installing R and RStudio

See our [Introduction to R](intror).

<a class="anchor" name="intor"></a>

## Getting data into R

See [Getting data into R](intor).

<a class="anchor" name="visualizing"></a>

## Example: killer whale

The code for this demo is available [here](https://github.com/iobis/training/tree/master/demo/orca).

<a class="anchor" name="ggplot"></a>

### ggplot2

Let's use `ggplot2` to visualize the _Orcinus orca_ occurrences we retrieved from the database:

```R
require(mapdata)
require(ggplot2)

world <- map_data(map="world")

g <- ggplot(world, aes(long, lat)) +
  geom_polygon(aes(group=group), fill="gray90", color="gray90") +
  labs(x="", y="") + theme(panel.background=element_blank()) + coord_fixed(ratio=1)

g + geom_point(data=data, aes(x=longitude, y=latitude, colour=monthcollected)) +
  scale_colour_gradientn(colours=c("#7ED5C8", "#F2D391", "#EF6E4A"))
```

<img src="../orca.png" width="500"/>

<a class="anchor" name="leaflet"></a>

### leaflet

This example uses the [leaflet](https://rstudio.github.io/leaflet/) package to generate a web based map.

```R
column <- "monthcollected"
colors <- heat.colors(max(data[[column]], na.rm=TRUE) - min(data[[column]], na.rm=TRUE) + 1)[data[[column]] - min(data[[column]], na.rm=TRUE) + 1]
colors <- substr(colors, 1, 7)
colors[is.na(colors)] <- "#aaaaaa"

m <- leaflet()
m <- addProviderTiles(m, "CartoDB.Positron")
m <- addCircleMarkers(m, data=data.frame(lat=data$latitude, lng=data$longitude), radius=3, weight=0, fillColor=colors, fillOpacity=0.5)
m
```

<img src="../orca_leaflet.png" width="500"/>

<a class="anchor" name="qc"></a>

## Example: quality flags

In this example we'll reproduce one of the maps from [Fishing for data and sorting the catch: assessing the data quality, completeness and fitness for use of data in marine biogeographic databases](http://www.ncbi.nlm.nih.gov/pubmed/25632106) using R and Leaflet. The necessary data and code are available [here](https://github.com/iobis/training/tree/master/demo/verruca).

```R
require(leaflet)

data <- read.csv("verruca.csv")

qcflag <- function(qc, number) {
  mask <- 2^(number-1)
  return(sapply(qc, function(x) {
    return(sum(bitwAnd(x, mask) > 0))
  }))
}

data$qcnum <- qcflag(data$qc, c(24, 28))

colors <- c("red", "orange", "green")[data$qcnum + 1]

m <- leaflet()
m <- addProviderTiles(m, "CartoDB.Positron")
m <- addCircleMarkers(m, data=data.frame(lat=data$latitude, lng=data$longitude), radius=3, weight=0, fillColor=colors, fillOpacity=0.5)
m
```

<img src="../verruca.png" width="500"/>

<a class="anchor" name="cod"></a>

## Example: cod

The code and data for the cod example is available [here](https://github.com/iobis/training/tree/master/demo/cod).

### Atlantic cod distribution

```R
require(lubridate)
require(mapdata)
require(ggplot2)

atlantic <- read.csv(unz("atlantic.csv.zip", "atlantic.csv"), stringsAsFactors=FALSE)
pacific <- read.csv(unz("pacific.csv.zip", "pacific.csv"), stringsAsFactors=FALSE)

# extract month from date

atlantic$month <- month(ymd(atlantic$datecollected))
pacific$month <- month(ymd(pacific$datecollected))

# Atlantic cod distribution

world <- map_data(map="world")

ggplot() +
  geom_polygon(data=world, aes(x=long, y=lat, group=group), fill="gray90", color="gray90") +
  geom_point(data=atlantic[!is.na(atlantic$month),], aes(x=longitude, y=latitude, colour=month), alpha=0.2) +
  scale_colour_gradientn(colours=c(rainbow(4), rainbow(1))) +
  theme(panel.background=element_blank()) +
  coord_quickmap(xlim=c(-100, 60), ylim=c(30, 85))
```

<img src="../cod.png" width="500"/>

Continue [here](http://www.hafro.is/Bokasafn/Greinar/j_fish_biol_82-741.pdf) to read more about Atlantic cod distribution and migration.

### Atlantic and pacific cod depth distribution

```R
ggplot() + 
  geom_histogram(data=pacific, aes(x=depth, y=..count../sum(..count..), fill="p"), alpha=0.7, binwidth=10) +
  geom_histogram(data=atlantic, aes(x=depth, y=..count../sum(..count..), fill="a"), alpha=0.7, binwidth=10) +
  xlim(0, 600) +
  ylab("proportion") +
  scale_fill_manual(name="species", values=c("a"="#86BB1B", "p"="#DF036E"), labels=c("a"="Atlantic cod", "p"="Pacific cod"))
```

<img src="../cod_depth.png" width="500"/>

<a class="anchor" name="country"></a>

## Example: country statistics

The files for this demo are available [here](https://github.com/iobis/training/tree/master/demo/country). 

<a class="anchor" name="gettingdata"></a>

### Getting the data from the database

Use the query below to get the data for your country or EEZ of interest. This query return all records located within the selected EEZs, and adds the phylum, class, order, family, genus and species names. Alternatively, use the [CSV file I prepared for Belgium](https://github.com/iobis/training/blob/master/demo/country/belgium.csv).

```sql
with eezs as (
	select id, eez, country, sovereign
	from geo.eezs
	where country like '%Belgium%' -- also try eez or sovereign
)
select 
	tr30.tname as phylum,
	tr60.tname as class, 
	tr100.tname as order, 
	tr140.tname as family, 
	tr180.tname as genus, 
	tr220.tname as species, 
	p.id, 
	p.resource_id, 
	p.latitude, 
	p.longitude, 
	p.datecollected,
	extract(year from datecollected) as year
from portal.points_ex p
left join obis.tnames t on t.id = p.valid_id
inner join eezs on p.eez_id = eezs.id
inner join obis.flatclassification on flatclassification.id = t.id
left join obis.tnames tr30 on flatclassification.r30 = tr30.id
left join obis.tnames tr60 on flatclassification.r60 = tr60.id
left join obis.tnames tr100 on flatclassification.r100 = tr100.id
left join obis.tnames tr140 on flatclassification.r140 = tr140.id
left join obis.tnames tr180 on flatclassification.r180 = tr180.id
left join obis.tnames tr220 on flatclassification.r220 = tr220.id
where tr30.tname is not null
order by p.tname;
```

<a class="anchor" name="yearphylum"></a>

### Records per year and phylum

Here we create a histogram of the number of records per year, and we give all phyla a different color:

```R
require(ggplot2)
require(RColorBrewer)

data <- read.csv("belgium.csv", stringsAsFactors=FALSE)

palette <- colorRampPalette(brewer.pal(8, "Paired"))(length(unique(data$phylum)))

ggplot() +
  geom_histogram(data=data, aes(x=year, fill=phylum), binwidth=1) +
  scale_fill_manual(values=palette)
```

<img src="../country_phyla.png" width="500"/>

<a class="anchor" name="numbers"></a>

### Some numbers

We can also calculate some statistics using the data we downloaded:

```R
records <- nrow(data)
species <- length(unique(data$species))
phyla <- length(unique(data$phylum))
years <- length(unique(data$year))
datasets <- length(unique(data$resource_id))

cat("Number of records:", records)
cat("Number of species:", species)
cat("Number of phyla:", phyla)
cat("Number of years:", years)
cat("Number of datasets:", datasets)
```

```text
Number of records: 126466
Number of species: 2434
Number of phyla: 33
Number of years: 47
Number of datasets: 65
```

<a class="anchor" name="custom"></a>

### Custom taxonomic groups

This creates the same graph as above, but for custom taxonomic groups instead of phyla:

```R
groups <- c("Nematoda", "Bivalvia", "Gastropoda")

data$group <- "Other"
classification <- apply(data[,c("phylum", "class", "order", "family")], 1, paste, collapse=";")
matches <- sapply(groups, function(x) { grep(x, classification) })
for (g in groups) {
  data$group[matches[[g]]] <- g
}

palette <- brewer.pal(length(groups) + 1, "Paired")
ggplot() +
  geom_histogram(data=data, aes(x=year, fill=group), binwidth=1) +
  scale_fill_manual(values=palette)
```

<img src="../custom.png" width="500"/>

<a class="anchor" name="rarefaction"></a>

### Rarefaction curves

The [vegan](https://cran.r-project.org/web/packages/vegan/) package has a lot of functions for analyzing ecological communities, including the calculation of [diversity indices and rarefied species richness](http://cc.oulu.fi/~jarioksa/softhelp/vegan/html/diversity.html) and [species accumulation curves](http://cc.oulu.fi/~jarioksa/softhelp/vegan/html/specaccum.html).

```R
require(vegan)
require(dplyr)

data <- data %>% filter(!is.na(species) & !is.na(year))
currentyear <- as.numeric(format(Sys.Date(), "%Y"))
data$year2 <- factor(data$year, levels=seq(min(data$year), currentyear))
t <- xtabs(~ year2 + species, data=data)
acc <- specaccum(t)
plot(acc, xlab="years")
specpool(t)

accdf <- data.frame(richness=acc$richness, sd=acc$sd, years=acc$sites)

# repeat...

ggplot() + 
  geom_ribbon(data=accdf1, aes(x=years, ymin=richness-sd, ymax=richness+sd, fill="italy")) +
  geom_line(data=accdf1, aes(x=years, y=richness)) +
  geom_ribbon(data=accdf2, aes(x=years, ymin=richness-sd, ymax=richness+sd, fill="belgium")) +
  geom_line(data=accdf2, aes(x=years, y=richness)) +
  geom_ribbon(data=accdf3, aes(x=years, ymin=richness-sd, ymax=richness+sd, fill="iran")) +
  geom_line(data=accdf3, aes(x=years, y=richness)) +
  scale_fill_manual(name="EEZ", values=c("italy"="#BEC19D", "belgium"="#ECD286", "iran"="#94B8CD"), labels=c("italy"="Italy", "belgium"="Belgium", "iran"="Iran"))
```

<img src="../rarefaction.png" width="500"/>

<a class="anchor" name="summaries"></a>

## Example: OBIS summaries

In this example we'll create a map using the `OBIS:summaries` layer. This layer contains statistics per grid cell such as number of records and number of species, as well as some biodiversity indices. To download the shapefile for this layer, use this URL:

http://www.iobis.org/geoserver/OBIS/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=OBIS:summaries&viewparams=table:map1deg_with_geom&outputformat=shape-zip

This downloads the summaries layer with a 1 degree grid. Coarser or finer grids can be retrieved by changing the `table` view parameter. Shapefiles with a 1° grid and a 5° grid are available [here](https://github.com/iobis/training/tree/master/demo/summaries).

The code below shows how to visualize the Shannon index on a 5° grid. To visualize the ES50, change `shannon` to `es`.

```R
require(rgdal)
require(ggplot2)
require(mapdata)

shape <- readOGR("summaries_5", layer="summaries")
df <- fortify(shape, region="cscode")
data <- merge(df, shape@data, by.x="id", by.y="cscode")

world <- map_data(map="world")

ggplot() +
  geom_polygon(data=data, aes(x=long, y=lat, group=group, fill=shannon)) +
  scale_fill_gradientn(colours=c("#7ED5C8", "#F2D391", "#EF6E4A"), na.value="#ffffff") + 
  geom_polygon(data=world, aes(x=long, y=lat, group=group), fill="gray40", color="gray40") +
  labs(x="", y="") + 
  theme(panel.background=element_blank(), axis.text=element_blank(), axis.ticks=element_blank()) +
  coord_fixed()
```

<img src="../grid_es.png" width="500"/>

<img src="../grid_shannon.png" width="500"/>

<a class="anchor" name="nsbs"></a>

## Example: North Sea Benthos Survey

```R
require(vegan)

temp <- tempfile()
download.file("http://ipt.vliz.be/eurobis/archive.do?r=nsbs&v=1.1", temp)
data <- read.table(unz(temp, "occurrence.txt"), sep="\t", header=TRUE, stringsAsFactors=FALSE)
unlink(temp)

data <- data %>% filter(!is.na(specificEpithet) & specificEpithet != "")
t <- xtabs(individualCount ~ locality + scientificName, data=data)
stations <- data %>% group_by(locality) %>% summarize(n=n(), depth=mean(minimumDepthInMeters), lon=mean(decimalLongitude), lat=mean(decimalLatitude))
stations$es <- rarefy(round(t), 50)

ggplot() + geom_point(data=stations, aes(x=lon, y=lat, colour=es, size=n)) +
  scale_colour_gradientn(colours=c("#7ED5C8", "#F2D391", "#EF6E4A")) +
  theme(panel.background=element_blank()) +
  coord_fixed()
```

<img src="../nsbs.png" width="500"/>
