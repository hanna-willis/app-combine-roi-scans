#!/bin/bash

#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:20:00
#PBS -l vmem=30gb

# Show commands running.
set -x 
set -e

# Set up directory 
#rois_loc=`jq -r '.rois_loc' config.json`

# Parse input file names from config.json. 
rois=`jq -r '.rois' config.json`
dwi=`jq -r '.dwi' config.json`
t1=`jq -r '.t1' config.json`

# Make an output directory.
mkdir output output/rois

# Copy files from the roi1 location to the new location and rename.
for roiname in $(ls $rois); do	
	# Copy the rois from the first ROI to the output ROI directory.
	cp -r ${rois}/$roiname ./output/rois/
done

# Copy diff and t1 into new location
cp -r ${dwi} ./output/rois
cp -r ${t1} ./output/rois


