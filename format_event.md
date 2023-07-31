## How to format Event tables

If your dataset uses an Event Core structure, data fields included in your dataset should include the following required terms:

* `eventDate`
* `eventID`
* `parentEventID` (if applicable)
* `decimalLatitude`
* `decimalLongitude`

Other terms you should consider adding are grouped by their associated Darwin Core class in the table below. See the [term checklist](checklist.html) for a more complete list of DwC terms for the Event table.

* Class Event | DwC:parentEventID
* Class Event | DwC:eventRemarks
* Class Event | DwC:eventType
* Class Event | DwC:year
* Class Event | DwC:month
* Class Event | DwC:day
* Class Event | DwC:type
* Class Location | DwC:country
* Class Location | DwC:island
* Class Location | DwC:coordinateUncertaintyInMeters
* Class Location | DwC:countryCode
* Class Location | DwC:footprintWKT
* Class Location | DwC:geodeticDatum
* Class Location | DwC:islandGroup
* Class Location | DwC:locality
* Class Location | DwC:locationAccordingTo
* Class Location | DwC:locationID
* Class Location | DwC:locationRemarks
* Class Location | DwC:maximumDepthInMeters
* Class Location | DwC:minimumDepthInMeters
* Class Location | DwC:stateProvince
* Class Location | DwC:verbatimCoordinates
* Class Location | DwC:verbatimDepth
* Class Location | DwC:waterBody

Terms related to measurements, either biotic (e.g., sex, lifestage) or abiotic will be included in extendedMeasurementOrFact table _not_ the Event Core or Occurrence extension table.

#### Stepwise Guidance to Format Event Table (with spreadsheets)

Before proceeding with the below, make sure each record already has an [`eventID`](identifiers.html).

1. Add and fill the `parentEventID` and `eventRemarks` fields as applicable
2. Identify the hierarchical event structure in your data, if present and create new records for parent Events, filling in any relevant fields
3. Identify all columns in your data that will match with Darwin Core Event fields
    * Include any relevant abiotic measurements (ENV-DATA) related to sampling events (e.g. sampling protocols). We will add these to the eMoF table later
4. Copy these columns to a new sheet and name it Event
5. Delete duplicate data so only unique events are left
6. Ensure dates and time are [formatted according to ISO 8601 standards](common_formatissues.html#temporal-dates-and-times) in the `eventDate` field
7. Add any other relevant fields as indicated above
8. Map fields to Darwin Core

Watch the video tutorial of this process below.

  <iframe width="560" height="315"
src="https://www.youtube.com/embed/jyy6QO_p7v8"
frameborder="0"
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen></iframe>

After completing the formatting of your Event Core table, you can next format your extendedMeasurementOrFact table. To format the Occurrence extension table, see the [Occurrence table](format_occurrence.html) section of this manual.
