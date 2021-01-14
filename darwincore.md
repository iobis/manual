---
title: Darwin Core
shorttitle: Darwin Core
layout: page
lang: en
identifier: darwincore
breadcrumbs: manual
---

#### Contents

- [Introduction to Darwin Core](#intro)
- [Darwin Core terms](#terms)  
- [Darwin Core guidelines](#guidelines)
    - [Taxonomy and identification](#taxonomy)  
    - [Occurrence](#occurrence)  
    - [Record level terms](#records)  
    - [Location](#location)  
    - [Event](#event)
    - [Time](#time)  
    - [Sampling](#sampling)  

<a class="anchor" name="intro"></a>

## Introduction to Darwin Core

[Darwin Core](http://rs.tdwg.org/dwc/) is a body of standards for biodiversity informatics. It provides stable [terms](http://rs.tdwg.org/dwc/terms/) and vocabularies for sharing biodiversity data. Darwin Core is maintained by [TDWG](http://tdwg.org/) (Biodiversity Information Standards, formerly The International Working Group on Taxonomic Databases).

The old [OBIS schema](http://old.iobis.org/node/304)  was an [OBIS extension](http://iobis.org/obis/obis.xsd) to Darwin Core 1.2., which was based on [Simple Darwin Core](http://rs.tdwg.org/dwc/terms/simple/), a subset of Darwin Core which does not allow any structure beyond rows and columns. It added some terms which were important for OBIS, but were not supported by Darwin Core at the time (e.g. start and end date and start and end latidude and longitude, depth range, lifestage and terms for abundance, biomass and sample size). 

In 2009, the Executive Committee of TDWG announced their ratification of an updated version of Darwin Core as a [TDWG Standard](http://www.tdwg.org/homepage-news-item/article/darwin-core-ratified-as-a-tdwg-standard/). Ratified Darwin Core unifies specializations and innovations emerge from diverse communities, and provides guidelines for ongoing enhancement. The [Darwin Core Quick Reference Guide](http://rs.tdwg.org/dwc/terms/) links to TDWG’s term definitions and related practices for Ratified Darwin Core. 

In December 2013, the [3rd session of the IODE Steering Group for OBIS](http://iobis.org/about/sg-obis-3/) agreed to transition OBIS globally to the TDWG-Ratified version of Darwin Core, and the mapping of the (old) OBIS specific terms to Darwin Core can be found [here](http://rs.tdwg.org/dwc/terms/history/versions/index.htm#dwcobis).

<a class="anchor" name="terms"></a>

## Darwin Core terms

DwC terms correspond to the column names of your dataset. A list of all possible Darwin Core terms can be found on [TDWG](http://rs.tdwg.org/dwc/terms/index.htm#Occurrence). Below is an overview of the most relevant Darwin Core terms to consider when contributing to OBIS, with guidelines regarding their use. 

Note that OBIS currently has eight required DwC terms: `occurrenceID`, `eventDate`, `decimalLongitude`, `decimalLatitude`, `scientificName`, `scientificNameID`, `occurrenceStatus`, `basisOfRecord`.

The following DwC terms are related to the Class _Taxon_:

- scientificName
- scientificNameID
- scientificNameAuthorship
- kingdom
- taxonRank
- taxonRemarks

The following DwC terms are related to the Class _Identification_:

- identifiedBy
- dateIdentified
- identificationReferences
- identificationRemarks
- identificationQualifier
- typeStatus

The following DwC terms are related to the Class _Occurrence_:

- occurrenceID
- occurrenceStatus
- recordedBy
- individualCount (OBIS recommends to add measurements to [eMoF](/manual/dataformat/#emof))
- organismQuantity (OBIS recommends to add measurements to [eMoF](/manual/dataformat/#emof))
- organismQuantityType (OBIS recommends to add measurements to [eMoF](/manual/dataformat/#emof))
- sex (OBIS recommends to add measurements to [eMoF](/manual/dataformat/#emof))
- lifeStage (OBIS recommends to add measurements to [eMoF](/manual/dataformat/#emof))
- behavior
- associatedTaxa
- occurrenceRemarks
- associatedMedia
- associatedReferences
- associatedSequences
- catalogNumber
- preparations

The following DwC terms are related to the Class _Record level_:

- basisOfRecord
- institutionCode
- collectionCode
- collectionID
- bibliographicCitation
- modified
- dataGeneralizations

The following DwC terms are related to the Class _Location_:

- decimalLatitude
- decimalLongitude
- coordinateUncertaintyInMeters
- geodeticDatum
- footprintWKT
- minimumDepthInMeters
- maximumDepthInMeters
- locality
- waterBody
- islandGroup
- island
- country
- locationAccordingTo
- locationRemarks
- locationID

The following DwC terms are related to the Class _Event_:

- parentEventID
- eventID
- eventDate
- type
- habitat
- samplingProtocol (OBIS recommends to add sampling facts to [eMoF](/manual/dataformat/#emof))
- sampleSizeValue (OBIS recommends to add sampling facts to [eMoF](/manual/dataformat/#emof))
- SampleSizeUnit (OBIS recommends to add sampling facts to [eMoF](/manual/dataformat/#emof))
- samplingEffort (OBIS recommends to add sampling facts to [eMoF](/manual/dataformat/#emof))

The following DwC terms are related to the Class _MaterialSample_:

- materialSampleID

<a class="anchor" name="guidelines"></a>

## Darwin Core guidelines 

<a class="anchor" name="taxonomy"></a>

### Taxonomy and identification 

`scientificName` (required term) should always contain the originally recorded scientific name, even if the name is currently a synomym. This is necessary to be able to track back records to the original dataset. The name should be at the lowest possible taxonomic rank, preferably at species level or lower, but higher ranks, such as genus, family, order, class etc are also acceptable. We recommend to not include authorship in `scientificName`, and only use `scientificNameAuthorship` for that purpose. The `scientificName` term should only contain the name and not identification qualifications (such as ?, confer or affinity), which should instead be supplied in the `IdentificationQualifier` term, see example below. `taxonRemarks` can capture comments or notes about the taxon or name.

A [WoRMS](http://www.marinespecies.org/) LSID should be added in `scientificNameID` (required term), OBIS will use this identifier to pull the taxonomic information from the World Register of Marine Species (WoRMS) into OBIS, such as the taxonomic classification and the accepted name in case of invalid names or synonyms. LSIDs are persistent, location-independent, resource identifiers for uniquely naming biologically significant resources. More information on LSIDs can be found at [www.lsid.info](http://www.lsid.info/). For example, the WoRMS LSID for _Solea solea_ is: urn:lsid:marinespecies.org:taxname:127160, and can be found at the bottom of each WoRMS taxon page, e.g. [_Solea solea_](http://marinespecies.org/aphia.php?p=taxdetails&id=127160). 

`kingdom` and `taxonRank` can help us in identifying the provided `scientificName` in case the name is not available in WoRMS.  `kingdom` in particular can help us find alternative genus-species combinations and avoids linking the name to homonyms. Please contact the WoRMS data management team (info@marinespecies.org) in case the scientificName is missing in WoRMS. `kingdom` and `taxonRank` are not necessary when a correct `scientificNameID` is provided.

OBIS recommends providing information about how an identification was made, for example by which ID key, species guide or expert; and by which method (e.g morphology vs. genomics), etc. The person's name who made the taxonomic identification can go in `identifiedBy` and _when_ in `dateIdentified`. Use the ISO 8601:2004(E) standard for date and time, for instructions see [Time](#time). A list of references, such as field guides used for the identification can be listed in `identificationReferences`. Any other information, such as identification methods, can be added to `identificationRemarks`. 

If the record represents a nomenclatural type specimen, the term `typeStatus` can be used, e.g. for holotype, syntype, etc. 

In case of uncertain identifications, and the scientific name contains qualifiers such as _cf._, _?_ or _aff._, then this name should go in `identificationQualifier`, and `scientificName` should contain the name of the lowest possible taxon rank that refers to the most accurate identification. E.g. if the specimen was accurately identified down to genus level, but not species level, then the scientificName should contain the name of the genus, the scientificNameID should contain the LSID the genus and the identificationQualifier should contain the uncertain species name combined with _?_ or other qualifiers.    

Example: 

```
   scientificName   scientificNameAuthorship                          scientificNameID   taxonRank identificationQualifier
----------------- -------------------------- ----------------------------------------- ----------- ----------------------
Lanice conchilega               Pallas, 1766 urn:lsid:marinespecies.org:taxname:131495     species 
            Gadus             Linnaeus, 1758 urn:lsid:marinespecies.org:taxname:125732       genus             cf. morhua
```

<a class="anchor" name="occurrence"></a>

### Occurrence

`occurrenceID` (required term) is an identifier for the occurrence record and should be persistent and globally unique. If the dataset does not yet contain (globally unique) occurrenceIDs, then they should be created. There are no guidelines yet on designing the persistence of this ID, the level of uniqueness (from dataset to global) and the precise algorithm and format for generating the ID, but in the absence of a persistent globally unique identifier, one could be constructed by combining the `institutionCode`, the `collectionCode` and the `catalogNumber` (or autonumber in the absence of a catalogNumber), see further below. Note that the inclusion of occurrenceID is also necessary for datasets in the [OBIS-ENV-DATA](/manual/dataformat#obis-env-data) format.

`occurrenceStatus` (required term) is a statement about the presence or absence of a taxon at a location. It is an important term, because it allows us to distinguish between presence and absence records. It is a required term and should be filled in with either `present` or `absent`.

A few terms related to quantity: `organismQuantity` and `organismQuantityType`, have been added to the TDWG ratified Darwin Core. This is a lot more versatile than the older `individualCount` field. However, OBIS recommends to use the [Extended MeasurementorFact extension](/manual/dataformat/#emof) for quantitative measurements because of the standardization of terms and the fact that you can link these measurements to sampling events and factual sampling information. 

Please take note that OBIS recommends all quantitative measurements and sampling facts to be treated in the `ExtendedMeasurementOrFact` extension and not in the Darwin Core files.

In the case specimens were collected and stored (e.g. museum collections), the `catalogNumber` and `preparations` terms can be used to provide the identifier for the record in the collection and to document the preparation and preservation methods. The term `typeStatus` see above (under identification) can be used in this context too.

Both `associatedMedia`, `associatedReferences` and `associatedSequences` are global unique identifiers or URIs pointing to respectively associated media (e.g. online image or video), associated literature (e.g. DOIs) or genetic sequence information (e.g. GenBANK ID). 

`associatedTaxa` include a list (concatenated and separated) of identifiers or names of taxa and their associations with the Occurrence, e.g. the species occurrence was associated to the presence of kelp such as _Laminaria digitata_.

The recommended vocabulary for `sex` see [BODC vocab : S10](http://vocab.nerc.ac.uk/collection/S10/current/), for `lifeStage` see [BODC vocab: S11](http://vocab.nerc.ac.uk/collection/S10/current/), `behavior` (no vocab available), and `occurrenceRemarks` can hold any comments or notes about the Occurrence.

`recordedBy` can hold a list (concatenated and separated) of names of people, groups, or organizations responsible for recording the original Occurrence. The primary collector or observer, especially one who applies a personal identifier (recordNumber), should be listed first. 

<a class="anchor" name="records"></a>

### Record level terms

`basisOfRecord` (required term) specifies the nature of the record, i.e. whether the occurrence record is based on a stored specimen or an observation. In case the specimen is collected and stored in a collection (e.g. at a museum, university, research institute), the options are `PreservedSpecimen` (e.g. preserved in ethanol, tissue etc.), `FossilSpecimen` (fossil, which allows OBIS to make the distinction between the date of collection and the time period the specimen was assumed alive) or `LivingSpecimen` (an intentionally kept/cultivated living specimen e.g. in an aquarium or culture collection). In case no specimen is deposited, the basis of record is either `HumanObservation` (e.g bird sighting, benthic sample but specimens were discarded after counting), or `MachineObservation` (e.g. for occurrences based on automated sensors such as DNA sequencers, image recognition etc). 

When the basisOfRecord is a _preservedSpecimen_, _LivingSpecimen_ or _FossilSpecimen_ please also add the `institutionCode`, `collectionCode` and `catalogNumber`, which will enable people to visit the collection and re-examine the material. Sometimes, for example in case of living specimens, a dataset can contain records pointing to the origin, the in-situ sampling position as well as a record referring to the ex-situ collection. In this case please add the event type information in `type` (see [OBIS manual: event](/manual/darwincore/#event).

`institutionCode` identifies the custodian institute (often by acronym), `collectionCode` identifies the collection or dataset within that institute. Collections cannot belong to multiple institutes, so all records within a collection should have the same `institutionCode`. The `catalogNumber` is an identifier for the record within the dataset or collection.

As explained before, the `occurrenceID` could for example be constructed by combining the `institutionCode`,  `collectionCode` and `catalogNumber`:

```xml
institutionCode   collectionCode   catalogNumber     occurrenceID
--------------- ---------------- --------------- ----------------
         UGhent             NSBS             123   UGhent_NSB_123 
         UGhent             NSBS             456   UGhent_NSB_456 
```

`bibliographicCitation` allows for providing different citations on record level, while a single citation for the entire dataset can and should be provided in the metadata (see [EML](/manual/eml)). The citation at record level can have the format of a chapter in a book, where the book is the dataset citation. The record citation will have preference over the dataset citation. We do not, however, recommend to create different citations for every record, as this will explode the number of citations and will hamper the re-use of data.   

`modified` is the most recent date-time on which the resource was changed. It is required to use the ISO 8601:2004(E) standard, for instructions see [Time](#time).

`dataGeneralizations` refers to actions taken to make the shared data less specific or complete than in its original form. Suggests that alternative data of higher quality may be available on request. This can be the case for occurrences of vulnerable or endangered species and there positions are converted to the center of grid cells. 

<a class="anchor" name="location"></a>

### Location

`decimalLatitude` and `decimalLongitude` (required terms) are the geographic latitude and longitude (in decimal degrees), using the spatial reference system given in `geodeticDatum` of the geographic center of a Location. The number of decimals should be appropriate for the level of uncertainty in `coordinateUncertaintyInMeters` (at least within an order of magnitude). `coordinateUncertaintyInMeters` is the radius of the smallest circle around the given position containing the whole location. Regarding `decimalLatitude`, positive values are north of the Equator, negative values are south of it. All values lie between -90 and 90, inclusive. Regarding `decimalLongitude`, positive values are east of the Greenwich Meridian, negative values are west of it. All values lie between -180 and 180, inclusive.

In OBIS, the spatial reference system to be documented in `geodeticDatum` is [EPSG:4326](https://www.epsg-registry.org/). Coordinates in degrees/minutes/seconds can be converted to decimal degrees using our [coordinates tool](http://iobis.github.io/coordinates/). We also provide a [tool](https://obis.org/maptool) to check coordinates or to determine coordinates for a location (point, transect or polygon) on a map. This tool also allows geocoding location names using [marineregions.org](http://www.marineregions.org/). 

The name of the place or location can be provided in `locality`, and if possible linked by a `locationID` using a persistent ID from a gazetter, such as the MRGID from [MarineRegions](http://www.marineregions.org/gazetteer.php?p=search). If the species occurrence only contains the name of the `locality`, but not the exact coordinates, we recommend using a geocoding service to obtain the coordinates. [Marine Regions](http://www.marineregions.org/) has a [search interface](http://www.marineregions.org/gazetteer.php?p=search) for geographic names, and provides coordinates and often precision in meters, which can go into `coordinateUncertaintyInMeters`. Another option is to use the [Getty Thesaurus of Geographic Names](http://www.getty.edu/research/tools/vocabularies/tgn/) or [Google Maps](http://maps.google.com): after looking up a location, the decimal coordinates can be found in the page URL. Additional information about the locality can also be stored in DwC terms such as `waterBody`, `islandGroup`, `island` and `country`. `locationAccordingTo` should provide the name of the gazetteer that is used to obtain the coordinates for the locality. 

`locationID` is an identifier for the set of location information (e.g. station ID, or MRGID from [marineregions](http://www.marineregion.org)), for example the [Balearic Plain](http://www.marineregions.org/gazetteer.php?p=details&id=3956) has MRGID: [http://marineregions.org/mrgid/3956](http://marineregions.org/mrgid/3956).

A [Well-Known Text](https://en.wikipedia.org/wiki/Well-known_text) (WKT) representation of the shape of the location can be provided in `footprintWKT`. This is particularly useful for tracks, transects, tows, trawls, habitat extent or when an exact location is not known. WKT strings can be created using our [WKT tool](https://obis.org/maptool). This tool also calculates a midpoint and a radius, which can then be added to `decimalLongitude`, `decimalLatitude`, and `coordinateUncertaintyInMeters` respectively. There is also an [R tool](https://github.com/iobis/obistools#calculate-centroid-and-radius-for-wkt-geometries) to calculate the centroid and radius for WKT polygons. 

<img src="/images/wkttool2.png" class="img-responsive"/>

Some examples of WKT strings:

```text
LINESTRING (30 10, 10 30, 40 40)
POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))
MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))
MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))
```
Keep in mind while filling in `minimumDepthInMeters` and `maximumDepthInMeters` that this should be the depth at which the sample was taken and not the water column depth at that location.

<a class="anchor" name="event"></a>

### Event

`eventID` is an identifier for the sampling or observation event. `parentEventID` is an identifier for a parent event, which is composed of one or more sub-sampling (child) events (eventIDs). `eventID` can be used for replicate samples or sub-samples. Make sure each replicate sample receives a unique event ID, which could be based on the unique sample ID in your dataset (which can also be in recorded in `materialSampleID`). OBIS does not need to have separate `eventID`s and `materialSampleID`s, rather OBIS can treat these two terms as equivalent. The unique sample ID for each physical sample or subsample at each location and time is highly recommended information for sample tracebility and data provenance. Repeating the parentEventID in the child event (use `:` as delimiter) will make the structure of the dataset easier to understand. See also [De Pooter et al. 2017](https://bdj.pensoft.net/articles.php?id=10989&instance_id=3385375) for an example of an event hierarchy in a complex benthos dataset. 

 `habitat` is a category or description of the habitat in which the Event occurred (e.g. seamount, hydrothermal vent, seagrass, rocky shore, intertidal, ship wreck etc.)

Example: 

```xml
                 eventID            parentEventID     eventRemarks
------------------------           --------------    -------------
                Cruise-X                                    cruise
      Cruise-X:Station-A                 Cruise-X          station
   Cruise-X:Station-A:01       Cruise-X:Station-A           sample  
Cruise-X:Station-A:01:aa    Cruise-X:Station-A:01        subsample
Cruise-X:Station-A:01:bb    Cruise-X:Station-A:01        subsample   
   Cruise-X:Station-A:02       Cruise-X:Station-A           sample
```

<a class="anchor" name="time"></a>

### Time

The date and time at which an occurrence was recorded goes in `eventDate`. This term uses the [ISO 8601 standard](https://en.wikipedia.org/wiki/ISO_8601). OBIS recommends using the extended ISO 8601 format with hyphens.

<img src="https://imgs.xkcd.com/comics/iso_8601.png" class="img-responsive"/>

ISO 8601 dates can represent moments in time at different resolutions, as well as time intervals, which use `/` as a separator. Date and time are separated by `T`. Times can have a time zone indicator at the end, if this is not the case then the time is assumed to be local time. When a time is UTC, a `Z` is added. Some examples of ISO 8601 dates are:

```text
1973-02-28T15:25:00
2005-08-31T12:11+12
1993-01-26T04:39+12/1993-01-26T05:48+12
2008-04-25T09:53
1948-09-13
1993-01/02
1993-01
1993
```

Besides year, month and day numbers, ISO 8601 also supports ordinal dates (year and day number within that year) and week dates (year, week, and day number within that week). These dates are less common and have the formats `YYYY-DDD` (for example `2015-023`) and `YYYY-Www-D` (for example `2014-W26-3`).

ISO 8601 [durations](https://en.wikipedia.org/wiki/ISO_8601#Durations) should not be used.

<a class="anchor" name="sampling"></a>

### Sampling

Information on `sampleSizeValue` and `sampleSizeUnit` is very important when an organism quantity is specified. However, with [OBIS-ENV-DATA](/manual/dataformat/) it was felt that the extended MeasurementorFact ([eMoF](http://rs.gbif.org/extension/obis/extended_measurement_or_fact.xml)) extension would be better suited than the DwC Event Core to store the sampled area and/or volume because in some cases sampleSize by itself may not be detailed enough to allow interpretation of the sample. For instance, in the case of a plankton tow, the volume of water that passed through the net is relevant. In case of Niskin bottles, the volume of sieved water is more relevant than the actual volume in the bottle. In these examples, as well as generally when recording sampling effort for all protocols, eMoF enables greater flexibility to define parameters, as well as the ability to describe the entire sample and treatment protocol through multiple parameters. eMoF also allows you to standardize your terms to a controlled vocabulary.

The next chapter deals with the metadata (description of the dataset) in [Ecological Metadata Language](/manual/eml). 
