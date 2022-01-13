#!/bin/bash

# android-tools cleaner
# ---
# This script is designed to remove unnecessary files and folders from ./android-tools
# for later compressing into an archive only what is needed for a standalone build.
# All code must be pre-patched: mkdir ./build && cd ./build && cmake ..
#
# Put this script to folder ./android-tools
# ---

clear

read -p \
"Current size: $(du -sh ./)

If you are sure that you want to perform the final cleaning
and all the fixing patches have already been applied before - press Enter..."

# not recursively...
rm -rf ./{.git,build,patches}

# hidden files & folders (exclude ./)
rm -rf $(find -name ".*" -a ! -name ".")

# ./vendor/base/ ~3GB, 'libs' required only
rm -rf $(find ./vendor/base/* -maxdepth 0 -type d ! -name "libs")

# other files and folders
rm -rf $(find -type d -name "scripts" -o -type d -name "tests" -o -type d -name "testdata" \
	-o -type d -name "demo" -o -type f -name "*.tar" -o -type f -name "*.tar.gz" \
	-o -type f -name "*.tgz" -o -type f -name "*.zip")

read -p \
"
Final size: $(du -sh ./)
Press Enter to exit..."

exit 0;
