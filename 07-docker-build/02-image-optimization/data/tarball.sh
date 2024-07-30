## generate files
#dd if=/dev/zero of=output.dat  bs=10m  count=20
truncate -s 50M file{1..10}.dat

## create the tarball
tar cvf local.tar *.dat

## compress the tarball
gzip local.tar

rm *.dat

