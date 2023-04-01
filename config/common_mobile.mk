# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/epic/config/common.mk)

# Include AOSP audio files
include vendor/epic/config/aosp_audio.mk

# Include Lineage audio files
include vendor/epic/config/epic_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    Etar \
    ExactCalculator \
    Jelly \
    Profiles

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
