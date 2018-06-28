# count number of reads in FASTQ file 

echo $(cat yourfile.fastq|wc -l)/4|bc


# move all files into a subdirectory excluding the actual subdirectory

mv !(folder_name) folder_name
