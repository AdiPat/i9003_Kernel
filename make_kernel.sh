tput setaf 1
echo -e "\033[1m______________________________________________________________________________"
echo "||--------------------------------------------------------------------------||"
echo "||                                                                          ||"
echo "||==================TITANIUMS KERNEL    COMPILER============================||"
echo "||                                                                          ||"
echo "||**************************************************************************||"
echo "||                                                                          ||"
echo "||**************************************************************************||"
echo "||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~PRESS ENTER TO START COMPILING~~~~~~~~~~~~~~~~~~~~~~~~~~||"
tput sgr0
read ANS
tput setaf 1
echo -e "\033[1m||__________________________________________________________________________||"
echo "||__________________________________________________________________________||"
echo "||~~~~~~~~~~~~~~~~~~~~~~~TITANIUM S KERNEL~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
tput sgr0
tput setaf 6
echo -e "\033[1m||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~~~~~~Cleaning up Source ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
make clean && make mrproper
echo "||~~~~~~~~~~~~~~~~~~~~~~~Setting up config~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
tput sgr0
make Adi_Pat_defconfig
echo "||~~~~~~~~~~~~~~~~~~~~~~~~ Config set up !~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
echo "||~~~~~~~~~~~Please Enter the Current Build version of the kernel~~~~~~~~~~~||"
echo -e "\033[0m||                                                                          ||"
read vr;
echo "$vr" > CURRENT_VERSION
echo "||~~~~~~~~~~~~~~SET UP CURRENT BUILD VERSION OF THE KERNEL~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~~~Copying current version~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
cp CURRENT_VERSION .version
echo "||~~~~~~~~~~~~~~~~~~~~~Current version copied~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~~~~~Now building kernel~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
make -j100
echo "||~~~~~~~~~~~~~~~~~~~~~~~~~zImage Compiled~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo -e "\033[1m||                                                                          ||"
./copy_strip.sh
echo "||~~~~~~~~~~~~~~~~~~~~~~~~~RAMDISK READY!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
cd /home/aditya/i9003/urt/kernel/
rm zImage
echo -e "\033[0m||                                                                          ||"
echo "||--------------------------------------------------------------------------||"
cp -f /home/aditya/i9003/i9003_Kernel/arch/arm/boot/zImage
cp -f /home/aditya/i9003/i9003_Kernel/arch/arm/boot/zImage /home/aditya/i9003/urt/kernel/zImage
cd /home/aditya/i9003/urt/
./create_boot.img.sh
echo -e "\033[1m||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~~~~~Kernel/Ramdisk ready!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||                                                                          ||"
echo "||--------------------------------------------------------------------------||"
tput setaf 1
echo "||**************************************************************************||"
echo "||                                                                          ||"
echo "||                   Credits   Adi_Pat(Aditya Patange)                      ||"
echo "||                                                                          ||"
echo "||**************************************************************************||"
tput sgr0
echo -e "\033[1m||                                                                          ||"
echo "||~~~~~~~~~~~~~~~~~~~ALL DONE, PRESS ENTER TO EXIT~~~~~~~~~~~~~~~~~~~~~~~~~~||"
echo "||==========================================================================||"
read ANS


