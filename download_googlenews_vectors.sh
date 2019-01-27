#/usr/bin/env bash

# This file is originally from https://github.com/mmihaltz/word2vec-GoogleNews-vectors, 
# but getting: # Error downloading object [...] This repository is over its data quota.
# so I copied an older copy to s3.
wget https://s3.amazonaws.com/sabderra/word2vec/GoogleNews-vectors-negative300.bin.gzi && \
gzip -d GoogleNews-vectors-negative300.bin.gz -f
