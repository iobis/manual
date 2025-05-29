# Dataset Examples: ENV-DATA

## Contents {.unlisted .unnumbered}

- [Fish abundance & distribution](#fish-abundance-and-distribution)
- [Hard coral cover & composition](#hard-coral-cover-and-composition)
- [Invertebrates abundance & distribution](#invertebrates-abundance-and-distribution)
- [Macroalgae canopy cover & composition](#macroalgae-canopy-cover-and-composition)
- [Mangroves cover & composition](#mangroves-cover-and-composition)
- [Marine birds abundance & distribution](#marine-birds-abundance-and-distribution)
- [Marine mammals abundance & distribution](#marine-mammals-abundance-and-distribution)
- [Marine turtles abundance & distribution](#marine-turtles-abundance-and-distribution)
  - [Survey & sighting data](#survey-and-sighting-data)
- [Microbes biomass & diversity](#microbes-biomass-and-diversity)
- [Phytoplankton biomass & diversity](#phytoplankton-biomass-and-diversity)
- [Seagrass cover & composition](#seagrass-cover-and-composition)
- [Zooplankton biomass & diversity](#zooplankton-biomass-and-diversity)

### Special data types {.unlisted .unnumbered}

- [DNA derived data](dna_data.html)
  - [eDNA data from Monterey Bay, California](dna_data.html#edna-data-from-monterey-bay-california)
  - [16S rRNA gene metabarcoding data of Pico- to Mesoplankton](dna_data#s-rrna-gene-metabarcoding-data-of-pico--to-mesoplankton)
- [Acoustic, imaging, or other multimedia data](other_data_types.html#multimedia-data)
- [Tracking data](other_data_types.html#tracking-data.html)
- [Habitat](other_data_types.html#habitat-data)

#### Fish abundance and distribution {.unlisted .unnumbered}

(example coming soon)

#### Hard coral cover and composition {.unlisted .unnumbered}

(example coming soon)

#### Invertebrates abundance and distribution {.unlisted .unnumbered}

This example is based on a benthic invertebrate dataset that used photoplots to monitor percent cover of barnacles, mussels, and rockweed titled ["MARINe/PISCO: Intertidal: MARINe Coastal Biodiversity Surveys: Point Contact Surveys Summarized"](https://obis.org/dataset/bb638343-bbc9-464d-88d8-18d9ba29ecdd).

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://ipt-obis.gbif.us/archive.do?r=marine_cbs_point_contact_surveys&v=1.3",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://ipt-obis.gbif.us/archive.do?r=marine_cbs_point_contact_surveys&v=1.3)")
}
```

**Event core:**

| eventID | samplingProtocol | eventDate | countryCode | stateProvince | county | locality | minimumDepthInMeters | maximumDepthInMeters | decimalLatitude | decimalLongitude | geodeticDatum | coordinateUncertaintyInMeters |
|:------------------|:---------------------|:-------------------|:-----------|:--------------|:-----------|:---------------|:-------------------|:--------------|:-------------|:--------------|:-------------------|:--------------|
| 8_2001-06-20_2001-06-26 | cbs point contact | 2001-06-20/2001-06-26 | US | Oregon | Coos | Cape Arago | 0 | 0 | 43.30894089 | -124.40077 | WGS84 | 350 |
| 1001_2003-02-12_2003-02-12 | cbs point contact | 2003-02-12/2003-02-12 | MX | Baja California |  | La Bufadora | 0 | 0 | 31.72407913 | -116.71423 | WGS84 | 350 |
| 3004_2003-08-13_2003-08-13 | cbs point contact | 2003-08-13/2003-08-13 | CA | British Columbia |  | Palmerston | 0 | 0 | 50.60115051 | -128.27106 | WGS84 | 350 |
| 3003_2003-08-25_2003-08-25 | cbs point contact | 2003-08-25/2003-08-25 | US | Alaska | Sitka | Port Mary | 0 | 0 | 57.15422821 | -135.75452 | WGS84 | 350 |

**Occurrence extension:**

| datasetName | eventID | basisOfRecord | occurrenceID | organismQuantity | organismQuantityType | occurrenceStatus | scientificNameID | scientificName | kingdom | taxonRank |
|:------------------|:---------------------|:-------------------|:-----------|:--------------|:-----------|:---------------|:-------------------|:--------------|:-------------|:--------------|
| MARINe CBS - percent cover from point contact surveys | 8_2001-06-20_2001-06-26 | HumanObservation | 8_2001-06-20_2001-06-26_1 | 0 | Percent cover | absent | urn:lsid:marinespecies.org:taxname:1358362 | Amphisbetia greenei | Animalia | Species |
| MARINe CBS - percent cover from point contact surveys | 8_2001-06-20_2001-06-26 | HumanObservation | 8_2001-06-20_2001-06-26_4 | 0.077220077 | Percent cover | present | urn:lsid:marinespecies.org:taxname:456582 | Acmaea mitra | Animalia | Species |
| MARINe CBS - percent cover from point contact surveys | 1001_2003-02-12_2003-02-12 | HumanObservation | 1001_2003-02-12_2003-02-12_2 | 0 | Percent cover | absent | urn:lsid:marinespecies.org:taxname:148 | Muricidae | Animalia | Family |
| MARINe CBS - percent cover from point contact surveys | 1001_2003-02-12_2003-02-12 | HumanObservation | 1001_2003-02-12_2003-02-12_21 | 1.599247413 | Percent cover | present | urn:lsid:marinespecies.org:taxname:240753 | Anthopleura sola | Animalia | Species |
| MARINe CBS - percent cover from point contact surveys | 3004_2003-08-13_2003-08-13 | HumanObservation | 3004_2003-08-13_2003-08-13_1 | 0 | Percent cover | absent | urn:lsid:marinespecies.org:taxname:1358362 | Amphisbetia greenei | Animalia | Species |
| MARINe CBS - percent cover from point contact surveys | 3004_2003-08-13_2003-08-13 | HumanObservation | 3004_2003-08-13_2003-08-13_5 | 2.428057554 | Percent cover | present | urn:lsid:marinespecies.org:taxname:143687 | Cladophoraceae | Plantae | Family |
| MARINe CBS - percent cover from point contact surveys | 3003_2003-08-25_2003-08-25 | HumanObservation | 3003_2003-08-25_2003-08-25_2 | 0 | Percent cover | absent | urn:lsid:marinespecies.org:taxname:148 | Muricidae | Animalia | Family |
| MARINe CBS - percent cover from point contact surveys | 3003_2003-08-25_2003-08-25 | HumanObservation | 3003_2003-08-25_2003-08-25_10 | 6.273062731 | Percent cover | present | urn:lsid:marinespecies.org:taxname:371791 | Alaria marginata | Chromista | Species |

**extendedMeasurementOrFact (eMoF) extension:**

Finally, we create the eMoF table. Although the percent cover was recorded in the Occurrence extension, it is good practice to also record it in the eMoF so that controlled vocabulary can be included in the alongside the measurements. In the table below, the percent cover for each occurrence is included.

| occurrenceID | measurementType | measurementTypeID | measurementValue | measurementUnit | measurementUnitID |
|:------------------|:---------------------|:-------------------|:-----------|:--------------|:-----------|
| 8_2001-06-20_2001-06-26_1 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 0 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 8_2001-06-20_2001-06-26_4 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 0.077220077 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 1001_2003-02-12_2003-02-12_2 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 0 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 1001_2003-02-12_2003-02-12_21 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 1.599247413 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 3004_2003-08-13_2003-08-13_1 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 0 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 3004_2003-08-13_2003-08-13_5 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 2.428057554  | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 3003_2003-08-25_2003-08-25_2 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 0 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |
| 3003_2003-08-25_2003-08-25_10 | Coverage (in assayed sample) of biological entity specified elsewhere of the bed | http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/ | 6.273062731 | percent | http://vocab.nerc.ac.uk/collection/P06/current/UPCT/ |

#### Macroalgae canopy cover and composition {.unlisted .unnumbered}

In this section we will encode a fictional macroalgal survey dataset (Figure 9.1) into Darwin Core using the ENV-DATA approach, i.e. using an Event core with an Occurrence extension and an extendedMeasurementOrFact extension.

```{r fig-macroal, fig.cap = "A fictional macroalgae survey with a single site, multiple zones, quadrats, and different types of transects.", echo=FALSE, out.width = "95%"}
library(webshot)
knitr::include_graphics("images/dwca_macroalgae_survey.png")
```

**Event core:**

First we can create the Event core table by extracting all events in a broad sense and populating attributes such as time, location, and depth at the appropriate level. The events at the different levels are linked together using `eventID` and `parentEventID`. As the survey sites has a fixed location we can populate `decimalLongitude` and `decimalLatitude` at the top level event. The zones have different depths, so `minimumDepthInMeters` and `maximumDepthInMeters` are populated at the zone level. Finally, as not all sampling was done on the same day, `eventDate` is populated at the quadrat and transect level.

| eventID | parentEventID | eventDate | decimalLongitude | decimalLatitude | minimumDepthInMeters | maximumDepthInMeters |
|: --- |: --- |: --- |: --- |: --- |: --- |: --- |
| site_1 | | | 54.7943 | 16.9425 | | |
| zone_1 | site_1 | | | | 0 | 0 |
| zone_2 | site_1 | | | | 0 | 5 |
| zone_3 | site_1 | | | | 5 | 10 |
| **quadrat_1** | zone_1 | 2019-01-02 | | | | |
| transect_1 | zone_2 | 2019-01-03 | | | | |
| transect_2 | zone_3 | 2019-01-04 | | | | |

**Occurrence extension:**

Next we can construct the Occurrence extension table. This table has the scientific names and links to the World Register of Marine Species in `scientificNameID`. The first column of the table references the events in the core table (see `quadrat_1` for example in bold).

| eventID | occurrenceID | scientificName | scientificNameID |
| :--- | :--- | :--- | :--- |
| **quadrat_1** | *occ_1* | Ulva rigida | [urn:lsid:marinespecies.org:taxname:145990](urn:lsid:marinespecies.org:taxname:145990) |
| **quadrat_1** | ***occ_2*** | Ulva lactuca | [urn:lsid:marinespecies.org:taxname:145984](urn:lsid:marinespecies.org:taxname:145984) |
| transect_1 | occ_3 | Plantae | [urn:lsid:marinespecies.org:taxname:3](urn:lsid:marinespecies.org:taxname:3) |
| transect_1 | occ_4 | Plantae | [urn:lsid:marinespecies.org:taxname:3](urn:lsid:marinespecies.org:taxname:3) |
| transect_2 | occ_5 | Gracilaria | [urn:lsid:marinespecies.org:taxname:144188](urn:lsid:marinespecies.org:taxname:144188) |
| transect_2 | occ_6 | Laurencia | [urn:lsid:marinespecies.org:taxname:143914](urn:lsid:marinespecies.org:taxname:143914) |

**extendedMeasurementOrFact (eMoF) extension:**

And finally there is the extendedMeasurementOrFact extension table, which has attributes of the zones (shore height), the quadrats (surface area), the transects (surface area and length), and the occurrences (percentage cover and functional group). Attributes of occurrences point to the Occurrence extension table using the `occurrenceID` column (see `occ_1` and `occ_2` in italic and bold-italic). Note that besides NERC vocabulary terms we are also referencing the CATAMI vocabulary for macroalgal functional groups. While best practice is to only populate identifier fields with machine-interoperable links, CATAMI does not currently provide URIs for their codes.

| eventID | occurrenceID | measurementType | measurementTypeID | measurementValue | measurementValueID | measurementUnit | measurementUnitID |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| zone_1 | | shore height | ? | high | ? | | |
| **quadrat_1** | | surface area | <http://vocab.nerc.ac.uk/collection/P01/current/AREABEDS> | 0.25 | | m2 | <http://vocab.nerc.ac.uk/collection/P06/current/UMSQ/> |
| **quadrat_1** | *occ_1* | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 24 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |
| **quadrat_1** | ***occ_2*** | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 56 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |
| transect_1 | | surface area | <http://vocab.nerc.ac.uk/collection/P01/current/AREABEDS> | 60 | | m2 | <http://vocab.nerc.ac.uk/collection/P06/current/UMSQ/> |
| transect_1 | | length | <http://vocab.nerc.ac.uk/collection/P01/current/LENTRACK> | 30 | | m | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA/> |
| transect_1 | occ_3 | functional group | ? | sheet-like red  | CATAMI:80300925 |||
| transect_1 | occ_4 | functional group | ? | filamentous brown | CATAMI:80300931 |||
| transect_1 | occ_3 | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 8 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |
| transect_1 | occ_4 | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 24 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |
| transect_2 | occ_5 | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 4 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |
| transect_2 | occ_6 | cover | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/> | 16 || percent | <http://vocab.nerc.ac.uk/collection/P06/current/UPCT> |

#### Mangroves cover and composition {.unlisted .unnumbered}

(example coming soon)

#### Marine birds abundance and distribution {.unlisted .unnumbered}

The example for ENV-DATA collected with marine bird sightings/occurrences is based on the dataset ["RV Investigator Voyage IN2017_V02 Seabird Observations, Australia (2017)"](https://www.marine.csiro.au/ipt/resource?r=in2017_v02_wov). In this dataset, seabird sightings were recorded continuously during daylight hours during a voyage to recover and redeploy moorings at the SOTS site, southwest of Tasmania, Australia, in March 2017. Observations were made from c.30 minutes before sunrise to c.30 minutes after sunset, extending to 300m in the forward quadrant with the best viewing conditions. There were 1200 observations from 38 species of birds along with 3 cetacean species and one seal. This example will focus on the ENV-DATA associated with the bird sightings. The most frequently sighted bird species were *Puﬃnus tenuirostris* (Short-tailed Shearwater) and *Pachyptila turtur* (Fairy Prion).

For this dataset, human observation recorded individual bird sightings (thus, each specimen is a single occurrence). The dataset contains abiotic measurements (ENV-DATA) which are related to each individual sighting, instead of an entire sample. Therefore, we can create an Occurrence core with an eMoF extension that contain the abiotic environmental measurements or facts.

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://www.marine.csiro.au/ipt/archive.do?r=in2017_v02_wov&v=1.15",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://www.marine.csiro.au/ipt/archive.do?r=in2017_v02_wov&v=1.15)")
}
```

**Occurrence core:**

The Occurrence core is populated with the occurrence records of seabirds sighted during the RV voyages. Occurrence details and scientific names are provided here. All birds were observed above sea level, thus all `minimumDepthInMeters` and `maximumDepthInMeters` values equal zero. If the distance above the sea level was provided, we could map that information to `minimumDistanceAboveSurfaceInMeters` and `maximumDistanceAboveSurfaceInMeters`.

| occurrenceID | eventDate | institutionCode | collectionCode |  basisOfRecord | recordedBy  | organismQuantity | organismQuantityType | occurrenceStatus | decimalLatitude | decimalLongitude | coordinateUncertaintyInMeters | coordinatePrecision | footprintWKT |scientificNameID | scientificName | scientificNameAuthorship | vernacularName      |
|:------------------|:---------------------|:-------------------|:-----------|:--------------|:-----------|:---------------|:-------------------|:--------------|:-------------|:--------------|:-------------------|:--------------|:---------------|:----------------|:---------|:-----------|:------------|
| in2017_v02_00998 | 2017-03-17 01:07:00 | Australasian Seabird Group, BirdLife Australia | in2017_v02_wov | HumanObservation | EJW+CRC+TAH | 2  | individuals  | present  | -43.40741       | 147.45576        | 200                           | 0.0018              | POINT (147.45576 -43.40741) |  urn:lsid:marinespecies.org:taxname:343991 | Morus serrator                  | (Gray,1843)              | Australasian Gannet |
| in2017_v02_01380 | 2017-03-19 22:26:00 | Australasian Seabird Group, BirdLife Australia | in2017_v02_wov | HumanObservation | EJW+CRC+TAH | 1  | individuals  | present  | -45.98644       | 142.1445         | 200                           | 0.0018              | POINT (142.14450 -45.98644) | urn:lsid:marinespecies.org:taxname:212648 | Pachyptila turtur               | (Kuhl,1820)              | Fairy Prion         |
| in2017_v02_01012 | 2017-03-17 02:38:00 | Australasian Seabird Group, BirdLife Australia | in2017_v02_wov | HumanObservation | EJW+CRC+TAH | 1  | individuals  | present  | -43.40728       | 147.45549        | 200                           | 0.0018              | POINT (147.45549 -43.40728) | urn:lsid:marinespecies.org:taxname:707545 | Chroicocephalus novaehollandiae | Stephens,1826            | Silver Gull         |

**extendedMeasurementOrFact (eMoF) extension:**

As shown in previous examples, the MeasurementOrFact extension table contains abiotic measurements or facts corresponding to an occurrence / sighting. Individual sightings and abiotic measurements are linked with `occurrenceID`. In the example dataset, the ENV-DATA consist of measurements taken during the moorings deployment at the SOTS site, at the time of the marine bird sightings. In addition to NERC vocabulary terms, authors also referenced the Australian Ocean Data Network (AODN) Discovery Parameter Vocabulary for *Sea-floor depth (m)* and *Sea Surface Temperature* as `measurementType`. NERC equivalents to the AODN terms are added as additional MeasurementOrFact (MoF) records.

| occurrenceID     | measurementID                     | measurementType  | measurementTypeID | measurementValue      | measurementValueID | measurementUnit | measurementUnitID |
|:------------------|:-----------------------------------|:---------------------------------|:----------------------------------------------------------------|:--------------------|:---------------------------------|:---------------------------------|:---------------------|
| in2017_v02_00998 | in2017_v02_00998-depth            | Sea-floor depth (m)             | <http://vocab.aodn.org.au/def/discovery_parameter/entity/574>    |73.0313               | NA                                                | Metres                          | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA> |
| in2017_v02_00998 | in2017_v02_00998-depth            | Sea-floor depth                 | <http://vocab.nerc.ac.uk/collection/P01/current/MBANZZZZ/>       |73.0313               | NA                                                | Metres                          | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA> |
| in2017_v02_00998 | in2017_v02_00998-air_pressure     | Air Pressure (hPa)              | <http://vocab.nerc.ac.uk/collection/P01/current/CAPHZZ01>        |1024.91385            | NA                                                | hPa                             | <http://vocab.nerc.ac.uk/collection/P06/current/HPAX> |
| in2017_v02_00998 | in2017_v02_00998-air_temp         | Atmospheric temperature (deg C) | <http://vocab.nerc.ac.uk/collection/P01/current/CTMPZZ01>        |15.3                  | NA                                                | degrees Celsius                 | <http://vocab.nerc.ac.uk/collection/P06/current/UPAA> |
| in2017_v02_00998 | in2017_v02_00998-wov_sea_state    | Sea state                       | <http://vocab.nerc.ac.uk/collection/C39/current/>                | moderate 1.25 - 2.5 m | <http://vocab.nerc.ac.uk/collection/C39/current/4/> |                                 |                                                     |
| in2017_v02_00998 | in2017_v02_00998-sea_surface_temp | Sea surface temperature         | <http://vocab.aodn.org.au/def/discovery_parameter/entity/97>     | 17.32                 | NA                                                | degrees Celsius                 | <http://vocab.nerc.ac.uk/collection/P06/current/UPAA> |
| in2017_v02_00998 | in2017_v02_00998-sea_surface_temp | Sea surface temperature         | <http://vocab.nerc.ac.uk/standard_name/sea_surface_temperature/> | 17.32                 | NA                                                | degrees Celsius                 | <http://vocab.nerc.ac.uk/collection/P06/current/UPAA> |
| in2017_v02_00998 | in2017_v02_00998-wind_direction   | Wind direction (deg)            | <http://vocab.nerc.ac.uk/collection/P01/current/EWDAZZ01>        | 283                   | NA                                                | degrees                         | <http://vocab.nerc.ac.uk/collection/P06/current/UABB> |
| in2017_v02_00998 | in2017_v02_00998-wind_speed       | Wind Speed (knt)                | <http://vocab.nerc.ac.uk/collection/P01/current/ESSAZZ01>        | 5.49                  | NA                                                | Knots (nautical miles per hour) | <http://vocab.nerc.ac.uk/collection/P06/current/UKNT> |

#### Marine mammals abundance and distribution {.unlisted .unnumbered}

In this section we will explore how to encode a marine mammal survey dataset into Darwin Core using the ENV-DATA approach. As an example, sections of the actual dataset [CETUS: Cetacean monitoring surveys in the Eastern North Atlantic](http://ipt.vliz.be/eurobis/resource?r=cetus_cetaceans) are used.

```{r fig-cetus, fig.cap = "A representation of cetacean observation events from CETUS: Cetacean monitoring surveys in the Eastern North Atlantic, presenting the route Madeira as a site with three cruises (zones). Each Cruise is divided into different Transects and each transect contains a number of Positions.", echo=FALSE, out.width = "95%"}
library(webshot)
knitr::include_graphics("images/ENV_example_CETUS.png")
```

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://ipt.vliz.be/eurobis/archive.do?r=cetus_cetaceans&v=1.0",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://ipt.vliz.be/eurobis/archive.do?r=cetus_cetaceans&v=1.0)")
}
```

**Event core:**

Create the Event core table by extracting all events and populating attributes. As in the previous example, the events at the different levels are linked together using `eventID` and `parentEventID`. As the survey observations were made at locations of cetacean sightings during a transect instead of fixed locations, we can populate `footprintWKT` and `footprintSRS` as location information. While the authors did not provide `decimalLongitude`, `decimalLatitude`, and `coordinateUncertainty` for the first three events, we have calculate the midpoint and the uncertainty using the WKT string and `obistools::calculate_centroid`. Not all sampling was done on the same day, therefore `eventDate` is populated at the transect level. We have also mapped the author's `eventRemarks` to the `eventType` field.

| eventID                  | parentEventID | eventType | eventDate | footprintWKT                                          | footprintSRS | decimalLatitude | decimalLongitude | coordinateUncertaintyInMeters |
|:-------------------------|:----------------------|:-------------|:----------|:----------------------------------------------------------------------------------------|:-------------|:----------------|:-----------------|-----------------------------|
| Madeira           |               | route | 2012-07/2017-09 | POLYGON ((-16.74 31.49, -16.74 41.23, -8.70 41.23, -8.70 31.49, -16.74 31.49)) | EPSG:4326    | -12.72 | 36.36 | 655559.4 |
| **Madeira:Cruise-001** | Madeira | cruise | 2012-07    | MULTIPOINT ( (-8.7 41.19),  (-9.15 38.7))    | EPSG:4326    | -8.925 | 39.945 | 139576.9 |
| **Madeira:Cruise-001**:Transect-01 | Madeira:Cruise-001 | transect | 2012-07-06 | LINESTRING (-8.71765 41.14013, -8.878333 40.8987) | EPSG:4326 | -8.797992 | 41.01941 | 15015.42 |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | Madeira:Cruise-001:Transect-01 | observation | 2012-07-06 | | EPSG:4326  | 40.90195 | -8.87615 | 50 |
| **Madeira:Cruise-001**:*Transect-01:Pos-0002* | Madeira:Cruise-001:Transect-01 | observation | 2012-07-06 | | EPSG:4326  | 40.8987 | -8.87833 | 50 |
| **Madeira:Cruise-001**:Transect-01:Pos-0003 | Madeira:Cruise-001:Transect-01 | observation | 2012-07-06 | | EPSG:4326  | 41.14013 | -8.71765 | 50 |

**Occurrence extension:**

Construct the Occurrence extension table with the scientific names and links to the World Register of Marine Species in `scientificNameID`. The first column of the table references the events in the core table (see `Madeira:Cruise-001` in bold).The `occurrenceID` corresponds to the Position of the observation (see `Transect-01:Pos-0001` and `CIIMAR-CETUS-0001` in bold-italic, or `Transect-01:Pos-0002` and `CIIMAR-CETUS-0002` in italic).

| eventID                                      | occurrenceID      | scientificNameID                        | scientificName |
|:-----------------------------------------|:-------------------|:-----------------------------------------|:----------------|
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | urn:lsid:marinespecies.org:taxname:2688 | Cetacea        |
| **Madeira:Cruise-001**:*Transect-01:Pos-0002* | *CIIMAR-CETUS-0002* | urn:lsid:marinespecies.org:taxname:2688 | Cetacea        |
| **Madeira:Cruise-001**:Transect-01:Pos-0003 | CIIMAR-CETUS-0003 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| **Madeira:Cruise-001**:Transect-02:Pos-0004 | CIIMAR-CETUS-0004 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| **Madeira:Cruise-001**:Transect-02:Pos-0005 | CIIMAR-CETUS-0005 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| **Madeira:Cruise-001**:Transect-02:Pos-0006 | CIIMAR-CETUS-0006 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| **Madeira:Cruise-001**:Transect-02:Pos-0007 | CIIMAR-CETUS-0007 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |

**extendedMeasurementOrFact (eMoF) extension:**

And finally, the extendedMeasurementOrFact extension table has attributes of the zones (such as Vessel speed and Vessel Heading), the Transects (such as Wave height and Wind speed), and the Positions (such as Visibility and the Number of small/big ships >20m). Attributes of Positions point to the Occurrence extension table using the `occurrenceID` column (see `Transect-01:Pos-0001` and `Transect-01:Pos-0002` in bold-italic and italic, respectively).

| eventID  | occurrenceID | measurementType  | measurementTypeID  | measurementValue | measurementUnit | measurementUnitID  |
|:--------------|:----------------|:---------------|:--------------------------------|:------------------|:-----------------------|:---------------|
| **Madeira:Cruise-001**  |    | Vessel name | <https://vocab.nerc.ac.uk/collection/P01/current/NMSPPF01/> | Monte da Guia    |   |                                                      |
| **Madeira:Cruise-001**:Transect-01          |                   | Length of the track          | <http://vocab.nerc.ac.uk/collection/P01/current/DSRNCV01/> | 39.75 | km  | <http://vocab.nerc.ac.uk/collection/P06/current/ULKM/> |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Visibility |       | 2000-4000        | Meters | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA/>|
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Wind speed | <http://vocab.nerc.ac.uk/collection/P01/current/WMOCWFBF/> | 1 | Beaufort scale  | |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Wave height |    | 2 | Douglas scale                   |                                                      |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Number of big ships (>20m) |        | 3  |    |       |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Vessel heading | <http://vocab.nerc.ac.uk/collection/P01/current/HDNGGP01/> | 206 | Degrees | <http://vocab.nerc.ac.uk/collection/P06/current/UAAA/> |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Number of small ships (<20m) | | 0  |     |     |
| **Madeira:Cruise-001**:***Transect-01:Pos-0001*** | ***CIIMAR-CETUS-0001*** | Vessel speed | <http://vocab.nerc.ac.uk/collection/P01/current/APSAGP01/> | 16 | Knots (nautical miles per hour) | <http://vocab.nerc.ac.uk/collection/P06/current/UKNT/> |

#### Marine turtles abundance and distribution {.unlisted .unnumbered}

##### Survey and sighting data {.unlisted .unnumbered}

This section deals with encoding survey and/or sighting data of sea turtles into Darwin Core using the ENV-DATA approach. Extracts from the actual dataset [Presence of sea turtles collected through Fixed-Line-Transect monitoring across the Western Mediterranean Sea (Civitavecchia-Barcelona route) between 2013 and 2017](https://ipt.vliz.be/eurobis/resource?r=cc_flt_cbar_13-17#anchor-description) are used as an example.

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {downloadthis::download_link(
  link = "https://ipt.vliz.be/eurobis/archive.do?r=cc_flt_cbar_13-17&v=1.0",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)
} else {
  cat("[Download the dataset](https://ipt.vliz.be/eurobis/archive.do?r=cc_flt_cbar_13-17&v=1.0)")
}
```

**Event core:**

The Event core is created by extracting all sighting events and populating the attributes at each event. The events at the different levels are linked together using `eventID` and `parentEventID`. In the example dataset, turtle sightings have been recorded since 2007, along a ferry route between Italy and Spain, as part of the monitoring project FLT Med Net (Fixed Line Transect Mediterranean monitoring Network). Turtle sighting locations can be given by populating the fields `footprintWKT` and `footprintSRS` with location information. Sightings were recorded at different dates, therefore `eventDate` is populated at the transect level.

| eventID | modified | datasetID | datasetName | eventID | parentEventID    | eventDate |  eventRemarks | minimumDepthInMeters | maximumDepthInMeters | decimalLatitude | decimalLongitude | geodeticDatum | coordinateUncertaintyInMeters | footprintWKT | footprintSRS |
|:-----------------------|:---------------------|:----------------------------------------|:-------------------------------------|:----------------------|:------------------|:------------------------------------|:------------|:----------------------|:----------------------|:-----------------|:------------------|:----------|:-------------------------------|:----------------------------------------------------------------|:--------------|
| TURTLE_CBAR_0043      | 2021-05-05 07:59:08 | <https://marineinfo.org/id/dataset/6403> | Presence of sea turtles collected through Fixed-Line-Transect monitoring across the Western Mediterranean Sea | TURTLE_CBAR_0043      |    | 2013-04-03T05:30:00+02:00/2013-04-03T16:00:00+02:00 | transect     | 0  | 0  | 41.26179967 | 4.933265167  | EPSG:4326 | 222970.2874 | LINESTRING (7.602633333333 41.24378333333, 2.263897 41.279816) | EPSG:4326 |
| TURTLE_CBAR_0045      | 2021-05-05 07:59:08 | <https://marineinfo.org/id/dataset/6403> | Presence of sea turtles collected through Fixed-Line-Transect monitoring across the Western Mediterranean Sea | TURTLE_CBAR_0045      |    | 2013-04-18T05:22:00+02:00/2013-04-18T15:53:00+02:00 | transect | 0  | 0  | 41.30371367 | 4.936571167 | EPSG:4326     | 225420.0359 | LINESTRING (7.636983333333 41.32418333333, 2.236159 41.283244) | EPSG:4326    |
| TURTLE_CBAR_0045_0001 | 2021-05-05 07:59:08 | <https://marineinfo.org/id/dataset/6403> | Presence of sea turtles collected through Fixed-Line-Transect monitoring across the Western Mediterranean Sea | TURTLE_CBAR_0045_0001 | TURTLE_CBAR_0045 | 2013-04-18T05:55:00+02:00 |  sample  | 0  | 0   | 41.3228 | 7.4984 | EPSG:4326  |  | POINT | EPSG:4326 |
| TURTLE_CBAR_0045_0002 | 2021-05-05 07:59:08 | <https://marineinfo.org/id/dataset/6403> | Presence of sea turtles collected through Fixed-Line-Transect monitoring across the Western Mediterranean Sea | TURTLE_CBAR_0045_0002 | TURTLE_CBAR_0045 | 2013-04-18T08:35:00+02:00 |  sample | 0 | 0  | 41.322845 | 5.995345 | EPSG:4326 |   | POINT | EPSG:4326    |

**Occurrence extension:**

The Occurrence extension contain details regarding the sighted animals and include `scientificName` and the links to the World Register of Marine Species in `scientificNameID`. The `EventID` references the events as in the Event core. This table further provides information on the `basisOfRecord` and `occurrenceStatus`.

| EventID  | occurrenceID  | datasetID | collectionCode    | basisOfRecord    | catalogNumber | recordedBy | occurrenceStatus | scientificNameID  | scientificName | kingdom  | scientificNameAuthorship |
|:--------------|:-----------------|:--------------------|:-------------|:------------------|:----------------|:---------------------|:------------------|:------------------------------|:-----------------|:----------|:-------------------|
| TURTLE_CBAR_0043      | AdL_TURTLE_CBAR_0001 | <https://marineinfo.org/id/dataset/6403> | TURTLE_CBAR_13-17 | HumanObservation | AdL_TURTLE_CBAR_0001 | Ilaria Campana \| Miriam Paraboschi \| Erica Ercoli \| Erica  | absent | urn:lsid:marinespecies.org:taxname:136999 | Cheloniidae     | Animalia | Oppel, 1811  |
| TURTLE_CBAR_0045      | AdL_TURTLE_CBAR_0004 | <https://marineinfo.org/id/dataset/6403> | TURTLE_CBAR_13-17 | HumanObservation | AdL_TURTLE_CBAR_0004 | Antonella Arcangeli \| Cristina Berardi \| Lucilla Giulietti \| Claudia Boccardi | absent | urn:lsid:marinespecies.org:taxname:136999 | Cheloniidae     | Animalia | Oppel, 1811   |
| TURTLE_CBAR_0045_0001 | AdL_TURTLE_CBAR_0005 | <https://marineinfo.org/id/dataset/6403> | TURTLE_CBAR_13-17 | HumanObservation | AdL_TURTLE_CBAR_0005 | Antonella Arcangeli \| Cristina Berardi \| Lucilla Giulietti \| Claudia Boccardi | present | urn:lsid:marinespecies.org:taxname:137205 | Caretta caretta | Animalia | Linnaeus, 1758 |
| TURTLE_CBAR_0045_0002 | AdL_TURTLE_CBAR_0006 | <https://marineinfo.org/id/dataset/6403> | TURTLE_CBAR_13-17 | HumanObservation | AdL_TURTLE_CBAR_0006 | Antonella Arcangeli \| Cristina Berardi \| Lucilla Giulietti \| Claudia Boccardi | present | urn:lsid:marinespecies.org:taxname:137205 | Caretta caretta | Animalia | Linnaeus, 1758 |

**extendedMeasurementOrFact (eMoF) extension:**

The extendedMeasurementOrFact extension (eMoF) for survey or sighting data contains additional attributes and measurements recorded during the survey, such as those regarding the Research Vessel, environmental conditions, and/ or animal measurements. These attributes are linked to the Occurrence extension using the `occurrenceID`. The example dataset contain measurements regarding the sampling method; speed and height of the Research Vessel as platform; wind force; sighting distance; as well as the count and developmental stage of the biological entity.

| eventID | occurrenceID         | measurementType | measurementTypeID |  measurementValue | measurementUnit | measurementUnitID |
|:-----------------------|:----------------------|:--------------------------------------------------|:---------------------------------------|:-----------------------------|:---------------------------------|:--------------------------|
| TURTLE_CBAR_0045      | AdL_TURTLE_CBAR_0004 | BEAUFORT WIND FORCE  | <http://vocab.nerc.ac.uk/collection/P01/current/WMOCWFBF> | 0   | Beaufort scale | |
| TURTLE_CBAR_0045      | AdL_TURTLE_CBAR_0004 | Platform height | <http://vocab.nerc.ac.uk/collection/P01/current/AHSLZZ01> | 29 | Metres | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA/> |
| TURTLE_CBAR_0045      | AdL_TURTLE_CBAR_0004 | Sampling method | <https://vocab.nerc.ac.uk/collection/P01/current/DSSPMT01/> | visual observation from ferries |  |  |
| TURTLE_CBAR_0045      | AdL_TURTLE_CBAR_0004 | Speed of measurement platform relative to ground surface {speed over ground} by unspecified GPS system | <http://vocab.nerc.ac.uk/collection/P01/current/APSAGP01> | 23.291 | Knots (nautical miles per hour) | <http://vocab.nerc.ac.uk/collection/P06/current/UKNT/> |
| TURTLE_CBAR_0045_0001 | AdL_TURTLE_CBAR_0005 | Development stage of biological entity specified elsewhere | <http://vocab.nerc.ac.uk/collection/P01/current/LSTAGE01> | | |  |
| TURTLE_CBAR_0045_0001 | AdL_TURTLE_CBAR_0005 | Count (in assayed sample) of biological entity specified elsewhere | <http://vocab.nerc.ac.uk/collection/P01/current/OCOUNT01> |  20 | Metres | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA/> |
| TURTLE_CBAR_0045_0001 | AdL_TURTLE_CBAR_0005 | Sighting distance | | | | |

In addition to the measurements recorded by the example dataset, other measurements are also possible depending on the scope and aims of the survey project. The example dataset [Incidental sea snake and turtle bycatch records from the RV Southern Surveyor voyage SS199510, Gulf of Carpentaria, Australia (Nov 1995)](https://www.marine.csiro.au/ipt/resource?r=csiro_ss199510_reptile) for example, contain information regarding the length and weight of the biological entity as follows:

**extendedMeasurementOrFact (eMoF) extension:**

| eventID           | measurementID       | occurrenceID | measurementType | measurementTypeID                                       | measurementValue | measurementUnit | measurementUnitID                                   |
|:--------------|:---------------------|:--------------|:-----------------|:---------------------------------------------------------|:------------------|:-----------------|:-----------------------------------------------------|
| SS199510-001 | SS199510-001-length | SS199510-001 | Length          | <http://vocab.nerc.ac.uk/collection/P01/current/OBSINDLX> | 1250   | Millimetres     | <http://vocab.nerc.ac.uk/collection/P06/current/UXMM> |
| SS199510-001 | SS199510-001-weight | SS199510-001 | Weight          | <http://vocab.nerc.ac.uk/collection/P01/current/SPWGXX01> | 800    | Grams           | <http://vocab.nerc.ac.uk/collection/P06/current/UGRM> |
| SS199510-002 | SS199510-002-length | SS199510-002 | Length          | <http://vocab.nerc.ac.uk/collection/P01/current/OBSINDLX> | 1630   | Millimetres     | <http://vocab.nerc.ac.uk/collection/P06/current/UXMM> |
| SS199510-002 | SS199510-002-weight | SS199510-002 | Weight          | <http://vocab.nerc.ac.uk/collection/P01/current/SPWGXX01> | 1477.7 | Grams           | <http://vocab.nerc.ac.uk/collection/P06/current/UGRM> |

#### Microbes biomass and diversity {.unlisted .unnumbered}

(example coming soon)

#### Phytoplankton biomass and diversity {.unlisted .unnumbered}

This example deals with encoding phytoplankton observation data, including environmental data, into Darwin Core. Extracts from the actual dataset [LifeWatch observatory data: phytoplankton observations by imaging flow cytometry (FlowCam) in the Belgian Part of the North Sea](https://obis.org/dataset/956d618f-91dc-4930-a253-cdf80ddb9371), are used as an example. Phytoplankton data should adhere to guidelines by Martin-Cabrera et al., 2022: [Best practices and recommendations for plankton imaging data management: Ensuring effective data flow towards European data infrastructures. Version 1](http://dx.doi.org/10.25607/OBP-1742). Specific guidelines for the Occurrence and eMoF tables are documented in this publication, and we emphasize important fields in this example.

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://ipt.vliz.be/eurobis/archive.do?r=fyto&v=1.0",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://ipt.vliz.be/eurobis/archive.do?r=fyto&v=1.0)")
}
```

**Event core:**

The Event core contains events at the different levels and are linked together with `eventID` and `parentEventID`. In this example,the dataset contains records pointing to the origin, the in-situ sampling position as well as a record referring to the ex-situ collection of living specimens. In this case, the the event type information is provided in `type`. The recommended practice for providing the countryCode is to use an ISO 3166-1-alpha-2 country code. If additional information regarding licencing is provided, these can be populated under `rightsHolder` and `accessRights`. The remaining Event core fields provide location data including `datasetID` and `datasetName`, `locationID`, `waterBody`, `maximumDepthInMeters`, `minimumDepthInMeters`, `decimalLongitude`, `decimalLatitude`, `coordinateUncertaintyInMeters`, `geodeticDatum` and `footprintSRS`.

| eventID  | parentEventID  | eventRemarks | eventDate | modified | datasetID | datasetName | locationID | waterBody | country | countryCode | minimumDepthInMeters | maximumDepthInMeters | decimalLatitude | decimalLongitude | geodeticDatum | coordinateUncertaintyInMeters | footprintSRS |
|:----------------------------|:---------------------|:--------------|:----------------------------|:---------------------|:---------------------------|:--------------------------------------|:------------|:-----------|:---------|:-------------|:---------------------|:----------------------|:-----------------|:------------------|:---------------|:-------------------------------|:--------------|
| TripNR3242 | | cruise | 2017-05T13:18:00+00:00/2017-05T22:14:00+00:00 | 2021-10-21 15:52:00 | <https://marineinfo.org/id/dataset/4688> | LifeWatch observatory data: phytoplankton observations... |    | North Sea | Belgium | BE |  |  |  |  | EPSG:4326 |  | EPSG:4326 |
| TripNR3242TripStationNR16781 | TripNR3242 | stationVisit | 2017-05-08T20:44:00+00:00/2017-05-08T20:55:00+00:00 | 2021-10-21 15:52:00 | <https://marineinfo.org/id/dataset/4688> | | JN17_5 |  | |  | 0 | 30.22  | 51.0131 | 1.90562 | EPSG:4326  | 1.11 | EPSG:4326 |
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781 | sample | 2017-05-08T20:50:00+00:00 | 2021-10-21 15:52:00 | <https://marineinfo.org/id/dataset/4688> |  | JN17_5 |  |  |  | 0 | 1 | 51.01203 | 1.90217 | EPSG:4326 | 1.11 | EPSG:4326 |
| TripNR3242TripStationNR16781MidasTripActionID105598UW | TripNR3242TripStationNR16781 | sample | 2017-05-08T20:50:00+00:00 | 2021-10-21 15:52:00 | <https://marineinfo.org/id/dataset/4688> |  | JN17_5 |  |  |  | 3 | 3 | 51.01203 | 1.90217 | EPSG:4326 | 1.11 | EPSG:4326 |

**Occurrence extension:**

The Occurrence extension contains data of each occurrence with an `occurrenceID` and is linked to the Event core with the `eventID`. The Occurrence extension should provide information on the `basisOfRecord` and `occurrenceStatus`. Scientific names and links to the World Register of Marine Species should be provided under `scientificName` and `scientificNameID`, respectively. Recommended best practice is to always use the term of `MachineObservation` for imaging datasets derived from imaging instruments like this example, Additionally, the fields `identifiedBy` and `identificationVerificationStatus` are crucial to indicate whether the data has been validated, and by whom. While not shown in this example, `identificationReferences` and `associatedMedia` are also recommended to document the citation or algorithm software used in identification, and the persistent URL of annotated images, respectively. We know this dataset was validated because of information provided in the abstract and the eMoF table below, "identified and counted by image analysis and normalised to a unit volume of water body, validated by human".

| eventID | occurrenceID | modified  | basisOfRecord  | occurrenceStatus | scientificNameID | scientificName | identifiedBy | identificationVerificationStatus |
|:-----------------------------------------------------|:------------------------------------------------------------|:-----------|:----------------|:------------------|:-------------------|:-------------------------|:--------------------|:------|
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_(Pseudo-)pediastrum_5     |2021-10-21 | MachineObservation | absent           | urn:lsid:marinespecies.org:taxname:160560 | Hydrodictyaceae         | Flanders Marine Institute | ValidatedByHuman |
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus senarius_5  | 2021-10-21 | MachineObservation | present          | urn:lsid:marinespecies.org:taxname:148948 | Actinoptychus senarius  | Flanders Marine Institute | ValidatedByHuman |
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus splendens_5 | 2021-10-21 | MachineObservation | present          | urn:lsid:marinespecies.org:taxname:148949 | Actinoptychus splendens | Flanders Marine Institute | ValidatedByHuman |
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus_5           | 2021-10-21 | MachineObservation | present          | urn:lsid:marinespecies.org:taxname:148947 | Actinoptychus           | Flanders Marine Institute | ValidatedByHuman |

**extendedMeasurementOrFact (eMoF) extension:**

The eMoF extension contains the environmental and measurement information and data of each occurrence. This extension is also linked to the Event core using the `eventID`, and linked to the Occurrence extension table using the `occurrenceID`. The various measurements are populated with `measurementID`, `measurementType`, `measurementTypeID`, `measurementUnit`, `measurementUnitID`, `measurementValue`, `measurementValueID`, `measurementAccuracy`, `measurementMethod`, `measurementDeterminedBy` and `measurementDeterminedDate`. In the example dataset, the LifeWatch observatory data was compiled using imaging flow cytometry (FlowCam) to observe and identify phytoplankton in the Belgian Part of the North Sea and recorded a number of measurements including abundance, lifestages, sampling device information as well as environmental measurements such as water temperature, salinity and conductivity with accompanying vocabulary.

| eventID   | occurrenceID   | measurementType | measurementTypeID | measurementValue | measurementValueID | measurementUnit | measurementUnitID | measurementDeterminedBy   | measurementMethod |
|:---------------------|:-------------------------------|:-------------------------------|:----------------|:---------------------|:----------------------------|:--------------------|:----------------|:------------------------------|:-------------------------|
| TripNR3242 | | Platform Name    | <https://vocab.nerc.ac.uk/collection/P01/current/NMSPPF01/> | Simon Stevin | <http://vocab.nerc.ac.uk/collection/C17/current/11SS/>     |  | |  Flanders Marine Institute |  |
| TripNR3242TripStationNR16781MidasTripActionID105598   | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus_5 | Abundance of biological entity specified elsewhere per unit volume of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL01/> | 2.24 | | specimens/L | <http://vocab.nerc.ac.uk/collection/P06/current/UCPL>  | Flanders Marine Institute | identified and counted by image analysis and normalised to a unit volume of water body, validated by human |
| TripNR3242TripStationNR16781MidasTripActionID105598 | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus senarius_5 | Abundance of biological entity specified elsewhere per unit volume of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL01/> | 1.12 |  | specimens/L | <http://vocab.nerc.ac.uk/collection/P06/current/UCPL>  | Flanders Marine Institute | identified and counted by image analysis and normalised to a unit volume of water body, validated by human |
| TripNR3242TripStationNR16781MidasTripActionID105598   | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_(Pseudo-)pediastrum_5    | Lifestage   | <http://vocab.nerc.ac.uk/collection/P01/current/LSTAGE01/> | adult | <http://vocab.nerc.ac.uk/collection/S11/current/S1116/> | |   | Flanders Marine Institute | identified and counted by image analysis and normalised to a unit volume of water body, validated by human |
| TripNR3242TripStationNR16781MidasTripActionID105598   | TripNR3242TripStationNR16781MidasTripActionID105598occurenceIDTA_105598_Actinoptychus senarius_5 | Lifestage | <http://vocab.nerc.ac.uk/collection/P01/current/LSTAGE01/> | adult | <http://vocab.nerc.ac.uk/collection/S11/current/S1116/> |          | | | |
| TripNR3242TripStationNR16781MidasTripActionID105598   |   | Sampling device aperture diameter | <http://vocab.nerc.ac.uk/collection/Q01/current/Q0100012/> | 0.4 |     | meter | <http://vocab.nerc.ac.uk/collection/P06/current/ULAA/> | Flanders Marine Institute | |
| TripNR3242TripStationNR16781MidasTripActionID105598   |   | Sampling instrument name | <http://vocab.nerc.ac.uk/collection/P01/current/NMSPINST/> | Planktonnet Apstein | <http://vocab.nerc.ac.uk/collection/L22/current/TOOL0978/> |    |  | Flanders Marine Institute | |
| TripNR3242TripStationNR16781MidasTripActionID105598   | | Sampling net mesh size | <https://vocab.nerc.ac.uk/collection/P01/current/MSHSIZE1/> | 55 | | micrometer | <http://vocab.nerc.ac.uk/collection/P06/current/UMIC/> | Flanders Marine Institute |  |
| TripNR3242TripStationNR16781MidasTripActionID105598UW | | Conductivity of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/CNDCZZ01/> | 3.916 | | Siemens per metre | <http://vocab.nerc.ac.uk/collection/P06/current/UECA>  | Flanders Marine Institute | Electrical conductivity of the water body by thermosalinograph, based on the UnderWaySystem of the ship |
| TripNR3242TripStationNR16781MidasTripActionID105598UW |   | Practical salinity of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/PSALPR01/> | 34.295 |   | Grams per kilogram | <http://vocab.nerc.ac.uk/collection/P06/current/UGKG/> | Flanders Marine Institute | Practical salinity of the water body based on water from the UnderWaySystem of the ship |
| TripNR3242TripStationNR16781MidasTripActionID105598UW | | Temperature of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/TEMPPR01/> | 11.881 | | Degrees Celsius |  <http://vocab.nerc.ac.uk/collection/P06/current/UPAA/> | Flanders Marine Institute | Temperature of the water body based on water from the UnderWaySystem of the ship |

#### Seagrass cover and composition {.unlisted .unnumbered}

The structure of the Event, Occurrence and extendedMeasurementOrFact extensions for Seagrass Cover & Composition is based on community feedback organised through the the Scientific Committee on Oceanic Research (SCOR): [Coordinated Global Research Assessment of Seagrass System (C-GRASS)](https://scor-int.org/group/158/). We acknowledge the work that the C-grass SCOR work group has done to develop a proposed scheme for completing Seagrass related extension files.

Here we align seagrass survey data to Darwin Core according to the ENV-DATA approach and using sections of the actual dataset [Seagrass Monitoring at Chengue Bay, Colombia](http://ipt.iobis.org/caribbeanobis/resource?r=seagrasssurvey_colombia) as an example.

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://ipt.iobis.org/caribbeanobis/archive.do?r=seagrasssurvey_colombia&v=1.6",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://ipt.iobis.org/caribbeanobis/archive.do?r=seagrasssurvey_colombia&v=1.6)")
}
```

**Event core:**

The Event core table is created by extracting all events and attributes. All events are linked together using `eventID` and `parentEventID`. `eventDate` is populated at the transect level with the recommended format that conforms to ISO 8601-1:2019. `habitat` is populated as a category or description of the habitat in which the event occurred, but it is also recommended to include it in the eMoF so that controlled vocabulary can be linked to it. Additional `fieldNotes` can also be provided if applicable. The recommended best practice for `countryCode` is to use an ISO 3166-1-alpha-2 country code.

The remaining Event core fields comprise of location data including `maximumDepthInMeters`, `minimumDepthInMeters`, `decimalLongitude`, `decimalLatitude`, `coordinateUncertaintyInMeters`, `footprintWKT` and `footprintSRS`. Addtionally in the Event core, it is recommended to further include information regarding `license`, `rightsHolder`, `bibliographicCitation`, `institutionID`, `datasetID`, `institutionCode` and `datasetName`.

| eventID                                    | parentEventID            | eventDate  | habitat  | fieldNotes | countryCode | minimumDepthInMeters | maximumDepthInMeters | decimalLatitude | decimalLongitude | coordinateUncertaintyInMeters | footprintWKT                                                                      | footprintSRS |
|:--------------------------------------------|:--------------------------|:------------|:----------|:------------|:-------------|:------------------|:----------------------|:-----------------|:------------------|:-------------------------------|:-----------------------------------------------------------------------------------|:--------------|
| USBsg-chengue-pastocoral                   |                          | 2019-05-13 | seagrass | no notes   | CO | 0.8 | 2 | 11.32021806 | -74.12753684 | 10 | POLYGON ((-74.1273259763024 11.320475512862,-74.1272182449138 11.3200031521579,-74.1277187815195 11.319600402505,-74.1278115962543 11.3205666701908,-74.1274900594943 11.3206860034213,-74.1273259763024 11.320475512862))  | EPSG:4326    |
| USBsg-chengue-pastomanglar                 |                          | 2019-05-14 | seagrass | no notes   | CO | 0.8 | 0.8 | 11.31977189 | -74.12536879 | 10 | POLYGON ((-74.1273259763024 11.320475512862,-74.1272182449138 11.3200031521579,-74.1277187815195 11.319600402505,-74.1278115962543 11.3205666701908,-74.1274900594943 11.3206860034213,-74.1273259763024 11.320475512862)) | EPSG:4326    |
| USBsg-chengue-pastocoral-SquidPopTransect1 | USBsg-chengue-pastocoral | 2019-05-13 | seagrass | no notes   | CO | 0.8 | 2 | 11.32039927 | -74.12737404 | 50 | POINT (-74.1273740410759 11.3203992721869)  | EPSG:4326    |
| USBsg-chengue-pastocoral-SquidPopTransect2 | USBsg-chengue-pastocoral | 2019-05-13 | seagrass | no notes   | CO | 0.8 | 2 | 11.32027662 | -74.1273989 | 50 | POINT (-74.1273989021655 11.3202766241445)   | EPSG:4326    |

**Occurrence extension:**

The Occurrence extension table contain data for each occurrence with an `occurrenceID` and is linked to the Event core with the `eventID`. This table should provide information on the `basisOfRecord` and `occurrenceStatus`. Scientific names and links to the World Register of Marine Species should be provided under `scientificName` and `scientificNameID`, respectively. If a species was identified by an expert, the field `identifiedBy` can be populated. If the species is well-known by another common name, this name can be provided under `vernacularName`.

| eventID                                    | occurrenceID                      | basisOfRecord    | occurrenceStatus | scientificNameID                          | scientificName         |
|:--------------------------------------------|:-----------------------------------|:------------------|:------------------|:-------------------------------------------|:------------------------|
| USBsg-chengue-pastocoral                   | USBsg-chengue-pastocoral-tt       | HumanObservation | present          | urn:lsid:marinespecies.org:taxname:374720 | Thalassia testudinum   |
| USBsg-chengue-pastomanglar                 | USBsg-chengue-manglar-tt          | HumanObservation | present          | urn:lsid:marinespecies.org:taxname:374720 | Thalassia testudinum   |
| USBsg-chengue-pastocoral-SquidPopTransect1 | USBsg-chengue-pastocoral-fish-001 | HumanObservation | present          | urn:lsid:marinespecies.org:taxname:158815 | Halichoeres bivittatus |
| USBsg-chengue-pastocoral-SquidPopTransect1 | USBsg-chengue-pastocoral-fish-002 | HumanObservation | present          | urn:lsid:marinespecies.org:taxname:158932 | Lactophrys triqueter   |

**extendedMeasurementOrFact (eMoF) extension:**

The eMoF table contains the measurement information and data of each occurrence. This extension is linked to the Event core using the `eventID`, and linked to the Occurrence table using the `occurrenceID`. The various measurements are populated with `measurementType`, `measurementTypeID`, `measurementUnit`, `measurementUnitID`, `measurementValue`, `measurementValueID`, `measurementAccuracy`, `measurementMethod`, `measurementDeterminedBy` and `measurementDeterminedDate`. The example dataset [Seagrass Monitoring at Chengue Bay, Colombia](http://ipt.iobis.org/caribbeanobis/resource?r=seagrasssurvey_colombia) recorded a number of measurements and can be used as an example of how to populate the respective fields. Other possible `measurementTypes` not captured in this example may include habitat, percent cover, canopy height, and of course any other biotic/abiotic measurements.

| eventID                  | occurrenceID                | measurementID                               | measurementType                       | measurementTypeID                                        | measurementValue | measurementUnit         | measurementUnitID                                    |
|:--------------------------|:-----------------------------|:---------------------------------------------|:---------------------------------------|:----------------------------------------------------------|:------------------|:-------------------------|:------------------------------------------------------|
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-PhyQ01             | WaterTemp                             | <http://vocab.nerc.ac.uk/collection/P01/current/TEMPMP01/> | 29.23            | Degrees Celsius         | <http://vocab.nerc.ac.uk/collection/P06/current/UPAA/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-PhyQ02             | Salinity                              | <http://vocab.nerc.ac.uk/collection/P01/current/SSALSL01/> | 36               | Parts per thousand      | <http://vocab.nerc.ac.uk/collection/P06/current/UPPT/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-PhyQ03             | Dissolved oxygen                      | <http://vocab.nerc.ac.uk/collection/P01/current/DOXYSE02/> | 6.58             | Milligrams per litre    | <http://vocab.nerc.ac.uk/collection/P06/current/UMGL/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1C1-shoot-01      | Shoot Density                         | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL02/> | 128              | Number per square metre | <http://vocab.nerc.ac.uk/collection/P06/current/UPMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1C1-leafLenght-01 | Leaf Length                           | <http://vocab.nerc.ac.uk/collection/P01/current/OBSMAXLX/> | 18               | Centimetres             | <http://vocab.nerc.ac.uk/collection/P06/current/ULCM/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N1-DryBiomass    | Total Dry Biomass                     | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.32055          | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N1-biomassGL     | Dry biomass of green leaves           | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.05575          | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N1-biomassNGL    | Dry biomass of non green leaves       | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.1469           | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N1-biomassSH     | Dry biomass of the shoots             | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.07625          | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N2-biomassR      | Dry biomass of the roots              | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.0385           | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N2-biomassRIZ    | Dry biomass of the rizome             | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0.02725          | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |
| USBsg-chengue-pastocoral | USBsg-chengue-pastocoral-tt | USBsg-chengue-pastocoral-T1N2-biomassOTH    | Dry biomass of other seagrass species | <http://vocab.nerc.ac.uk/collection/S06/current/S0600087/> | 0                | Grams per square metre  | <http://vocab.nerc.ac.uk/collection/P06/current/UGMS/> |

#### Zooplankton biomass and diversity {.unlisted .unnumbered}

Here we will encode zooplankton observation and environmental data into Darwin Core. Extracts from the actual dataset [LifeWatch observatory data: zooplankton observations by imaging (ZooScan) in the Belgian Part of the North Sea](https://obis.org/dataset/afa5b0e8-826d-4433-b698-beb176ef7880), are used as an example. As with the phytoplankton example, zooplankton data should also adhere to guidelines by Martin-Cabrera et al., 2022: [Best practices and recommendations for plankton imaging data management: Ensuring effective data flow towards European data infrastructures. Version 1.](http://dx.doi.org/10.25607/OBP-1742). These Best Practices indicate that for imaging data like this example, the fields `identificationVerificationStatus` and `identifiedBy` are crucial to know whether the data has been validated, and by whom. `identificationReferences` is used to document the citation or algorithm software used in identification. When possible, `associatedMedia` should also be populated with the persistent URL of annotated images.

```{r echo=FALSE, results='asis'}
library(webshot)
library(downloadthis)
if (knitr::is_html_output()) {
  downloadthis::download_link(
  link = "https://ipt.vliz.be/eurobis/archive.do?r=lifewatch_zooplankton&v=1.0",
  button_label = "Download dataset DwC-A .zip",
  button_type = "default",
  has_icon = TRUE,
  icon = "fa fa-save",
  self_contained = FALSE,
  class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
)} else {
  cat("[Download the dataset](https://ipt.vliz.be/eurobis/archive.do?r=lifewatch_zooplankton&v=1.0)")
}
```

**Event core:**

The Event core contains events at the different levels and are linked together with `eventID` and `parentEventID`. In this example,the dataset contains records pointing to the origin, the in-situ sampling position as well as a record referring to the ex-situ collection of living specimens. In this case, the the event type information is provided in `type`. The recommended practice for providing the countryCode is to use an ISO 3166-1-alpha-2 country code. If additional information regarding licencing is provided, these can be populated under `rightsHolder` and `accessRights`. The remaining Event core fields provide location data including `datasetID` and `datasetName`, `locationID`, `waterBody`, `maximumDepthInMeters`, `minimumDepthInMeters`, `decimalLongitude`, `decimalLatitude`, `coordinateUncertaintyInMeters`, `geodeticDatum` and `footprintSRS`.

| eventID  | parentEventID | eventRemarks | eventDate | modified  | datasetID | datasetName | locationID | waterBody | country |  minimumDepthInMeters | maximumDepthInMeters | decimalLatitude | decimalLongitude | geodeticDatum | footprintSRS |
|:--------------------|:------------------|:--------------|:--------------------|:---------------------|:-----------------|:----------------|:------------|:---------------------|:---------|:-----------|:--------------|:-----------------|:-----------|:---------------|:--------|
| TripNR2547 |      | cruise | 2013-07-22T06:58:00+00:00/2013-07-22T16:58:00+00:00 | 2021-06-23 14:54:00 | <https://marineinfo.org/id/dataset/4687> | LifeWatch observatory data: zooplankton observations... |      | Belgian Part of the North Sea | Belgium |        |      |        |       | EPSG:4326     | EPSG:4326    |
| TripNR2547TripStationNR9781 | TripNR2547  | stationVisit | 2013-07-22T07:13:00+00:00/2013-07-22T07:26:00+00:00 | 2021-06-23 14:54:00 | <https://marineinfo.org/id/dataset/4687> | LifeWatch observatory data: zooplankton observations... | 130  |       |    | 0 | 13.4 | 51.27083333| 2.905  | EPSG:4326 | EPSG:4326 |
| TripNR2547TripStationNR9781MidasTripActionID23024   | TripNR2547TripStationNR9781 | sample       | 2013-07-22T07:22:00+00:00 | 2021-06-23 14:54:00 | <https://marineinfo.org/id/dataset/4687> | LifeWatch observatory data: zooplankton observations... | 130 |    |     | 0 | 0 | 51.2687318 | 2.901797 | EPSG:4326 | EPSG:4326 |
| TripNR2547TripStationNR9781MidasTripActionID23024UW | TripNR2547TripStationNR9781 | sample       | 2013-07-22T07:22:00+00:00 | 2021-06-23 14:54:00 | <https://marineinfo.org/id/dataset/4687> | LifeWatch observatory data: zooplankton observations... | 130 |    |     | 3 | 3 | 51.2687318 | 2.901797 | EPSG:4326 | EPSG:4326 |

**Occurrence extension:**

The Occurrence extension contains data of each occurrence with an `occurrenceID` and is linked to the Event core with the `eventID`. The Occurrence extension should provide information on the `basisOfRecord` and `occurrenceStatus`. Scientific names and links to the World Register of Marine Species should be provided under `scientificName` and `scientificNameID`, respectively.

| eventID | occurrenceID  | modified   | basisOfRecord | occurrenceStatus | scientificNameID | scientificName | identifiedBy | identificationVerificationStatus | identificationReferences |
|:-----------------------|:--------------------|:----------|:---------------|:------------------|:--------------|:-----------|:-----------|:-----------|:-----------|
| TripNR2547TripStationNR9781MidasTripActionID23024 | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Amphipoda_sub2_130      | 2021-06-22 | MachineObservation    | absent           | urn:lsid:marinespecies.org:taxname:1135   | Amphipoda      | Jonas Mortelmans | ValidatedByHuman | RandomForest |
| TripNR2547TripStationNR9781MidasTripActionID23024 | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Annelida_sub2_130       | 2021-06-22 | MachineObservation    | present          | urn:lsid:marinespecies.org:taxname:882    | Annelida       | Jonas Mortelmans | ValidatedByHuman | RandomForest |
| TripNR2547TripStationNR9781MidasTripActionID23024 | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Anomura_sub2_130        | 2021-06-22 | MachineObservation    | absent           | urn:lsid:marinespecies.org:taxname:106671 | Anomura        | Jonas Mortelmans | ValidatedByHuman | RandomForest |
| TripNR2547TripStationNR9781MidasTripActionID23024 | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Appendicularia_sub2_130 | 2021-06-22 | MachineObservation    | absent           | urn:lsid:marinespecies.org:taxname:146421 | Appendicularia | Jonas Mortelmans | ValidatedByHuman | RandomForest |

**extendedMeasurementOrFact (eMoF) extension:**

The eMoF extension table contains the measurement information and data of each occurrence. This extension is also linked to the Event core using the `eventID`, and linked to the Occurrence table using the `occurrenceID`. The various measurements are populated with `measurementType`, `measurementTypeID`, `measurementUnit`, `measurementUnitID`, `measurementValue`, `measurementValueID`, `measurementAccuracy`, `measurementMethod`, `measurementDeterminedBy` and `measurementDeterminedDate`. The example dataset of [LifeWatch observatory data: zooplankton observations by imaging (ZooScan) in the Belgian Part of the North Sea](https://obis.org/dataset/afa5b0e8-826d-4433-b698-beb176ef7880) recorded some ENV-DATA and organism measurements the can be used as an example of how to populate the respective fields, including conductivity of the water body; concentration of chlorophyll-a per unit volume of the water body; sampling instrument name; sampling net mesh size; lifestage of the organism observed; and abundance of the organism observed.

| eventID    | occurrenceID    | measurementType  | measurementTypeID | measurementValue | measurementValueID  | measurementUnit      | measurementUnitID | measurementDeterminedBy   | measurementMethod   |
|:---------------------------|:------------------|:--------------------|:-----------------------|:------------------|:-------------------------------------|:----------------------|:-------------------------|:---------------------------|:------------------|
| TripNR3256TripStationNR17157MidasTripActionID106326  |     | Sampling instrument name  | <http://vocab.nerc.ac.uk/collection/P01/current/NMSPINST/> | Planktonnet WP2  | <<http://vocab.nerc.ac.uk/collection/L22/current/TOOL0979/>  | |  |  |  |
| TripNR3256TripStationNR17157MidasTripActionID106326  |     | Sampling net mesh size    | <https://vocab.nerc.ac.uk/collection/P01/current/MSHSIZE1/> | 200 |  | micrometer | <http://vocab.nerc.ac.uk/collection/P06/current/UMIC/>  | |  |
| TripNR3529TripStationNR19242MidasTripActionID109631UW|     | Conductivity of the water body  | <http://vocab.nerc.ac.uk/collection/P01/current/CNDCZZ01/> | 4.05 |  | Siemens per metre    | <http://vocab.nerc.ac.uk/collection/P06/current/UECA/> | Flanders Marine Institute | Electrical conductivity of the water body by thermosalinograph, based on the UnderWaySystem of the ship |
| TripNR3529TripStationNR19243MidasTripActionID109634  |     | Concentration of chlorophyll-a per unit volume of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/CPHLHPP1/> | 1.42 |  | Micrograms per litre | <http://vocab.nerc.ac.uk/collection/P06/current/UGPL/> | Flanders Marine Institute | Concentration of chlorophyll-a per unit volume of the water body [particulate >GF/F phase] by filtration, acetone extraction and high performance liquid chromatography (HPLC) |
| TripNR2547TripStationNR9781MidasTripActionID23024    | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Annelida_sub2_130 | Lifestage  | <http://vocab.nerc.ac.uk/collection/P01/current/LSTAGE01/> | unspecified | <http://vocab.nerc.ac.uk/collection/S11/current/S1152/>    |  |  | Flanders Marine Institute | identified and counted by image analysis and normalised to a unit volume of water body, validated by human |
| TripNR2547TripStationNR9781MidasTripActionID23024    | TripNR2547TripStationNR9781MidasTripActionID23024occurenceIDTA23024_Annelida_sub2_130 | Abundance of biological entity specified elsewhere per unit volume of the water body | <http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL01/> | 0.50 |  | specimens/m³  | <http://vocab.nerc.ac.uk/collection/P06/current/UPMM/> | Flanders Marine Insitute | identified and counted by image analysis and normalised to a unit volume of water body, validated by human |
