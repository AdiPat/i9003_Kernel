#!/bin/bash
# Kernel packing script for i9003 by Adi_Pat
# Please note: urt is the folder where the unpack-repack tools by skin are extracted.

cd i9003/urt

cp kernel/zImage zImage
rm ramdisk.cpio.gz
rm normalboot.img

if test -e zImage ; then
    pushd ramdisk
    find . | cpio -o -H newc | gzip > ../ramdisk.cpio.gz
    popd
    ./mkbootimg --kernel zImage --ramdisk ramdisk.cpio.gz --pagesize 1000 -o normalboot.img

echo "Enter Kernel name."
read name;
echo "Enter Device name"
read dvname;
echo "Enter Kernel Build version."
read kvrsn;
    tar -cvf $name-$dvname-#$kvrsn.tar normalboot.img
 
rm ramdisk.cpio.gz

rm zImage

   else
    echo "No zImage found"
fi

