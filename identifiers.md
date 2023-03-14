## Constructing and using indentifier codes

### eventID

Using a unique identifier for each physical sample or subsample in your dataset taken at each location and time is highly recommended to ensure sample traceability and data provenance.  `eventID` is an identifier for an individual sampling or observation event, whereas `parentEventID` is an identifier for a parent event, which is composed of one or more sub-sampling (child) events (eventIDs). 

`eventID` can be used for replicated samples or sub-samples. It is important to make sure each replicate sample receives a unique `eventID`, which could be based on the unique sample ID in your dataset. Sample ID can also be recorded in `materialSampleID`, as OBIS does not need to have separate eventIDs and `materialSampleIDs`. Rather OBIS can treat these two terms as equivalent. Be sure to still fill in the eventID field if you want to use materialSampleID, as OBIS only uses eventID and parentID for structuring datasets, not sample ID. This does not prevent you from using the field if you would like to.

If you do not already have a `materialSampleID`, creating a unique eventID for your data records can be as straightforward as combining different fields from your data. 

:warning: You should consider carefully what combination of fields will generate a **unique** event. Combinations including date, time, location, and depth are common elements to help generate such unique codes.

Including the event type can also be useful for datasets with hierarchical sampling methods (e.g., samples taken from a station within a cruise). Repeating the parentEventID in the child event (use `:` as delimiter) can make the structure of the dataset easier to understand. Nesting event information in this way also allows you to reduce redundancy and still provide information relevant to each level of sampling. 

Broadly, an eventID can take the form of [parentEventID]:[sample type]_[sample ID]

Thus to construct a unique eventID for parent and child events, you join relevant sampling information. Possible configurations (with examples) could include:

* Project_cruise_station_date_sample
    * STAR_arcticsea_st3520_1989-04-04_s01
* Project_habitat_Genus_species_year_sampletype_samplenumber
    * BEE_seamount_Genus_species_2013_cruise_s123
* Institution_year_location_samplemethod_sample
    * Concordia_2003_Coast_Station1_seine_s01
    * Concordia_2003_Coast_Station1_trap_s01

These examples are not exhaustive and other similarly structured variations that fit your data are acceptable. Consider also including year within your eventIDs to ensure codes remain globally unique in subsequent years, which is particularly useful if your sampling protocol is repeated temporally. 

Information related to your sampling events can be assigned to the highest relevant event level in order to avoid repetition of information. For example, if all samples taken from a station occurred at the same depth, this information can be listed once. Variation between samples (e.g., exact time or coordinates) can also be easily reflected for each event. See the table below for a demonstration.


| eventID | parentEventID | type | eventDate | maximumDepthInMeters |
|---------------------------|---------------------|-----------|-------------|------------|
|cruise_1 |  | cruise |  |  |
|cruise_1:station_1 | cruise_1 | station |  | 15 |
|cruise_1:station_1:core_1 | cruise_1:station_1 | sample | 2011-03-06T08:35 | |
|cruise_1:station_1:core_2 | cruise_1:station_1 | cruise_1:station_1 | sample | 2011-03-06T08:52 | |
|cruise_1:station_1:core_1:subsample_1 | cruise_1:station_1:core_1 | subsample |  |  |

We recommend using controlled vocabulary for the "type" column. Although no standards have been agreed upon yet, commonly used terms for event `type` included are `cruise`, `stationVisit`, `transect`, `quadrat`, `sample`, `subSample`. 

Consider another example from a real dataset below:


| eventID                                 | parentEventID                           | eventDate | eventRemarks |
|-----------------------------------------|-----------------------------------------|-----------|--------------|
| IOF_benthos_Plominski_zaljev_2000_crs   |                                         |           | cruise       |
| IOF_benthos_Plominski_zaljev_2000_stat1 | IOF_benthos_Plominski_zaljev_2000_crs   | 2000-08   | stationVisit |
| IOF_benthos_Plominski_zaljev_2000_stat2 | IOF_benthos_Plominski_zaljev_2000_crs   | 2000-08   | stationVisit |
| IOF_benthos_Plominski_zaljev_2000_s01   | IOF_benthos_Plominski_zaljev_2000_stat1 |           | sample       |
| IOF_benthos_Plominski_zaljev_2000_s02   | IOF_benthos_Plominski_zaljev_2000_stat2 |           | sample       |
_Data from [Environmental impact assessments in the eastern part of Adriatic sea - species list of benthic invertebrates and phytobenthos (2000-2010)](http://ipt.vliz.be/eurobis/resource?r=iof_bent_eia_2000_10)._

We can see that each record has a similar eventID structure, except for the last part which indicates the event type - documented in the `eventRemarks` column. In this dataset, records with the eventID `IOF_benthos_Plominski_zaljev_2000_crs` has information applicable for records with eventIDs ending with `_stat1`, `_stat2`, `_s01`, and `_s02` because `_crs` is their parent event. Similarly, information (e.g., date of station visit, coordinates) documented in records with eventID `IOF_benthos_Plominski_zaljev_2000_stat1` is applicable for the two sample records (eventID `_s01` and `_s02`), because these samples were taken at Station 1 (indicated by the parentEventID). These eventIDs could have been nested in another way, such as `IOF_benthos_Plominsku_zaljev_2000_crs:stat1:s01` which would embed the parentEventID into the identifier.

 See also [De Pooter et al. 2017](https://bdj.pensoft.net/articles.php?id=10989&instance_id=3385375) for an example of an event hierarchy in a complex benthos dataset. 

### occurrenceID

`occurrenceID` is an identifier for occurrence records. Each occurrence record must have a unique identifier. Because `occurrenceID` is a required term, you may have to construct a persistent and globally unique identifier for each of your data records if none already exist. 

There are no standardized guidelines yet on designing the persistence of this ID, the level of uniqueness (from within a dataset to globally in OBIS), and the precise algorithm and format for generating the ID. But in the absence of a persistent globally unique identifier, one can be constructed by combining the `institutionCode`, the `collectionCode` and the `catalogNumber` (or autonumber in the absence of a catalogNumber).  This is similar to how [eventID](identifiers#eventid.html) is constructed. Note that the inclusion of `occurrenceID` is also necessary for datasets in the OBIS-ENV-DATA format.

An important consideration for museum specimens: there is the possibility that the institution a specimen is housed at may change. Therefore you may consider omitting institution identifiers within an occurrenceID, because occurrenceID should **not** change over time. 

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