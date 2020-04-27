
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

<<<<<<< HEAD
AESD_ASSIGNMENTS_VERSION = 'a987198d552d27ffcc9a15340657a04ba9a31f61'
=======
AESD_ASSIGNMENTS_VERSION = '44760558d562c1f5d7cb5c99c56e98f0912b790d'
>>>>>>> 70ebff34ef2a8bdbb3e9598b215baa069496cc17
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/producer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/consumer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/servertest $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/clienttest $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/receiver $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
