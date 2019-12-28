#
# This policy configuration will be used by all products that
# inherit from CarbonROM
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/carbon/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/carbon/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/carbon/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/carbon/sepolicy/common/dynamic \
    device/carbon/sepolicy/common/vendor
endif

ifeq ($(TARGET_INCLUDE_WIFI_EXT),true)
ifeq (,$(filter sm6150 msmnile trinket, $(TARGET_BOARD_PLATFORM)))
BOARD_SEPOLICY_DIRS += \
	device/carbon/sepolicy/wifi-ext/qcom/legacy
endif

BOARD_SEPOLICY_DIRS += \
	device/carbon/sepolicy/wifi-ext/common \
	device/carbon/sepolicy/wifi-ext/google
endif

