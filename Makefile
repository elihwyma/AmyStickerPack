TARGET = iphone:13.3:10.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = CharlieStickerPack
CharlieStickerPack_XCODE_SCHEME = CoolScheme
CharlieStickerPack_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk
