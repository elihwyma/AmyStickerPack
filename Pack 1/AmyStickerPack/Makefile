TARGET = iphone:13.3:10.0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = AmyStickerPack
AmyStickerPack_XCODE_SCHEME = AmyStickerPack
AmyStickerPack_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk
