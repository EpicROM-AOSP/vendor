
# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2020 Fluid
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
EPIC_NUM_VER_PRIMARY := Thirteen
EPIC_NUM_VER_SECONDARY := Beta
TARGET_PRODUCT_SHORT := $(subst epic_,,$(EPIC_BUILD_TYPE))

EPIC_BUILD_TYPE ?= UNOFFICIAL

# Only include Updater for official, weeklies, CI and nightly builds
ifeq ($(filter-out OFFICIAL Official WEEKLIES NIGHTLY CI,$(EPIC_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updates
endif

# Sign builds if building an official, weekly, CI and nightly build
ifeq ($(filter-out OFFICIAL WEEKLIES NIGHTLY CI,$(EPIC_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
EPIC_BUILD_VERSION := $(EPIC_NUM_VER_PRIMARY).$(EPIC_NUM_VER_SECONDARY)
EPIC_VERSION := $(EPIC_BUILD_VERSION)-$(EPIC_BUILD_TYPE)-$(EPIC_BUILD)-$(BUILD_DATE)
ifeq ($(WITH_GAPPS), true)
EPIC_VERSION := $(EPIC_VERSION)-gapps
endif
ROM_FINGERPRINT := Epic/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
EPIC_DISPLAY_VERSION := $(EPIC_VERSION)
RELEASE_TYPE := $(EPIC_BUILD_TYPE)
