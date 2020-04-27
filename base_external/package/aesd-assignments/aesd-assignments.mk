
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 'f0acec81e6f1c6c1a29b061dce55da9b0069b3d1'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/producer $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/consumer $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/servertest $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/clienttest $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/receiver $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/SocketServer_Integrated/server-start-stop.sh $(TARGET_DIR)/etc/init.d/S99server
	$(INSTALL) -m 0755 $(@D)/SocketClient_Integrated/client-start-stop.sh $(TARGET_DIR)/etc/init.d/S98client
endef


$(eval $(generic-package))
