## Map data fields to Darwin Core

There are many possible ways of setting up your datasheets, and if you are new to OBIS you likely did not use standardized Darwin Core (DwC) or BODC vocabulary before samples were collected. In mapping your data fields to DwC we recommend documenting your choices so you have a reference to go back to should the need arise. In such a document you should take notes on the choices you made, as well as any actions you had to take (e.g. separate one column into many, convert dates or coordinates, etc.).

For example, a DwC mapping reference table could look like the following:

| Verbatim field name | Mapped DwC term | Actions taken | Notes |
|:-------|:-------|:------------|:--------------|
| date | eventDate | convert dates to ISO |  |
| coordinates| decimalLongitude, decimalLatitude | convert ddmmss to decimal degrees, separated one column into 2 for longitude and latitude | put original coordinates into verbatimCoordinates |

In order to help you map your data to DwC terms, we have provided the table below which outlines some common data fields, their associated Darwin Core vocabulary, and which data table the field is likely to go in:

| Common Raw Terms | DwC Field | Data table |
|:----------------- |:----------------------------- |:---------|
| Date, Time | eventDate | Event, Occurrence |
| Species, g_s, taxa | scientificName | Occurrence |
| Any biotic/abiotic measurements* | measurementType, measurementValue, measurementUnit* | eMoF |
| Depth | maximumDepthInMeters or minimumDepthInMeters | Event, Occurrence |
| Lat/Latitude, Lon/Long/Longitude, dd | decimalLatitude, decimalLongitude | Event, Occurrence |
| Sampling method | samplingProtocol | Event, eMoF |
| Sample size, N, #, No. | sampleSizeValue | Event, eMoF |
| Location | locality | Event |
| Presence, absence | occurrenceStatus | Occurrence |
| Type of record/ specimen | basisofRecord | Occurrence |
| Person/ people that recorded the original Occurrence | recordedBy | Occurrence |
| OrcID of person/ people that recorded the original Occurrence | recordedByID | Occurrence |
| Person/ people that identified the organism | identifiedBy | Occurrence |
| OrcID of person/ people that identified the organism | identifiedByID | Occurrence |
| Data collector, data creator | recordedBy | Event, Occurrence |
| Taxonomist, identifier | identifiedBy | Occurrence |
| Record number, sample number, observation number | occurrenceID (either ID or incorporated into ID) | Occurrence |

<div class=callbox-blue>

`r fontawesome::fa("flag", fill="darkblue", prefer_type="solid")` Note that mapping abiotic/biotic measurement fields (sex, temperature, abundance, lengths, etc.) will occur within the [extendedMeasurementOrFact extension](format_emof.html). Here this data will go from being a separate column to being condensed into the `measurementType` and `measurementValue` fields.
</div>

The `obistools` R package also has the [`map_fields` function](https://github.com/iobis/obistools#map-column-names-to-darwin-core-terms) that you can use to map your dataset fields to a DwC term.
