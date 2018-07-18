# first need to build a reference genome index using Bowtie2


bowtie2-build  --threads 35 /data/eg1914/genome/GENCODE/GRCh38.p12.genome.fa  bowtie2_genome_infusion


# set up configuration file with all the necesary files, genome sequence + index, transcript sequences + index, etc
./setup_reference_dataset.py -gtf ~/Downloads/Homo_sapiens.GRCh38.90.gtf -f /data/eg1914/genome/Ensembl -t ~/Downloads/Homo_sapiens.GRCh38.cdna.all.fa -fIdx /data/eg1914/genome/Ensembl/ensembl_bowtie2_genome_infusion -tIdx ~/Downloads/ensembl_transcripts_bowtie_index -o /data/eg1914/infusion/ --num-threads 35 --adj-cdna-ids


# run with sensitive and specific discovery modes

./infusion --allow-intronic --allow-intergenic --allow-non-coding --min-unique-split-reads 0 --min-split-reads 3 --min-span-pairs 2 --min-fragments 4 -1 /data/eg1914/genome/GENCODE/1_S1_R1_001.fastq -2 /data/eg1914/genome/GENCODE/1_S1_R2_001.fastq --out-dir /data/eg1914/infusion /data/eg1914/infusion/infusion.cfg
