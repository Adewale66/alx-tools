#!/bin/bash

# Check if the file exists

if [ -e .github/workflows/main.yaml ]; then
	if [ -s .github/workflows/main.yaml ]; then
		:
	else
		echo "The YAML file is empty"
		exit 1
	fi
else
  echo "The YAML file does not exist"
  exit 1
fi

# Check if the README exists and is not empty

if [ -e README.md ]; then
  if [ -s README.md ]; then
	:
  else
	echo "The README file is empty"
	exit 1
  fi
else
  echo "The README file does not exist"
  exit 1
fi

# Run python style checker

pycodestyle *py > test.txt
cat test.txt

