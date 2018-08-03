
# STAR-FUSION

module load samtools
module load bedtools
module load blast
module load star


~/Downloads/STAR-Fusion-v1.4.0/FusionFilter/prep_genome_lib.pl --genome_fa ref_genome.fa --gtf ref_annot.gtf --fusion_annot_lib CTAT_HumanFusionLib.v0.1.0.dat.gz --annot_filter_rule AnnotFilterRule.pm --pfam_db PFAM.domtblout.dat.gz --CPU 20


 ~/Downloads/STAR-Fusion-v1.4.0/STAR-Fusion --genome_lib_dir ~/Downloads/GRCh38_v27_CTAT_lib_Feb092018/ctat_genome_lib_build_dir/ -J ~/my_rnaseq/star_alignments/S1_mapped/Chimeric.out.junction --output_dir star_fusion_outdir/S1
 
 
 
 
 
 
 
 
 # IRFinder
 
 
 
  time ~/Downloads/IRFinder-1.2.3/bin/IRFinder -d ~/intron_retention_active/S8 -s LoadAndKeep -r ~/Downloads/IRFinder-1.2.3/REF/Human-hg38-release81 ~/rnaseq-ignore-me/0_fastq/8_S8_R1_001.fastq.gz ~/rnaseq-ignore-me/0_fastq/8_S8_R2_001.fastq.gz 
  
  
  time ~/Downloads/IRFinder-1.2.3/bin/IRFinder -m BAM -d ~/intron_retention_active/Pooled -r ~/Downloads/IRFinder-1.2.3/REF/Human-hg38-release81/ <(samtools cat ~/intron_retention_active/S8/Unsorted.bam ~/intron_retention_active/S24/Unsorted.bam ~/intron_retention_active/S16/Unsorted.bam)

  time ~/Downloads/IRFinder-1.2.3/bin/analysisWithLowReplicates.pl -A ~/intron_retention_active/Pooled/IRFinder-IR-nondir.txt ~/intron_retention_active/S8/IRFinder-IR-nondir.txt ~/intron_retention_active/S16/IRFinder-IR-nondir.txt ~/intron_retention_active/S24/IRFinder-IR-nondir.txt -B ~/intron_retention_control/Pooled/IRFinder-IR-nondir.txt ~/intron_retention_control/S5/IRFinder-IR-nondir.txt ~/intron_retention_control/S21/IRFinder-IR-nondir.txt ~/intron_retention_control/S14/IRFinder-IR-nondir.txt > 6C_32_vs_control_32.tab
