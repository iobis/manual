## Darwin Core Term Checklist for OBIS

For your convenience, we have created a checklist of all the Darwin Core terms relevant for OBIS data providers. You can reference this list to quickly see which terms are required by OBIS, which file (Event, Occurrence, eMoF, DNA) they belong in, and which Darwin Core class it relates to.

Note that when you publish the dataset into the IPT, if you use a term not on this list it will be an unmapped field and will **not** be published alongside your data.

| Term |OBIS     | Required	|DarwinCore Class|  Event|	Occurrence	| eMoF | DNA |
|---------|-----------|---------|----------|--------|----------|----------|
| eventDate	| required| 	event| 	x| 	x| 	| 	| 
| eventID	| required| 	event| 	x| 	x| 	x| 	| 
| decimalLatitude| 	required| 	location| 	x	| x	| 	| | 
| decimalLongitude	| required|  location| x|x | 	| | | 
| occurrenceID	| required| 	occurrence	| 	x	| x	| x| | 
| occurrenceStatus	| required| 	occurrence	| 	x| 	| 	| | 
| basisOfRecord	| required| 	record	| 	x	| 	x| | | 
| scientificName	| required| 	taxon	| 	x| 	| | | 	
| scientificNameID	| required| 	taxon	|  | x	| 	| | 
|DNA_sequence	|strongly recommended|	dna	|	|	|	|x|
|env_broad_scale	|strongly recommended|	dna|	|	|	|x|
|env_local scale	|recommended|	dna|	|	|	|x|
|env_medium	|strongly recommended|	dna|	|	|	|x|
|lib_layout	|recommended	|dna|	|	|	|x|
|nucl_acid_amp|	recommended	|dna|	|	|	|x|
|nucl_acid_ext	|recommended	|dna|	|	|	|x|
|otu_class_appr	|recommended	|dna|	|	|	|x|
|otu_db	|recommended	|dna|	|	|	|x|
|otu_seq_comp_appr	|recommended|	dna|	|	|	|x|
|pcr_primer_forward	strongly |recommended|	dna|	|	|	|x|
|pcr_primer_name_forward	|strongly recommended|	dna|	|	|	|x|
|pcr_primer_name_reverse	|strongly recommended|	dna|	|	|	|x|
|pcr_primer_reference	|strongly recommended|	dna|	|	|	|x|
|pcr_primer_reverse	|strongly recommended|	dna|	|	|	|x|
|samp_name	|recommended|dna|	|	|	|x|
|samp_vol_we_dna_ext	|recommended	dna|	|	|	|x|
|seq_meth	|recommended|	dna|	|	|	|x|
|sop	|recommended	|dna|	|	|	|x|
|target_gene	|strongly recommended|	dna|	|	|	|x|
|target_subfragment	|strongly recommended|	dna|	|	|	|x|