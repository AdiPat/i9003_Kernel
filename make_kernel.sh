#bin/bash
#Kernel Compie script by Adi_Pat
echo "~TITANIUM KERNEL COMPILER~"
echo ""
echo "Cleaning up source"
echo ""
make clean && make mrproper
echo "Setting up config"
echo ""
make Adi_Pat_defconfig
echo "Enter Current Kernel build version"
read vr;
echo "$vr" > CURRENT_VERSION
echo "Copying kernel version into the source"
cp CURRENT_VERSION .version
echo "Make j?"
read x;
make -j$x
echo "Initiating Module copy/strip script"
./copy_strip.sh
echo "Removing present zImage in Kernel Packing Folder"
cd /home/aditya/i9003/urt/kernel/
rm zImage
echo "Copying zImage for Packing"
cp -f /home/aditya/i9003/i9003_Kernel/arch/arm/boot/zImage /home/aditya/i9003/urt/kernel/zImage
echo "Copied zImage"
cd /home/aditya/i9003/urt/
./create_boot.img.sh
cd /home/aditya/i9003/urt
echo "All Done, press Enter to exit"
echo ""
echo "~END TITANIUM~KERNEL COMPILER~"
read ANS
#Copyright @Adi_Pat ~TITANIUM~WORKx~

