packs_bioc <- c("SingleCellExperiment", "biomaRt", "scDblFinder",
  "SingleR", "AUCell", "celldex", "RedeR", "multtest", "glmGamPoi")

packs_cran <- c("dplyr", "purrr", "tidyr", "Seurat",
  "Matrix", "vroom", "devtools", "harmony", "clustree",
  "scCustomize", "rmarkdown", "metap")

# Instalar pacotes CRAN
lapply(packs_cran, function(i) {
  if(!require(i, character.only = TRUE)) install.packages(i)
})

# Instalar pacotes Bioconductor
if(!require("BiocManager")) install.packages("BiocManager")
lapply(packs_bioc, function(i) {
  if(!require(i, character.only = TRUE)) BiocManager::install(i, update = F)
})