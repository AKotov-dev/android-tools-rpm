# android-tools & android-udev-rules rpm-packages
**Description:**  
These packages are built based on `android-tools.spec` from the [android-tools-31.0.0p1-1.mga8.src.rpm](https://distrib-coffee.ipsl.jussieu.fr/pub/linux/Mageia/distrib/8/SRPMS/core/backports_testing/android-tools-31.0.0p1-1.mga8.src.rpm)  
  
Unoffical CMake-based build system for android command line utilities: https://github.com/nmeum/android-tools  
```
git clone --recurse-submodules https://github.com/nmeum/android-tools.git
cd ./android-tools && mkdir ./build && cd ./build && cmake .. && make
```
android-udev-rules: https://github.com/M0Rf30/android-udev-rules  
  

**After installation, run:** `usermod -aG adbusers $LOGNAME; reboot`
