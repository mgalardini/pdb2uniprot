pdb2uniprot
=========

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3735065.svg)](https://doi.org/10.5281/zenodo.3735065)

Retrieve PDB 2 uniprot mappings, with residue resolution

Dependencies
------------

* python (either version 2 or 3)

Usage
-----

Simply provide a list of PDB identifiers, lowercase
and one for each line, in the `pdb_list.txt` file. Then run:

    bash prepare_commands.sh > commands.txt
    parallel --jobs 1 --progress < commands.txt
    echo -e "pdb id\tpdb chain\tpdb residue\tpdb position\tuniprot id\tuniprot residue\tuniprot position" > pdb2uniprot.tsv
    find out/ -type f -name '*tsv' -exec cat {} >> pdb2uniprot.tsv \;

The `pdb2uniprot.tsv` file should look something like this:

    pdb id  pdb chain       pdb residue     pdb position    uniprot id      uniprot residue uniprot position
    192l    A       M       1       P00720  M       1
    192l    A       N       2       P00720  N       2
    192l    A       I       3       P00720  I       3
    192l    A       F       4       P00720  F       4
    192l    A       E       5       P00720  E       5
    192l    A       M       6       P00720  M       6
    192l    A       L       7       P00720  L       7
    192l    A       R       8       P00720  R       8
    192l    A       I       9       P00720  I       9

Acknowledgements
------------

The conversion is based on the SIFTS database (http://www.ebi.ac.uk/pdbe/docs/sifts/), to which we are very grateful

Copyright
---------

Copyright (C) <2016> EMBL-European Bioinformatics Institute

This program is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

Neither the institution name nor the name pdb2uniprot
can be used to endorse or promote products derived from
this software without prior written permission.
For written permission, please contact <marco@ebi.ac.uk>.

Products derived from this software may not be called pdb2uniprot
nor may pdb2uniprot appear in their names without prior written
permission of the developers. You should have received a copy
of the GNU General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
