# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm8998
TARGET_BOOTLOADER_BOARD_NAME := msm8998

TARGET_SCVE_DISABLED := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_KERNEL := false

TARGET_OTA_ASSERT_DEVICE := OnePlus5,oneplus5,cheeseburger,OnePlus5T,oneplus5t,dumpling

-include $(QCPATH)/common/msm8998/BoardConfigVendor.mk

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oneplus/oneplus5/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_SMD_TTY := true
BOARD_USES_WIPOWER := false

USE_OPENGL_RENDERER := true
BOARD_USE_LEGACY_UI := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
<<<<<<< HEAD
=======
# Enable System As Root even for non-A/B from P onwards
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
endif

ifeq ($(ENABLE_AB), true)
  ifeq ($(ENABLE_VENDOR_IMAGE), true)
    TARGET_RECOVERY_FSTAB := device/qcom/msm8998/recovery_AB_split_variant.fstab
  else
    TARGET_RECOVERY_FSTAB := device/qcom/msm8998/recovery_AB_non-split_variant.fstab
  endif
else
  ifeq ($(ENABLE_VENDOR_IMAGE), true)
    TARGET_RECOVERY_FSTAB := device/qcom/msm8998/recovery_non-AB_split_variant.fstab
  else
    TARGET_RECOVERY_FSTAB := device/qcom/msm8998/recovery_non-AB_non-split_variant.fstab
  endif
endif

>>>>>>> 537d78844a1c068c71f6eb2f8483b242cdd8b1ca
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE :=  32212254720
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_QCOM_DISPLAY_BSP := true
TARGET_USES_COLOR_METADATA := true

<<<<<<< HEAD
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048
=======
ifeq ($(BOARD_KERNEL_CMDLINE),)
ifeq ($(TARGET_KERNEL_VERSION),4.4)
     BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000
else
     BOARD_KERNEL_CMDLINE += console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 earlycon=msm_hsl_uart,0xc1b0000
endif
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7
endif

BOARD_SECCOMP_POLICY := device/qcom/$(TARGET_BOARD_PLATFORM)/seccomp

BOARD_EGL_CFG := device/qcom/$(TARGET_BOARD_PLATFORM)/egl.cfg
>>>>>>> 537d78844a1c068c71f6eb2f8483b242cdd8b1ca

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/oneplus/msm8998
TARGET_KERNEL_CONFIG := oneplus5_defconfig

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096

# Enable Adreno RS driver
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Set C2D flag to allow copybit to compile
TARGET_USES_C2D_COMPOSITION := true

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := false
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

TARGET_INIT_COLDBOOT_TIMEOUT := 8

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_KERNEL_APPEND_DTB := true
TARGET_COMPILE_WITH_MSM_KERNEL := true

#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

#Enable SSC Feature
TARGET_USES_SSC := true

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm

#GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := false

#Enabling IMS Feature
TARGET_USES_IMS := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/oneplus/oneplus5/init/init_oneplus5.cpp

CAMERA_DAEMON_NOT_PRESENT := true
BOARD_USES_QCNE := true
BOARD_USES_LIBC_WRAPPER := true

# Releasetools extension for shipping firmware
TARGET_RELEASETOOLS_EXTENSIONS := device/oneplus/oneplus5

<<<<<<< HEAD
# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
CONFIG_ACS := true
CONFIG_IEEE80211AC := true
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"
WPA_SUPPLICANT_VERSION := VER_0_8_X

VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

TARGET_RECOVERY_FSTAB := device/oneplus/oneplus5/recovery/recovery.fstab

BOARD_SEPOLICY_DIRS += device/oneplus/oneplus5/sepolicy

# Enable dex pre-opt to speed up initial boot
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_PIC := true
    ifneq ($(TARGET_BUILD_VARIANT),user)
      # Retain classes.dex in APK's for non-user builds
      DEX_PREOPT_DEFAULT := nostripping
    endif
  endif
endif

# inherit from the proprietary version
-include vendor/oneplus/oneplus5/BoardConfigVendor.mk
=======
#Enable DRM plugins 64 bit compilation
TARGET_ENABLE_MEDIADRM_64 := true

ifneq ($(AB_OTA_UPDATER),true)
    TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_msm
endif

BOARD_VNDK_VERSION := current

#Flag to enable System SDK Requirements.
#All vendor APK will be compiled against system_current API set.
BOARD_SYSTEMSDK_VERSIONS:=28
>>>>>>> 537d78844a1c068c71f6eb2f8483b242cdd8b1ca
