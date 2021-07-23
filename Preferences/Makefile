BUNDLE_NAME = mopttnoadsPreferences

mopttnoadsPreferences_FILES = MONARootListController.m
mopttnoadsPreferences_FRAMEWORKS = UIKit
mopttnoadsPreferences_PRIVATE_FRAMEWORKS = Preferences
mopttnoadsPreferences_INSTALL_PATH = /Library/PreferenceBundles
mopttnoadsPreferences_CFLAGS = -fobjc-arc -DTHEOS_LEAN_AND_MEAN

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/mopttnoadsPreferences.plist$(ECHO_END)