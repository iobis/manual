## How to format Occurrence tables

If your dataset structure is [based on Occurrence core](formatting.html), or has an Occurrence extension (remember that all OBIS data have at least one occurrence record associated, regardless of what organization structure you have chosen), there are several terms that are [required](checklist.html) in your dataset by OBIS. These required data fields include the following eight terms:

* `occurrenceID`
* `occurrenceStatus`
* `basisOfRecord`
* `scientificName`
* `scientificNameID` (strongly recommended)
* `eventDate` (not required for Occurrence extension, required for Occurrence Core)
* `decimalLatitude` (not required for Occurrence extension)
* `decimalLongitude` (not required for Occurrence extension)

While these are the bare minimum, you should strongly consider adding other terms if you have the corresponding information/data in your dataset or documentation. Other terms you should consider adding are identified by their associated Darwin Core class below. See the [term checklist](checklist.html) for a more complete list of potential terms for Occurrence table.

* Class Occurrence| DwC: associatedMedia
* Class Occurrence| DwC: associatedReferences
* Class Occurrence| DwC: associatedSequences
* Class Occurrence| DwC: associatedTaxa
* Class Occurrence| DwC: preparations
* Class Occurrence| DwC: recordedBy
* Class Occurrence| DwC: materialSample
* Class Occurrence| DwC: materialSampleID
* Class Record | DwC: bibliographicCitation
* Class Record | DwC: catalogNumber
* Class Record | DwC: collectionCode
* Class Record | DwC: collectionID
* Class Record | DwC: dataGeneralizations
* Class Record | DwC: datasetName
* Class Record | DwC: institutionCode
* Class Record | DwC: modified
* Class Taxon | DwC: kingdom
* Class Taxon | DwC: scientificNameAuthorship
* Class Taxon | DwC: taxonRank
* Class Taxon | DwC: taxonRemarks

Note that any terms related to measurements, either biotic (e.g., sex, lifestage, biomass) or abiotic will be included in extendedMeasurementOrFact table not the Occurrence table.

#### Stepwise Guidance to Format an Occurrence Table (with spreadsheets)

Before proceeding with formatting the Occurrence table, be sure you have [completed taxon matching](name_matching.html) to obtain WoRMS LSIDs for the scientificNameID field.

1. Identify columns in your raw data that match with Occurrence fields
    * Include columns with measurements for now, but they will be moved to an [eMoF table(s)](format_emof.html)
2. Copy these columns to a new sheet named Occurrence (note it is good practice to never make changes to your original datasheet)
3. Create and add [occurrenceIDs](identifiers.html#occurrenceid) for each unique occurrence record
4. Add and fill `basisOfRecord` and `occurrenceStatus` fields
5. Ensure your column names [map to Darwin Core terms](vocabulary.html)
    * scientificName + scientificNameID

Watch our video tutorial for a demonstration of this procedure:

  <iframe width="560" height="315"
src="https://www.youtube.com/embed/G_AmAmS7ILc"
frameborder="0"
allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
allowfullscreen></iframe>

After formatting your Occurrence Core or Extension table, you can format your extendedMeasurementOrFact table.
