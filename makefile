#globals
default: freshen
freshen: clean build
clean:
	ant clean

#variables

#includes
source_files=$(find . -name *.java)

#commands
build: $(source_files)
	ant build
	ant dist

test:
	pshell -a test_android
