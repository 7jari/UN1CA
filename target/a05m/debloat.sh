# Copyright (c) 2026 Salvo Giangreco
# SPDX-License-Identifier: GPL-3.0-or-later

# Debloat list for Galaxy A05 (a05m)
# - Add entries inside the specific partition containing that file (<PARTITION>_DEBLOAT+="")
# - DO NOT add the partition name at the start of any entry (eg. "/system/dpolicy_system")
# - DO NOT add a slash at the start of any entry (eg. "/dpolicy_system")

# Apps
SYSTEM_DEBLOAT+="
system/priv-app/AREmoji
"

# Overlays
SYSTEM_DEBLOAT+="
system/app/WifiRROverlayAppLls
"
