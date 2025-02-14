#!/bin/bash
line_count=$(grep -ic "Example" data.txt)
echo $line_count
if [ $line_count -eq 1 ]; then
  echo "Found $line_count with word example"
  elif [ $line_count -gt 1 ]; then
    echo "Found $line_count with word example"
    else
      echo "Found no line with word example"

  fi