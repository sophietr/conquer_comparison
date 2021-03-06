suppressPackageStartupMessages(library(rjson))

## Generate configuration file
L <- list(mae = "data/GSE62270-GPL17021.rds", 
          subfile = "subsets/GSE62270-GPL17021_subsets.rds",
          resfilebase = "results/GSE62270-GPL17021",
          figfilebase = "figures/diffexpression/GSE62270-GPL17021", 
          groupid = "source_name_ch1", 
          keepgroups = c("Randomly extracted cells from whole intestinal organoids", 
                         "Randomly extracted ex vivo isolated 5 day YFP positive cells"), 
          seed = 42, 
          sizes = c(400, 240, 120, 48, 24), 
          nreps = c(1, 5, 5, 5, 5))
write(toJSON(L), file = "config/GSE62270-GPL17021.json")
