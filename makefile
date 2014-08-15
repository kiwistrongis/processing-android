#globals
default: build
freshen: clean build
clean:
	ant clean

#vars
android_sdk = /mnt/data/p/libs/android-sdk-linux
export ANDROID_SDK = $(android_sdk)

#includes
include lists.mk

#main
build: $(source_files)
	ant build
