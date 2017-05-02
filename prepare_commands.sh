mkdir -p out;
for pdb in $(cat pdb_list.txt);
do
  p2=$(echo $pdb | cut -c -2);
  mkdir -p out/$p2;
  echo "curl --silent "ftp://ftp.ebi.ac.uk/pub/databases/msd/sifts/xml/$pdb.xml.gz" | gunzip | python2 parse_sifts.py 1> out/$p2/$pdb.tsv 2> /dev/null";
done
