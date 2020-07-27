#!/bin/bash

for entry in /data/*; do
  cat $entry | kubeyaml
done