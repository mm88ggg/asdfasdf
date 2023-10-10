make
sudo insmod vvsfs.ko
rm vvsfs.raw
dd of=vvsfs.raw if=/dev/zero bs=512 count=100
./mkfs.vvsfs vvsfs.raw
sudo mount -t vvsfs -o loop vvsfs.raw testdir
cd testdir/