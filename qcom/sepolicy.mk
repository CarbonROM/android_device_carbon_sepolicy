#
# This policy configuration will be used by all qcom products
# that inherit from CarbonROM
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lineage/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/carbon/sepolicy/qcom/common \
    device/carbon/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
