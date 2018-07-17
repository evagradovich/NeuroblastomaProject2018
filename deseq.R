load_install <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

packages <- c("ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid","Rsubread","DESeq2")
load_install(packages)


###################################################

countdata <- read.table("featureCounts_all_counts_clean.txt", header=TRUE, row.names=1)  # load in the clean featureCounts text file
#head(countdata)






