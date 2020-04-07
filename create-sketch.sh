#!/bin/sh

files="example"  # add a new file like this: "example, example-1, example-2"
for f in $files
do
  # Zip core Sketch data
  cd $f/ && zip $f.zip -r .

  # Copy .zip to .sketch
  cp $f.zip ../$f.sketch

  # Remove zip hello this is a change
  rm -Rf $f.zip && cd ..
done
