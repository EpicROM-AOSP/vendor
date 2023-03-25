# Inherit common Lineage stuff
$(call inherit-product, vendor/epic/config/common.mk)

# Inherit Lineage atv device tree
$(call inherit-product, device/epic/atv/epic_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/epic/overlay/tv
