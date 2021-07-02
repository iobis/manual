---
title: Data access
shorttitle: Data access
layout: page
lang: en
identifier: access
breadcrumbs: manual
---

OBIS harvests occurrence records from thousands of datasets and makes them available as a single integrated dataset. There are several ways to access OBIS data:

- The [mapper](https://mapper.obis.org) allows users to visualize and inspect subsets of OBIS data. A variety of filters (taxonomic, geographic, time, data quality) is available and multiple layers can be combined in a single view. Layers can be downloaded as CSV files.
- Our [R package](/manual/accessr) provides direct access to the OBIS database from R.
- Both the mapper and the R package are based on the OBIS [API](https://api.obis.org) which can be used by third party developers as well.
- Full exports (see below).

## Full export

We provide periodic exports of the entire set of quality controlled presence records as CSV. This is the easiest way to download data for large scale analyses. **Absence records, records of insufficient quality, or measurements records are not included. Use the API or R package to access these data or contact <a href="mailto:p.provoost@unesco.org">p.provoost@unesco.org</a>.**

{% raw  %}

<div id="placeholder"></div>

<script src="/assets/handlebars.js"></script>

<script id="export-template" type="text/x-handlebars-template">​
    <table class="table table-sm table-striped mt-3">
        {{#each exp}}
        <tr>
            <td>{{ title }}</td>
            <td><a href="#" onclick="dl('{{ s3path }}');">download</a></td>
        </tr>
        {{/each}}
    </table>
</script>

<script>

function dl(s3path) {
    $.get("https://api.obis.org/metrics/logusage?agent=full_export");
    window.open("https://obis-datasets.ams3.digitaloceanspaces.com/" + s3path, "_blank");
};

$.get("https://api.obis.org/export?complete=true", function(res) {
    const source = $("#export-template").html().replace(/[\u200B]/g, "");
    const template = Handlebars.compile(source);
    const html = template({
        exp: res.results.slice(0, 1)
    });
    $("#placeholder").html(html);
});

</script>

{% endraw %}

Each export consists of a single occurrence table which includes all Darwin Core fields provided by the data providers as either Event or Occurrence records, with the exception of the fields below which have been transformed or added by the OBIS quality control pipeline.

{:.table .table-sm .table-striped}
| field | remarks |
| --- | --- |
| id | Globally unique identifier assigned by OBIS. |
| dataset_id | Dataset identifier assigned by OBIS. |
| decimalLongitude | Parsed and validated by OBIS. |
| decimalLatitude | Parsed and validated by OBIS. |
| date_start | Unix timestamp based on `eventDate` (start). |
| date_mid | Unix timestamp based on `eventDate` (middle). |
| date_end | Unix timestamp based on `eventDate` (end). |
| date_year | Year based on `eventDate`. |
| scientificName | Valid scientific name based on the `scientificNameID` or derived by matching the provided `scientificName` with WoRMS |
| originalScientificName | The `scientificName` as provided. |
| minimumDepthInMeters | Parsed and validated by OBIS. |
| maximumDepthInMeters | Parsed and validated by OBIS. |
| coordinateUncertaintyInMeters | Parsed and validated by OBIS. |
| flags | Quality flags added by OBIS. |
| dropped | Record dropped by OBIS quality control? |
| absence | Absence record? |
| shoredistance | Distance from shore added by OBIS quality control, based on OpenStreetMap. |
| bathymetry | Bathymetry added by OBIS. |
| sst | Sea surface temperature added by OBIS. |
| sss | Sea surface salinity added by OBIS. |
| redlist_category | IUCN Red List category. |
| marine | Marine environment flag based on WoRMS. |
| brackish | Brackish environment flag based on WoRMS. |
| freshwater | Freshwater environment flag based on WoRMS. |
| terrestrial | Terrestrial environment flag based on WoRMS. |
| taxonRank | Based on WoRMS. |
| AphiaID | AphiaID for the valid name based on the `scientificNameID` or derived by matching the provided `scientificName` with WoRMS. |
| superdomain | Based on WoRMS. |
| domain | Based on WoRMS. |
| kingdom | Based on WoRMS. |
| subkingdom | Based on WoRMS. |
| infrakingdom | Based on WoRMS. |
| phylum | Based on WoRMS. |
| phylum (division) | Based on WoRMS. |
| subphylum (subdivision) | Based on WoRMS. |
| subphylum | Based on WoRMS. |
| infraphylum | Based on WoRMS. |
| superclass | Based on WoRMS. |
| class | Based on WoRMS. |
| subclass | Based on WoRMS. |
| infraclass | Based on WoRMS. |
| subterclass | Based on WoRMS. |
| superorder | Based on WoRMS. |
| order | Based on WoRMS. |
| suborder | Based on WoRMS. |
| infraorder | Based on WoRMS. |
| parvorder | Based on WoRMS. |
| superfamily | Based on WoRMS. |
| family | Based on WoRMS. |
| subfamily | Based on WoRMS. |
| supertribe | Based on WoRMS. |
| tribe | Based on WoRMS. |
| subtribe | Based on WoRMS. |
| genus | Based on WoRMS. |
| subgenus | Based on WoRMS. |
| section | Based on WoRMS. |
| subsection | Based on WoRMS. |
| series | Based on WoRMS. |
| species | Based on WoRMS. |
| subspecies | Based on WoRMS. |
| natio | Based on WoRMS. |
| variety | Based on WoRMS. |
| subvariety | Based on WoRMS. |
| forma | Based on WoRMS. |
| subforma | Based on WoRMS. |

 