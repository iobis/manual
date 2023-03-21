### DNA dervived data

**Contents:**

- [Introduction](dna_data#introduction.html)
- [eDNA & DNA Derived use cases](dna_data#edna--dna-derived-data-example.html)
- [How to find genetic data in OBIS](dna_data#how-to-find-genetic-data-in-obis.html)

#### Introduction

DNA derived data are increasingly being used to document taxon occurrences. This genetic data may come from a sampling event, an individual organism, may be linked to physical material (or not), or may result from DNA detection methods e.g., metabarcoding or qPCR. Thus genetic data may reflect a single organism, or may include information from bulk samples with many individuals. Still, DNA-derived occurrence data of species should be documented as standardized and as reproducible as possible.

To ensure DNA data are useful to the broadest possible community, GBIF published a guide entitled [Publishing DNA-derived data through biodiversity data platforms](https://docs.gbif-uat.org/publishing-dna-derived-data/1.0/en/). This guide is supported by the [DNA derived data extension for Darwin Core](http://rs.gbif.org/extension/gbif/1.0/dna_derived_data_2021-07-05.xml), which incorporates MIxS terms into the Darwin Core standard. There are 5 categories for which genetic data could fall into:  

1. DNA-derived occurrences
2. Enriched occurrences
3. Targeted species detection
4. Name references
5. Metadata only

For a guide and decision tree on determining which category your data falls into, see the [Data packaging and mapping](https://docs.gbif.org/publishing-dna-derived-data/1.0/en/#data-packaging-and-mapping) section of the GBIF guide. Refer to the [examples below](dna_data#edna--dna-derived-data.html) for use case examples of eDNA and DNA derived data (Category 1).

> Currently, genetic data **must** be published with Occurrence core, not Event core. eDNA and DNA derived data are then linked to the Occurrence core data table with the use of `occurrenceID` and/or `eventID`. See below for further guidance on compiling genetic data.

##### How to compile and publish genetic data

Broadly speaking, you will need to have information on the taxonomy and sequences for each occurrence record associated with a DNA sample. You should first fill in the [Occurrence core table](format_occurrence.html), and then complete the DNA Derived Data extension (as well as the eMoF extension, if applicable, for any measurements taken).

In addition to the [usual required terms for Occurrence datasets](format_occurrence.html), you should consider the following additional terms:

**Occurrence core table highly recommended terms:**

- Class Occurrence | DwC: organismQuantity
- Class Occurrence | DwC: OrganismQuantityType
- Class Occurrence| DwC: associatedSequences
- Class Event | DwC: sampleSizeValue
- Class Event | DwC: sampleSizeUnit
- Class Event | DwC: samplingProtocol

Then, you will need to format the DNADerivedData extension. The following (free-text) terms are required or highly recommended. Note that some terms are more relevant depending on the methodologies used (e.g., metabarcoding vs qPCR).

**DNA Derived data extension highly recommended terms:**

- DNA Derived | DwC: DNA_sequence
- DNA Derived | DwC: sop
- DNA Derived | DwC: target_gene
- DNA Derived | DwC: target_subfragment
- DNA Derived | DwC: pcr_primer_forward
- DNA Derived | DwC: pcr_primer_reverse
- DNA Derived | DwC: pcr_primer_name_forward
- DNA Derived | DwC: pcr_primer_name_reverse
- DNA Derived | DwC: pcr_primer_reference
- DNA Derived | DwC: Pcr_cond
- DNA Derived | DwC: annealingTemp
- DNA Derived | DwC: annealinTempUnit
- DNA Derived | DwC: probeReporter
- DNA Derived | DwC: probeQuencher
- DNA Derived | DwC: ampliconSize
- DNA Derived | DwC: thresholdQuantificationCycle
- DNA Derived | DwC: baselineValue

For a complete list of terms you can map to, see [the DwC DNA Derived Data extension page](http://rs.gbif.org/extension/gbif/1.0/dna_derived_data_2021-07-05.xml). See the [examples below](dna_data#edna--dna-derived-data.html) for use case examples. The Marine Biological Data Mobilization Workshop also has a [tutorial](https://ioos.github.io/bio_mobilization_workshop/edna-extension/#dna-derived-extension) for this type of data.

When your data tables are formatted and you are ready to publish it on the IPT, it will follow the same process for [publishing on an IPT](data_publication.html). You will upload your source files, and add the Occurrence core Darwin Core mappings, and then the DNA Derived Data Darwin Core mappings. However the extension must first be [installed by the IPT administrator](data_publication#ipt-administration.html) (often the node manager). Once the extension is installed, you can add the Darwin Core DNA Derived Data mapping for that file.

##### OBIS Bioinformatics Pipline

OBIS recognizes the vast amount of data generated from marine DNA sampling, especially from eDNA sequencing. Thus we have been developing a bioinformatics pipeline to facilitate publication of this data into OBIS. The pipeline was initially developed for the [PacMAN project (Pacific Islands Marine Bioinvasions Alert Network)](https://pacman.obis.org/).

Broadly speaking, it creates a framework that receives raw sequence data from eDNA samples, cleans, aligns, classifies sequences, and finally outputs a DwC-compatible table. The pipeline is currently under development and for now only accepts CO1 data. It will be extended to include other genetic markers in the future. More details about the PacMAN pipeline can be found on its [associated GitHub repository](https://github.com/iobis/PacMAN-pipeline). Once fully online, we will provide guidelines on how to use the pipeline.

OBIS is developing guidelines and pipelines to accept other data types, such as:

- [Acoustic](other_data_types#multimedia-data.html)
- [Imaging](other_data_types#multimedia-data.html)
- [Tracking](other_data_types#tracking-data.html)
- [Habitat](other_data_types#habitat-data.html)

#### eDNA & DNA derived data example

The following example use cases draw on both the [GBIF guide](https://docs.gbif-uat.org/publishing-dna-derived-data/1.0/en/) and the [DNA derived data extension](https://rs.gbif-uat.org/extensions.html#http) to illustrate how to incorporate a DNA derived data extension file into a Darwin Core archive. Note: for the purposes of this section, only required Occurrence core terms are shown, in addition to all eDNA & DNA specific terms. For additional Occurrence core terms, refer to [Occurrence](darwin_core#occurrence.html).

##### eDNA data from Monterey Bay, California

The data for this example is from the use case ["18S Monterey Bay Time Series: an eDNA data set from Monterey Bay, California, including years 2006, 2013 - 2016'](https://www1.usgs.gov/obis-usa/ipt/resource?r=18s_monterey_bay_time_series_edna). The data from this study originate from marine filtered seawater samples that have undergone metabarcoding of the 18S V9 region.

**Occurrence core:**

We can populate the Occurrence core with all the required and highly recommended fields, as well as considering the eDNA and DNA specific fields. The Occurrence core contain the taxonomic identification of each ASV observed; its number of reads, as well as relevant metadata including the sample collection location, references for the identification procedure, and links to archived sequences.

`OccurrenceID` and `basisOfRecord` are some of the required Occurrence core terms, in addition to the highly recommended fields of `organismQuantity` and `organismQuantityType`. A selection of samples from this plate were included in another publication (Djurhuus et al., 2020),which is recorded in `identificationReferences` along with the GitHub repository where the data can be found.

| occurrenceID               | basisOfRecord  | organismQuantity | OrganismQuantityType | associatedSequences                   |
|----------------------------|----------------|------------------|----------------------|---------------------------------------|
| 11216c01_12_edna_1_S_occ1  | MaterialSample | 19312            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |
| 11216c01_12_edna_2_S_occ1  | MaterialSample | 16491            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |
| 11216c01_12_edna_3_S_occ1  | MaterialSample | 21670            | DNA sequence reads   | NCBI BioProject acc. nr. PRJNA433203  |

| sampleSizeValue | sampleSizeUnit      | identificationReferences                        | identificationRemarks                                 |
|-----------------|---------------------|-------------------------------------------------|-------------------------------------------------------|
| 147220          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |
| 121419          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |
| 161525          | DNA sequence reads  | GitHub repository  [Djurhuus et al. 2020](https://doi.org/10.1038/s41467-019-14105-1) | unassigned, Genbank nr Release 221 September 20 2017  |

**DNA Derived Data extension:**

Next, we can create the **DNA Derived Data extension** which will be connected to the Occurrence core with the use of `occurrenceID`. This extension contains the DNA sequences and relevant DNA metadata, including sequencing procedures, primers used and SOP's. The recommended use of ENVO's biome classes were applied to describe the environmental system from which the sample was extracted. The samples were collected by CTD rosette and filtered by a peristaltic pump system. Illumina MiSeq metabarcoding was applied for the target_gene 18S and the target_subfragment, V9 region. URL's are provided for the protocols followed for nucleic acids extraction and amplification.

For a detailed description of the steps taken to process the data, including algorithms used, see the original publication. Adding Operational Taxonomic Unit (OTU) related data are highly recommended and should be as complete as possible, for example:

| occurrenceID               | env-broad_scale              | env_local_scale               | env_medium                                    |
|----------------------------|------------------------------|-------------------------------|-----------------------------------------------|
| 11216c01_12_edna_1_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |
| 11216c01_12_edna_2_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |
| 11216c01_12_edna_3_S_occ1  | marine biome (ENVO:00000447) | coastal water (ENVO:00001250) | waterborne particulate matter (ENVO:01000436) |

| samp_vol_we_dna_ext | nucl_acid_ext                            | nucl_acid_amp                            | lib_layout  | target_gene |
|---------------------|------------------------------------------|------------------------------------------|-------------|-------------|
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) | [dx.doi.org/10.17504/protocols.io.n2vdge6](https://www.protocols.io/view/environmental-dna-edna-18s-metabarcoding-illumina-6qpvrydzgmkn/v2) | paired      | 18S         |
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) | [dx.doi.org/10.17504/protocols.io.n2vdge6](https://www.protocols.io/view/environmental-dna-edna-18s-metabarcoding-illumina-6qpvrydzgmkn/v2) | paired      | 18S         |
| 1000ml              | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) | [dx.doi.org/10.17504/protocols.io.n2vdge6](https://www.protocols.io/view/environmental-dna-edna-18s-metabarcoding-illumina-6qpvrydzgmkn/v2) | paired      | 18S         |

| target_subfragment  | seq_meth             | otu_class_appr   | otu_seq_comp_appr                                                           |
|---------------------|----------------------|------------------|-----------------------------------------------------------------------------|
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |
| V9                  | Illumina MiSeq 2x250 | dada2;1.14.0;ASV | blast;2.9.0+;80% identity;e-value cutoff: x  MEGAN6;6.18.5;bitscore: 100 :2% |

| otu_db         | sop                                                           | DNA_sequence     |
|----------------|---------------------------------------------------------------|------------------|
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) or GitHub repository | GCTACTACCGATT... |
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) or GitHub repository | GCTACTACCGATT... |
| Genbank nr;221 | [dx.doi.org/10.17504/protocols.io.xjufknw](https://www.protocols.io/view/mbari-environmental-dna-edna-extraction-using-qiag-bp2l647d5vqe/v1) or GitHub repository | GCTACTACCGATT... |

| pcr_primer_forward | pcr_primer_reverse       | pcr_primer_name_forward | pcr_primer_name_reverse | pcr_primer_reference       |
|--------------------|--------------------------|-------------------------|-------------------------|----------------------------|
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |
| GTACACACCGCCCGTC   | TGATCCTTCTGCAGGTTCACCTAC | 1391f                   | EukBr                   | Amaral-Zettler et al. 2009 |

##### 16S rRNA gene metabarcoding data of Pico- to Mesoplankton

DNA derived datasets can also include an extendedMeasurementsOrFact (eMoF) extension file, in addition to the Occurrence and DNA derived extensions. In this example, environmental measurements were provided in an eMoF file, in addition to the DNA derived data and occurrence data. Here we show how to incorporate such measurements in the extensions.

In the publication ["Diversity of Pico- to Mesoplankton along the 2000 km Salinity Gradient of the Baltic Sea"](https://www.frontiersin.org/articles/10.3389/fmicb.2016.00679/full), a dataset with 16S rRNA gene metabarcoding data of surface water microbial communities was created from 21 off-shore stations, following a transect from Kattegat to the Gulf of Bothnia in the Baltic Sea. The full dataset entitled ["Diversity of Pico- to Mesoplankton along the 2000 km Salinity Gradient of the Baltic Sea (Hu et al. 2016)](https://www.gbif.org/dataset/9e29a2fe-d780-48a8-a93f-9ce041f9202f) is available from GBIF.

**Occurrence core:**

The Occurrence core contain information about the organisms in the sample including the taxonomy and quantity of organisms detected, the collection location, references for the identification procedure, and links to the sequences generated.

**Important note: even though this dataset uses OTU identifiers for taxonomy (therefore not including ```scientificNameID```) OBIS still recommends using ```scientificNameID```.**

| basisOfRecord  | occurrenceID                                      | eventID          | eventDate           |
|----------------|---------------------------------------------------|------------------|---------------------|
| MaterialSample | SBDI-ASV-3:16S_1:919a2aa9d306e4cf3fa9ca02a2aa5730 | SBDI-ASV-3:16S_1 | 2013-07-13 07:08:00 |
| MaterialSample | SBDI-ASV-3:16S_1:43e088977eba5732bfa45e20b1d8cdd2 | SBDI-ASV-3:16S_1 | 2013-07-13 07:08:00 |
| MaterialSample | SBDI-ASV-3:16S_1:887bc7033b46d960e893caceb711700b | SBDI-ASV-3:16S_1 | 2013-07-13 07:08:00 |

| organismQuantity | organismQuantityType | sampleSizeValue | sampleSizeUnit     |
|------------------|----------------------|-----------------|--------------------|
| 2235             | DNA sequence reads   | 12393           | DNA sequence reads |
| 795              | DNA sequence reads   | 12393           | DNA sequence reads |
| 40               | DNA sequence reads   | 12393           | DNA sequence reads |

| samplingProtocol                                                                                                                            | associatedSequences                                 | identificationReferences                                                             | identificationRemarks                                                                                                             |
|---------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| 200–500 mL seawater were filtered onto 0.22 μm pore-size mixed cellulose ester membrane filters; [https://doi.org/10.3389/fmicb.2016.00679] | [https://www.ebi.ac.uk/ena/browser/view/ERR1202034] | [https://docs.biodiversitydata.se/analyse-data/molecular-tools/#taxonomy-annotation] | DADA2:assignTaxonomy:addSpecies annotation against sbdi-gtdb=R06-RS202-1; confidence at lowest specified (ASV portal) taxon: 0.5  |
| 200–500 mL seawater were filtered onto 0.22 μm pore-size mixed cellulose ester membrane filters; [https://doi.org/10.3389/fmicb.2016.00679] | [https://www.ebi.ac.uk/ena/browser/view/ERR1202034] | [https://docs.biodiversitydata.se/analyse-data/molecular-tools/#taxonomy-annotation] | DADA2:assignTaxonomy:addSpecies annotation against sbdi-gtdb=R06-RS202-1; confidence at lowest specified (ASV portal) taxon: 0.56 |
| 200–500 mL seawater were filtered onto 0.22 μm pore-size mixed cellulose ester membrane filters; [https://doi.org/10.3389/fmicb.2016.00679] | [https://www.ebi.ac.uk/ena/browser/view/ERR1202034] | [https://docs.biodiversitydata.se/analyse-data/molecular-tools/#taxonomy-annotation] | DADA2:assignTaxonomy:addSpecies annotation against sbdi-gtdb=R06-RS202-1; confidence at lowest specified (ASV portal) taxon: 0.99 |

| decimalLatitude | decimalLongitude | taxonID                              | scientificName     |
|-----------------|------------------|--------------------------------------|--------------------|
| 55.185          | 13.791           | ASV:919a2aa9d306e4cf3fa9ca02a2aa5730 | UBA6821            |
| 55.185          | 13.791           | ASV:43e088977eba5732bfa45e20b1d8cdd2 | Chthoniobacterales |
| 55.185          | 13.791           | ASV:887bc7033b46d960e893caceb711700b | BACL27 sp014190055 |

| kingdom  | phylum            | class            | order              | family             | genus   |
|----------|-------------------|------------------|--------------------|--------------------|---------|
| Bacteria | Verrucomicrobiota | Verrucomicrobiae | Chthoniobacterales | UBA6821            | UBA6821 |
| Bacteria | Verrucomicrobiota | Verrucomicrobiae | Chthoniobacterales | NA                 | NA      |
| Bacteria | Actinobacteriota  | Acidimicrobiia   | Acidimicrobiales   | Ilumatobacteraceae | BACL27  |

**DNA Derived Data extension:**

The DNA Derived Data extension for metabarcoding data contains the DNA sequences and relevant DNA metadata, primers and procedures. This example table contains the highly recommended and recommended fields as populated with the example dataset data. For this dataset, authors additionally provided measurements of of water sample temperature and salinity, which are provided in an **extendedMeasurementOrFact** extension file:

| id                                                | env_broad_scale               | env_local_scale              | env_medium                     |
|---------------------------------------------------|-------------------------------|------------------------------|--------------------------------|
| SBDI-ASV-3:16S_1:919a2aa9d306e4cf3fa9ca02a2aa5730 | aquatic biome [ENVO_00002030] | marine biome [ENVO_00000447] | brackish water [ENVO_00002019] |
| SBDI-ASV-3:16S_1:43e088977eba5732bfa45e20b1d8cdd2 | aquatic biome [ENVO_00002030] | marine biome [ENVO_00000447] | brackish water [ENVO_00002019] |
| SBDI-ASV-3:16S_1:887bc7033b46d960e893caceb711700b | aquatic biome [ENVO_00002030] | marine biome [ENVO_00000447] | brackish water [ENVO_00002019] |

| lib_layout | target_gene | target_subfragment | seq_meth       | sop                       |
|------------|-------------|--------------------|----------------|---------------------------|
| paired     | 16S rRNA    | V3-V4              | Illumina MiSeq | <https://nf-co.re/ampliseq> |
| paired     | 16S rRNA    | V3-V4              | Illumina MiSeq | <https://nf-co.re/ampliseq> |
| paired     | 16S rRNA    | V3-V4              | Illumina MiSeq | <https://nf-co.re/ampliseq> |

| pcr_primer_forward | pcr_primer_reverse    | pcr_primer_name_forward | pcr_primer_name_reverse | DNA_sequence           |
|--------------------|-----------------------|-------------------------|-------------------------|------------------------|
| CCTACGGGNGGCWGCAG  | GACTACHVGGGTATCTAATCC | 341                     | 805R                    | TCGAGAATTTTTCACAATG... |
| CCTACGGGNGGCWGCAG  | GACTACHVGGGTATCTAATCC | 341                     | 805R                    | TCGAGAATTTTTCACAATG... |
| CCTACGGGNGGCWGCAG  | GACTACHVGGGTATCTAATCC | 341                     | 805R                    | TGGGGAATCTTGCGCAATG... |

**extendedMeasurementOrFact (eMoF) extension:**

| measurementID                | occurrenceID                                      | measurementType | measurementValue | measurementUnit |
|------------------------------|---------------------------------------------------|-----------------|------------------|-----------------|
| SBDI-ASV-3:16S_1:temperature | SBDI-ASV-3:16S_1:919a2aa9d306e4cf3fa9ca02a2aa5730 | temperature     | 16.9             | °C              |
| SBDI-ASV-3:16S_1:salinity    | SBDI-ASV-3:16S_1:919a2aa9d306e4cf3fa9ca02a2aa5730 | salinity        | 7.25             | psu             |
| SBDI-ASV-3:16S_1:temperature | SBDI-ASV-3:16S_1:1ead98754d34073a4606f7ff1e94126e | temperature     | 16.9             | °C              |

#### How to find genetic data in OBIS

##### Sequence Search tool

If you want to search for sequences or related sequences in OBIS, you can do so with the [OBIS Sequence Search](https://sequence.obis.org/).

1. Copy your sequence in the provided box (an example sequence is provided for testing as well)
2. Press the Search button
3. View results below
4. You can also change the Minimum Alignment Score slider in the map view to see location of sequences

The search result will show you taxonomic information for species sequences that align to your sequence, the alignment score, and a link to the respective datasets.

##### OBIS Mapper

If you wish to find records that have the DNADerivedData extension you can add this filter when using the [Mapper](https://mapper.obis.org/).

1. Navigate to the Criteria tab
2. Open the Extensions section
3. Check the box for DNADerivedData
4. Click save to create the layer
5. [Download the data from the layer](access.html)
