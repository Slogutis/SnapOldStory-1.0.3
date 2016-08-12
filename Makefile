
ARCHS = armv7 arm64
DEBUG =0
include theos/makefiles/common.mk

TWEAK_NAME = SnapOldStory
SnapOldStory_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SnapChat"

SUBPROJECTS += snapold
include $(THEOS_MAKE_PATH)/aggregate.mk
