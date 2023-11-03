## How to format extendedMeasurementOrFact tables

#### What data goes into eMoF

Any data related to abiotic or biotic measurements, including sampling information and protocols should be included in the eMoF table. Measurement data can also go into the  [MeasurementOrFact](https://rs.gbif.org/extension/dwc/measurements_or_facts_2022-02-02.xml) extension, however OBIS recommends using the [extendedMeasurementOrFact](https://rs.gbif.org/extension/obis/extended_measurement_or_fact.xml) instead, particularly if your data is based on an Event core table.

Required terms for eMoF include:

* `eventID` (this links the record to the Event Core table)
* `occurrenceID` (this links the record to the Occurrence Core or Occurrence Extension table)

Other potential fields are shown in the table below (also listed in the [checklist](checklist.html)):

* Class Event | DwC:habitat
* Class Event | DwC:sampleSizeUnit
* Class Event | DwC:sampleSizeValue
* Class Event | DwC:samplingEffort
* Class Event | DwC:samplingProtocol
* Class Occurrence | DwC:behavior
* Class Occurrence | DwC:individualCount
* Class Occurrence | DwC:lifeStage
* Class Occurrence | DwC:organismQuantity
* Class Occurrence | DwC:organismQuantityType
* Class Occurrence | DwC:sex
* Class Occurrence | DwC:type
* Class Measurement | DwC:measurementAccuracy
* Class Measurement | DwC:measurementDeterminedBy
* Class Measurement | DwC:measurementDeterminedDate
* Class Measurement | DwC:measurementID
* Class Measurement | DwC:measurementMethod
* Class Measurement | DwC:measurementRemarks
* Class Measurement | DwC:measurementType*
* Class Measurement | DwC:measurementTypeID*
* Class Measurement | DwC:measurementUnit*
* Class Measurement | DwC:measurementUnitID*
* Class Measurement | DwC:measurementValue
* Class Measurement | DwC:measurementValueID

*For `measurementTypeID`, `measurementUnitID`, and `measurementValueID` you must use controlled vocabulary terms. We know choosing the correct vocabulary term can be challenging, so we have provided some guidance on how to [select the correct vocabulary](vocabulary.html). It is strongly recommended to ensure these fields are filled as correctly as possible. Missing or incorrect terms will be documented in the [measurementOrFact reports](https://r.obis.org/mof/).

#### How to structure eMoF

Structuring data for the eMoF extension may be one of the more confusing extensions in the data formatting process. It may help to think of this extension as the table that contains all information related to any kind of measurement.

Rather than documenting each of your measurements in separate columns (e.g., columns for biomass, abundance, length, gear size, percent cover, etc.), these measurements will be condensed into one column: `measurementValue`. `measurementType` describes what the measurement actually is, for example whether it is an abundance value, length, percent cover, or any other biotic/abiotic measurement. `measurementUnit` is used to indicate the unit of the measurement.

By linking `measurementType` and `measurementValue` with the identifiers `eventID` and/or `occurrenceID`, you can have measurements linked to *one* event (e.g. temperature), measurements link to occurrence records (e.g. length), as well as sampling facts that are linked to events (size, gear, etc.). Information specifically related to how samples were taken will have the measurementTypes: `sampleSizeValue`, `sampleSizeUnit`, `samplingEffort`, and `samplingProtocol`.

#### Stepwise Guidance to Format eMoF Table (in Excel)

1. Create a blank sheet and name it eMoF
2. Add 9 column headers for:
    * `eventID`, `occurrenceID`, `measurementType`, `measurementValue`, `measurementUnit`, `measurementTypeID`, `measurementValueID`, `measurementUnitID`, `measurementRemarks`
3. Copy `eventID` values from your Occurrence table and paste into the `eventID` field in your new, blank eMoF table
    * Repeat for `occurrenceID` from the Occurrence table
4. Copy the first column of measurement values, paste into the `measurementValue` field
    * Fill `measurementType` with the name of the variable (e.g., count, length, etc.)
5. Add unit of measurements where applicable to the `measurementUnit` field
6. For any other measurements related to occurrences, repeat steps 3-5, pasting additional measurements below the preceding ones
    * Be sure to copy and paste the associated occurrenceIDs and/or eventIDs for the additional measurements
7. Fill the fields `measurementTypeID`, `measurementUnitID`, and `measurementValueID` with controlled vocabularies that suit your data (see [vocabulary guidelines](vocabulary.html))
8. Repeat steps 3-7 for any measurements in the Event table

Note the fields [sampleSizeValue](https://dwc.tdwg.org/terms/#dwc:sampleSizeValue), [samplingEffort](https://dwc.tdwg.org/terms/#dwc:samplingEffort), and [samplingProtocol](https://dwc.tdwg.org/terms/#dwc:samplingProtocol) from the Occurrence table can be documented as separate measurements on different rows in the eMoF table. E.g., `measurementType` = samplingProtocol, `measurementValue` = description of protocol. Any values in [sampleSizeUnit](https://dwc.tdwg.org/terms/#dwc:sampleSizeUnit) fields should be placed in the `measurementUnit` field when transferred to the eMoF.

Watch the video tutorial for how to format the eMoF table below.

  <iframe width="560" height="315"
src="https://www.youtube.com/embed/EjM0HRrF1B4"
frameborder="0"
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen></iframe>

If you would like to export Event data to the eMoF, see some example R code below. This example was provided by [Abby Benson](https://orcid.org/0000-0002-4391-107X) from the [OBIS-USA node](https://www.usgs.gov/ocean-biodiversity-information-system-usa).

```R
library(dplyr)
cruise <- unique(eventCore[c("eventID")]) #create a list of all unique eventIDs from your event table
cruise <- cruise %>% #add sampling information 
mutate(measurementType = "Sampling platform name",
measurementValue = "R/V Cruise Id = SR1812",
measurementValueID = "https://doi.org/10.7284/908021",
measurementUnit = "",
measurementTypeID = "http://vocab.nerc.ac.uk/collection/Q01/current/Q0100001/",
measurementUnitID = "",
occurrenceID = "")
```
