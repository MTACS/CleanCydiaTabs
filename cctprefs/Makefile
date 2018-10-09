include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CCTPrefs
CCTPrefs_FILES = cctRootListController.m
CCTPrefs_INSTALL_PATH = /Library/PreferenceBundles
CCTPrefs_FRAMEWORKS = UIKit
CCTPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CCTPrefs.plist$(ECHO_END)
SUBPROJECTS += cctprefs
