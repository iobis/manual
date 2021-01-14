---
title: Data access using the robis R package
shorttitle: Data access using the robis R package
layout: page
lang: en
identifier: accessr
breadcrumbs: manual
---

#### Contents

- [Installing the robis package](#installing)
- [Fetching occurrences](#occurrences)
- [Exploring occurrence data](#exploring)
- [Processing occurrence data](#processing)

<a name="installing" class="anchor"></a>

## Installing the robis package

To be able to install the [robis R package](https://github.com/iobis/robis) from the source control system GitHub, first install the [devtools package](https://github.com/hadley/devtools). This package is available from [CRAN](https://github.com/hadley/devtools), the online R package repository.

```R
install.packages("devtools")
```

Once devtools is installed, the install_github() function can be used to install robis:

```R
library(devtools)
install_github("iobis/robis")
library(robis)
```

After loading the robis package, take a look at some of the documentation:

```R
help(package = "robis")
?occurrence
```

<a name="occurrences" class="anchor"></a>

## Fetching occurrences

### Fetching all occurrences for a taxon

To fetch all occurrences for a taxon, pass a taxon name or vector of taxon names to the `occurrence()` function:

```R
ptevol <- occurrence("Pterois volitans")
View(ptevol)
```

### Applying a polygon filter

The `occurrence()` function accepts a `geometry` parameter, which can be used to filter occurrences geographically. This argument must be formatted as [WKT](https://en.wikipedia.org/wiki/Well-known_text). OBIS has a [map tool](https://obis.org/maptool) which makes it easy to create WKT strings by clicking a map.

Let's see if we have any data for the Perhentian and Redang Islands:

```R
islands <- occurrence(geometry = "POLYGON ((102.68921 6.05862, 102.57111 5.95346, 103.07785 5.49980, 103.25226 5.62555, 103.07648 5.87970, 102.68921 6.05862))")
View(islands)
```

The `leafletmap()` function allows us to create a simple interactive map:

```R
leafletmap(islands)
```

<img src="/manual/images/islands.png" class="img-responsive-50"/>

### Applying a depth filter

Occurrences between certain depth levels can be selected by using the `startdepth` and `enddepth` parameters. For example, to find shallow records of the [Orange roughy](http://iobis.org/explore/#/taxon/455089) (a deep sea fish which is being [commercially exploited](http://britishseafishing.co.uk/orange-roughy/)), do:

```R
roughy_shallow <- occurrence("Hoplostethus atlanticus", enddepth = 400)
leafletmap(roughy_shallow)
```

### Applying a date filter

To filter occurrences by date, use the `startdate` and `enddate` arguments. Make sure to use the correct date format:

```R
lionfish_native <- occurrence("Pterois volitans", enddate = "1980-01-01")
leafletmap(lionfish_native)
```

### Fetching occurrences by dataset

Use the `resourceid` argument to fetch an entire dataset:

```R
crete <- occurrence(resourceid = 3185)
table(crete$order)
```

<a name="exploring" class="anchor"></a>

## Exploring occurrence data

### A quick look at your dataset

The first thing you want to do when exploring a dataset is checking which columns you have:

```R
names(islands)
```

Next, use `table()` to create contingency tables to find out which values are present in some columns of interest:

```
table(islands$phylum)
table(islands$family, islands$phylum)
```

### Visualizing occurrences over time

It's always interesting to know how dataset records are distributed over time. In order to be able to visualize this, we need a column with the year when occurrences were recorded. Occurrences downloaded from the mapper or obtained using robis have a `yearcollected` column, but if your data does not include a year column, you may need to parse the `eventDate` and extract the year from it. `eventDate`s can be parsed to dates using `as.Date()`, and the year can be extracted with `format()`:

```R
islands$year <- as.numeric(format(as.Date(islands$eventDate), "%Y"))
table(islands$year)
```

The ggplot2 package can be used to create nice visualizations. We'll go into ggplot2 in later chapters, for now just install the package and run the code below to produce a bar plot showing the distribution of occurrences over time:

```R
install.packages("ggplot2")
library(ggplot2)

ggplot() +
 geom_histogram(data = islands, aes(x = year, fill = phylum), binwidth = 5) +
 scale_fill_brewer(palette = "Paired")
```

<img src="/manual/images/islands_histo.png" class="img-responsive-50"/>

<a name="processing" class="anchor"></a>

## Processing occurrence data

We will use the [dplyr](http://dplyr.tidyverse.org/) package to further manipulate the occurrence data retrieved from OBIS. Install the package from CRAN:

```R
install.packages("dplyr")
library(dplyr)
```

Now fetch some trumpet worm data to work with:

```R
library(robis)
lag <- occurrence("Lagis")
leafletmap(lag)
table(lag$species)
```

### Filtering

The `filter()` function can be used to filter occurrences based on one or more properties. For example, to only keep occurrences of Lagis australis, do:

```R
lagaus <- lag %>% filter(species == "Lagis australis")
leafletmap(lagaus)
```

Notice the pipe operator `%>%`. This operator allows us to link different operations together, where the results of one function are passed on to the next.

Here is another example where only occurrences belonging to the BEWREMABI ship wreck datasets are selected:

```R
bew <- lag %>% filter(grepl("BEWREMABI", datasetName))
leafletmap(bew)
```

### Selecting columns

The `select()` function is used to select or deselect columns. To select just the `decimalLongitude` and `decimalLatitude` fields for example, do:

```R
lagaus %>% select(decimalLongitude, decimalLatitude)
```

From this results, distinct coordinates can be obtained using the `distinct()` function:

```R
lagaus %>% select(decimalLongitude, decimalLatitude) %>% distinct()
```

This can be simplified to:

```R
lagaus %>% distinct(decimalLongitude, decimalLatitude)
```

In the following example the `decimalLongitude` and `decimalLatitude` columns are selected as well, but by checking column names for "decimal":

```R
lagaus %>% select(starts_with("decimal"))
```

In order to remove columns, add a minus sign before the column name.

### Summarizing

To aggregate data and create summary statistics, we can use the `group_by()` and `summarize()` functions. This example groups the occurrences by species, and then counts the records per group and calculates min, max and median longitude and latitude:

```R
lag %>%
  group_by(species) %>%
  summarize(
    records = n(),
    medlon = round(median(decimalLongitude)),
    medlat = round(median(decimalLatitude)),
    minlon = round(min(decimalLongitude)),
    maxlon = round(max(decimalLongitude)),
    minlat = round(min(decimalLatitude)),
    maxlat = round(max(decimalLatitude))
  )
```

```R
            species records medlon medlat minlon maxlon minlat maxlat
              <chr>   <int>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
1 Lagis abranchiata       8     76     10     74     76     10     16
2   Lagis australis     115    173    -37    170    177    -46    -35
3       Lagis bocki      74    126     37    125    142     33     39
4      Lagis koreni   21610     10     56    -20     39    -29     81
5              <NA>      24      2     53     -2    143     39     56
```

### Sorting

To sort data, use `arrange()`. Column names can be wrapped in `desc()` to sort in descending order. This first shows the earliest and then the last few records of the Lagis dataset:

```R
head(lag %>% arrange(eventDate)) %>% select(eventDate, decimalLongitude, decimalLatitude, datasetName)
head(lag %>% arrange(desc(eventDate))) %>% select(eventDate, decimalLongitude, decimalLatitude, datasetName)
```

### Mutating

`mutate()` is used to add extra columns. So in order to add a year column based on the `eventDate`, do:

```R
lag_withyear <-lag %>% mutate(year = format(as.Date(eventDate), "%Y"))
```