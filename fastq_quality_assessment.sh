#initially have all FASTQ files compressed in GZIP format (fastq.gz) in one folder. To unzip:

for f in *.gz; do gunzip $f; done

#now have FASTQ files in .fastq format. 
#Run FastQC program on all files (generates a HTML report which can be visually assessed manually)


for fq in *.fastq
do
~/FastQC/fastqc $fq
done
