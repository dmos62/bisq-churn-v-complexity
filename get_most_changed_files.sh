#!/bin/bash

# based on https://understandlegacycode.com/blog/focus-refactoring-with-hotspots-analysis/

git log --format=format: --name-only --since=12.month \
| egrep -v '^$|\.txt$|\.properties$|\.gradle$' \
| sort \
| uniq -c \
| sort -nr \
| awk '{$1=$1;print}' # trim away whitespace
