
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = '700402b27cb887f9f6a6b5dd339c840abfbe3f90'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/helloworld $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/sharedmem $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
