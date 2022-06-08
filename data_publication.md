## Data publication and sharing

OBIS nodes can accept any data files from its data sources or data providers, and they publish these data on their OBIS nodes IPT, which are harvested by central OBIS. The Integrated Publishing Toolkit (IPT) is developed and maintained by the Global Biodiversity Information Facility (GBIF). GBIF maintains an [IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki). See here for specific OBIS instructions:
  
### IPT

**Contents**

- [Introduction](#intro)
- [Installation](#installation)  
- [Registration](#registration)
- [Publish your data](#publish-your-data)  
- [Upload data](#upload-data)  
- [Map to Darwin Core](#map-your-data-to-darwin-core)  
- [Add metadata](#add-metadata)  
- [Publish your data](#publish-your-data-1)  
- [Publish your data as a dataset paper](#publish-your-metadata-as-a-data-paper)

#### Introduction

The biodiversity datasets and its metadata are published in OBIS using the Integrated Publishing Toolkit (IPT), developed by GBIF. The IPT software assists the user in mapping data to valid Darwin Core terms and archiving and compressing the Darwin Core content with: (i) a descriptor file: `meta.xml` that maps the core and extensions files to Darwin Core terms, and describes how the core and extensions files are linked, and (ii) the `eml.xml` file, which contains the dataset metadata in [Ecological Metadata Language](https://en.wikipedia.org/wiki/Ecological_Metadata_Language) (EML) format. For instructions on how to enter the metadata go to [EML](../eml). Al these components (i.e. core file, extension files, descriptor file and metadata file), compressed together (as a .zip file), comprise the Darwin Core Archive.

<img src="images/dwca_1.png" class="img-responsive"/>

#### Installation

OBIS nodes can decide to install and manage their IPT on their own institutional servers or use (at no charge!) the OBIS servers in Oostende, Belgium, provided as in-kind by the Flanders Marine Institute (VLIZ), which also runs the European OBIS node (EurOBIS). VLIZ also ensures the IPT instances run on the latest version (important for security updates). Here is an overview of the IPT instances hosted in Oostende: [http://ipt.iobis.org/](http://ipt.iobis.org/). Please contact the secretariat at info@iobis.org if you would like OBIS to host your IPT. 

To install your own IPT, please follow the instructions in the [GBIF IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#getting-started-guide).

#### Registration

When you have installed your IPT, please provide the IPT instance URL to the OBIS secretariat, so your IPT is included in the data harvesting process. 

OBIS recommends to share the data as widely as possible including with other networks such as GBIF. On 13 October 2014, a cooperation agreement was signed between the secretariats of IOC-UNESCO/OBIS and GBIF in which the two parties recognized the two initiatives (OBIS and GBIF) as complementary with common goals (and in particular OBIS’s role in Marine Biodiversity Data). Together they agreed to work towards maximizing the quantity, quality, completeness and fitness for use of marine biodiversity data, accessible through OBIS and GBIF and in particular in the development of data standards (DwC), technology (IPT), maximizing fitness for use, development of biodiversity indicators for assessments, enhance capacity through training and coordinate approaches to the global science/policy interface. At the 4th session of the OBIS Steering Group (SG-OBIS-IV, Feb 2015), it was recommended that GBIF should harvest OBIS tier 2 nodes if OBIS tier 2 nodes could also harvest marine datasets from their GBIF nodes. In this way OBIS could work directly with the entire marine community and promote its standards and best practices. It was not recommended that iOBIS set up a separate IPT for GBIF to harvest, since this would mean a duplication of effort. 

In order to publish data with GBIF, the OBIS node also need to become a [data publisher in GBIF](https://www.gbif.org/become-a-publisher), and link the IPT installation with this publishing organization. OBIS nodes are encouraged to use the OBIS node name as the publishers's name, unless the host institution requires its institutional name to be used. In the latter case, reference to the OBIS node can be added in the description, as well as between brackets in the title. The name of the IPT instance can also refer to the OBIS node. OBIS nodes are also encouraged to select OBIS as the endorsing organization. In this way, the OBIS node is also listed on the [OBIS page](https://www.gbif.org/participant/304) at GBIF.

#### Publish your data

With regard to populating the IPT with marine data for OBIS, there are two possible approaches: 

1. Manager driven: You as node manager take the responsibility of describing, checking and uploading the data and metadata to the IPT. The data provider can send you the data ‘as such’ or you can make agreements with your providers on the accepted OBIS data format and standards. This approach will give you a very good knowledge of what data is available. It can be time-consuming, as (extended) communication with the data provider will be necessary to document the metadata and to re-format the data to the OBIS standards. 

2. User driven: You as node manager can guide (some of your) data providers to publish the data and metadata to the IPT themselves. Your main task will be to make sure that all relevant information and data for OBIS is available and that you perform the necessary quality checks before the data are released to OBIS. Once the Darwin Core Archive is created, the data provider should inform the node manager of this action, so he or she can do the necessary quality control checks. In order for the node manager to be able to look at the dataset, the data provider should add him or her as a “resource manager” to this specific dataset. 

In most cases, there will be a combination of these two approaches. The chosen approach will largely depend on the capacity, availability and willingness of your data provider to invest extra time in formatting and thoroughly describing their data. If you – as node manager – would prefer a partly user driven approach, the following steps to publishing marine data to OBIS briefly explains how you or a data provider can upload, standardize and publish a dataset on the OBIS node IPT, without the hassle of installing and maintaining an IPT instance. The data are published in your organization’s name. This guide is based on the Canadensys 7-step guide to publishing marine data: 

Desmet, P. & C. Sinou. 2012. 7-step guide to data publication. Canadensys. [http://community.canadensys.net/publication/data-publication-guide](http://community.canadensys.net/publication/data-publication-guide). 

:exclamation: Make sure you have obtained the rights from the data owners to publish their data! 

##### Create your resource on the IPT 

The  Integrated Publishing Toolkit (IPT), developed by GBIF, is an open source web application that can be customized by the OBIS node manager. The IPT-instance is used to publish and register all the datasets. To be able to create and manage your own dataset (called a “resource” by GBIF), you will need a user account. Contact your node manager to create one for you.  

Once you have your account, login at the top of the IPT page. Click on the tab Manage resources: it will display all the datasets you are managing and will be empty at first. You can create a new resource at the bottom of the page. Follow the [GBIF IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#create-a-new-resource) for more detailed instructions. The first thing that needs to be completed is the shortname of your resource. This shortname uniquely identifies your resource (=dataset) and will eventually show up in the URL of this resource on IPT. These shortname identifiers are also used to create folders on the IPT and they cannot be changed.

We therefore advise that the shortname:

* is unique, descriptive and short (max. 100 characters) 
* does not contain a space, comma, accents or special characters

Shortname good examples:

- VLIZ_benthos_NorthSea_2000
- UBC_algae_specimens
- ...

:exclamation: When you would delete a resource, please inform your node manager of this action! If you create a test-file, please include `_test` at the end of your shortname.

You can also create an entirely new resource by uploading an existing archived resource. See the IPT manual section [Upload a DwC-A](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#upload-a-darwin-core-archive) for instructions.

Please note the IPT has a 100MB file upload limit, however, there is no limit to the size of a Darwin Core Archive that the IPT can export/publish. Refer to the [File upload](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#file-upload) section in the IPT manual, to find out how to work around the file upload limit.

Once you have created your resource, you will see an empty resource overview page.

#### Upload data

Uploading your source file to the IPT is easy: go to > your resource overview page > Source Data and click on Choose File. You might want to compress/zip your source file first to improve the upload speed of large files. The IPT will unzip them automatically once received. Follow the [IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#create-a-new-resource) for more detailed instructions (including the option to use multiple source files or to upload via a direct database connection). Accepted formats are delimited text files (csv, tab and files using any other delimiter), either directly or compressed as zip or gzip.  
Once your source file has been uploaded correctly, a source file detail page will be shown, displaying how the IPT has interpreted your file (number of columns, rows, header rows, character encoding, delimiters, etc.). Click the preview button to verify everything is correct, click anywhere on the screen to exit the preview, then click save.

#### Map your data to Darwin Core

Biodiversity data are published in the [Darwin Core](../darwincore) standard. It includes a list of defined terms and allows your data to be understood and used by others. It also allows an aggregator like OBIS or GBIF to integrate your data with other datasets. 

Darwin Core mapping is the process of linking the fields in your resource file with the appropriate Darwin Core terms. It is the most challenging step in publishing your data for two reasons: 1) the list of Darwin Core terms can be overwhelming, so it might be difficult to select the ones that are appropriate for your dataset, and 2) the IPT currently only allows one-to-one mapping of fields, so the ease of mapping will depend on your database structure and on the feasibility of exporting as close to Darwin Core as possible. Contact your node manager or the OBIS secretariat at info@iobis.org to guide you through the steps, review your mapping, suggest terms etc.

You can find more information regarding Darwin Core mapping in the [IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#darwin-core-mappings) (including core types, extensions, auto-mapping, default values, value translation, etc.). 

#### Add metadata

Metadata enables users to discover, assess, understand and attribute your dataset for their particular needs, so it pays off to invest some time providing them.

Go to your resource overview page > Metadata and click Edit to open the metadata editor. Any information you provide here will be visible on the resource homepage and bundled together with your data when you publish.

Follow the [OBIS metadata standards and best practices](../eml), or check the [IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#metadata) for detailed instructions about the metadata editor.

#### Publish your data

Go to your resource overview page > Published Release and click Publish. The IPT will now generate your data as Darwin Core, and combine the data with the metadata and package it as a standardized zip-file called a "Darwin Core Archive". See the IPT manual for more details. 

:exclamation: Hitting the "publish" button does not mean that your dataset is available to everyone, it is still private, with access limited to the resource managers. It will only be publicly available when you have changed Visibility > Public, and it will only be harvested by GBIF when you can Visibility > Registered. The last step is not needed for OBIS to harvest your datasets. Please do not register your dataset with GBIF if your dataset is already published in GBIF by another publisher.

Back on the resource overview page > Published Release, you can see the details of your first published dataset, including the publication date and the version number. Since your dataset is published privately, the only thing left to do is to click Visibility > Public (see the IPT manual) to make it available to everyone. Warning: please do not do this with your test dataset. 

It is now listed on the IPT homepage and you can share and link to it, e.g.: `http://ipt.vliz.be/resource.do?r=kielbay70`. This would be a good time to notify any regional or thematic network you are involved in, which can also have an interest in your dataset. 

Your published dataset is a static snapshot of your data and will not change until you upload an updated source file and click publish again or publish a new version (do not create a new resource). This procedure has the advantage that your dataset is always available, does not require a live internet connection to your database and can be easily shared. It also allows you to control the publication process more precisely: version 1, version 2, etc. and users are informed of how recent the data are (via the last publication date). 

To view an older version of the metadata about the resource, just add the trailing parameter `&v=n` to the URL where `v` stands for "version", and `n` gets replaced by the version number, e.g., `http://ipt.vliz.be/ilvo/resource.do?r=zoopl_bpns&v=1`. In this way, specific versions of a resource's EML, RTF, and DwC-A files can be retrieved. Please note, the IPT's Archival Mode must be turned on in order for old versions of DwC-A to be stored (see [Configure IPT settings](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki#configure-ipt-settings) section of the IPT manual). 

#### Publish your metadata as a data paper

The Metadata expressed in the EML Profile standard can also be downloaded as a Rich Text Format (RTF) file. The latter can serve as a draft manuscript for a data paper ([First database-derived 'data paper' published in journal](http://www.eurekalert.org/pub_releases/2011-11/gbif-fd112711.php), which can be submitted for peer-review to e.g. a [Pensoft journal](http://journals.pensoft.net/). 
