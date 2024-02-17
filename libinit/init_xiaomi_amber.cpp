/*
 * Copyright (C) 2021-2022 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include <libinit_utils.h>

#include "vendor_init.h"

static const variant_info_t amber_info = {
    .hwc_value = "",
    .sku_value = "amber",

    .brand = "Xiaomi",
    .device = "amber",
    .mod_device = "amber_global",
    .marketname = "Xiaomi 11T",
    .model = "21081111RG",
    .build_fingerprint = "Xiaomi/amber_global/amber:12/SP1A.210812.016/V14.0.6.0.TKWMIXM:user/release-keys",
};

static const std::vector<variant_info_t> variants = {
    amber_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
