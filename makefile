#globals
default: freshen
freshen: clean build
clean:
	ant clean
	rm -rf *.jar

#vars
android_sdk = /mnt/data/p/libs/android-sdk-linux
export ANDROID_SDK = $(android_sdk)
jar_file = processing-android.jar

#includes
include lists.mk

#main
build: $(source_files)
	ant build
	ant dist

test:
	pshell -a test_android

#jar
jar: $(jar_file)
$(jar_file):
	jar cf $(jar_file) -C bin processing/
	jar uf $(jar_file) -C core/bin processing/
