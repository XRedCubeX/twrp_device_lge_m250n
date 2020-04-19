LOCAL_PATH := device/meizu/mblu2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Board
TARGET_BOOTLOADER_BOARD_NAME := mt6735
TARGET_BOARD_PLATFORM := mt6735
TARGET_NO_BOOTLOADER := true
TARGET_IS_64_BIT := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/meizu/mblu2
TARGET_KERNEL_CONFIG := mblu2_defconfig
BOARD_MKBOOTIMG_ARGS := \
    --board $(TARGET_BOARD_PLATFORM) \
    --kernel_offset 0x8000 \
    --pagesize 2048
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_MKBOOTIMG_ARGS += \
    --base 0x40078000 \
    --ramdisk_offset 0x3F88000 \
    --second_offset 0xE88000 \
    --tags_offset 0xDF88000

# Partitons
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_BOOTIMAGE_PARTITION_SIZE := 16000000
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.treble
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi

# MultiROM config
TARGET_RECOVERY_IS_MULTIROM := true
MR_DEVICE_HAS_VENDOR_PARTITION := true
#MR_DEVICE_HOOKS := $(PLATFORM_PATH)/multirom/mr_hooks.c
#MR_DEVICE_HOOKS_VER := 5
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/meizu/mblu2/multirom/mr_init_devices.c
MR_RD_ADDR := 0x4F88000
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_FSTAB := device/meizu/mblu2/recovery/root/etc/twrp.treble
MR_USE_MROM_FSTAB := true
MR_DEVICE_BOOTDEVICE := /dev/block/platform/mtk-msdc.0/11230000.msdc0
MR_NO_KEXEC := enabled
MR_KEXEC_MEM_MIN := 40EAC000
DEVICE_RESOLUTION := 720x1280
