include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoTabBarLabelsXI
NoTabBarLabelsXI_FILES = Tweak.xm
NoTabBarLabelsXI_FRAMEWORKS = CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
