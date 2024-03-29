#! /bin/bash
#https://www.ncei.noaa.gov/data/nclimgrid-daily/access/grids/

#fname1="https://www.ncei.noaa.gov/data/nclimgrid-daily/access/grids/$year/"
#fname2="ncdd-$year$month-grd-scaled.nc"

data="/share/bingham/bootk/precip/"

for year in {1951..2021}
do
	fname1="https://www.ncei.noaa.gov/data/nclimgrid-daily/access/grids/$year/"
	#fname2="ncdd-$year$month-grd-scaled.nc"

        for month in 01 02 03 04 05 06 07 08 09 10 11 12
        do
                fname2="ncdd-$year$month-grd-scaled.nc"
		fname=$fname1$fname2
		
		# Using -P flag to specify the download directory
        	wget -P "$data" "$fname" 
                
		# shell equivalent to print()
		echo $fname
        done
done

