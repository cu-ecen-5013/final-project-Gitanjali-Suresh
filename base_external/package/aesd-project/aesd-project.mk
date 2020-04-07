##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = '443dea327c4cb781d1d8dbf98c200fd5e0e93111'
AESD_PROJECT_SITE = 'git@github.com:cu-ecen-5013/final-project-sarayumanagoli.git'
AESD_PROJECT_SITE_METHOD = git

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/helloworld $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
