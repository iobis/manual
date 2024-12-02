# (PART\*) Additional Resources {-}

# Other Resources

In this section we highlight useful resources created by collaborators and other community members.

## MBON Pole to Pole Tutorial

- <https://www.youtube.com/watch?v=teJhfsSWonE>

This tutorial was created by the [MBON Pole to Pole project](https://marinebon.github.io/p2p/index.html) to help guide people through the process of transforming datasets to Darwin Core using [tools](https://marinebon.github.io/p2p/methods_data_science.html) MBON Pole to Pole has developed.

## IOOS Darwin Core Guide

- <https://ioos.github.io/bio_data_guide/>

This book contains a collection of examples and resources related to mobilizing marine biological data to the [Darwin Core standard](https://dwc.tdwg.org/) for sharing though [OBIS](https://obis.org/). This book has been developed by the [Standardizing Marine Biological Data Working Group (SMBD)](https://github.com/ioos/bio_data_guide/blob/main/README.md). The working group is an open community of practitioners, experts, and scientists looking to learn and educate the community on standardizing and sharing marine biological data.

## EMODnet Biology

- <https://classroom.oceanteacher.org/course/view.php?id=958>

Contributing Datasets to EMODnet Biology is a course hosted on [Ocean Teacher Global Academy (OTGA)](https://classroom.oceanteacher.org/), developed by members of the [European Marine Observation and Data Network](https://emodnet.ec.europa.eu/en). The course prepares users to format, publish, and perform quality control checks on datasets according to Darwin Core standards. While targeted at EMODnet Biology users, this course has significant overlap in how to prepare datasets for OBIS and is useful for those unfamiliar with OBIS standards. Note, an account with OTGA is required to access the course.

## Template Generators

There is an [Excel template generator](https://www.nordatanet.no/aen/template-generator/config%3DDarwin%20Core) developed by Luke Marsden & Olaf Schneider as part of the Nansen Legacy project. It allows the creation of Event or Occurrence core templates, with an optional eMoF extension. Note this template generator is aimed at GBIF users, so make sure to account for and include required OBIS terms.

There is also an [Excel to Darwin Core macro tool](https://zenodo.org/record/6453921#.Y9KsQkHMKmU) developed by GBIF Norway that you can download for use in Microsoft Excel. This macro can help you set up Event, Occurrence, and eMoF tables by selecting all relevant DwC fields from a list, or by importing data from another spreadsheet. It allows for auto-generation of identifiers (e.g. eventID, occurrenceID) if macros are enabled, and can also auto-populate the eMoF when measurement fields in the Occurrence table are populated.

## Bionomia

- <https://bionomia.net/>

Bionomia is a platform that links individuals to the biological specimens they collect and identify, recognizing their contributions to biodiversity research. To ensure your data is integrated, publish your dataset compliant with Darwin Core standards and include relevant information in fields such as [recordedBy](http://rs.tdwg.org/dwc/terms/recordedBy), [recordedByID](http://rs.tdwg.org/dwc/terms/recordedByID), [identifiedBy](http://rs.tdwg.org/dwc/terms/identifiedBy), [identifiedByID](http://rs.tdwg.org/dwc/terms/identifiedByID). Bionomia automatically harvests specimen data when published in this format (learn more at [Bionomia](https://bionomia.net/how-it-works)). Please note, Bionomia respects privacy; attributions are not openly shared if the individual has not made their profile publicly accessible (see [Bionomia's privacy policy](https://bionomia.net/privacy)). Users can also utilize Bionomia's integration with Zenodo by enabling settings to push specimen data into Zenodo (see [Bionomia's integration with Zenodo](https://bionomia.net/how-it-works)).
