# FCM-16S_PredictiveModelling

The full analysis of the submitted paper [***Predicting the presence and abundance of bacterial taxa in environmental communities through flow cytometric fingerprinting***](https://github.com/jeheyse/FCM-16S_PredictiveModelling) by Jasmine Heyse, Florian Schattenberg, Peter Rubbens, Susann Müller, Willem Waegeman, Nico Boon and Ruben Props.

Before starting the analysis, the FCM data should be dowloaded from FlowRepository and the raw sequence data can be dowloaded from the NCBI Sequence Read Archive (SRA). Three datasets are included in this study:

| Dataset  | FlowRepository accession ID | SRA accession ID | Source |
| ------------- | ------------- |------------- |------------- |
| Aquaculture  | FR-FCM-Z3C  |  PRJNA637486, PRJNA691168  | This study and [(Heyse et al., 2021)](https://sfamjournals.onlinelibrary.wiley.com/doi/full/10.1111/1462-2920.15310) |
| Reactor  | FR-FCM-ZYWX  | PRJNA437592  | [(Liu et al., 2019)](https://sfamjournals.onlinelibrary.wiley.com/doi/full/10.1111/1462-2920.14437) |
| Mock | FR-FCM-Z3MC  | Composition in metadata  | [(Cichocki et al., 2020)](https://www.nature.com/articles/s41596-020-0362-0#citeas) |


All metadata files are available on this repository. The analysis commands for the raw Illumina data, using MOTHUR, can be found in _MOTHUR.html_. The data analysis for the processed Illumina data and flow cytometry data from all three datasets can be found in _Analysis.html_.

The final file structure should be: 

```
├── Analysis.Rmd
├── Analysis.html
├── Analysis.md
├── MOTHUR.Rmd
├── MOTHUR.html
├── MOTHUR.md
├── ConvenienceFunctions.R
├── /Metadata
├── /Figures
├── /Results
    ├── /GMMFits
├── /Data
    ├── /Aquaculture
	    ├── FCM
	    ├── Illumina
    ├── /Reactor
	    ├── FCM
	    ├── Illumina
    ├── /Mock
	    ├── FCM
```
