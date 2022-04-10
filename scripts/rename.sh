#!/usr/bin/env bash

# Make sed command compatible in both Mac and Linux environments
# Reference: https://stackoverflow.com/a/38595160/8696958
sedi () {
    sed --version >/dev/null 2>&1 && sed -i -- "$@" || sed -i "" "$@"
}

# Read the new repo name
echo Enter your new repo name:
read repo

# Rename instances of "ft" to the new repo name in package.json
sedi 's/ft/'${repo}'/g' 'package.json'

# Rename instances of "ft" to the new repo name in README.md
sedi 's/ft/'${repo}'/g' 'README.md'
sedi 's/.'${repo}'..https:\/\/github.com\/rohansanjay\/'${repo}'./[ft](https:\/\/github.com\/rohansanjay\/ft)/g' 'README.md'