====================
Adding content HOWTO
====================

Although content will be downloaded from the data feed, we may sometimes want
to manually add content ourselves, either content that we packaged ourselves,
or downloaded from Internet.

This document describes the process of adding content to an ORxPi receiver
(including the `Outernet DIY receiver kit`_). Packaging content is not covered
here. For more information about content packaging, see `Content packaging
HOWTO`_ from the `outernet-metadata`_ project.

To import content, you need an USB stick. Create a folder called
``import_content`` and put the packaged content into it. Plug the USB stick
into a running receiver, and wait until the files have been copied. Because
there are no indicators that tell us when ORxPi is finished, it is best to use
an USB stick that has an LED indicator of its own.

Files that should appear in the files section in the ORxPi's web interface are
imported in a similar way. Create a folder named ``import_files`` on the USB
stick, and plug it into a running receiver.

Use of mechanical hard drives for this process is only possible using an
external powered USB hub. This is a limitation of Raspberry Pi's design.

.. _Outernet DIY receiver kit: http://store.outernet.is/products/outernet-receiver-diy-kit-with-raspberry-pi
.. _Content packaging HOWTO: https://github.com/Outernet-Project/outernet-metadata/blob/master/docs/packaging-howto.rst
.. _outernet-metadata: https://github.com/Outernet-Project/outernet-metadata
