#
# This policy configuration will be used by all qcom products
# that inherit from CarbonROM
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/carbon/sepolicy/qcom/vendor \
    device/carbon/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
endif
