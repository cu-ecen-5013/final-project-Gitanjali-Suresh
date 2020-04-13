
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 'b332878d14d00e7d6455002c8bf42f0cddca4450'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/helloworld $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/sharedmem $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/server $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/servertest $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/clienttest $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
