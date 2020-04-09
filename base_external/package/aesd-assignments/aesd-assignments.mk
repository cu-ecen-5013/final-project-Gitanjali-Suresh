
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = '76c7a2d98043994251cae6940d70c71c9a8624db'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/helloworld $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/sharedmem $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/server $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
