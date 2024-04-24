# Formatting data tables

## Darwin Core Term Checklist for OBIS

There are many Darwin Core terms listed in the [TDWG quick reference guide](https://dwc.tdwg.org/terms/). However, not all these terms are necessary for publishing data to OBIS.

For your convenience, we have created a checklist of all the Darwin Core terms relevant for OBIS data providers. You can reference this list to quickly see which terms are required by OBIS, which data table (Event, Occurrence, eMoF, DNA) they can be found in, and which Darwin Core class each term belongs to. These terms correlate with the [IPT vocabulary mapping](ipt.html#map-your-data-to-darwin-core) you will do when it comes time to publish your dataset. You may notice some terms are accepted in multiple data tables (e.g., Event and Occurrence) - this is because it depends on your dataset structure. If you have an Event Core, you will include some terms that would not be included if you had Occurrence Core. For guidance on specific class terms (e.g., location, taxonomy, etc.), see the [Darwin Core](darwin_core.html#darwin-core-guidelines) section of the manual.

Note that when you publish your dataset on the IPT, if you use a term not listed below it will be an unmapped field and will **not** be published alongside your data. You may still wish to include such fields in your dataset if you are publishing to other repositories, just know that they will not be included in your OBIS dataset. You may include this information either by putting it in the `dynamicProperties` field in JSON format, or putting the information into the [eMoF](format_emof.html). Alternatively, you may have fields that you do not wish to be published and that do not correspond to one of these terms (e.g. personal notes). This is okay - if they are not mapped to one of the terms, that column in your dataset will not be published.

| Term | OBIS Required | Term's DarwinCore Class | Event Table | Occurrence Table | eMoF Table | DNA Table  |
|---------|-----------|---------|----------|--------|----------|----------|
| eventDate | required |  event |  x | x |  |  |
| eventID | required | event | x | x | x |  |
| decimalLatitude | required | location | x | x |  |  |
| decimalLongitude | required | location | x | x |  |  |
| occurrenceID | required | occurrence |  | x | x | x |
| occurrenceStatus | required | occurrence |  | x |  |  |
| basisOfRecord | required | record |  | x |  | x |
| scientificName | required | taxon |  | x |  |  |
| scientificNameID |  strongly recommended | taxon |  | x |  |  |
| DNA_sequence | strongly recommended | dna |  |  |  | x |
| env_broad_scale | strongly recommended | dna |  |  |  | x |
| env_local scale | recommended | dna |  |  |  | x |
| env_medium | strongly recommended | dna |  |  |  | x |
| lib_layout | recommended | dna |  |  |  | x |
| nucl_acid_amp | recommended | dna |  |  |  | x |
| nucl_acid_ext | recommended | dna |  |  |  | x |
| otu_class_appr | recommended | dna |  |  |  | x |
| otu_db | recommended | dna |  |  |  | x |
| otu_seq_comp_appr | recommended | dna |  |  |  | x |
| pcr_primer_forward | strongly recommended | dna |  |  |  | x |
| pcr_primer_name_forward | strongly recommended | dna |  |  |  | x |
| pcr_primer_name_reverse | strongly recommended | dna |  |  |  | x |
| pcr_primer_reference | strongly recommended | dna |  |  |  | x |
| pcr_primer_reverse | strongly recommended | dna |  |  |  | x |
| samp_name | recommended | dna |  |  |  | x |
| samp_vol_we_dna_ext | recommended | dna |  |  |  | x |
| seq_meth | recommended | dna |  |  |  | x |
| sop | recommended | dna |  |  |  | x |
| target_gene | strongly recommended | dna |  |  |  | x |
| target_subfragment | strongly recommended | dna |  |  |  | x |
| day | recommended | event | x | x |  |  |
| endDayOfYear | recommended | event | x | x |  |  |
| eventRemarks | optional | event | x | x |  |  |
| eventTime | recommended | event | x | x |  |  |
| fieldNotes | optional | event | x |  |  |  |
| fieldNumber | optional | event | x |  |  |  |
| habitat | recommended | event | x |  | x |  |
| month | strongly recommended | event | x | x |  |  |
| parentEventID | required (if exists) | event | x |  |  |  |
| sampleSizeUnit | strongly recommended | event |  | x | x |  |
| sampleSizeValue | strongly recommended | event |  | x | x |  |
| samplingEffort | strongly recommended | event |  | x | x |  |
| samplingProtocol | strongly recommended | event |  | x | x |  |
| startDayOfYear | recommended | event | x |  |  |  |
| verbatimEventDate | recommended | event | x |  |  |  |
| year | strongly recommended | event | x | x |  |  |
| bed | optional | geologicalContext | x | x |  |  |
| earliestAgeOrLowestStage | optional | geologicalContext | x | x |  |  |
| earliestEonOrLowestEonothem | optional | geologicalContext | x | x |  |  |
| earliestEpochOrLowestSeries | optional | geologicalContext | x | x |  |  |
| earliestEraOrLowestErathem | optional | geologicalContext | x | x |  |  |
| earliestPeriodOrLowestSystem | optional | geologicalContext | x | x |  |  |
| formation | optional | geologicalContext | x | x |  |  |
| group | optional | geologicalContext | x | x |  |  |
| highestBiostratigraphicZone | optional | geologicalContext | x | x |  |  |
| latestAgeOrHighestStage | optional | geologicalContext | x | x |  |  |
| latestEonOrHighestEonothem | optional | geologicalContext | x | x |  |  |
| latestEpochOrHighestSeries | optional | geologicalContext | x | x |  |  |
| latestEraOrHighestErathem | optional | geologicalContext | x | x |  |  |
| latestPeriodOrHighestSystem | optional | geologicalContext | x | x |  |  |
| lithostratigraphicTerms | optional | geologicalContext | x | x |  |  |
| lowestBiostratigraphicZone | optional | geologicalContext | x | x |  |  |
| member | optional | geologicalContext | x | x |  |  |
| dateIdentified | optional | identification |  | x |  |  |
| identificationID | optional | identification |  | x |  |  |
| identificationQualifier | recommended | identification |  | x |  |  |
| identificationReferences | optional (required for imaging data) | identification |  | x |  |  |
| identificationRemarks | recommended | identification |  | x |  |  |
| identificationVerificationStatus | optional (required for imaging data) | identification |  | x |  |  |
| identifiedBy | optional (required for imaging data) | identification |  | x |  |  |
| identifiedByID | optional | identification |  | x |  |  |
| typeStatus | optional | identification |  | x |  |  |
| continent | strongly recommended | location | x | x |  |  |
| coordinatePrecision | strongly recommended | location | x | x |  |  |
| coordinateUncertaintyInMeters | strongly recommended | location | x | x |  |  |
| country | recommended | location | x | x |  |  |
| countryCode | optional | location | x | x |  |  |
| county | optional | location | x | x |  |  |
| footprintSpatialFit | optional | location | x | x |  |  |
| footprintSRS | optional | location | x | x |  |  |
| footprintWKT | recommended | location | x | x |  |  |
| geodeticDatum | recommended | location | x | x |  |  |
| georeferencedBy | optional | location | x | x |  |  |
| georeferencedDate | optional | location | x | x |  |  |
| georeferenceProtocol | optional | location | x | x |  |  |
| georeferenceSources | optional | location | x | x |  |  |
| higherGeography | optional | location | x | x |  |  |
| higherGeographyID | optional | location | x | x |  |  |
| island | optional | location | x | x |  |  |
| islandGroup | optional | location | x | x |  |  |
| locality | recommended | location | x | x |  |  |
| locationAccordingTo | recommended | location | x | x |  |  |
| locationID | strongly recommended | location | x | x |  |  |
| locationRemarks | recommended | location | x | x |  |  |
| maximumDepthInMeters | strongly recommended | location | x | x |  |  |
| maximumDistanceAboveSurfaceInMeters | optional | location | x | x |  |  |
| maximumElevationInMeters | optional | location | x | x |  |  |
| minimumDepthInMeters | strongly recommended | location | x | x |  |  |
| minimumDistanceAboveSurfaceInMeters | optional | location | x | x |  |  |
| minimumElevationInMeters | optional | location | x | x |  |  |
| municipality | optional | location | x | x |  |  |
| pointRadiusSpatialFit | optional | location | x | x |  |  |
| stateProvince | optional | location | x | x |  |  |
| verbatimCoordinates | optional | location | x | x |  |  |
| verbatimCoordinateSystem | optional | location | x | x |  |  |
| verbatimDepth | optional | location | x | x |  |  |
| verbatimElevation | optional | location | x | x |  |  |
| verbatimLatitude | optional | location | x | x |  |  |
| verbatimLocality | optional | location | x | x |  |  |
| verbatimLongitude | optional | location | x | x |  |  |
| verbatimSRS | optional | location | x | x |  |  |
| waterBody | recommended | location | x | x |  |  |
| materialSampleID | recommended | materialSample |  | x |  |  |
| measurementAccuracy | recommended | measurementOrFact |  |  | x |  |
| measurementDeterminedBy | optional | measurementOrFact |  |  | x |  |
| measurementDeterminedDate | optional | measurementOrFact |  |  | x |  |
| measurementID | recommended | measurementOrFact |  |  | x |  |
| measurementMethod | recommended | measurementOrFact |  |  | x |  |
| measurementRemarks | recommended | measurementOrFact |  |  | x |  |
| measurementType | strongly recommended | measurementOrFact |  |  | x |  |
| measurementTypeID | strongly recommended | measurementOrFact |  |  | x |  |
| measurementUnit | strongly recommended | measurementOrFact |  |  | x |  |
| measurementUnitID | strongly recommended | measurementOrFact |  |  | x |  |
| measurementValue | strongly recommended | measurementOrFact |  |  | x |  |
| measurementValueID | strongly recommended | measurementOrFact |  |  | x |  |
| associatedMedia | recommended | occurrence |  | x |  |  |
| associatedReferences | optional | occurrence |  | x |  |  |
| associatedSequences | recommended | occurrence |  | x |  |  |
| associatedTaxa | optional | occurrence |  | x |  |  |
| behavior | recommended | occurrence |  | x | x |  |
| catalogNumber | recommended | occurrence |  | x |  |  |
| disposition | optional | occurrence |  | x |  |  |
| establishmentMeans | optional | occurrence |  | x |  |  |
| georeferenceVerificationStatus | recommended | occurrence |  | x |  |  |
| individualCount | strongly recommended | occurrence |  | x | x |  |
| lifeStage | recommended | occurrence |  | x | x |  |
| occurrenceRemarks | recommended | occurrence |  | x |  |  |
| organismQuantity | strongly recommended | occurrence |  | x | x |  |
| organismQuantityType | strongly recommended | occurrence |  | x | x |  |
| otherCatalogNumbers | optional | occurrence |  | x |  |  |
| preparations | optional | occurrence |  | x |  |  |
| recordedBy | recommended | occurrence |  | x |  |  |
| recordedByID | recommended | occurrence |  | x |  |  |
| recordNumber | recommended | occurrence |  | x |  |  |
| reproductiveCondition | recommended | occurrence |  | x |  |  |
| sex | recommended | occurrence |  | x | x |  |
| associatedOccurrences | optional | organsim |  | x |  |  |
| associatedOrganisms | optional | organsim |  | x |  |  |
| organismID | recommended | organsim |  | x |  |  |
| organismName | recommended | organsim |  | x |  |  |
| organismRemarks | recommended | organsim |  | x |  |  |
| organismScope | optional | organsim |  | x |  |  |
| previousIdentifications | recommended | organsim |  | x |  |  |
| accessRights | recommended | record | x | x |  |  |
| bibliographicCitation | recommended | record | x | x |  |  |
| collectionCode | optional | record | x | x |  |  |
| collectionID | optional | record | x | x |  |  |
| dataGeneralizations | optional | record | x | x |  |  |
| datasetID | recommended | record | x | x |  |  |
| datasetName | recommended | record | x | x |  |  |
| dynamicProperties | recommended | record | x | x |  |  |
| informationWithheld | optional | record | x | x |  |  |
| institutionCode | optional | record | x | x |  |  |
| institutionID | optional | record | x | x |  |  |
| language | recommended | record | x | x |  |  |
| license | recommended | record | x | x |  |  |
| modified | recommended | record | x | x |  |  |
| ownerInstitutionCode | optional | record | x | x |  |  |
| references | recommended | record | x | x |  |  |
| rightsHolder | recommended | record | x | x |  |  |
| type | strongly recommended | record | x | x | x |  |
| acceptedNameUsage | recommended | taxon |  | x |  |  |
| acceptedNameUsageID | recommended | taxon |  | x |  |  |
| higherClassification | recommended | taxon |  | x |  |  |
| infraspecificEpithet | recommended | taxon |  | x |  |  |
| nameAccordingToID | recommended | taxon |  | x |  |  |
| namePublishedInID | optional | taxon |  | x |  |  |
| namePublishedInYear | optional | taxon |  | x |  |  |
| nomenclaturalCode | optional | taxon |  | x |  |  |
| nomenclaturalStatus | optional | taxon |  | x |  |  |
| originalNameUsage | recommended | taxon |  | x |  |  |
| originalNameUsageID | recommended | taxon |  | x |  |  |
| parentNameUsage | recommended | taxon |  | x |  |  |
| parentNameUsageID | recommended | taxon |  | x |  |  |
| phylum | recommended | taxon |  | x |  |  |
| scientificNameAuthorship | recommended | taxon |  | x |  |  |
| specificEpithet | recommended | taxon |  | x |  |  |
| subgenus | recommended | taxon |  | x |  |  |
| taxonConceptID | optional | taxon |  | x |  |  |
| taxonID | optional | taxon |  | x |  |  |
| taxonomicStatus | optional | taxon |  | x |  |  |
| taxonRank | strongly recommended | taxon |  | x |  |  |
| taxonRemarks | recommended | taxon |  | x |  |  |
| verbatimTaxonRank | recommended | taxon |  | x |  |  |
| vernacularName | recommended | taxon |  | x |  |  |
| type or eventType | strongly recommended | event | x |  |  |  |
| class | recommended | taxon |  | x |  |  |
| family | recommended | taxon |  | x |  |  |
| genus | strongly recommended | taxon |  | x |  |  |
| kingdom | strongly recommended | taxon |  | x |  |  |
| order | strongly recommended | taxon |  | x |  |  |
