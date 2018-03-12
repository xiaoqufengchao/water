import sys

if (len(sys.argv) != 5):
    print sys.argv
    print "Usage: compare [md5sumOutput] [md5sumOutput]"
    sys.exit(1)

md5sum1 = sys.argv[1]
md5sum2 = sys.argv[3]
file = sys.argv[4]

if (md5sum1.lower() == md5sum2.lower()):
    print file + " OK"
    sys.exit(0)
else:
    print file + " failed"
    sys.exit(1)
