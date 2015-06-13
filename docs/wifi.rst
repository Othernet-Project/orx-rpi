============================================
List of enabled USB wireless adaptor drivers
============================================

**Support for these drivers is experimental. Please send an email to
<apps@outernet.is> if you can confirm that a device from this list works.**

This list includes models of WiFi chipsets, not the actual products that
include them. Please find out what chipset is in your product before
using/buying. Products that are confirmed to work on ORx are listed in a
separate list.

Also note that not all chipsets support AP capability. Even those that do not
support AP capability have been included so they can be used in client mode.

Chipsets
========

- Realtek 8187
- Realtek 8187B
- Realtek 8192C
- Realtek 8712U
- Realtek 8712SU
- Realtek 8188EU
- Atheros AR5008
- Atheros AR5523
- Atheros AR6003
- Atheros AR6004
- Atheros AR9001
- Atheros AR9002
- Atheros HTC (AR9271)
- Atheros AR1000 family (IEEE 802.11ac)
- Qualcomm Atheros WCN3660 and WCN3680
- Broadcom 43xx (legacy driver only)
- Broadcom IEEE 802.11n FullMAC
- Ralink rt2500
- Ralink rt2501
- Ralink rt27xx
- Ralink rt28xx
- Ralink rt29xx
- Ralink rt33xx
- Ralink rt3573
- Ralink rt53xx
- Ralink rt28xx with unknown chipset
- Ralink rt8192e

Tested devices
==============

The following table contains products that we have tested. Not all of them 
work. This does not mean other devices do not work. Note that not all products
have AP capability. Check the AP column.

====================  ==========  ==========  =====  ==========================
Name                  VID/PID     Driver      AP     Chipset
====================  ==========  ==========  =====  ==========================
Tenda W311MI          148f 5370   rt2800ub    yes    Ralink 5370
TP-Link TL-WN722N     0cf3 9271   ath9k_htc   yes    Atheros AR9271 rev2
Edimax EW-7811Un      7392 7811   r8192cu     yes*   Realtek 8192CU
Netis WF2120          0bda 8176   r8192cu     yes*   Realtek 8188CUS
Realtek R8188E        0bda 0179   r8188eu     no     Realtek 8188E
====================  ==========  ==========  =====  ==========================

[*] AP support with r8192cu driver is unstable (may work for some clients, and
not for others)
