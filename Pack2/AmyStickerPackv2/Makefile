TARGET = iphone:13.3:10.0
ARCHS = arm64
INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = AmyStickerPackv2
AmyStickerPackv2_XCODE_SCHEME = AmyStickerPackv2
AmyStickerPackv2_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk

ipa::
	rm -rf build Payload AmyStickerPackv2.app
	xcodebuild clean build ONLY_ACTIVE_ARCH=NO -sdk iphoneos -scheme AmyStickerPackv2 -configuration Release -derivedDataPath build 
	ln -sf build/Build/Products/Release-iphoneos Payload
	rm -rf Payload/AmyStickerPackv2.app/Frameworks
	zip -r9 AmyStickerPackv2.ipa Payload/AmyStickerPackv2.app

purge::
	$(ECHO_BEGIN)$(PRINT_FORMAT_RED) "Purging"$(ECHO_END); $(ECHO_PIPEFAIL)
	find . -name '.theos' -exec rm -rf {} \; -o -name 'packages' -exec rm -rf {} \; -o -name '.dragon' -exec rm -rf {} \; -o -name '*.ninja' -exec rm -rf {} \; -o -name '.DS_Store' -exec rm -rf {} \; 2>&1 | grep -v 'find' ; echo -n ""
