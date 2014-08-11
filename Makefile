THEOS_DEVICE_IP = 192.168.1.5
TARGET := iphone:7.1:2.0
ARCHS := armv6 arm64
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include theos/makefiles/common.mk

TWEAK_NAME = AlwaysShowSublabelsOnSnapchat
AlwaysShowSublabelsOnSnapchat_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Snapchat"
