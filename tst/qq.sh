if [ "$TRAVIS_OS_NAME" == "osx" ]; then
     diff -w <(md5sum GRCTellus.JPL.200204_201608.GLO.RL05M_1.MSCNv02CRIv02.nc) \
		  		GRCTellus.JPL.200204_201608.GLO.RL05M_1.MSCNv02CRIv02.nc.md5
     if [ $? -gt 0 ] ; then echo "Problem checking retired GRACE" >&2 ; exit 44 ; fi
     echo "GRCTellus.JPL.200204_201608.GLO.RL05M_1.MSCNv02CRIv02.nc: OK"
else
  echo "ELSE!"
fi

$SHELL
