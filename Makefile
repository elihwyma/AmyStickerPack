TARGET = iphone:13.3:10.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = Charlie Sticker Pack
ExampleApp_XCODE_SCHEME = Charlie Sticker Pack StickerPackExtension
ExampleApp_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk
