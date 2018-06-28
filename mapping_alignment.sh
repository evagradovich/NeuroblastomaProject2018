#mapping using STAR

# indexing the genome

star --runThreadN 15 --runMode genomeGenerate --genomeDir /data/eg1914/genome/new_genome --genomeFastaFiles /data/eg1914/genome/GENCODE/GRCh38.p12.genome.fa --sjdbGTFfile /data/eg1914/genome/gencode_comprehensive_annotation_set.gtf --sjdbOverhang 100^C



# mapping the reads with parameters optimised for detecting fusion transcripts


star --runThreadN 30 --genomeDir /data/eg1914/genome/new_genome --readFilesIn /project/home17/eg1914/my_rnaseq/FASTQ/2_S2_R1_001.fastq /project/home17/eg1914/my_rnaseq/FASTQ/2_S2_R2_001.fastq --outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --chimSegmentMin 20 --chimJunctionOverhangMin 20 --chimScoreMin 0 --chimScoreDropMax 20 --chimScoreSeparation 10 --chimScoreJunctionNonGTAG -1

