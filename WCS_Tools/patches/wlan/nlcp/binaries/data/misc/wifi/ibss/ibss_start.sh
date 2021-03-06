#!/system/bin/sh

#
# ibss_start.sh
#
# wpa_supplicant invocation script for ibss
#
# Copyright (C) {2011} Texas Instruments Incorporated - http://www.ti.com/
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# 	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and  
# limitations under the License.
#

mkdir -p /data/misc/wifi/sockets
insmod /system/lib/modules/wl12xx_sdio.ko
ifconfig wlan0 up
sleep 2
setprop ctl.start ibss_supplicant

