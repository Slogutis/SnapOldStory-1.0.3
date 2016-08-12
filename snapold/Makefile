ARCHS = armv7 arm64 
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = snapold
snapold_FILES = XXXRootListController.m
snapold_INSTALL_PATH = /Library/PreferenceBundles
snapold_FRAMEWORKS = UIKit
snapold_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/snapold.plist$(ECHO_END)
