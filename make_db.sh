#!/bin/bash

set -e
if [ ! -f ./skills_vector_distance.tsv ]; then
  aws s3 cp s3://skills-public/bucket/top_n/skills_vector_distance.tsv .
fi
csvsql -t --insert  --db postgres://hunterowens:@localhost/labor skills_vector_distance.tsv

if [ ! -f ./skills_master_table.tsv ]; then
  aws s3 cp s3://skills-public/bucket/onet/skills_master_table.tsv .
fi
csvsql -t --insert  --db postgres://hunterowens:@localhost/labor skills_master_table.tsv
