# Data Visualization and Analysis

#### Contents

- [QGIS: visualizing coral reefs and _Millepora_](#qgis)  
	- [Installation](#installation)  
	- [Data sources](#data)  
	- [Adding the base map](#basemap)  
	- [Adding the coral reef layer](#coral)  
	- [Adding the OBIS occurrences](#obis)  
- [obisindicators: calculating & visualizing spatial biodiversity](#obisindicators)

<a class="anchor" name="qgis"></a>

## QGIS: visualizing coral reefs and _Millepora_

In this demo I will show how to combine OBIS data with spatial data from other sources in the desktop GIS application [QGIS](http://www.qgis.org/). All required files, except the coral reef layer, can be found [here](https://github.com/iobis/training/tree/master/demo/qgis).

<a class="anchor" name="installation"></a>

### Installation

QGIS is available for download [https://www.qgis.org/en/site/forusers/download.html](here).

<a class="anchor" name="data"></a>

### Data sources

We'll use three data sources to generate our map:

- Any [CartoDB basemap](https://cartodb.com/basemaps/).
- OBIS occurrences of the genus _Millepora_. Download the dataset as CSV using the [OBIS mapper](http://iobis.org/mapper).
- The [Global Distribution of Coral Reefs](http://data.unep-wcmc.org/datasets/1) dataset compiled by the UNEP World Conservation Monitoring Centre (UNEP-WCMC). You will need to fill out a form before you can download the dataset.

<a class="anchor" name="basemap"></a>

### Adding the base map

We'll use a tile layer from CartoDB as our base map. To be able to do this, we need to install the TileLayer Plugin:

#### Plugin installation

<img src="../images/qgis_plugin.png" width="500"/>
<img src="../images/qgis_tilelayer.png" width="500"/>

#### Creating the layer definition

Create a file named `cartodb.tsv` (Tabbed Separated Values) containing this line:

```text
CartoDB	CartoDB	http://a.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png
``` 

#### Adding the layer

Now open the plugin, go to `Settings` and select the directory where you stored the layer definition file.

<img src="../images/qgis_add.png" width="500"/>

You should now be able to add the CartoDB base layer:

<img src="../images/qgis_layers.png" width="500"/>

<a class="anchor" name="coral"></a>

### Adding the coral reef layer

To add the coral reef shapefile, first extract the zip file you downloaded earlier (`WCMC-008-CoralReefs2010-ver1-3.zip`). Then go to `Layer > Add Layer > Add Vector Layer`, and select `WCMC-008-CoralReefs2010-ver1-3.shp`. Adjust the styling of the coral reef layer by clicking the colored square in the layers panel. Here I chose a bright red fill and no line:

<img src="../images/qgis_red.png" width="500"/>

<a class="anchor" name="obis"></a>

### Adding the OBIS occurrences

To add the _Millepora_ occurrences, go to `Layer > Add Layer > Add Delimited Text Layer`. Select the CSV file and click `OK`. The CRS selector window will now pop up. Make sure that `EPSG:4326` is selected, because we are adding points with coordinates in decimal degrees to a map that uses the Web Mercator projection (EPSG 3857).

To change the symbols, click the symbol next to the layer you just created, go to `Style`, select `Categorized`, select the column you wish to use for coloring the symbols (`tname` for example), and click `Classify`. Play around with the marker settings.

<img src="../images/qgis.png" width="500"/>

<a class="anchor" name="obisindicators"></a>

## obisindicators: calculating & visualizing spatial biodiversity

[obisindicators](https://marinebon.org/obisindicators/index.html) is an R library developed during the [2022 IOOS Code Sprint](https://ioos.github.io/ioos-code-sprint/). The purpose was to create an ES50 diversity index within hexagonal grids following what [Pieter Provoost developed](https://obis.org/indicators/). The package includes several examples, limited to 1M occurrences, that demonstrate uses of the package.

![screenshot](./images/all_data.png)
# <img src="../images/all_data.png" width="500"/>
