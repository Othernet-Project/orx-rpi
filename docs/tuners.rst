=====================================================
List of enabled DVB-S/S2 device drivers in the kernel
=====================================================

**Support for these drivers is experimental. Please send an email to
<apps@outernet.is> if you can confirm that a device from this list works.**

The following is a list of devices for which drivers are present in the kernel.
For a list of devices we have confirmed as working, see the table at the
bottom.

Drivers
=======

The following devices have drivers in the ORx kernel.

- Pinnacle PCTV USB 2.0 DVB-S/S2
- Geniatech HDStar
- Pinnacle 400e USB 2.0 DVB-S
- Opera USB 2.0 DVB-S
- DVBWorld USB 2.0 DVB-S
- TeVii USB 2.0 DVB-S/S2
- Prof USB 2.0 DVB-S/S2
- Azurewave AZ6027 USB 2.0 DVB-S/S2
- Technisat USB 2.0 DVB-S/S2
- DVBSky USB 2.0 DVB-S

Some of the devices might be missing firmware. Please let us know if that is
the case with yours.

Tested devices
==============

======================  ==========  ==========  ==========  ===================
Name                    VendID      ProdID      Driver      Frontend
======================  ==========  ==========  ==========  ===================
Geniatech HDStar        1f4d        3000        dw2102      DS3000
PCTV 461e               2013        0258        em28xx      M88TS2022
======================  ==========  ==========  ==========  ===================

.. note::
    PCTV 461e may not operate correctly on Raspberry Pi v1 model B.

Notes
=====

Geniatech HDStar SU3000 (with DS3000 frontend) does work, and the device node
shows up. The kernel log will most likely contain the following errors:

    kernel: dvb-usb: devc bulk message failed: -110
    kernel: dw2102: i2c transfer failed

These don't seem to affect the device's correct operation.

USB hub may become unusable after unplugging HDStar.
