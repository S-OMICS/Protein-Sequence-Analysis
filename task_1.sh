
wget https://ftp.ncbi.nlm.nih.gov/genomes/archive/old_refseq/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid57779/NC_000913.faa

num_sequences=$(grep -c "^>" NC_000913.faa)

echo "Number of sequences: $num_sequences"

total_amino_acids=$(grep -v "^>" NC_000913.faa | tr -d "\n" | wc -c)

echo "Total number of amino acids: $total_amino_acids"

average_length=$(echo "scale=0; $total_amino_acids / $num_sequences" | bc)

echo "Average length of proteins: $average_length"


