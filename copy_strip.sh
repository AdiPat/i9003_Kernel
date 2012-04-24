#Copy Modules to Modules directory and strip
echo "Copying modules to Modules directory"
cp /home/aditya/i9003/i9003_Kernel/crypto/pcbc.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/drivers/misc/ti-st/st_drv.ko /home/aditya/i9003/Modules/ 

cp /home/aditya/i9003/i9003_Kernel/drivers/scsi/scsi_wait_scan.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/drivers/bluetooth/btwilink.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/battery/samsung_battery.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/fm_si4709/Si4709_driver.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/vibetonz/vibetonz.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/param/param.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/yas529/yas_mag_kernel_driver.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/bma222/yas_acc_kernel_driver.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/gp2a/gp2a.ko /home/aditya/i9003/Modules/ 

cp /home/aditya/i9003/i9003_Kernel/samsung/orientation/yas_ori_kernel_driver.ko /home/aditya/i9003/Modules/  

cp /home/aditya/i9003/i9003_Kernel/samsung/gps/gps.ko /home/aditya/i9003/Modules/  
echo "Modules copied, Stripping Em :D"

cd /home/aditya/i9003/Modules/

for i in $(find . | grep .ko | grep './')
do
        echo $i
/home/aditya/Toolchain/arm-2009q3/bin/arm-none-eabi-strip --strip-unneeded $i
done

echo "Modules Stripped!"

#Copy modules to Ramdisk.

echo "Copying Modules to ramdisk.."

cd /home/aditya/i9003/Modules/

cp pcbc.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/crypto/pcbc.ko

cp st_drv.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/drivers/misc/ti-st/st_drv.ko

cp scsi_wait_scan.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/drivers/scsi/scsi_wait_scan.ko 

cp btwilink.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/drivers/bluetooth/btwilink.ko

cp samsung_battery.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/battery/samsung_battery.ko

cp Si4709_driver.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/Si4709_driver.ko

cp vibetonz.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/vibetonz/vibetonz.ko

cp param.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/param/param.ko

cp yas_mag_kernel_driver.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/yas529/yas_mag_kernel_driver.ko

cp yas_acc_kernel_driver.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/bma222/yas_acc_kernel_driver.ko

cp gp2a.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/gp2a/gp2a.ko  

cp yas_ori_kernel_driver.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/orientation/yas_ori_kernel_driver.ko

cp gps.ko /home/aditya/i9003/urt/ramdisk/lib/modules/2.6.35.7/kernel/samsung/gps/gps.ko
echo "Modules Copied to ramdisk"
echo "Ramdisk is ready!"


