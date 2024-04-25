include $(THEOS)/makefiles/common.mk

GO_EASY_ON_ME = 1
#THEOS_PACKAGE_SCHEME=rootless

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
       ARCHS = arm64 arm64e
       TARGET = iphone:clang:15.5:15.0
else
       ARCHS = armv7 armv7s arm64 arm64e
       TARGET = iphone:clang:14.2:7.0
endif

TOOL_NAME = oslog
oslog_FILES = main.mm
oslog_CFLAGS = -fobjc-arc -Iheaders
oslog_CODESIGN_FLAGS = -Sents.xml

include $(THEOS_MAKE_PATH)/tool.mk
