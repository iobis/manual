# (PART\*) Data Formatting {-}

# Data formatting workflow

Preparing data can be a challenging process at first. This section of the manual provides guidance on formatting data for OBIS so that it complies to Darwin Core.

The general data formatting workflow you can follow is:

1. Identify your [dataset structure](formatting.html)
   * Understand the structure of your data and how it fits into Darwin Core
2. Create [unqiue identifiers](identifiers.html)
   * Assign unique identifiers to distinguish between events, nested events, and biological occurrences
3. [Match](name_matching.html) taxon names
   * Align taxonomic names to [World Register of Marine Species (WoRMS)](https://www.marinespecies.org/) to ensure consistency and retrieve their associated identifiers
4. [Map data column](data_map.html) names to Darwin Core
   * Rename data columns to match [Darwin Core terms](https://dwc.tdwg.org/terms/)
5. Organize measurements, facts, and information
   * Structure measurement and fact data in long format  in the [extendedMeasurementOrFact table](format_emof.html)
6. Identify [controlled vocabularies](vocabulary.md) to include with your measurements
   * Ensure measurements and facts reference appropriate controlled vocabularies for interoperability and clarity
7. Standardize [other fields](common_formatissues.html)
   * Verify that all other fields, such as dates and coordinates, conform to standards

The following pages provide a detailed breakdown of each step, including examples and tips to help you through the formatting process. Remember, the OBIS Helpdesk and OBIS Nodes are available to help you.
