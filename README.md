# RNA sequence analysis - Neuroblastoma Project

## Final Bioinformatics MSc project


1. **fastq_quality_assessment.sh** = Prior to next steps, quality of raw FASTQ reads is assessed using FastQC program. (The instructions for installing FastQC software are included in the script)

2. **mapping_alignment.sh** = STAR aligner is used for mapping paired-end reads. First an index of the genome is built and then the reads are mapped in pairs using the genome index (very computationally intensive step, taking up 100+ GB of memory). The parameters have been optimised to allow detection of fusion transcripts. The resultant file are in BAM format, sorted by coordinate.

3. **read_quantification.sh** = featureCounts (part of Subread software and Rsubread R package) is used to assign the reads to genomic features, such as exons, promoters and chromosomal locations. The program is used here to count RNA-seq reads assigned to each feature.
