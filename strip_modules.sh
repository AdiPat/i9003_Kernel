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

echo "Modules copied to /Modules, you can now strip them."

cd /home/aditya/i9003/Modules/

for i in $(find . | grep .ko | grep './')
do
        echo $i
/home/aditya/Toolchain/arm-2009q3/bin/arm-none-eabi-strip --strip-unneeded $i
done

echo "Stripped Modules"

