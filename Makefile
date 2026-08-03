
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=Altar

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/altar
JUCE_DIR=$(PWD)/external/JUCE

APP_ICON=$(APP_SRC_DIR)/Source/UI/Images/icon.png

METADATA_GENERATOR_CMAKE_EXTRA_FLAGS=-DJUCEAAP_HAVE_AUDIO_PLAYHEAD_NEW_POSITION_INFO=1

PATCH_FILE=$(shell pwd)/aap-juce-support.patch
PATCH_DEPTH=1

# JUCE patches if any
JUCE_PATCHES= \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/export-jni-symbols.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/support-plugin-ui.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/disable-detach-current-thread.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/embedded-peer-window-guard.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/juce-component-peer-view-touch.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/popup-menu-android.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/standalone-aap-factory-weak-fallback.patch

JUCE_PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
