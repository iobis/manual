# (PART\*) Contributing data to OBIS {-}
# What can you contribute and how?

Since 2000, OBIS has accepted, curated and published marine biodiversity data obtained by varied sources and methods. There is a common misconception that OBIS only accepts species occurrence data - however this is not true! OBIS can accept many types of marine data including:

* Presence/Absence
* Abundance, individual count
* Biomass
* Abiotic measurements
* Biotic measurements
* Sampling methods
* Sample processing methods
* Genetic data including sequences
* Data originating from [historical records](common_formatissues.html)
* Tracking data
* Habitat data
* Acoustic data
* Imaging data
* Metadata describing the dataset and any project or programme related metadata

So if you have any of these types of marine data linked to your occurrence data and also want to contribute to OBIS - great! OBIS accepts data from any organization, consortium, project or individual who wants to contribute data. OBIS Data Sources are the authors, editors, and/or organisations that have published one or more datasets through OBIS. They remain the owners or custodians of the data, not OBIS! 

OBIS harvests and publishes data from recognized IPTs from OBIS nodes or GBIF publishers. If you own data or have the right to publish data in OBIS, you can contact the [OBIS secretariat or one of the OBIS nodes](https://obis.org/contact/), or additionally a [GBIF publisher](LINK). Your organization or programme can also [become an OBIS node](nodes.html). An OBIS node usually publishes data from multiple data holders, effectively being a node in a network of data providers. So you may have to first find a [relevant node](https://obis.org/contact/)  before you get your data ready to publish.

To publish a dataset to OBIS, there are **five** main steps you must go through. 

1. First, you must [identify](https://obis.org/contact/) which OBIS node is best suited to host your published data. If you would like to [publish to GBIF](data_sharing.html#simultaneous-publishing-to-gbif) at the same time, that is also possible. If your organization is already affiliated with a GBIF node with which you must publish from, OBIS can also [harvest from GBIF nodes](data_sharing.html#simultaneous-publishing-to-gbif).
2. Second, you must determine the [structure](formatting.html) of your data and which format will best suit your dataset. OBIS follows Darwin Core Archive (DwC-A) standards for datasets, and currently follows a star schema format. This format is based on relational databases. If you are unfamiliar with such database structures, or would like to refamiliarize yourself with them, please read [here](relational_db.html)
3. Then, you need to actually [format](formatting.html) your data according to OBIS and DwC-A standards and guidelines
4. Once formatted, you should run a series of [quality control](data_qc.md) measures to ensure you are not missing any required information and that all standards are being met. This helps ensure all data published in OBIS is formatted in a standardized way. When published in OBIS, OBIS provides a quality report to inform data owners and users of any quality control issues. By completing quality control before you publish your dataset you ensure there are fewer errors to fix later. [LINK TO TIPS FOR QC?]
5. Now that your dataset is ready for publishing, the relevant metadata must be filled in, and then published on the previously identified IPT[link to IPT topic section]. 

Each of these steps are covered in detail in the relevant sections of the manual. For an overview of this process see [data management flow in OBIS](data_standards.html).


## Why publish data to OBIS
It is important to publish and ensure your dataset follows a universal standard for several reasons. The [FAIR guiding principles](https://www.nature.com/articles/sdata201618) for scientific data management and stewardship provide a good framework to understand the reasoning behind publishing data. FAIR stands for Findable, Accessible, Interoperable, and Reusable. Let’s understand each aspect within the FAIR framework and how it is linked to publishing data in OBIS.

* **F - Findable**

Even if you publish your dataset on its own, publishing your data with OBIS will make your data more Findable (and Accessible) to a wider audience you might not have otherwise reached. By publishing your dataset to OBIS you are adding to a global database where your data can be found and analyzed alongside thousands of other datasets. For example, a dataset on [marine invasive species in Venezuela](https://obis.org/dataset/98ea98e8-356b-4dd5-87c6-4eeb7e3cf588) was published July 20, 2022 and as of October 5, 2022 records of this dataset were included in 1,873 data download requests. This can save you time rather than handling individual data requests.

* **A - Accessible**

Similar to being Findable, OBIS makes your datasets more Accessible. Each dataset is given an identifier when you upload it on an IPT. Thus when users obtain data from OBIS, the original dataset can easily be identified and accessed. Data from OBIS is accessible in numerous ways[LINK to access section], giving data users multiple avenues to potentially access your data. 

* **I - Interoperable**

Using a standardized data format with controlled vocabularies will ensure your data are more Interoperable - more easily interpreted and processed by computers and humans alike. Increasingly, scientists use computer programs to conduct e-Science and collect data with algorithms. Formatting your data for OBIS will ensure it can be read and accessed by such programs as well as understood by users.

* **R - Reusable**

Publishing your data allows it to be Reused according to your chosen [data usage license](policy.html). Very likely you expended resources to collect your data and it would be a waste of those resources to leave your unique data unpublished and inaccessible for current and future generations. Likewise, it is better to preserve any data processing done to ensure your dataset is reproducible and/or verifiable. Finally, data in OBIS is often used in several assessment processes and used as information to support policy makers around the globe making informed decisions.

There are many other benefits of publishing in OBIS, even if you haven’t published any work on it yet. This includes: 

- Your dataset can be [associated with a DOI](link #50), allowing for your dataset to be more easily cited. By ensuring your dataset citation is complete you will ensure you are being cited properly.
- Publishing your dataset with OBIS makes it easier to set it up as a [Data paper](https://www.gbif.org/data-papers), which generates value for you and other researchers.
- There are social benefits to data publishing as your work becomes integrated into a wider dataset. It gives both you and your data more visibility. This can lead to more opportunities for collaboration and further career development as a researcher or professional.
- Your data can be incorporated into larger analyses to better understand global ocean biodiversity, helping to shape regional and international policies. 

## How to handle sensitive data
We recognize that sometimes your dataset may contain sensitive information (e.g., location data on endangered or poached species), or perhaps your organization does not want certain details publicly accessible. Types of sensitive data include:

* Location data on endangered or protected species
* Information regarding a commonly poached species
* Species or locations that have an economic impact (positive or negative)

To accommodate sensitivity but still be able to contribute to OBIS, we suggest:

* [Generalizing location](common_qc.html#uncertain-geolocation) information by:
Obtaining regional coordinates using [MarineRegions](http://www.marineregions.org/gazetteer.php?p=search), [Getty Thesaurus of Geographic Names](http://www.getty.edu/research/tools/vocabularies/tgn/), or [Google Maps](http://maps.google.com/)
* Using the [OBIS Map tool](https://obis.org/maptool/) to generate a polygon area with a Well-Known Text (WKT) representation of the geometry to paste into the `footprintWKT` field. [Maptool tutorial](LINK)
Delay timing of publication (e.g., to accommodate mobile species)
* [Submit your dataset, but mark it as private in the IPT](ipt.html) so it is not published right away (i.e., until you set it as public). Alternatively, you can set a password on your dataset in order to share with specific individuals. Note that setting passwords will require some coordination with the IPT manager. By submitting your data to an IPT but not immediately publishing it, you can ensure that the dataset will be in a place to be incorporated at a later date when it is ready to be made public. This not only saves time and helps retain details while relatively fresh in your mind, but also ensures the dataset is still ready to be mobilized in case jobs are changed at a later date.

GBIF has created the following [Best Practices for Generalizing Sensitive data](https://docs.gbif.org/sensitive-species-best-practices/master/en/) which can provide you with additional guidance.
`Chapman AD (2020) Current Best Practices for Generalizing Sensitive Species Occurrence Data. Copenhagen: GBIF Secretariat. https://doi.org/10.15468/doc-5jp4-5g10.`

