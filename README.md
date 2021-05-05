# FCM-16S_PredictiveModelling (updating)

The full analysis of the submitted paper [***Predicting the presence and abundance of bacterial taxa in environmental communities through flow cytometric fingerprinting***](https://github.com/jeheyse/FCM-16S_PredictiveModelling) by Jasmine Heyse, Florian Schattenberg, Susann Müller, Willem Waegeman, Nico Boon and Ruben Props.

Before starting the analysis, the FCM data should be dowloaded from FlowRepository and the raw sequence data can be dowloaded from the NCBI Sequence Read Archive (SRA). Three datasets are included in this study:

| Dataset  | FlowRepository accession ID | SRA accession ID | Source |
| ------------- | ------------- |------------- |------------- |
| Aquaculture  | FR-FCM-Z3C  |  PRJNA637486, PRJNA691168  | This study  |
| Reactor  | FR-FCM-ZYWX  | PRJNA437592  | [(Liu et al., 2019)](https://github.com/jeheyse/FCM-16S_PredictiveModelling) |
| Mock | FR-FCM-Z3MC  | Composition in metadata  | [(Cichocki et al., 2020)](https://www.nature.com/articles/s41596-020-0362-0#citeas) |

under accession ID FR-FCM-Z2LM (on-site measurements) and ID FR-FCM-Z2LN (off-site measurements) and stored in folders named _Data/FCM/OnSite_, _Data/FCM/OffSite_ and _Data/FCM/OffSite_. The raw sequence data of the natural and mock communities can be dowloaded from the NCBI Sequence Read Archive (SRA) under accession ID PRJNA637486. These should be stored in a folder named _Data/Illumina/fastq_. All metadata files are available on this repository.

The analysis commands for the raw Illumina data, using MOTHUR, can be found in _MOTHUR.html_. 

The data analysis for the processed Illumina data and flow cytometry data can be found in _AnalysisSourceTrackingFinal.html_.

The final file structure should be: 

```
├── Analysis.Rmd
├── Analysis.html
├── Analysis.md
├── MOTHUR.Rmd
├── MOTHUR.html
├── MOTHUR.md
├── /Functions
├── /Metadata
├── /Data
    ├── /FCM
	    ├── OnSite
	    ├── OffSite
	    ├── OffSiteFeeds
    ├── /Illumina
	    ├── /fastq
```
