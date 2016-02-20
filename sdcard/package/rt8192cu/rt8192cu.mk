################################################################################
#
# rt8192cu
#
################################################################################

RT8192CU_VERSION = 3ee2156a460e09a518e24ee037194644357f3eb7
RT8192CU_SITE = $(call github,dz0ny,rt8192cu,$(RT8192CU_VERSION))
RT8192CU_LICENSE = GPLv2
RT8192CU_LICENSE_FILES = COPYING

$(eval $(generic-package))
