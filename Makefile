GO_EASY_ON_ME = 1
TARGET := iphone:clang:latest:9.0
ARCHS = armv7 arm64
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = zsign

zsign_FILES = common/base64.cpp common/common.cpp common/json.cpp archo.cpp bundle.cpp macho.cpp openssl.cpp signing.cpp zsign.cpp
zsign_CFLAGS = -fobjc-arc -Iinclude
zsign_CODESIGN_FLAGS = -Sentitlements.plist
zsign_LDFLAGS = -Llib -lcrypto -lssl
zsign_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
