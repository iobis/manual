---
title: Manual
shorttitle: Manual
layout: page
lang: en
identifier: onlinegis
breadcrumbs: manual
---

# Data visualization using online GIS tools

- [CartoDB](#cartodb)  
	- [Example: displaying occurrences](#occurrences)  
	- [Example: exploring quality flags](#qc)  
	- [Example: displaying OBIS summaries](#summaries)  

<a class="anchor" name="cartodb"></a>

## CartoDB

<a class="anchor" name="occurrences"></a>

### Example: displaying occurrences

In this section I will show how to visualize occurrence data downloaded from the OBIS mapper. In this case, I used all occurrences of _Pterois volitans_. This dataset is available at [https://github.com/iobis/training/tree/master/manual/cartodb](https://github.com/iobis/training/tree/master/manual/cartodb).

#### Adding the data

In CartoDB, go to `Your datasets > New dataset`, drag or upload the CSV file, and click `Connect dataset`. The go to `Your maps > New map`, select the dataset you just uploaded, and click `Create map`. 

#### Getting the occurrence year

The data downloaded from the mapper contains a date, but CartoDB doesn't allow using date fields for visualization. However, we can extract the year from the date using SQL:

<img src="../images/cartodb_sql.png" width="500"/>

#### Visualizing the occurrence year

To color the occurrences according to year, use the choropleth visualization and select the year column.

<img src="../images/cartodb_choropleth.png" width="500"/>

The result:

<img src="../images/cartodb_pterois.png" width="500"/>

<a class="anchor" name="qc"></a>

### Example: exploring quality flags

In this section I will explain how to visualize the experimental data quality flags in OBIS. For more information on these quality flags, see [Fishing for data and sorting the catch: assessing the data quality, completeness and fitness for use of data in marine biogeographic databases](http://www.ncbi.nlm.nih.gov/pubmed/25632106) by Leen Vandepitte et al. An explanation on how to do this in R can be found [here](../processing#qc).

The code and data for this section are available at [https://github.com/iobis/training/tree/master/manual/qc](https://github.com/iobis/training/tree/master/manual/qc).

#### Extract data from OBIS

The quality flags are not available in the standard data downloads from the OBIS portal. To get the flags, we will access the database directly.

<img src="../images/pgadmin_qc.png" width="500"/>

#### Convert the qc field to quality flags

All quality flags are contained in the `qc` field. We can use SQL to extract the individual flags.

<img src="../images/qc_sql.png" width="500"/>

#### Visualizing the flags

Use the category visualization and select the quality flag of interest.

<img src="../images/qc_colors.png" width="500"/>

The result should look like this:

<img src="../images/qc_map.png" width="500"/>

<a class="anchor" name="summaries"></a>

### Example: displaying OBIS summaries

In this example we'll create a map using the `OBIS:summaries` layer. This layer contains statistics per grid cell such as number of records and number of species, as well as some biodiversity indices. To download the shapefile for this layer, use this URL:

[http://www.iobis.org/geoserver/OBIS/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=OBIS:summaries&viewparams=table:map1deg_with_geom&outputformat=shape-zip](http://www.iobis.org/geoserver/OBIS/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=OBIS:summaries&viewparams=table:map1deg_with_geom&outputformat=shape-zip)

This downloads the summaries layer with a 1 degree grid. Coarser or finer grids can be retrieved by changing the `table` view parameter. The shapefile is also available [here](https://github.com/iobis/training/tree/master/manual/summaries).

#### Displaying different summaries

To display the number of records per grid cell, go to the `Map layer wizard`, select `Choropleth` and change `Column` to `n`. You may also want to change the color ramp and the color ramp transparency, and remove the polygon stroke.

<img src="../images/cartodb_summaries.png" width="500"/>

Other interesting summaries are `s` (number of species), `simpson` (Simpson diversity index), `shannon`, (Shannon diversity index) and `es` (ES50).
