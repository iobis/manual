## How to format Event tables

If your dataset uses an Event Core structure, data fields included in your dataset should include the following required terms:

* `eventDate`
* `eventID`
* `parentEventID` (if applicable)
* `decimalLatitude`
* `decimalLongitude`

Other terms you should consider adding are grouped by their associated Darwin Core class in the table below. See the [term checklist](checklist.html) for a more complete list of DwC terms for the Event table.

Class Event | DwC:parentEventID
Class Event | DwC:eventRemarks
Class Event | DwC:eventType
Class Event | DwC:year
Class Event | DwC:month
Class Event | DwC:day
Class Event | DwC:type
Class Location | DwC:country
Class Location | DwC:island
Class Location | DwC:coordinateUncertaintyInMeters
Class Location | DwC:countryCode
Class Location | DwC:footprintWKT
Class Location | DwC:geodeticDatum
Class Location | DwC:islandGroup
Class Location | DwC:locality
Class Location | DwC:locationAccordingTo
Class Location | DwC:locationID
Class Location | DwC:locationRemarks
Class Location | DwC:maximumDepthInMeters
Class Location | DwC:minimumDepthInMeters
Class Location | DwC:stateProvince
Class Location | DwC:verbatimCoordinates
Class Location | DwC:verbatimDepth
Class Location | DwC:waterBody

Terms related to measurements, either biotic (e.g., sex, lifestage) or abiotic will be included in extendedMeasurementOrFact table _not_ the Event Core or Occurrence extension table.

### Stepwise Guidance to Format Event Table (in Excel)

Before proceeding with the below, make sure each record already has an [eventID](identifiers.html).

1. Identify columns in your data that will match with Darwin Core event fields
    * Include any relevant abiotic measurements (ENV-DATA) related to sampling events (e.g. sampling protocols). We will add these to the eMoF table later.
2. Copy these columns to a new sheet and name it Event
3. Delete duplicate data so only unique events are left. 
4. Identify the hierarchical event structure in your data, if present
5. Add and fill the `parentEventID` and `type` fields as applicable
6. Create new records for parent Events
7. Ensure dates and time are [formatted according to ISO 8601 standards](link #30) in the eventDate field
8. Add any other relevant fields as indicated above

Watch the video tutorial of this process.

After completing the formatting of your Event Core table, you can next format your extendedMeasurementOrFact table. To format the Occurrence extension table, see the [Occurrence table](format_occurrence.html) section of this manual.
