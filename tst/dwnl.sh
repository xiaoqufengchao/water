#!/bin/bash
#*******************************************************************************
#tst_pub_dwnl_David_etal_201x_SER.sh
#*******************************************************************************

#Purpose:
#This script downloads all the files corresponding to:
#David, Cédric H., et al. (201x)
#xxx
#DOI: xx.xxxx/xxxxxx
#This script also downloads a subset of the files from:
#Wiese, D. N., F. W. Landerer, and M. M. Watkins (2016), Quantifying and 
#reducing leakage errors in the JPL RL05M GRACE mascon solution, Water Resources
#Research, (52), 7490–7502, 
#DOI: 10.1002/2016WR019344.
#The files used are available from:
#David, Cédric H., et al. (201x)
#xxx
#DOI: xx.xxxx/xxxxxx
#and from:
#Wiese, D. N. (2015), GRACE monthly global water mass grids NETCDF RELEASE 5.0. 
#Ver. 5.0. PO.DAAC, CA, USA. Dataset accessed [YYYY-MM-DD]
#DOI: 10.5067/TEMSC-OCL05
#The script returns the following exit codes
# - 0  if all downloads are successful 
# - 22 if there was a conversion problem
# - 44 if one download is not successful
#Author:
#Cedric H. David, 2018-2018.


#*******************************************************************************
#Notes on tricks used here
#*******************************************************************************
#wget -nv -nc          --> Non-verbose (silent), No-clobber (don't overwrite) 
#tar --strip-components--> Remove leading directory components on extraction
#tar -C                --> Specify where to extract 


#*******************************************************************************
#Publication message
#*******************************************************************************
echo "********************"
echo "Downloading files from:   http://dx.doi.org/xx.xxxx/xxxxxx"
echo "                          ftp://podaac.jpl.nasa.gov/allData/tellus/L3/mascon/RL05/JPL/CRI/netcdf/"
echo "which correspond to   :   http://dx.doi.org/xx.xxxx/xxxxxx/"
echo "                          http://dx.doi.org/10.1002/2016WR019344"
echo "These files are under a Creative Commons Attribution (CC BY) license."
echo "Please cite these four DOIs if using these files for your publications."
echo "********************"