# FastQC program can be downloaded here:
#  https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip

# To install the program, unzip the folder into desired directory, 
#    unzip fastqc_v0.11.7.zip -d destination_folder
#    cd destination_folder/fastqc_v0.11.7
#    chmod 755 fastqc
#
#  when using FastQC give it the path to the fastqc script which is now executable











#initially have all FASTQ files compressed in GZIP format (fastq.gz) in one folder. To unzip:

for f in *.gz; do gunzip $f; done

#now have FASTQ files in .fastq format. 
#Run FastQC program on all files (generates a HTML report which can be visually assessed manually)


for fq in *.fastq
do
~/FastQC/fastqc $fq
done
