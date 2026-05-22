## How to format Event tables

If your dataset uses an Event Core structure, data fields included in your dataset should include the following required terms:

- `eventDate`
- `eventID`
- `parentEventID` (if applicable)
- `decimalLatitude`
- `decimalLongitude`

Other terms you should consider adding are grouped by their associated Darwin Core class in the table below. See the [term checklist](checklist.llms.md) for a more complete list of DwC terms for the Event table.

- Class Event \| DwC:parentEventID
- Class Event \| DwC:eventType
- Class Event \| DwC:eventRemarks
- Class Event \| DwC:year
- Class Event \| DwC:month
- Class Event \| DwC:day
- Class Location \| DwC:country
- Class Location \| DwC:island
- Class Location \| DwC:coordinateUncertaintyInMeters
- Class Location \| DwC:countryCode
- Class Location \| DwC:footprintWKT
- Class Location \| DwC:geodeticDatum
- Class Location \| DwC:islandGroup
- Class Location \| DwC:locality
- Class Location \| DwC:locationAccordingTo
- Class Location \| DwC:locationID
- Class Location \| DwC:locationRemarks
- Class Location \| DwC:maximumDepthInMeters
- Class Location \| DwC:minimumDepthInMeters
- Class Location \| DwC:stateProvince
- Class Location \| DwC:verbatimCoordinates
- Class Location \| DwC:verbatimDepth
- Class Location \| DwC:waterBody

Terms related to measurements, either biotic (e.g., sex, lifestage) or abiotic will be included in extendedMeasurementOrFact table *not* the Event Core or Occurrence extension table.

#### Stepwise Guidance to Format Event Table (with spreadsheets)

Before proceeding with the below, make sure each record already has an [`eventID`](identifiers.llms.md).

1.  Add and fill the `parentEventID`, `eventType`, and `eventRemarks` fields as applicable
2.  Identify the hierarchical event structure in your data, if present, and create new records for parent events, filling in any relevant fields
3.  Identify all columns in your data that will match with Darwin Core Event fields
    - Include any relevant abiotic measurements (ENV-DATA) related to sampling events (e.g. sampling protocols). We will add these to the eMoF table later
4.  Copy these columns to a new sheet and name it Event
5.  Delete duplicate data so only unique events are left
6.  Ensure dates and time are [formatted according to ISO 8601 standards](common_formatissues.llms.md#temporal-dates-and-times) in the `eventDate` field
7.  Add any other relevant fields as indicated above
8.  Map fields to Darwin Core

Watch the video tutorial ![](data:image/svg+xml;base64,PHN2ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgcm9sZT0iaW1nIiB2aWV3Ym94PSIwIDAgNTc2IDUxMiIgc3R5bGU9ImhlaWdodDoxZW07d2lkdGg6MS4xMmVtO3ZlcnRpY2FsLWFsaWduOi0wLjEyNWVtO21hcmdpbi1sZWZ0OmF1dG87bWFyZ2luLXJpZ2h0OmF1dG87Zm9udC1zaXplOmluaGVyaXQ7ZmlsbDpyZWQ7b3ZlcmZsb3c6dmlzaWJsZTtwb3NpdGlvbjpyZWxhdGl2ZTsiPjxwYXRoIGQ9Ik01NDkuNjU1IDEyNC4wODNjLTYuMjgxLTIzLjY1LTI0Ljc4Ny00Mi4yNzYtNDguMjg0LTQ4LjU5N0M0NTguNzgxIDY0IDI4OCA2NCAyODggNjRTMTE3LjIyIDY0IDc0LjYyOSA3NS40ODZjLTIzLjQ5NyA2LjMyMi00Mi4wMDMgMjQuOTQ3LTQ4LjI4NCA0OC41OTctMTEuNDEyIDQyLjg2Ny0xMS40MTIgMTMyLjMwNS0xMS40MTIgMTMyLjMwNXMwIDg5LjQzOCAxMS40MTIgMTMyLjMwNWM2LjI4MSAyMy42NSAyNC43ODcgNDEuNSA0OC4yODQgNDcuODIxQzExNy4yMiA0NDggMjg4IDQ0OCAyODggNDQ4czE3MC43OCAwIDIxMy4zNzEtMTEuNDg2YzIzLjQ5Ny02LjMyMSA0Mi4wMDMtMjQuMTcxIDQ4LjI4NC00Ny44MjEgMTEuNDEyLTQyLjg2NyAxMS40MTItMTMyLjMwNSAxMS40MTItMTMyLjMwNXMwLTg5LjQzOC0xMS40MTItMTMyLjMwNXptLTMxNy41MSAyMTMuNTA4VjE3NS4xODVsMTQyLjczOSA4MS4yMDUtMTQyLjczOSA4MS4yMDF6IiAvPjwvc3ZnPg==) of this process below.

After completing the formatting of your Event Core table, you can next format your Occurrence and extendedMeasurementOrFact tables. To format the Occurrence extension table, see the [Occurrence table](format_occurrence.llms.md) section of this manual.

### Populating parent and child events

In OBIS, child events will inherit information from the parent event when the field is left *empty*. For example, if you provided the information “1x1m quadrat intertidal sampling” to `samplingProtocol` for a parent event but nothing was provided to the child event, as below:

| eventID       | parentEventID | samplingProtocol                 |
|---------------|---------------|----------------------------------|
| site123       |               | 1x1m quadrat intertidal sampling |
| site123_quad1 | site123       |                                  |

the child event will automatically be populated with the same text “1x1m quadrat intertidal sampling” once published to OBIS.

| eventID       | parentEventID | samplingProtocol                 |
|---------------|---------------|----------------------------------|
| site123       |               | 1x1m quadrat intertidal sampling |
| site123_quad1 | site123       | 1x1m quadrat intertidal sampling |

This can be convenient so that you do not have to fill in the same information repeatedly. **However, it is important to understand that GBIF does *not* currently implement inheritance!** In OBIS, child events inherit information from parent events as described above. However, if the `parentEvent` contains data such as latitude/longitude coordinates, and child events do not, occurrences associated with the child events will have **blank** latitude/longitude coordinates when data is accessed from GBIF. This is again because child event fields are *not* currently inherited from parent events in GBIF. If you plan for your dataset to be additionally accessed through GBIF, it is recommended to populate information in both parent and child events. A discussion of this and the implications can be found [here](https://github.com/gbif/pipelines/issues/878).

Therefore, in cases where the data will be accessible by both OBIS and GBIF, we recommend populating important information (e.g. decimalLongitude, decimalLatitude) in the child events to ensure the data will be useful for both user bases.
