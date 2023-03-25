# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# epic Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.epic.maintainer=$(EPIC_MAINTAINER) \
    ro.epic.code=$(EPIC_CODENAME) \
    ro.epic.packagetype=$(EPIC_PACKAGE_TYPE) \
    ro.epic.releasetype=$(EPIC_BUILDTYPE) \
    ro.epic.version?=$(EPIC_VERSION) \
    ro.epic.chipset?=$(EPIC_CHIPSET) \
    ro.epic.build.version=$(EPIC_BUILD_VERSION) \
    ro.epic.display.version?=$(EPIC_DISPLAY_VERSION) \
    ro.epic.platform_release_codename=$(EPIC_FLAVOR) \	
    ro.epic.build.date=$(BUILD_DATE) \
    ro.epic.buildtype=$(EPIC_BUILD_TYPE) \
    ro.epic.fingerprint=$(ROM_FINGERPRINT) \
    ro.modversion=$(EPIC_VERSION) 
	

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
