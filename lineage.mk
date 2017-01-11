# Copyright 2017 The LineageOS Project
# Copyright 2016 The CyanogenMod Project
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

$(call inherit-product, device/htc/jewel/full_jewel.mk)

# Inherit LineageOS full phone configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device naming
PRODUCT_NAME := lineage_jewel

# Override build props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/sprint_wwe/jewel:4.3/JSS15Q/310297.4:user/release-keys" \
    BUILD_ID=JSS15Q \
    PRIVATE_BUILD_DESC="4.13.651.4 CL310297 release-keys" \
    PRODUCT_NAME=jewel
