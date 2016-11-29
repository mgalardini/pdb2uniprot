find /nfs/public/rw/pdbe/release-data/www-static-content/entry/*/* -maxdepth 0 -type d | awk -F'/' '{print $NF}' | awk '{print $1}' | sort | uniq > pdb_list.txt
