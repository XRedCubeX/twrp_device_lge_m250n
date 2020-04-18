#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
	// Framebuffer
    "/sys/class/graphics/fb0", 
    "/sys/devices/soc/7e000000.mtkfb*",
    "/sys/devices/virtual/net/ifb*",
    "/sys/bus/platform/drivers/mtkfb*",

	// Storage Devices
    "/sys/devices/mtk-msdc.0*",
    "/sys/bus/mmc*",
    "/sys/dev/block*",
    "/sys/module/mmc*",
    "/sys/devices/mtk-msdc.0/11240000.msdc1/mmc_host/mmc*",
    "/sys/bus/i2c/drivers/mmc3524x/",
    
	// Input
    "/sys/devices/soc/10003000.keypad/input/input2*",
    "/sys/devices/virtual/misc/uinput/",
    "/sys/devices/virtual/input/input*",
    "/sys/module/uinput/",
    
    // For adb
    "/sys/devices/virtual/tty/ptmx",
    "/sys/devices/virtual/android_usb/android0",
    "/sys/bus/usb*"
    "/sys/bus/platform/drivers/mt_usb",
    "/sys/devices/virtual/misc/usb_accessory",
    "/sys/devices/virtual/misc/mtp_usb/",
    "/sys/devices/platform/mt_usb*",
    "/sys/devices/virtual/ccci_node/ccci_raw_usb",
    "/sys/devices/platform/battery/power_supply/usb",
    "/sys/devices/platform/usb_phy_generic.1.auto/",
    "/sys/module/usb20/",
    "/sys/module/usb_boost",
    "/sys/module/usb20_host",
    "/sys/module/snd_usb_audio",
    "/sys/module/musb_hdrc",
    "/sys/module/usb_storage",
    "/sys/module/usbhid",
    "/sys/module/usbcore",
    
    NULL
};

