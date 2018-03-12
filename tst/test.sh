#!/bin/bash

URL="ftp://podaac.jpl.nasa.gov/allData/tellus/L3/mascon/RL05/JPL/CRI/netcdf/"
folder="../input/GRACE"
initial_directory=$(pwd)

list="CLM4.SCALE_FACTOR.JPL.MSCNv01CRIv01.nc \
      CLM4.SCALE_FACTOR.JPL.MSCNv01CRIv01.nc.md5 \
     "

mkdir -p $folder
for file in $list
do
  curl -fsS -o $folder/$file $URL/$file
  if [ $? -gt 0 ] ; then echo "Problem downloading $file" >&2 ; exit 44 ; fi
done

#cd $folder
str1=$(md5 $folder/CLM4.SCALE_FACTOR.JPL.MSCNv01CRIv01.nc)
str2=$(cat $folder/CLM4.SCALE_FACTOR.JPL.MSCNv01CRIv01.nc.md5)
python compare.py $str1 $str2
if [ $? -gt 0 ] ; then echo "Problem Checking file" >&2 ; exit 44 ; fi


$SHELL