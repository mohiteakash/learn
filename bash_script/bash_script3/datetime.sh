#!/bin/bash


echo `date`                                    # Print default output

echo `date +"%m-%d-%y"`                        # Print current date without the time

echo `date +"%m-%d-%Y"`                          # Use 4 digits for year


echo `date +"%T"`                                 # Display time onlty

echo `date +"%r"`                                 # Display 12 hour time


echo `date +"%H:%M"`                               # Time without seconds

echo `date +"%A %d %b %Y %H:%M:%S"`                # Print full date



echo Nanoseconds: `date +"%s-%N"`                   # nanoseconds


echo Timezone: `TZ=":US/Eastern" date +"%T"`      # Different timezone by name
echo Timezone: `TZ=":Europe/UK" date +"%T"`


echo `date +"%s"`                                   # Print epoch time - convenient for filenames


echo Week number: `date +"%V"`                       # Print week number

f=`date +"%s"`                                         # Create unique filename
touch $f
ls -l $f
rm $f

f="/tmp/test"                                         # Add epoch time to existing file
touch $f
mv $f $f.`date +"%s"`
ls -l "$f".*
rm "$f".*
