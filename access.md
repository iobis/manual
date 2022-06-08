# Data access
## Mapper

- <https://mapper.obis.org>

The mapper allows users to visualize and inspect subsets of OBIS data. A variety of filters (taxonomic, geographic, time, data quality) is available and multiple layers can be combined in a single view. Layers can be downloaded as CSV files.

## R package

- <https://github.com/iobis/robis>

The robis R package has been developed to facilitate connecting to the OBIS API from R. The package can be installed [from CRAN](https://cran.r-project.org/web/packages/robis/index.html) or [from GitHub](https://github.com/iobis/robis) (latest development version). The package documentation including a function reference and a [getting started vignette](https://iobis.github.io/robis/articles/getting-started.html) is available at [https://iobis.github.io/robis/](https://iobis.github.io/robis/).

We regularly create R notebooks showcasing the R package. Here are a few: 

- [Data exploration of wind farm monitoring datasets in OBIS](https://iobis.github.io/notebook-windfarms/)
- [Diversity of fish and vulnerable species in Marine World Heritage Sites based on OBIS data](https://iobis.github.io/notebook-mwhs/)
- [Data exploration - Stratified random surveys (StRS) of reef fish in the U.S. Pacific Islands](https://iobis.github.io/notebook-reeffish/)
- [DNADerivedData extension data access](https://iobis.github.io/notebook-dnaderiveddata/)
- [Canary Current LME](https://iobis.github.io/notebook-cclme/)

The following notebooks do not make use of the R package:

- [Diversity indicators using OBIS data](https://iobis.github.io/notebook-diversity-indicators/)
- [Quality control of ISA data](https://iobis.github.io/notebook-deepdata/)
- [Accessing gridded data](https://iobis.github.io/notebook-gridded-data/)

## API

- <https://api.obis.org/>

Both the mapper and the R package are based on the OBIS API which can be used by third party developers as well.

## Full exports

- <https://obis.org/data/access/>

Full exports of the quality controlled presence records as CSV or Parquet (see below).