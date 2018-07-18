# first need to build a reference genome index using Bowtie2


bowtie2-build  --threads 35 /data/eg1914/genome/GENCODE/GRCh38.p12.genome.fa  bowtie2_genome_infusion

./setup_reference_dataset.py -gtf ~/Downloads/Homo_sapiens.GRCh38.90.gtf -f /data/eg1914/genome/GENCODE/GRCh38.p12.genome.fa  -t ~/Downloads/Homo_sapiens.GRCh38.cdna.all.fa -fIdx /data/eg1914 -tIdx ~/Downloads -o /data/eg1914/infusion/ --num-threads 35 --adj-cdna-ids
