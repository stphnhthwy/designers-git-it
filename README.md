# designers-git-it

View full [tutorial here](https://stphnhthwy.com/designers-git-it)

## Open create-json.sh

Inside of that file add your file name to `files="example"`
```bash
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
```

You will do the same thing inside of `create-sketch.sh`

## Open create-sketch.sh
Inside of that file add your file name to `files="example"`

```bash
files="example" # add a new file like this: "example, example-1, example-2"
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
```

## Create json files
Open up your Terminal and `cd` the folder you saved our bash scripts and sketch file. Type in `sh create-json.sh` script.

## Create sketch files
Much like the `create-json.sh` script `create-sketch.sh` creates your Sketch files that you can use to design with. Inside of Terminal `cd` the folder you have saved your bash scripts and sketch file. Type in `sh create-json.sh` script.

### Open Sketch
You can now open that Sketch file and make edits to your file. 

## Limitations
This is a great initial step for Version Control with deign files. The limitations that need to be solved are.

- Ability to see difs between versions.
- Manual process that most designers wont do.
- Ability to pull assets or information from the `json` files straight into the code base.

## Resources
- [Source](https://github.com/stphnhthwy/designers-git-it)
- [Git-Merge Presentation](https://www.youtube.com/watch?v=A-lNv6Szu3M)