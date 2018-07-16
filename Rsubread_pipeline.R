library(Rsubread)
buildindex(basename="rsubread_genome_38",reference="GRCh38.p12.genome.fa")  #generate index files in the working directory, with prefix rsubread_genome_38


align(index="rsubread_genome_38", readfile1="1_S1_R1_001.fastq",readfile2="1_S1_R2_001.fastq",type="rna",input_format="gzFASTQ",output_format="BAM", output_file=paste(readfile1,"rsubread",output_format,sep="."),nthreads=25) #align paired end reads to a GRCh38 genome (latest release)

