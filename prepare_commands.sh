mkdir -p out;
for pdb in $(cat pdb_list.txt);
do
  p2=$(echo $pdb | cut -c -2);
  mkdir -p out/$p2;
  echo "curl --silent "http://www.rcsb.org/pdb/files/$pdb.sifts.xml" | python2 parse_sifts.py 1> out/$p2/$pdb.tsv 2> /dev/null";
done
