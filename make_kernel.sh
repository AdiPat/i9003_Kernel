make clean && make mrproper
echo "Setting up config."
make Adi_Pat_defconfig
echo "Copying Current Version"
cp CURRENT_VERSION .version
echo "Current version copied."
echo "Now building kernel"
make -j2
./strip_modules.sh
./copy_modules.sh
echo "All done."

