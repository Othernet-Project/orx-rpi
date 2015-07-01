======================
External storage HOWTO
======================

ORxPi supports using external storage devices to enhance the storage capacity.
This HOWTO describes the process preparing external storage devices.

Why external storage
====================

By default, all but the first 100MB of the bootable SD card are allocated for
data storage. Big cards provide ample storage that should be sufficient for the
current broadcast capacity. However, external storage may still prove useful in
some cases. For instance, it is possible to move storage from one receiver to
another, copy files to a computer, and so on. It allows allows us to add files
to the storage as if they were downloaded from the stream (also see `Adding
content HOWTO`_ for alternative methods).

Notes on mechanical hard drives
===============================

First generation of Raspberry Pi boards have a limitation that renders external
mechanical hard drives useless when plugged directly into its USB hub. In order
to use a mechanical hard drive, you will also need a powered USB hub that comes
with its own power supply and does not draw power from Raspberry Pi's USB hub.
USB sticks are generally much more convenient as they do not have this issue.

Preparing the device
====================

The device that is to be used as external storage must be given a volume label
of *EXT_STORE*.

Changing the volume label on Windows
------------------------------------

- Attach the storage device to your PC (and wait for drivers to install if
  needed)
- Open Windows Explorer (or My Computer). 
- Right-click the storage device
- Click Properties in the context menu
- In the text box at the top, type ``EXT_STORE``
- Click OK

Alternatively, the volume label can also be changed from the command prompt.
Supposing that the device appears as ``D:`` in My Computer, the command would
look like this::

    C:\> label D: EXT_STORE

You can verify that the command succeeded by looking at the disk name in My
Computer.

Changing the volue label on Mac
-------------------------------

- Attach the storage device to your Mac
- Open Finder
- Command-click the the device under DEVICES in the sidebar
- Click Get info
- Expand the Name & Extension section
- Type in the new name in the text box
- Close the info window

Changing the volume label on Linux
----------------------------------

The process of changing volume labels on Linux may depend on the partition type
for your particular storage device. Here we will only discuss the process for
FAT32 devices, as most external storage devices come factory-formatted as 
FAT32.

Using commands such as ``dmesg``, determine the device node for the storage
device. In this example, we will asume that the device node is ``/dev/sdb1``::

    $ dmesg
    ....
    [ 9653.465252] scsi 4:0:0:0: Direct-Access     JetFlash Transcend 4GB    8.07 PQ: 0 ANSI: 4
    [ 9653.466719] sd 4:0:0:0: [sdb] 7626752 512-byte logical blocks: (3.90 GB/3.63 GiB)
    [ 9653.467449] sd 4:0:0:0: [sdb] Write Protect is off
    [ 9653.467458] sd 4:0:0:0: [sdb] Mode Sense: 23 00 00 00
    [ 9653.468174] sd 4:0:0:0: [sdb] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
    [ 9653.472476]  sdb: sdb1

To change the label, use the following command (you will need ``dosfstools``
installed)::

    $ sudo dosfslabel /dev/sdb1 EXT_STORE

To verify that the label has been set::

    $ sudo dosfslabel /dev/sdb1

Ext4 filesystem for external storage
====================================

The Linux' ext4 filesystem is ideal for use as external storage. However, this
filesystem is not supported on other operating systems, and, furthermore, the
default options used for formatting partitions as ext4 may differ even between
different Linux distributions. We therefore recommend preparing the device as
ext4 using the receiver itself. Faimiliarity with Linux is highly recommended
for this operation as detailed step-by-step on how to log into the receiver is
outside the scope of this HOWTO.

First log into the receiver. Plug the storage device into the USB port (or
powered USB hub in case of mechanical hard drives), and use the ``dmesg``
command to determine the device node for the storage device. In absence of any
other storage devices, this is usually ``/dev/sda1`` (and in some rare cases,
``/dev/sda``, found in USB sticks of fairly large capacity). In our example, we
will assume ``/dev/sda1``.

Type the following commands::

    $ sudo mkfs.ext4 -L EXT_STORE /dev/sda1

When you are asked for a password, type ``outernet``.

Once the command is done, reboot the receiver. You may skip the next section.

Plugging in the device
======================

Before you plug the device in, power down the receiver. Plug the device in (use
powered USB hub in case of mechanical hard drives), and power the receiver back
up.

During the boot, storage device will be recognized, and the existing data from
the SD card will be copied to the device. The boot may thus take longer than
usual.

Maintenance of the external storage
===================================

Except for ext4 storage, there is no automatic check for defects when receiver
is starting up. This may be a problem because Raspberry Pi does not have a
soft-shutdown option, and storage devices are never cleanly unmounted. We
recommend using a computer to check the storage devices from time to time, and
correct any errors.

.. _Adding content HOWTO: ./adding_content.rst
