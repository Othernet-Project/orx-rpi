=========================
ORx build for Raspbery Pi
=========================

This repository contains open-source build scripts and closed-source binary
blobs for building an ORx Raspberry Pi image. 

If you are simply looking to build your own receiver, please see `Receiver
HOWTO`_.

ORx is a home-made receiver based around Raspberry Pi. It can be used to
receive files from Outernet networks using DVB-S/S2 signal (satellite TV). It
also has support for creating Wireless hotspots. Please look at the docs
directory in the sources for more information on required/supported devices.

License
=======

The complete code for the build system is released under GPLv3. See the COPYING
file in the source tree for more information.

The ONDD binary located in the ``rpi/rootfs_overlay/usr/sbin`` directory is
released under a different proprietary license. Please see ONDD_LICENSE in the
source tree for more information.

Requirements
============

You will need a Linux system to build the image.

The following should be installed on the build box:

- build tools gcc, make, etc
- util-linux
- git
- hg (mercurial)
- libstdc++6 32-bit (on 64-bit systems)

Cloning the repository
======================
::
    $ git clone --recursive https://github.com/Outernet-Project/orx-rpi.git

Compiling the toolchain
=======================

Toolchain is now compiled during build, and separate (external) toolchain is no
longer required. If you've built ORx in the past, feel free to remove the old
Crosstool-NG-based toolchain if you don't need it.

Building
========

To build the rootfs, run make with default target::

    $ make

Once build completes, you will find a zip file in the ``images`` directory.

To get more help on available make targets, type::

    $ make help

By default, all make commands will use the overlay in the ``rpi`` directory.
This creates an image for Raspberry Pi v1. To build for Raspberry Pi v2 using 
the ``rpi2`` overlay, use the B environment variable::

    $ make B=rpi2

Copying the image file to SD card
=================================

The build generates a zip file in the ``images``. Simply unpack it to a blank
SD card.

Rebuilding after changes to rootfs overlay
==========================================

When modifying files in the rootfs overlay, use the following commands to
rebuild::

    $ make rebuild

System username and password
============================

Use the following credentials to log in or SSH into the receiver:

========  ========
username  outernet
password  outernet
========  ========

The password can be changed using the ``passwd`` command.

About the generated images
==========================

The gnerated zip file contains:

- kernel image (``zImage``)
- DTB files
- bootloader configuration file
- firmware files

The root filesystem is part of the kernel image (``zImage`` file). During the
first boot, two additional files are created:

- data.img - disk image containing databases and application logs
- persist.img - disk image containing persistent configuration

These two files can be loop-mounted on a Linux computer, and they are in ext4
format.

One folder is also created on the card: 'DOWNLOADS'. This folder contains the
files downloaded from Outernet.

Reporting bugs
==============

Please report bugs to the `issue tracker`_.

.. _Receiver HOWTO: https://wiki.outernet.is/wiki/ORxPi
.. _issue tracker: https://github.com/Outernet-Project/orx-rpi/issues
.. _archive.outernet.is/images/: http://archive.outernet.is/images/
