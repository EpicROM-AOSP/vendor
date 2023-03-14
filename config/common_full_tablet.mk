$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Lineage stuff
$(call inherit-product, vendor/epic/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/epic/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/epic/overlay/dictionaries

$(call inherit-product, vendor/epic/config/telephony.mk)
