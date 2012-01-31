# Inherit AOSP device configuration for galaxys4g.
$(call inherit-product, device/samsung/galaxys4g/full_galaxys4g.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxys4g
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxys4g
PRODUCT_MODEL := SGH-T959V
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=samsung BUILD_ID=VUVKJ6 BUILD_FINGERPRINT=samsung/SGH-T959V/SGH-T959V:2.3.6/GINGERBREAD/VUVKJ6:user/release-keys PRIVATE_BUILD_DESC="SGH-T959V-user 2.3.6 GINGERBREAD VUVKJ6 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-samsung
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_galaxys4g_defconfig

# Extra galaxys overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxys4g

# Add the FM app
# PRODUCT_PACKAGES += FM

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Add additional mounts
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.additionalmounts=/mnt/emmc \
#    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyS4G
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy galaxys specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
