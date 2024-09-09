Query=$1
Subject=$2
Output=$3

blastn -query "$Query" -subject "$Subject" -outfmt "6 qseqid sseqid pident length" -out Output.txt

awk '$3 == 100 && $4 == 28' Output.txt > outputcount.txt

echo "NO : $(wc -l < outputcount.txt)"
