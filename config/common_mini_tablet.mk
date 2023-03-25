# Inherit mini common Lineage stuff
$(call inherit-product, vendor/epic/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

$(call inherit-product, vendor/epic/config/telephony.mk)
