## Making maps of species in OBIS

### Mapping with the robis R package

If you’d like to visualize occurrence data using R, you can do this using the `robis` package.

After loading the installed package, let’s first fetch some occurrence data using the `occurrence` function. We will look at data for seahorses in the Genus Hippocampus.

```R
library(robis)
hippoc <- occurrence("Hippocampus")
```

We have two options for mapping:

```R
map_ggplot(hippoc)
map_leaflet(hippoc)
```

`map_ggplot` will produce a static map:

Whereas `map_leaflet` will produce an interactive leaflet map. For documentation on how to add to or change these maps (e.g.,change base map, add polygons or points, etc.), see the [Leaflet for R](https://rstudio.github.io/leaflet/).
