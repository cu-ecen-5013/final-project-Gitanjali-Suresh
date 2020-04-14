
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 'c41098ff69033855b9057a7208c518f1fd3d20a9'
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
	$(INSTALL) -m 0755 $(@D)/TMP102 $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/gassensor $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
