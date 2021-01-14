---
title: Manual
shorttitle: Manual
layout: page
lang: en
identifier: processing
breadcrumbs: manual
---

# Data quality control using R

- [Checking points on land](#onland)
- [Taxon matching](#taxonmatching)
- [Checking depth values](#depth)
- [Working with OBIS-ENV-DATA](#envdata)

<a name="onland" class="anchor"></a>

## Checking points on land

The [obistools](https://github.com/iobis/obistools) package has a `check_onland()` function to check if coordinate pairs are located on land. By default this function uses a web service, but it can optionally work offline (although this is less accurate).

First fetch some Madrepora occurrences using `robis`:

```R
library(robis)
mad <- occurrence("Madrepora")
leafletmap(mad)
```

Then run the `check_onland()` command. By default the function will return a data frame containing all records on land (another option is to return a data frame with errors): 

```R
library(obistools)
land <- check_onland(mad)
leafletmap(land)
```

In some cases it makes sense to apply a buffer when checking for records on land. In this case we add a 1000 m buffer zone:

```R
land_buffer <- check_onland(mad, buffer = 1000)
leafletmap(land_buffer)
```

As expected this returns less "wrong" records.

Now create a map showing all suspicious records, in orange by default but in red when they are suspicious even with the 1000 m buffer zone:

```R
library(ggplot2)
world <- map_data("world")

ggplot() +
 geom_polygon(data = world, aes(x = long, y = lat, group = group), fill = "#dddddd") +
 geom_point(data = land, aes(x = decimalLongitude, y = decimalLatitude), color = "#cc3300") +
 geom_point(data = land_buffer, aes(x = decimalLongitude, y = decimalLatitude), color = "#ff9900") + coord_fixed(1)
```

<img src="/manual/images/onland.png" class="img-responsive-50"/>

<a name="taxonmatching" class="anchor"></a>

## Taxon matching

The [obistools](https://github.com/iobis/obistools) package allows us to match taxa with the [World Register of Marine Species](http://www.marinespecies.org) directly from our R environment. To demonstrate this functionality, we are going to use the [Reef Life Survey](https://reeflifesurvey.com/) example dataset which is published on IPT [here](http://ipt.iobis.org/obis-env/resource?r=rls-subset).

First, make sure the finch package is installed and loaded:

```R
library(devtools)
install_github("ropensci/finch")
library(finch)
```

Then read the Darwin Core Archive:

```R
archive <- dwca_read("http://ipt.iobis.org/obis-env/archive.do?r=rls-subset", read = TRUE) 
occurrence <- archive$data$occurrence.txt
```

Next, we can start the taxon matching procedure by passing our scientific names to the `match_taxa()` function:

```R
library(obistools)
names <- match_taxa(occurrence$scientificName)
```

When the name matching has finished (this can take a while), a summary will be displayed indicating how many names were matches and how many need to be resolved manually:

```
291 names, 0 without matches, 8 with multiple matches
Proceed to resolve names (y/n/info)?
```

Type `info` to see which names need manual action, `y` to start manual resolution, or `n` to skip manual resolution. After selecting `y`, several options will be presented for each name. Pick a number or press enter to skip the names:

```
  AphiaID scientificname               authority     status match_type
1  346769       Apogonia Cressey & Cressey, 1990 unaccepted     near_1
2  125913         Apogon          Lacepède, 1801   accepted     near_2
Apogonid spp.
Multiple matches, pick a number or leave empty to skip:
```

After this procedure, you will end up with a data frame containing the matched name, the WoRMS LSID, and the type of match. Add the LSIDs to your source data as `scientificNameID`.

```R
occurrence$scientificNameID <- names$scientificNameID
```

<a name="depth" class="anchor"></a>

## Checking depth values

The obistools package has a `check_depth()` function to check if there are any potential problems with the values in the `minimumDepthInMeters` and `maximumDepthInMeters` fields. This function uses a webservice to fetch bathymetry information from various sources.

First download some occurrences from OBIS:

```R
abrseg <- robis::occurrence("Abra segmentum")
```

Then use `check_depth()` with a `depthmargin` of 10 meters, this will return all records where depth values are 10 meters or more below the bottom depth returned from the webservice:

```R
library(obistools)
problems <- check_depth(abrseg, depthmargin = 10)
```

To plot sample depth versus bottom depth, first use `lookup_xy()` to obtain bathymetry for our points:

```R
bathymetry <- lookup_xy(problems, shoredistance = FALSE, grids = TRUE, areas = FALSE)$bathymetry
plot(bathymetry, problems$maximumDepthInMeters)
abline(0, 1, lty = 2)
abline(10, 1, col = "red")

plot_map_leaflet(problems)
```

<img src="/manual/images/depth.png" class="img-responsive-50"/>

<img src="/manual/images/depth_2.png" class="img-responsive-50"/>

<a name="envdata" class="anchor"></a>

## Working with OBIS-ENV-DATA

The obistools package provides some functionality to make it easier to work with OBIS-ENV-DATA (i.e. Event Core + Occurrence Extension + ExtendedMeasurementOrFact Extension).

First load a subset of the [Reef Life Survey](https://reeflifesurvey.com/) from IPT:

```R
archive <- dwca_read("http://ipt.iobis.org/obis-env/archive.do?r=rls-subset", read = TRUE)

event <- archive$data$event.txt
occurrence <- archive$data$occurrence.txt
mof <- archive$data$extendedmeasurementorfact.txt
```

### Checking parentEventIDs in the Event Core

Use `check_eventids()` to check if all `parentEventID`s in the Event Core have a matching `eventID`. In the example below, first the original data is checked, then an error is introduced, and then the data is checked again:

```R
check_eventids(event)
event$parentEventID[event$eventID == "4000691_cryptic"] <- "dummy_1"
check_eventids(event)
```

### Checking core record identifiers in the extension file

Use `check_extension_eventids()` to check if identifiers in an extension file have matching `eventID`s in the Event Core file. Again, in the example first the correct data is checked and then an error is introduced. The function will return a table of errors (if there are any). The `field` parameter is the name of the identifier column in the extension file:

```R
check_extension_eventids(event, occurrence, field = "id")
occurrence$id[occurrence$occurrenceID == "48432"] <- "dummy_2"
check_extension_eventids(event, occurrence, field = "id")
```

### Flattening occurrences

Sometimes it's useful to have a flat occurrence table, i.e. a table of occurrences where all the information contained in the related events has been added. For example, all date and location information may be in the Event Core file and not in the Occurrence Extension, but for checking or analyzing your data you may want to have a table with both the date/location information and the scientific names. The `field` parameter is the column in the extension file which points to the core table:

```R
# first go back to the clean version of the data
event <- archive$data$event.txt
occurrence <- archive$data$occurrence.txt
mof <- archive$data$extendedmeasurementorfact.txt

flat <- flatten_occurrence(event, occurrence, field = "id")
names(occurrence)
names(flat)
```

This shows the column names before and after flattening:

```R
> names(occurrence)
 [1] "id" "basisOfRecord" "occurrenceID" 
 [4] "occurrenceStatus" "eventID" "identifiedBy" 
 [7] "scientificNameID" "scientificName" "phylum" 
[10] "class" "family" 
> names(flat)
 [1] "id" "basisOfRecord" 
 [3] "occurrenceID" "occurrenceStatus" 
 [5] "eventID" "identifiedBy" 
 [7] "scientificNameID" "scientificName" 
 [9] "phylum" "class" 
[11] "family" "type" 
[13] "eventDate" "locationID" 
[15] "higherGeography" "country" 
[17] "stateProvince" "locality" 
[19] "minimumDepthInMeters" "maximumDepthInMeters"
[21] "decimalLatitude" "decimalLongitude"
```
 
### Visualizing dataset structure

The `treeStucture()` function in the obistools package generates a simplified event/occurrence tree showing the relationships between the different types (based on `type` and `measurementType`) of events and occurrences. Each node in the simplified tree is given a name based on the `eventID` or `occurrenceID` of one of the events of occurrences of that node type. 

Note that an `eventID` column is required in the measurements table. In your dataset the extension column pointing to the event records may have another name, so make sure to add `eventID`.

```R
archive <- finch::dwca_read("http://ipt.iobis.org/obis-env/archive.do?r=nsbs&v=1.6", read = TRUE)
event <- archive$data$event.txt
occurrence <- archive$data$occurrence.txt
emof <- archive$data$extendedmeasurementorfact.txt
emof$eventID <- emof$id # adding eventID

tree <- treeStructure(event, occurrence, emof)
exportTree(tree, "tree.html")
```

<img src="/manual/images/treestructure.png" class="img-responsive-50"/>
