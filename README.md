# Synthetic Gut Community

### RNA-seq analysis code for the paper "Mechanistic modeling identifies emergent behavior in a synthetic human gut community"

----

#### Abstract
Whereas the composition of the human gut microbiome is relatively well resolved, predictive understanding of its response to perturbations such as diet shifts is still lacking. Here, we followed a bottom-up strategy to explore human gut community dynamics. We established a synthetic community composed of three representative human gut isolates in well-controlled conditions in vitro. We then explored species interactions by performing all mono- and pair-wise fermentation experiments and quantified with a mechanistic community model how well tri-culture dynamics was predicted from mono-culture data. With the model as a reference, we demonstrated that species grown in co-culture behaved differently than in mono-culture and confirmed their altered behavior at the transcriptional level. In addition, we showed with replicate tri-cultures and in simulations that dominance in tri-culture sensitively depends on initial conditions. Our work has important implications for gut microbial community modeling as well as ecological interaction detection from batch cultures.



#### Contents of this repo

* scripts: contains the Rscript for the analysis of the RNA-seq data from the paper
* data: contains the functional annotation for the three species studied here (*B. hydrogenotrophica*, *F. prausnitzii* and *R. intestinalis*) as well as the raw count data for all the experiments, as obtained through mapping with `bowtie2` + `htseq-count`
* figures: pdfs of the figures generated using the analysis script
* data_output: output tables from the differential expression analysis
* R: auxiliary function(s) required by the main analysis script