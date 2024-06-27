## Data Policy

### Guidelines on the sharing and use of data in OBIS

The IOC Assembly adopted a new [IOC Data Policy and Terms of Use](https://iode.org/resources/ioc-data-policy-and-terms-of-use-2023/) (IOC Decision A-32/4.4, 2023) and requested that IOC programmes (like OBIS), projects, as well as other communities of practice should develop and/or apply, where applicable, detailed metadata, data and products sharing guidelines that are consistent with this new policy.  

The OBIS guidelines on the sharing and use of data in OBIS was agreed at SG-OBIS-IV (Feb 2015) and adopted at IODE-XXIII (March 2015) and was based on the principles of the previous IOC data exchange policy. The SG-OBIS-11 (May 2023) set up an IWG Data Policy to fulfil this task and then the SG-OBIS-12 agreed upon an updated policy.

The OBIS data policy is outlined below. Text in italics represents text from the IOC Data Policy and Terms of Use.

#### Section 1. Preamble

The OBIS data policy follows the guidelines from the Intergovernmental Oceanographic Commission (IOC) data policy. In this regard, we recognize that: *the timely, open and unrestricted international sharing, in both real-time and delayed mode of ocean metadata, data and products is essential for a wide variety of purposes and benefits including scientific research, innovation and decision making, the prediction of weather and climate, the operational forecasting of the marine environment, the preservation of life, economic welfare, safety and security of society, the mitigation of human-induced changes in the marine and coastal environment, as well as for the advancement of scientific understanding that makes this possible. Innovation of specialised products can be stimulated and encouraged by timely, open and unrestricted access to metadata and data. Metadata, data, and products should be accessible, interoperable and openly shared with minimum delay and minimum restrictions.*

This document describes how the IOC data policy is implemented by OBIS. Although this document broadly covers the requirements for metadata, data, and data products, more detailed guidance for the OBIS community is also provided in the OBIS manual (https://manual.obis.org).

#### Section 2. Purpose

*The purpose of this data policy is to outline the requirements with respect to sharing, access, preservation, and attribution to facilitate the broad use and reuse of metadata, data and data products.*

#### Section 3. FAIR & CARE principles

*To support knowledge discovery and innovation both by humans and machines and to acknowledge indigenous data governance, data should meet the FAIR Guiding Principles (Findable, Accessible, Interoperable and Reusable) [1] and In the case of indigenous data and information, data should meet the CARE principles (Collective Benefit, Authority to Control, Responsibility, Ethics) [2] to the greatest extent practicable.*

The FAIR Principles related to **Findability** state that data and metadata are assigned globally unique and persistent identifiers. For OBIS this means that all event and occurrence records published to OBIS should have a globally unique identifier in the appropriate field. Care must be taken to preserve these identifiers across dataset updates. Datasets should be assigned a DOI (Digital Object Identifier) upon publishing. Findability also means that datasets are described using rich metadata. In practice, this means that OBIS dataset metadata records must contain at least the following: a title, a detailed description including information on the methodology used to collect the data, contact information, a license, a citation, geographic and taxonomic scope, and may contain other relevant metadata.

Regarding the **Accessibility** aspect of the FAIR data principles, OBIS datasets’ metadata should always be accessible via the data provider IPT instance even when the data is no longer available. In addition, OBIS datasets should be retrievable by using a DOI that leads to the data.

**Interoperability** principles state that knowledge must be described using a shared language which has been formally specified, so that the knowledge can be interpreted not just by humans but also by machines. OBIS data are described using the Darwin Core standard, which includes a set of terms with identifiers and definitions, as well as a number of vocabularies which should be used wherever possible. In order to optimize interoperability of measurements and sampling facts data, it is recommended that OBIS datasets use terms and identifiers from the BODC NERC vocabulary server, or other vocabulary collections with machine interpretable identifiers.

OBIS data must also be **Reusable**, that is, enough information is available so that others can use that data in different settings. In this regard, all data and metadata associated with records needs to be complete and accurate, containing at least the minimum information described in the OBIS manual. Ideally, providers should go well beyond the minimum and provide as much information as possible. Both the data and metadata should comply with the standards adopted by OBIS, for example Ecological Metadata Language (EML) for metadata and Darwin Core for biodiversity data. It is also necessary that all data provided is clearly linked to a usage license, respecting the licenses currently accepted by OBIS (i.e. CC0, CC BY, CC BY-NC), ensuring that users are able to fully understand how they can reuse the data and also to give the correct acknowledgement to data providers where required.

Beyond complying with FAIR principles, OBIS data must also be in accordance with the CARE principles. That is, indigenous data and information should always be handled with sensitivity and respect. Authority of indigenous data holders must be respected, and indigenous peoples’ rights and wellbeing should be considered at all stages of the data life cycle.

#### Section 4. Conditions of use

*Data should be licensed (respecting Section 8) under a minimally restrictive and voluntary common-use licence[3] that grants permission, ensures proper attribution (for example, citable using a persistent identifier) and allows others to copy, distribute and make use of the data. Section 5. Data Repositories and the IOC ocean data and information system (ODIS) Data should be quality controlled (using community adopted and documented best practices or standards), accompanied by complete metadata and stored in an openly discoverable and accessible long-term data repository and made available through standards-based data services. Member States shall encourage convergence and interoperability and, where possible, use IODE data centres (National Oceanographic Data Centres or Associate Data Units) or other IOC programme related data centres that share metadata and data using the IOC Ocean Data and Information System (ODIS). ODIS is an interoperability layer and supporting technology, to allow existing and emerging ocean data and information systems to interoperate with one another.*

Data provided to OBIS must be licensed with one of the accepted licenses described in the OBIS manual. Data users should be encouraged to appropriately attribute data publishers, for example by providing a license, clear citation instructions, and a DOI. OBIS, through the work of its nodes, is also concerned in providing high-quality marine biodiversity data for users. Thus, all data submitted to OBIS needs to undergo rigorous quality assurance and validation processes before submission. Minimally, data providers must check data for locality issues, taxonomic mismatches, and proper formatting. They must also ensure that all necessary information fields are available. Guidance on how to perform data quality control is provided by the OBIS community, through its OBIS manual. An inseparable part of high quality data is that it must have complete and comprehensive metadata, as described in the Section 3.

All data and products published through OBIS are freely accessible to any user, following the principles of equitable access and benefit sharing. In this regard, when licenses allow, users can build products based on OBIS data without any cost. Whenever possible, users should consider sponsoring or partnering with OBIS and its OBIS nodes in grant proposal writing. Creating a global database like OBIS cannot happen without the, often voluntary, contribution of many scientists and data managers all over the world. Several activities, such as coordination, data integration, quality control, database and website maintenance require resources including manpower at national and international level.

Any use of OBIS data and/or derived products, including (but not limited to) software applications, workflows and papers, should be properly cited. The following formats are recommended:

General OBIS citation:
```
OBIS (YEAR) Ocean Biodiversity Information System. Intergovernmental Oceanographic Commission of UNESCO. obis.org.
```

Use the following format to cite data retrieved from OBIS (dataset citations are available in the zip downloads as html file):

```
[Dataset citation available from metadata] [Data provider details] [Dataset] (Available: Ocean Biodiversity Information System. Intergovernmental Oceanographic Commission of UNESCO. obis.org. Accessed: YYYY-MM-DD.
```

For example:
```
Sousa Pinto, I., Viera, R. (Year: if not provided use year from dataset publication date) Monitoring of the intertidal biodiversity of rocky beaches with schools in Portugal 2005-2010. CIIMAR - Interdisciplinary Centre of Marine and Environmental Research, Porto. [Dataset] (Available: Ocean Biodiversity Information System. Intergovernmental Oceanographic Commission of UNESCO. obis.org. Accessed: 2015-01-01)
```

When data represents a subset of many datasets taken from the integrated OBIS database, you can, in addition to cite the individual datasets (and taking into account the restrictions set at each dataset level), also cite the OBIS database as follows:

```
OBIS (YEAR) [Data e.g. Distribution records of Eledone cirrhosa (Lamarck, 1798)] [Dataset] (Available: Ocean Biodiversity Information System. Intergovernmental Oceanographic Commission of UNESCO. www.obis.org. Accessed: YYYY-MM-DD)
```

The derived information products from OBIS are published under the CC-0 license and can be cited as follows:

```
OBIS (YEAR) [Information product e.g. Global map showing the Hulbert index in a gridded view of hexagonal cells] [Map] (Available: Ocean Biodiversity Information System. Intergovernmental Oceanographic Commission of UNESCO. www.obis.org. Accessed: YYYY-MM-DD)
```

While those citation formats cover a broad range of applications, users should always consult the OBIS manual for more detailed guidelines on how to properly attribute the data and information products provided by OBIS and its broader community.

##### Section 5. Data Repositories and the IOC ocean data and information system (ODIS)

*Data should be quality controlled (using community adopted and documented best practices or standards), accompanied by complete metadata and stored in an openly discoverable and accessible long-term data repository and made available through standards-based data services. Member States shall encourage convergence and interoperability and, where possible, use IODE data centres (National Oceanographic Data Centres or Associate Data Units) or other IOC programme related data centres that share metadata and data using the IOC Ocean Data and Information System (ODIS). ODIS is an interoperability layer and supporting technology, to allow existing and emerging ocean data and information systems to interoperate with one another.*

As explained in section 3, data providers are responsible for performing quality control on all data prior to its submission to OBIS. Details on quality control procedures are provided in the OBIS manual, which is regularly updated by the OBIS secretariat and OBIS nodes. OBIS is connected to ODIS and is an integral part of the IODE data structure.

#### Section 6: Secure long-term data archives

*To support long-term and secure archival, data and associated metadata should be submitted, to the best practicable degree, to IODE’s World Ocean Database (WOD), the Ocean Biodiversity Information System (OBIS), Global Sea Level Observing System (GLOSS), other IOC related global data archives, and data centres linked to the World Data System (WDS), their successors or other global data archives.*

OBIS and its nodes should ensure long-term data archival and adhere to best practices for data preservation. OBIS secretariat will archive the curated database, but nodes are responsible for archiving individual datasets. Data and data products provided by OBIS and its nodes must also be available through standards-based data services that allow users to access, query, and retrieve data in various formats. OBIS currently provides several ways through which users can access its data and follows the best practices for data sharing, and in this sense, any newly developed product must ensure maximum accessibility and interoperability.

#### Section 7. Access restrictions

*Data and associated metadata should be made available with minimal restrictions on use unless there are valid reasons to restrict access. Legitimate reasons to restrict access to, and reuse of, data include, inter alia, privacy and confidentiality, protection of species, populations, or habitats of concern, and national security.*

OBIS datasets should be published using any of the three accepted CC licenses, with a preference for the most permissive CC0. In case access to information must be restricted for any of the above reasons, data providers should censor or generalize the data before publishing to OBIS, and ensure that these changes are reflected in the dataset metadata.

When data is made available to OBIS, OBIS is granted permission to:

* Distribute the data via its data and information portal
* Build an integrated database, use the data for data quality control purposes, complement the data with other data such as climate variables and build value-added information products and services for science and decision-making
* Serve the data to other similar open-access networks in compliance with the terms and conditions for use set by the data providers.

In pursuance of copyright compliance, OBIS endeavors to secure permission from rights holders to ingest their datasets. In the event that the inclusion of a dataset in OBIS is challenged on the basis of copyright infringement, OBIS will follow a take-down policy until there is resolution.

#### Section 8. Data sharing policies of Member States

*This Policy acknowledges the right of Member States and data owners to determine the terms of metadata, data and products sharing in a manner consistent with national jurisdictions, international conventions, and treaties, where applicable.*

Whenever possible, data should be made available in its fullness. However, in any case access to data must be restricted to respect Member States jurisdictions, conventions or treaties, it is the responsibility of data providers to censor or generalize the data before publishing to OBIS, as explained in Section 7.

#### Section 9. Data and metadata sharing guidelines

*IOC programmes, projects as well as other communities of practice should develop and/or apply, where applicable, detailed metadata, data and products sharing guidelines that are consistent with this IOC Data Policy and Terms of Use.*

OBIS and its nodes provide detailed guidelines on how to publish and use OBIS data. This information is made available in the OBIS manual (https://manual.obis.org/) and is regularly revised and improved to adhere to best practices.

#### Section 10. Definitions

*‘Data’ is a set of values, symbols or signs (recorded on any type of medium) that represent one or more properties of an entity[4]. ‘Metadata’ is 'data about data' describing the content, quality, condition, and other characteristics of data that allows their inventory, discovery, evaluation or use. ‘Timely’ in this context means the distribution of data and/or products, sufficiently rapidly to be of value for a given application. ‘Openly’ means data that can be freely used, re-used and redistributed by anyone - subject only, at most, to the requirement to attribute and share alike. ‘Product’ means a value-added enhancement of data applied to a particular use.*

OBIS uses the same definitions as IOC.

#### Disclaimer

Appropriate caution is necessary in the interpretation of results derived from OBIS. Users must recognize that the analysis and interpretation of data require background knowledge and expertise about marine biodiversity (including ecosystems and taxonomy). Users should be aware of possible errors, including in the use of species names, geo-referencing, data handling, and mapping. They should cross check their results for possible errors and qualify their interpretation of any results accordingly.

Unless data are collected through activities funded by IOC/IODE, neither UNESCO, IOC, IODE, the OBIS Secretariat, nor its employees or contractors, own the data in OBIS and they take no responsibility for the quality of data or products based on OBIS, or its use or misuse.
