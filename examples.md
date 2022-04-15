---
title: Examples: ENV-DATA and DNA derived data 
shorttitle: Examples: ENV-DATA and DNA derived data
layout: page
lang: en
identifier: example
breadcrumbs: manual
---

#### Contents

- [1. Fish abundance & distribution](#example_fish)
- [2. Hard coral cover & composition](#example_hcoral)
- [3. Invertebrates abundance & distribution](#example_inverts)
- [4. Macroalgae canopy cover & composition](#example_macroalgae)
- [5. Mangroves cover & composition](#example_mangrove)
- [6. Marine birds abundance & distribution](#example_mbirds)
- [7. Marine mammals abundance & distribution](#example_mmammals)
- [8. Marine turtles abundance & distribution](#example_mturtles)
- [9. Microbes biomass & diversity](#example_microbes)
- [10. Plankton biomass & diversity](#example_plankton)
- [11. Seagrass cover & composition](#example_seagrass)
- [12. eDNA & DNA derived data](#example_edna)
    - [12.1: eDNA data from Monterey Bay, California](#example_Ex1)

<a class="anchor" name="example"></a>

## 1. Fish abundance & distribution
(example coming soon)

## 2. Hard coral cover & composition
(example coming soon)

## 3. Invertebrates abundance & distribution
(example coming soon)

## 4. Macroalgae canopy cover & composition

In this section we will encode a fictional macroalgal survey dataset into Darwin Core using the ENV-DATA approach, i.e. using an Event core with an Occurrence extension and an ExtendedMeasurementOrFact extension.

<p class="caption-70">Figure: A fictional macroalgae survey with a single site, multiple zones, quadrats, and different types of transects.</p>

First we can create the Event core table by extracting all events in a broad sense and populating attributes such as time, location, and depth at the appropriate level. The events at the different levels are linked together using `eventID` and `parentEventID`. As the survey sites has a fixed location we can populate `decimalLongitude` and `decimalLatitude` at the top level event. The zones have different depths, so `minimumDepthInMeters` and `maximumDepthInMeters` are populated at the zone level. Finally, as not all sampling was done on the same day, `eventDate` is populated at the quadrat and transect level.

| eventID | parentEventID | eventDate | decimalLongitude | decimalLatitude | minimumDepthInMeters | maximumDepthInMeters |
| --- | --- | --- | --- | --- | --- | --- |
| site_1 | | | 54.7943 | 16.9425 | | |
| zone_1 | site_1 | | | | 0 | 0 |
| zone_2 | site_1 | | | | 0 | 5 |
| zone_3 | site_1 | | | | 5 | 10 |
| <span class="marker-green">quadrat_1</span> | zone_1 | 2019-01-02 | | | | |
| transect_1 | zone_2 | 2019-01-03 | | | | |
| transect_2 | zone_3 | 2019-01-04 | | | | |

Next we can construct the Occurrence extension table. This table has the scientific names and links to the World Register of Marine Species in `scientificNameID`. The first column of the table references the events in the core table (see `quadrat_1` for example highlighted in green).

| id | occurrenceID | scientificName | scientificNameID |
| --- | --- | --- | --- |
| <span class="marker-green">quadrat_1</span> | <span class="marker-blue">occ_1</span> | Ulva rigida | [urn:lsid:marinespecies.org:taxname:145990](urn:lsid:marinespecies.org:taxname:145990) |
| <span class="marker-green">quadrat_1</span> | <span class="marker-orange">occ_2</span> | Ulva lactuca | [urn:lsid:marinespecies.org:taxname:145984](urn:lsid:marinespecies.org:taxname:145984) |
| transect_1 | occ_3 | Plantae | [urn:lsid:marinespecies.org:taxname:3](urn:lsid:marinespecies.org:taxname:3) |
| transect_1 | occ_4 | Plantae | [urn:lsid:marinespecies.org:taxname:3](urn:lsid:marinespecies.org:taxname:3) |
| transect_2 | occ_5 | Gracilaria | [urn:lsid:marinespecies.org:taxname:144188](urn:lsid:marinespecies.org:taxname:144188) |
| transect_2 | occ_6 | Laurencia | [urn:lsid:marinespecies.org:taxname:143914](urn:lsid:marinespecies.org:taxname:143914) |

And finally there is the MeasurementOrFact extension table, which has attributes of the zones (shore height), the quadrats (surface area), the transects (surface area and length), and the occurrences (percentage cover and functional group). Attributes of occurrences point to the Occurrence extension table using the `occurrenceID` column (see `occ_1` and `occ_2` highlighted in blue and orange). Note that besides NERC vocabulary terms we are also referencing the CATAMI vocabulary for macroalgal functional groups.

| id | occurrenceID | measurementType | measurementTypeID | measurementValue | measurementValueID | measurementUnit | measurementUnitID |
| --- | --- | --- | --- | --- | --- | --- | --- |
| zone_1 | | shore height | ? | high | ? | | |
| <span class="marker-green">quadrat_1</span> | | surface area | [P01/current/AREABEDS](http://vocab.nerc.ac.uk/collection/P01/current/AREABEDS) | 0.25 | | m2 | [P06/current/UMSQ](http://vocab.nerc.ac.uk/collection/P06/current/UMSQ/) |
| quadrat_1 | <span class="marker-blue">occ_1</span> | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 24 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |
| quadrat_1 | <span class="marker-orange">occ_2</span> | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 56 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |
| transect_1 | | surface area | [P01/current/AREABEDS](http://vocab.nerc.ac.uk/collection/P01/current/AREABEDS) | 60 | | m2 | [P06/current/UMSQ](http://vocab.nerc.ac.uk/collection/P06/current/UMSQ/) |
| transect_1 | | length | [P01/current/LENTRACK](http://vocab.nerc.ac.uk/collection/P01/current/LENTRACK) | 30 | | m | [P06/current/ULAA](http://vocab.nerc.ac.uk/collection/P06/current/ULAA/) |
| transect_1 | occ_3 | functional group | ? | sheet-like red | CATAMI:80300925 |||||
| transect_1 | occ_4 | functional group | ? | filamentous brown | CATAMI:80300931 |||||
| transect_1 | occ_3 | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 8 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |
| transect_1 | occ_4 | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 24 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |
| transect_2 | occ_5 | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 4 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |
| transect_2 | occ_6 | cover | [P01/current/SDBIOL10](http://vocab.nerc.ac.uk/collection/P01/current/SDBIOL10/) | 16 || percent | [	P06/current/UPCT](http://vocab.nerc.ac.uk/collection/P06/current/UPCT) |

## 5. Mangroves cover & composition
(example coming soon)

## 6. Marine birds abundance & distribution
(example coming soon)

## 7. Marine mammals abundance & distribution

In this section we will explore how to encode a survey data set into Darwin Core using the ENV-DATA approach. As an example, sections of the actual data set of [CETUS: Cetacean monitoring surveys in the Eastern North Atlantic](http://ipt.vliz.be/eurobis/resource?r=cetus_cetaceans), is used.

Figure: A representation of the observation events of [CETUS: Cetacean monitoring surveys in the Eastern North Atlantic](http://ipt.vliz.be/eurobis/resource?r=cetus_cetaceans), presenting the route **Madeira** as a site with three cruises (zones). Each **Cruise** is divided into different **Transects** and each transect contains a number of **Positions**.</p>

Create the Event core table by extracting all events and populating attributes. As in the previous example, the events at the different levels are linked together using `eventID` and `parentEventID`. As the survey observations were made at locations of Cetacean sightings instead of fixed locations, we can populate `footprintWKT` and `footprintSRS` as location information. Not all sampling was done on the same day, therefore `eventDate` is populated at the transect level.

| eventID            | parentEventID | eventDate       | footprintWKT                                                                                                   | footprintSRS |
|--------------------|---------------|-----------------|----------------------------------------------------------------------------------------------------------------|--------------|
| Madeira            |               | 2012-07/2017-09 | POLYGON ((-16.74 31.49, -16.74 41.23, -8.70 41.23, -8.70 31.49, -16.74 31.49)) | EPSG:4326    |
| <span class="marker-green">Madeira:Cruise-001</span> | Madeira       | 2012-07         | MULTIPOINT ( (-8.7 41.19),  (-9.15 38.7))                                                                      | EPSG:4326    |
| Madeira:Cruise-002 | Madeira       | 2012-07         | MULTIPOINT ( (-9.15 38.7),  (-16.73 32.74))                                                                    | EPSG:4326    |
| Madeira:Cruise-003 | Madeira       | 2012-07         | MULTIPOINT ( (-16.73 32.74),  (-9.15 38.7))                                                                    | EPSG:4326    |

Construct the Occurrence extension table with the scientific names and links to the World Register of Marine Species in `scientificNameID`. The first column of the table references the events in the core table (see `Madeira:Cruise-001` highlighted in green).The `occurrence ID` corresponds to the Position of the observation (see `Transect-01:Pos-0001` and `CIIMAR-CETUS-0001` highlighted in blue, or `Transect-01:Pos-0002` and `CIIMAR-CETUS-0002` highlighted in orange).

| id                                      | occurrenceID      | scientificNameID                        | scientificName |
|-----------------------------------------|-------------------|-----------------------------------------|----------------|
| <span class="marker-green">Madeira:Cruise-001</span>:<span class="marker-blue">Transect-01:Pos-0001</span> | <span class="marker-blue">CIIMAR-CETUS-0001</span> | urn:lsid:marinespecies.org:taxname:2688 | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:<span class="marker-orange">Transect-01:Pos-0002</span> | <span class="marker-orange">CIIMAR-CETUS-0002</span> | urn:lsid:marinespecies.org:taxname:2688 | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:Transect-01:Pos-0003 | CIIMAR-CETUS-0003 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:Transect-02:Pos-0004 | CIIMAR-CETUS-0004 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:Transect-02:Pos-0005 | CIIMAR-CETUS-0005 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:Transect-02:Pos-0006 | CIIMAR-CETUS-0006 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |
| <span class="marker-green">Madeira:Cruise-001</span>:Transect-02:Pos-0007 | CIIMAR-CETUS-0007 | [urn:lsid:marinespecies.org:taxname:2688](urn:lsid:marinespecies.org:taxname:2688) | Cetacea        |

And finally, the extendedMeasurementOrFact extension table has attributes of the zones (such as Vessel speed and Vessel Heading), the   Transects (such as Wave height and Wind speed), and the Positions (such as Visibility and the Number of smaal/big ships >20m). Attributes of Positions point to the Occurrence extension table using the `occurrenceID` column (see `Transect-01:Pos-0001` and `Transect-01:Pos-0002` highlighted in blue and orange, respectively).

| id                                      | occurrenceID      | measurementType              | measurementTypeID                                        | measurementValue | measurementUnit                 | measurementUnitID                                    |
|-----------------------------------------|-------------------|------------------------------|----------------------------------------------------------|------------------|---------------------------------|------------------------------------------------------|
| <span class="marker-green">Madeira:Cruise-001</span>                      |                   | Vessel name                  | [Q01/current/Q0100001](http://vocab.nerc.ac.uk/collection/Q01/current/Q0100001/) | Monte da Guia    |                                 |                                                      |
| Madeira:Cruise-001:Transect-01          |                   | Length of the track          | [P01/current/DSRNCV01](http://vocab.nerc.ac.uk/collection/P01/current/DSRNCV01/) | 39.75            | km                              | [P06/current/ULKM](http://vocab.nerc.ac.uk/collection/P06/current/ULKM/) |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Visibility                   |                                                          | 2000-4000        | Meters                          | [P06/current/ULAA](http://vocab.nerc.ac.uk/collection/P06/current/ULAA/) |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Wind speed                   | [P01/current/WMOCWFBF](http://vocab.nerc.ac.uk/collection/P01/current/WMOCWFBF/) | 1                | Beaufort scale                  |                                                      |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Wave height                  |                                                          | 2                | Douglas scale                   |                                                      |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Number of big ships (>20m)   |                                                          | 3                |                                 |                                                      |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Vessel heading               | [P01/current/HDNGGP01](http://vocab.nerc.ac.uk/collection/P01/current/HDNGGP01/) | 206              | Degrees                         | [P06/current/UAAA](http://vocab.nerc.ac.uk/collection/P06/current/UAAA/) |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Number of small ships (<20m) |                                                          | 0                |                                 |                                                      |
| Madeira:Cruise-001:Transect-01:Pos-0001 | <span class="marker-blue">CIIMAR-CETUS-0001</span> | Vessel speed                 | [P01/current/APSAGP01](http://vocab.nerc.ac.uk/collection/P01/current/APSAGP01/) | 16               | Knots (nautical miles per hour) | [P06/current/UKNT](http://vocab.nerc.ac.uk/collection/P06/current/UKNT/) |

## 8. Marine turtles abundance & distribution
(example coming soon)

## 9. Microbes biomass & diversity
(example coming soon)

## 10. Plankton biomass & diversity
(example coming soon)

## 11. Seagrass cover & composition
(example coming soon)

## 12. eDNA & DNA derived data

The following example use cases draw on both the [GBIF guide](https://docs.gbif-uat.org/publishing-dna-derived-data/1.0/en/) and the [DNA derived data extension](https://rs.gbif-uat.org/extensions.html#http) to illustrate how to incorporate a DNA derived data extension file into a Darwin Core archive. Note: for the purposes of this section, only required occurrence core terms are shown, in addition to all eDNA & DNA specific terms. For additional occurrence core terms, refer to [Occurrence](https://www.obis.org/manual/darwincore/#occurrence). 

### 12. 1: eDNA data from Monterey Bay, California

The data for this example is from the use case ["18S Monterey Bay Time Series: an eDNA data set from Monterey Bay, California, including years 2006, 2013 - 2016'](https://www1.usgs.gov/obis-usa/ipt/resource?r=18s_monterey_bay_time_series_edna). The data from this study originate from marine filtered seawater samples that have undergone metabarcoding for the 18S V9 region.

First, we can populate the Occurrence core file with all the required and highly recommended fields, as well as considering the eDNA and DNA specific fields. The Occurrence core contain the taxonomic identification of each ASV observed; its number of reads, as well as relevant metadata including the sample collection location, references for the identification procedure, and links to archived sequences.

Occurrence core:

| occurrenceID               | basisOfRecord  | organismQuantity | OrganismQuantityType | associatedSequences                   |
|----------------------------|----------------|------------------|----------------------|---------------------------------------|
| 11216c01_12_edna_1_S_occ1  | MaterialSample | 19312            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |
| 11216c01_12_edna_2_S_occ1  | MaterialSample | 16491            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |
| 11216c01_12_edna_3_S_occ1  | MaterialSample | 21670            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |

`OccurrenceID` and `basisOfRecord` are some of the required occurrence core terms, in addition to the highly recommended fields of `organismQuantity` and `organismQuantityType`. A selection of samples from this plate were included in another publication (Djurhuus et al., 2020),which is recorded in `identificationReferences` along with the GitHub repository where the data can be found.

Occurrence core (continued):

| sampleSizeValue | sampleSizeUnit      | identificationReferences                        | identificationRemarks                                 |
|-----------------|---------------------|-------------------------------------------------|-------------------------------------------------------|
| 147220          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |
| 121419          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |
| 161525          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |


Next, we can create the DNA derived data extension which will be connected to the occurrence core with the use of `occurrenceID`. This extension contains the DNA sequences and relevant DNA metadata, including sequencing procedures, primers used and SOP's. The recommended use of ENVO's biome classes were applied to describe the environmental system from which the sample was extracted. 

DNA derived data extension:


| occurrenceID               | env-broad_scale              | env_local_scale               | env_medium                                    |
|----------------------------|------------------------------|-------------------------------|-----------------------------------------------|
| 11216c01_12_edna_1_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |
| 11216c01_12_edna_2_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |
| 11216c01_12_edna_3_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |


The samples were collected by CTD rosette and filtered by a peristaltic pump system. Illumina MiSeq metabarcoding was applied for the target_gene 18S and the target_subfragment, V9 region. URL's are provided for the protocols followed for nucleic acids extraction and amplification. 

DNA derived data extension (continued):


| samp_vol_we_dna_ext | nucl_acid_ext                            | nucl_acid_amp                            | lib_layout  | target_gene |
|---------------------|------------------------------------------|------------------------------------------|-------------|-------------|
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) | [dx.doi.org/10.17504/protocols.io.n2vdge6](dx.doi.org/10.17504/protocols.io.n2vdge6) | paired      | 18S         |
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) | [dx.doi.org/10.17504/protocols.io.n2vdge6](dx.doi.org/10.17504/protocols.io.n2vdge6) | paired      | 18S         |
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) | [dx.doi.org/10.17504/protocols.io.n2vdge6](dx.doi.org/10.17504/protocols.io.n2vdge6) | paired      | 18S         |


For a detailed description of the steps taken to process the data, including algorithms used, see the original publication. Adding Operational Taxonomic Unit (OTU) related data are highly recommended and should be as complete as possible, for example:

DNA derived data extension (continued):

| target_subfragment  | seq_meth             | otu_class_appr   | otu_seq_comp_appr                                                           |
|---------------------|----------------------|------------------|-----------------------------------------------------------------------------|
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |


| otu_db         | sop                                                           | DNA_sequence     |
|----------------|---------------------------------------------------------------|------------------|
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) or GitHub repository | GCTACTACCGATT... |
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) or GitHub repository | GCTACTACCGATT... |
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](dx.doi.org/10.17504/protocols.io.xjufknw) or GitHub repository | GCTACTACCGATT... |


| pcr_primer_forward | pcr_primer_reverse       | pcr_primer_name_forward | pcr_primer_name_reverse | pcr_primer_reference       |
|--------------------|--------------------------|-------------------------|-------------------------|----------------------------|
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |


