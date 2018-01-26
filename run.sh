#!/usr/bin/env bash

FILE=results.txt

>${FILE}

for PROB in {1..3}; do
    for SEARCH in {1..10}; do
        python run_search.py -p ${PROB} -s ${SEARCH} | tee -a ${FILE}
    done
done