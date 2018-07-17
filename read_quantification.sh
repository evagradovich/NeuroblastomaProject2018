# done using featureCounts (Subread software or Rsubread package)

# subread installed locally

module load R


/project/home17/eg1914/Downloads/subread-1.6.2-source/bin/featureCounts" "-T" "4" "-p" "-t" "exon" "-g" "gene_id" "-a" "/project/home17/eg1914/my_rnaseq/gencode.v28.annotation.gtf" "-o" "all_counts_featureCounts.txt" *.bam #all BAM files in same directory

# trim the resultant file, only keep the read counts


cut -f 1,7-30 all_counts_featureCounts.txt > featureCounts_all_counts_clean.txt


Rscript deseq.R
