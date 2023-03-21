### Multimedia data (Acoustic, Imaging)

If you have multimedia data (e.g. images, acoustic, video) that you want to publish alongside your dataset, you can do so by documenting information in the `associatedMedia` field in your Occurrence table. The usage of this field requires the media in question to be hosted somewhere, e.g., a publication, museum database, etc. Then you simply copy this link to the  `associatedMedia` field for a given occurrence. You may also include a concatenated list if you need to list multiple sources.

While there are Core types and extensions (e.g., [Audubon Core](https://rs.gbif.org/extension/ac/audubon_2020_10_06.xml) and [Simple Multimedia extension](https://rs.gbif.org/extension/gbif/1.0/multimedia.xml)) designed for image, video, and audio files, these data file types are not currently processed by OBIS. Thus for now we recommended to include links in the `associatedMedia` field. Stay tuned however, as OBIS is looking to incorporate the Simple Multimedia extension.

For datasets with imaging or acoustic data, we strongly recommend including the following terms in your Occurrence table:

* [`identifiedBy`](https://dwc.tdwg.org/list/#dwc_identifiedBy) - name(s) of persons involved in verifying taxon identification, particularly if automatic identification was made by a software and then validated by a human
* [`identificationVerificationStatus`](https://dwc.tdwg.org/list/#dwc_identificationVerificationStatus) - categorical indicator for the extent of taxonomic identification verification. Recommended to use PredictedByMachine or ValidatedByHuman
* [`identificationReferences`](http://rs.tdwg.org/dwc/terms/identificationReferences) - references used in identification (e.g. citation and version of software that identified taxa)

**Example Resources:**
Martin-Cabrera et al. (2022) have created a best practices document for [plankton imaging data](https://repository.oceanbestpractices.org/handle/11329/1917) that you can also reference. To see an example imaging dataset implementing these best practices, see the supplementary material of [Establishing Plankton Imagery Dataflows Towards International Biodiversity Data Aggregators](https://biss.pensoft.net/article/94196/instance/7973477/).

Data originating from ROV (Remote Operating Vehicle) observations may require additional processing. Ocean Networks Canada (ONC) is developing a [pipeline for publishing ROV data to OBIS](https://doi.org/10.1109/OCEANS47191.2022.9977379). ROV datasets should have an Event core that documents the hierarchical nature of ROV dives (e.g., ROV dives nested within a cruise), with Occurrence and eMoF extensions to record taxonomic and other measurement data e.g., from sensors. ONC’s pipeline outlines the importance of including `identifiedBy` in order to vet taxon identifications by experts.

### Habitat data

Event Core is perfect for enriching OBIS with interpreted information such as biological community, biotope or habitat type (collectively referred to as 'habitats'). However, the unconstrained nature of the terms `measurementTypeID`, `measurementValueID`, and `measurementUnitID` leads to a risk that habitats measurements are structured inconsistently within the Darwin Core Archive standard and as a result, are not easily discoverable, understood or usable.

As a result, members of the European Marine Observation and Data Network (EMODnet) Seabed Habitats and Biology thematic groups have produced a technical report [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5) that provides guidance on using the Darwin Core eMoF extension to submit habitat data to OBIS, following the ENV-DATA approach and using Seabed Habitats as a use case. Note that the guidelines and structuring approach outlined in this document has not yet been approved or accepted at the global level and is only a recommended approach as agreed upon by EMODnet Seabed Habitats, EMODnet Biology, and OBIS. The implementation at the EurOBIS level may be considered a pilot.

The overarching principles are summarised here. Note that because of the numerous classification systems and priority habitat lists in existence, it is not possible to point to a single vocabulary for populating each of `measurementTypeID`, `measurementValueID` and `measurementUnitID`, as for other measurement types, so below are the *types* of information to include, with an example, as recommended by [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5):

* `measurementTypeID`: A machine-readable URI or DOI reference describing the (version of the) classification system itself. For example: [https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/](https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/)
* `measurementValueID`: If available, a machine-readable URI describing the habitat class in “measurementValue”. For example: [https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/A5.36](https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/A5.36)
* `measurementUnitID`: null because habitat types are unitless.

Please consult the [Duncan et al. (2021) technical report](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5) (title: A standard approach to structuring classified habitat data using the Darwin Core Extended Measurement or Fact Extension) for more details, including:

* how to handle a single event with multiple habitat measurements
* recommended vocabularies and terms for common habitat classification systems
* example eMoF table

For filling measurementType with habitat-related data and/or the dwc:habitat column, you should reference the [NERC vocabulary search](http://vocab.nerc.ac.uk/search_nvs/sxv/?searchstr=habitat&options=identifier,preflabel,altlabel,definition). While the [Coastal and Marine Ecological Classification Standard (CMECS)](https://repository.library.noaa.gov/view/noaa/27552) and the [Environment Ontology (ENVO)](https://sites.google.com/site/environmentontology/?pli=1) also contain habitat vocabularies, OBIS recommends the use of NERC vocabulary. If other vocabularies are used, please provide the NERC vocabulary equivalent as additional records in the eMoF table.

### Tracking data

Encoding Tracking data into Darwin Core follows the same standards as that of survey/sighting data. Tracking data should additionally indicate the accuracy in latitudinal and longitudinal measurements received from the positioning system, grouped by location accuracy classes, recorded in the `coordinateUncertaintyInMeters` field. The Ocean Tracking Network (OTN) has developed some [guidelines](https://github.com/tdwg/dwc-for-biologging) for formatting this type of data in Darwin Core. We summarize the main points below.

Using Event core for tracking data is recommended as there can be multiple events involved in tracking an organism. There are capture/tag and release events, receiver deployment events, and detection occurrences. Note that the capture and release of an organism are not considered to be distinct Occurrence records because they are not natural occurrences. Thus, in the Event core table you may record unique events for:

* The capture of an animal
* The release of an animal
* The deployment of a listening (or receiver) station

Information pertaining to a specific individual is linked by a unique `organismID`. You can use `eventID`s associated with a receiver to record detection occurrences in the Occurrence table. One organism may then have multiple occurrences (and thus multiple occurrenceIDs), but the same `organismID`. Any measurements for an organism taken during capture can be recorded in the extendedMeasurementsOrFact extension, linked to the core by the capture event’s `eventID` as well as the unique `organismID`. For more details, see the [DwC guidelines for biologging](https://github.com/tdwg/dwc-for-biologging).

Extracts from the extendedMeasurementOrFact Extension (eMoF) of the actual dataset [Ningaloo Outlook turtle tracking of Green turtles (Chelonia mydas), Western Australia (2018-present)](https://www.marine.csiro.au/ipt/resource?r=ningaloo_outlook_turtle_tracking), are shown as an example tracking dataset, following [ARGOS Location class codes](http://vocab.nerc.ac.uk/collection/R05/current/).

**extendedMeasurementOrFact (eMoF) extension:**

| id      | measurementID      | occurrenceID | measurementType      | measurementValue | measurementValueID                               |
|---------|--------------------|--------------|----------------------|------------------|--------------------------------------------------|
| 2347540 | 2347540-argosclass | 2347540      | ARGOS Location Class | A                | <http://vocab.nerc.ac.uk/collection/R05/current/A> |
| 2347541 | 2347541-argosclass | 2347541      | ARGOS Location Class | B                | <http://vocab.nerc.ac.uk/collection/R05/current/B> |
| 2347542 | 2347542-argosclass | 2347542      | ARGOS Location Class | 2                | <http://vocab.nerc.ac.uk/collection/R05/current/2> |
| 2347543 | 2347543-argosclass | 2347543      | ARGOS Location Class | 3                | <http://vocab.nerc.ac.uk/collection/R05/current/3> |
