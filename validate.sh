#!/bin/bash

for entry in $(find /data); do
  cat $entry | kubeyaml
done