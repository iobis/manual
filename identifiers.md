## Constructing and using indentifier codes

**Content**

* [Introduction to identifiers](#introduction-to-identifiers)
* [eventID](#eventid)
* [occurrenceID](#occurrenceid)

### Introduction to identifiers

Using a unique identifier for each event, physical sample, or subsample in your dataset taken at each location and time is highly recommended to ensure sample traceability and data provenance. For OBIS, the two main identifiers of concern are `occurrenceID` and `eventID`. However if you look at [TDWG's Darwin Core reference guide](https://dwc.tdwg.org/terms/), you may see that there are several other terms for identifiers. When creating identifiers for your data, or mapping an existing identifier field to Darwin Core vocabulary, you may hesitate between choosing between `eventID`, `occurrenceID`, `organismID`, `taxonID`, `scientificNameID`, `recordNumber`, `materialEntityID`, `materialSampleID`, and `catalogNumber`. Knowing the difference between these and when to use each may seem confusing at first. Review the table below for a quick comparison of definitions and when to use each DwC identifier term. Note this table is not exhaustive of all possible DwC identifer terms, but includes many that are relevant for occurrence records.

|Identifier Name | Definition | When to Use |
|----|----|----|
| `eventID` | An identifier for the set of information associated with a dwc:Event (something that occurs at a place and time). May be a global unique identifier or an identifier specific to the data set. | Used to distinguish between events in your data, *not* associated with an occurrence, e.g. a quadrat sample, an ROV deployment, a trolling event within a cruise |
| `occurrenceID` | An identifier for the dwc:Occurrence (as opposed to a particular digital record of the dwc:Occurrence). In the absence of a persistent global unique identifier, construct one from a combination of identifiers in the record that will most closely make the dwc:occurrenceID globally unique. | Used to distinguish between occurrence records, i.e. when the presence of a taxon is detected (or not for absence records). If the same individual is detected multiple times, each detection will have unique a `occurrenceID` |
| `organismID` | An identifier for the dwc:Organism instance (as opposed to a particular digital record of the dwc:Organism). May be a globally unique identifier or an identifier specific to the data set. | Use to identify a *specific* organism, an individual, or a specific group of organisms (e.g. a specific pod of cetaceans, a specific shark) |
| `taxonID` | An identifier for the set of dwc:Taxon information. May be a global unique identifier or an identifier specific to the data set. | Used to identify a specific taxonomic rank, not commonly used in OBIS because `scientificNameID` is prioritized |
| `scientificNameID` | An identifier for the nomenclatural (not taxonomic) details of a scientific name. | Used to provide an identifier for the name provided to `scientificName`. For OBIS, WoRMS LSIDs are recommended for this field |
| `recordNumber` |  An identifier given to the dwc:Occurrence at the time it was recorded. Often serves as a link between field notes and a dwc:Occurrence record, such as a specimen collector's number. | Typically used when the occurrence is associated with a collected specimen. Different from `occurrenceID` because it may not be globally unique, whereas `occurrenceID` must be unique |
| `materialEntityID` | An identifier for a particular instance of a dwc:MaterialEntity. Intended to uniquely and persistently identify a particular dwc:MaterialEntity within some context. | Used to identfy a physical object (i.e. the MaterialEntity: any kind of physical sample, preserved specimen, fossil, specific DNA molecule, etc.), instead of a digital representation of the object. E.g. an identifer for a specific tissue sample within an organization or institution |
| `materialSampleID` | An identifier for the dwc:MaterialSample (as opposed to a particular digital record of the dwc:MaterialSample). In the absence of a persistent global unique identifier, construct one from a combination of identifiers in the record that will most closely make the dwc:materialSampleID globally unique.| Used to identify a physical sample, can be whole or part of an entity, e.g. sediment sample, a tissue sample, a whole preserved organism in a collection. Different from `catalogNumber` and `recordNumber` because it must be globally unique. |
| `catalogNumber` | An identifier (preferably unique) for the record within the data set or collection. | Usually used as an identifier given for a specimen within a musuem collection |

Not every one of these identifiers will be relevant for your dataset, but remember that `eventID`, `occurenceID`, and `scientificNameID` are always required for datasets published to OBIS. See the below recommendations for populating `eventID` and `occurenceID`. `scientificNameID` guidelines can be found [here](darwin_core.html#taxonomy-and-identification).

### eventID

`eventID` is an identifier for an individual sampling or observation event, whereas `parentEventID` is an identifier for a parent event, which is composed of one or more sub-sampling (child) events (`eventIDs`).

`eventID` can be used for replicated samples or sub-samples. It is important to make sure each replicate sample receives a unique `eventID`, which could be based on the unique sample ID in your dataset. Sample ID can also be recorded in `materialSampleID`, as OBIS does not need to have separate `eventID`s and `materialSampleIDs`. Rather OBIS can treat these two terms as equivalent. Be sure to still fill in the `eventID` field if you want to use `materialSampleID`, as OBIS only uses `eventID` and `parentEventID` for structuring datasets, not sample ID. This does not prevent you from using the field if you would like to.

If you do not already have a `materialSampleID`, creating a unique `eventID` for your data records can be as straightforward as combining different fields from your data.

> **Note**
> You should consider carefully what combination of fields will generate a **unique** event. Combinations including date, time, location, and depth are common elements to help generate such unique codes.

Including the event type can also be useful for datasets with hierarchical sampling methods (e.g., samples taken from a station within a cruise). Repeating the `parentEventID` in the child event (use `:` as delimiter) can make the structure of the dataset easier to understand. Nesting event information in this way also allows you to reduce redundancy and still provide information relevant to each level of sampling.

Broadly, an `eventID` can take the form of `[parentEventID]:[sample type]_[sample ID]`

Thus to construct a unique `eventID` for parent and child events, you join relevant sampling information. Possible configurations (with examples) could include:

- Project_cruise_station_date_sample
  - STAR_arcticsea_st3520_1989-04-04_s01
- Project_habitat_Genus_species_year_sampletype_samplenumber
  - BEE_seamount_Genus_species_2013_cruise_s123
- Institution_year_location_samplemethod_sample
  - Concordia_2003_Coast_Station1_seine_s01
  - Concordia_2003_Coast_Station1_trap_s01

These examples are not exhaustive and other similarly structured variations that fit your data are acceptable. Consider also including year within your `eventID`s to ensure codes remain globally unique in subsequent years, which is particularly useful if your sampling protocol is repeated temporally. Remember, what is the main information about a sampling event that helps you identify it? For instance, it is helpful when we know the location, date, project, habitat. So you can build your `eventID` code based on this information and ensuring they will not repeat (e.g., will result in a unique identifier).

Information related to your sampling events can be assigned to the highest relevant event level in order to avoid repetition of information. For example, if all samples taken from a station occurred at the same depth, this information can be listed once. Variation between samples (e.g., exact time or coordinates) can also be easily reflected for each event. See the table below for a demonstration.

| eventID | parentEventID | eventRemarks | eventDate | maximumDepthInMeters |
|-----------------|--------------|---------|-----------|----------|
|cruise_1 |  | cruise |  |  |
|cruise_1:station_1 | cruise_1 | station |  | 15 |
|cruise_1:station_1:core_1 | cruise_1:station_1 | sample | 2011-03-06T08:35 | |
|cruise_1:station_1:core_2 | cruise_1:station_1 | sample | 2011-03-06T08:52 | |
|cruise_1:station_1:core_1:subsample_1 | cruise_1:station_1:core_1 | subsample |  |  |

We recommend using controlled vocabulary for the "type" column. Although no standards have been agreed upon yet, commonly used terms for event `type` included are `cruise`, `stationVisit`, `transect`, `quadrat`, `sample`, `subSample`.

Consider another example from a real dataset below:

| eventID                                 | parentEventID                           | eventDate | eventRemarks |
|--------------------------------|------------------------------|-----------|--------------|
| IOF_benthos_Plominski_zaljev_2000_crs   |                                         |           | cruise       |
| IOF_benthos_Plominski_zaljev_2000_stat1 | IOF_benthos_Plominski_zaljev_2000_crs   | 2000-08   | stationVisit |
| IOF_benthos_Plominski_zaljev_2000_stat2 | IOF_benthos_Plominski_zaljev_2000_crs   | 2000-08   | stationVisit |
| IOF_benthos_Plominski_zaljev_2000_s01   | IOF_benthos_Plominski_zaljev_2000_stat1 |           | sample       |
| IOF_benthos_Plominski_zaljev_2000_s02   | IOF_benthos_Plominski_zaljev_2000_stat2 |           | sample       |

_Data from [Environmental impact assessments in the eastern part of Adriatic sea - species list of benthic invertebrates and phytobenthos (2000-2010)](http://ipt.vliz.be/eurobis/resource?r=iof_bent_eia_2000_10)._

We can see that each record has a similar `eventID` structure, except for the last part which indicates the event type - documented in the `eventRemarks` column. In this dataset, records with the `eventID` `IOF_benthos_Plominski_zaljev_2000_crs` has information applicable for records with `eventID`s ending with `_stat1`, `_stat2`, `_s01`, and `_s02` because `_crs` is their parent event. Similarly, information (e.g., date of station visit, coordinates) documented in records with `eventID` `IOF_benthos_Plominski_zaljev_2000_stat1` is applicable for the two sample records (`eventID` `_s01` and `_s02`), because these samples were taken at Station 1 (indicated by the `parentEventID`). These `eventID`s could have been nested in another way, such as `IOF_benthos_Plominsku_zaljev_2000_crs:stat1:s01` which would embed the `parentEventID` into the identifier.

 See also [De Pooter et al. 2017](https://bdj.pensoft.net/articles.php?id=10989&instance_id=3385375) for an example of an event hierarchy in a complex benthos dataset.

Watch this video for a demonstration on how to construct eventIDs:

  <iframe width="560" height="315"
src="https://www.youtube.com/embed/Upt6LPJ0Bn8"
frameborder="0"
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen></iframe>

### occurrenceID

`occurrenceID` is an identifier for occurrence records. Each occurrence record should have a globally unique identifier. Because `occurrenceID` is a required term, you may have to construct a persistent and globally unique identifier for each of your data records if none already exists (e.g., if records were not labeled with unique identifiers before, such as during sample processing or image/sensor detection).

There are no standardized guidelines yet on designing the persistence of this ID, the level of uniqueness (from within a dataset to globally in OBIS), and the precise algorithm and format for generating the ID. But in the absence of a persistent globally unique identifier, one can be constructed by combining the `institutionCode`, the `collectionCode` and the `catalogNumber` (or autonumber in the absence of a catalogNumber).  This is similar to how [`eventID`](#eventid) is constructed. You may also follow [Life Science Identifiers](https://www.labkey.org/Documentation/wiki-page.view?name=lsidOverview) guidelines. Note that the inclusion of `occurrenceID` is also necessary for datasets in the [OBIS-ENV-DATA](data_format.html#obis-holds-more-than-just-species-occurrences-the-env-data-approach) format.

An important consideration for museum specimens: there is the possibility that the institution a specimen is housed at may change. Therefore you may consider omitting institution identifiers within an `occurrenceID`, because `occurrenceID` should **not** change over time.

See the example below:

| modified            | institutionCode | collectionCode                 |
|---------------------|-----------------|--------------------------------|
| 2017-02-27 15:47:31 | Ugent           | Vegetation_Gazi_Bay(Kenya)1987 |
| 2017-02-27 15:47:31 | Ugent           | Vegetation_Gazi_Bay(Kenya)1987 |
| 2017-02-27 15:47:31 | Ugent           | Vegetation_Gazi_Bay(Kenya)1987 |

| basisOfRecord    | occurrenceID                              | catalogNumber                             |
|------------------|-------------------------------------------|-------------------------------------------|
| HumanObservation | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7553 | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7553 |
| HumanObservation | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7554 | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7554 |
| HumanObservation | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7555 | Ugent_Vegetation_Gazi_Bay(Kenya)1987_7555 |

_Data from [Algal community on the pneumatophores of mangrove trees of Gazi Bay in July and August 1987](http://ipt.vliz.be/eurobis/resource?r=vegetation_gazi_bay_kenya_1987)._
