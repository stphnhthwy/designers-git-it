#!/bin/sh

files="example" # add a new file like this: "file1 file2 file3"
for f in $files
do
  # Zip core Sketch data
  cd $f/ && zip $f.zip -r .

  # Copy .zip to .sketch
  cp $f.zip ../$f.sketch

  # Remove zip hello this is a change
  rm -Rf $f.zip && cd ..
done
