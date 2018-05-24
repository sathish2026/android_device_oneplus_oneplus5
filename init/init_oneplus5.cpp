/*
   Copyright (c) 2017 Paranoid Android
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>

#include <android-base/properties.h>

#include "vendor_init.h"
#include "property_service.h"

#include "init_msm.h"

using android::base::GetProperty;
using android::init::property_set;

void init_msm_properties(unsigned long msm_id, unsigned long msm_ver, char *board_type) {
    std::string project_name = GetProperty("ro.boot.project_name", "");

    if (project_name == "17801") {
        property_set("ro.vendor.power_profile", "/system/vendor/etc/power_profile_5t.xml");
        property_set("ro.product.device", "OnePlus5T");
        property_set("ro.product.model", "OnePlus 5T");
        property_set("ro.hardware.fingerprint", "msm8998.gf");
        property_set("ro.vendor.audio.location.mixer_path", "/system/vendor/etc/mixer_paths_tasha_op5t.xml");
        property_set("ro.sf.lcd_density", "420");
        property_set("ro.vendor.settings.ui.hardwarekeys.present", "false");
   } else {
        property_set("ro.product.device", "OnePlus5");
        property_set("ro.product.model", "OnePlus 5");
        property_set("ro.vendor.settings.ui.navigationkeys.enabled", "false");
        property_set("ro.sf.lcd_density", "480");
        property_set("ro.vendor.settings.ui.navbar.enabled", "false");
   }
}
