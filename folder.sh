#!/bin/bash


# Shell script used to create folder for days 1 to 100

for i in $(seq -w 1 100):
do
	mkdir -p day-${i}
cat <<EOF > day-${i}/README.md
# Day ${i}

## Task

## Commands Used

## What I Learned

## Notes
EOF

done
