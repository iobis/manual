# Darwin Core terms

This is an overview of [Darwin Core](http://rs.gbif.org/core/dwc_occurrence_2015-07-02.xml) terms, with recommendations regarding their use in OBIS. Avoid using terms in _italic_.


<table><thead>
<tr>
<th align="left">class</th>
<th align="left">term</th>
<th align="left">recommendations</th>
<th align="left">remarks</th>
</tr>
</thead><tbody>
<tr>
<td align="left">Event</td>
<td align="left">eventID</td>
<td align="left">Recommended.</td>
<td align="left"></td>
</tr>
<tr>
<td align="left"></td>
<td align="left">parentEventID</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left"></td>
<td align="left">samplingProtocol</td>
<td align="left">Recommended.</td>
<td align="left"></td>
</tr>
<tr>
<td align="left"></td>
<td align="left">sampleSizeValue</td>
<td align="left">Recommended if available.</td>
<td align="left"></td>
</tr>
<tr>
<td align="left">sampleSizeUnit</td>
<td align="left">Recommended if available.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">samplingEffort</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">eventDate</td>
<td align="left">Required. Use the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> format</td>
<td align="left">2013-04-02 11:23:00 <br> 2013-04-02/2013-04-05 <br> 2013-04/05</td>
<td align="left"></td>
</tr>
<tr>
<td align="left">habitat</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">identifiedBy</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">dateIdentified</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">identificationReferences</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">identificationRemarks</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">identificationQualifier</td>
<td align="left">Recommended if applicable.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">typeStatus</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">locationID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">continent</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">waterBody</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">islandGroup</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">island</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">country</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">locality</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left"><em>verbatimLocality</em></td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">minimumDepthInMeters</td>
<td align="left">Recommended if available.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">maximumDepthInMeters</td>
<td align="left">Recommended if available.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">verbatimDepth</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">locationAccordingTo</td>
<td align="left"></td>
<td align="left">marineregions.org</td>
<td align="left"></td>
</tr>
<tr>
<td align="left">locationRemarks</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">decimalLatitude</td>
<td align="left">Required. Other formats can be converted to decimal degrees using tools such as <a href="http://iobis.github.io/coordinates">http://iobis.github.io/coordinates</a>.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">decimalLongitude</td>
<td align="left">Required.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">coordinateUncertaintyInMeters</td>
<td align="left">Required.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left"><em>coordinatePrecision</em></td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">geodeticDatum</td>
<td align="left">Required. It is recommended to provide the <a href="http://www.epsg-registry.org/">EPSG</a> code.</td>
<td align="left">EPSG:4326</td>
<td align="left"></td>
</tr>
<tr>
<td align="left">footprintWKT</td>
<td align="left">Recommended if there is a supplemental geometry associated with the occurrence, such as a transect or polygon.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">GML</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">materialSampleID</td>
<td align="left">Recommended if available.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">occurrenceID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">catalogNumber</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">occurrenceRemarks</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">recordedBy</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">individualCount</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">organismQuantity</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">organismQuantityType</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">sex</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">lifeStage</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">behavior</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">establishmentMeans</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">occurrenceStatus</td>
<td align="left">Required. Use "absent" or "present"</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">preparations</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">associatedMedia</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">associatedReferences</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">associatedOccurrences</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">associatedSequences</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">associatedTaxa</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">organismID</td>
<td align="left">Recommended if applicable.</td>
<td align="left"> </td>
<td align="left"></td>
</tr>
<tr>
<td align="left">modified</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">rights</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">rightsHolder</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">accessRights</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">bibliographicCitation</td>
<td align="left">This is not required at the occurrence level, but needs to be included in the EML.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">references</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">institutionID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">institutionCode</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left"><em>collectionID</em></td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">collectionCode</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">datasetID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">basisOfRecord</td>
<td align="left">Required.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">dataGeneralizations</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">dynamicProperties</td>
<td align="left">Use the JSON format.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">taxonID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">scientificNameID</td>
<td align="left">Required.</td>
<td align="left">urn:lsid:marinespecies.org:taxname:141433</td>
<td align="left"></td>
</tr>
<tr>
<td align="left">acceptedNameUsageID</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">scientificName</td>
<td align="left">Required. Do not include the authorship.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">scientificNameAuthorship</td>
<td align="left">Required.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">kingdom</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">taxonRank</td>
<td align="left">Recommended.</td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr>
<td align="left">taxonRemarks</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
</tbody></table>
