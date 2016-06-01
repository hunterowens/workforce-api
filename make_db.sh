#!/bin/bash

set -e

csvsql -t --insert  --db postgres://hunterowens:@localhost/labor corpus_counts.tsv
