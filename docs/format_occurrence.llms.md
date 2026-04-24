## How to format Occurrence tables

If your dataset structure is [based on Occurrence core](formatting.llms.md), or has an Occurrence extension (remember that all OBIS data have at least one occurrence record associated, regardless of what organization structure you have chosen), there are several terms that are [required](checklist.llms.md) in your dataset by OBIS. These required data fields include the following eight terms:

- `occurrenceID`
- `eventID` (required for Occurrence extension, not required for Occurrence Core)
- `occurrenceStatus`
- `basisOfRecord`
- `scientificName`
- `scientificNameID` (strongly recommended)
- `eventDate` (not required for Occurrence extension, required for Occurrence Core)
- `decimalLatitude` (not required for Occurrence extension)
- `decimalLongitude` (not required for Occurrence extension)

While these are the bare minimum, you should strongly consider adding other terms if you have the corresponding information/data in your dataset or documentation. Other terms you should consider adding are identified by their associated Darwin Core class below. See the [term checklist](checklist.llms.md) for a more complete list of potential terms for Occurrence table.

- Class Occurrence\| DwC: associatedMedia
- Class Occurrence\| DwC: associatedReferences
- Class Occurrence\| DwC: associatedSequences
- Class Occurrence\| DwC: associatedTaxa
- Class Occurrence\| DwC: preparations
- Class Occurrence\| DwC: recordedBy
- Class Occurrence\| DwC: materialSample
- Class Occurrence\| DwC: materialSampleID
- Class Record \| DwC: bibliographicCitation
- Class Record \| DwC: catalogNumber
- Class Record \| DwC: collectionCode
- Class Record \| DwC: collectionID
- Class Record \| DwC: dataGeneralizations
- Class Record \| DwC: datasetName
- Class Record \| DwC: institutionCode
- Class Record \| DwC: modified
- Class Taxon \| DwC: kingdom
- Class Taxon \| DwC: scientificNameAuthorship
- Class Taxon \| DwC: taxonRank
- Class Taxon \| DwC: taxonRemarks

Note that any terms related to measurements, either biotic (e.g., sex, lifestage, biomass) or abiotic will also be included in the extendedMeasurementOrFact table. Measurements can remain in the Occurrence table as long as they can be mapped to the appropriate DwC term (e.g. DwC:Occurrence:sex). Nnot every data aggregator outside of OBIS indexes the eMoF table, so otherwise this information may be lost.

#### Stepwise Guidance to Format an Occurrence Table (with spreadsheets)

Before proceeding with formatting the Occurrence table, be sure you have [completed taxon matching](name_matching.llms.md) to obtain WoRMS LSIDs for the scientificNameID field.

1.  Identify columns in your raw data that match with Occurrence fields
    - Include columns with measurements for now, but they will be moved to an [eMoF table(s)](format_emof.llms.md)
2.  Copy these columns to a new sheet named Occurrence (note it is good practice to never make changes to your original datasheet)
3.  Create and add [occurrenceIDs](identifiers.llms.md#occurrenceid) for each unique occurrence record
4.  Add and fill `basisOfRecord` and `occurrenceStatus` fields
5.  Ensure your column names [map to Darwin Core terms](vocabulary.llms.md)
    - scientificName + scientificNameID

Watch our video tutorial ![](data:image/svg+xml;base64,PHN2ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgcm9sZT0iaW1nIiB2aWV3Ym94PSIwIDAgNTc2IDUxMiIgc3R5bGU9ImhlaWdodDoxZW07d2lkdGg6MS4xMmVtO3ZlcnRpY2FsLWFsaWduOi0wLjEyNWVtO21hcmdpbi1sZWZ0OmF1dG87bWFyZ2luLXJpZ2h0OmF1dG87Zm9udC1zaXplOmluaGVyaXQ7ZmlsbDpyZWQ7b3ZlcmZsb3c6dmlzaWJsZTtwb3NpdGlvbjpyZWxhdGl2ZTsiPjxwYXRoIGQ9Ik01NDkuNjU1IDEyNC4wODNjLTYuMjgxLTIzLjY1LTI0Ljc4Ny00Mi4yNzYtNDguMjg0LTQ4LjU5N0M0NTguNzgxIDY0IDI4OCA2NCAyODggNjRTMTE3LjIyIDY0IDc0LjYyOSA3NS40ODZjLTIzLjQ5NyA2LjMyMi00Mi4wMDMgMjQuOTQ3LTQ4LjI4NCA0OC41OTctMTEuNDEyIDQyLjg2Ny0xMS40MTIgMTMyLjMwNS0xMS40MTIgMTMyLjMwNXMwIDg5LjQzOCAxMS40MTIgMTMyLjMwNWM2LjI4MSAyMy42NSAyNC43ODcgNDEuNSA0OC4yODQgNDcuODIxQzExNy4yMiA0NDggMjg4IDQ0OCAyODggNDQ4czE3MC43OCAwIDIxMy4zNzEtMTEuNDg2YzIzLjQ5Ny02LjMyMSA0Mi4wMDMtMjQuMTcxIDQ4LjI4NC00Ny44MjEgMTEuNDEyLTQyLjg2NyAxMS40MTItMTMyLjMwNSAxMS40MTItMTMyLjMwNXMwLTg5LjQzOC0xMS40MTItMTMyLjMwNXptLTMxNy41MSAyMTMuNTA4VjE3NS4xODVsMTQyLjczOSA4MS4yMDUtMTQyLjczOSA4MS4yMDF6IiAvPjwvc3ZnPg==) for a demonstration of this procedure:

After formatting your Occurrence Core or Extension table, you can format your extendedMeasurementOrFact table.
