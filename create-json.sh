#!/bin/sh

files="example" # add a new file like this: "file1 file2 file3"
for f in $files
do
  # Copy .sketch to .zip
  cp $f.sketch $f.zip

  # Unzip the file and delete
  unzip -o $f.zip -d $f/
  rm -Rf $f.zip

  # Remove the preview file
  rm -Rf $f/previews/
done
