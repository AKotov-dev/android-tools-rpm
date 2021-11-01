# android-tools rpm-packages for testing
%changelog
```
* Mon Nov 01 2021 AKotov-dev <alex_q_2000> 31.0.3-1.mga8
- v31.0.3 for Mageia-8

* Sat Sep 25 2021 AKotov-dev <alex_q_2000> 31.0.2-1.mga8
- 51-android.rules in android-udev-rules package
- v31.0.2 for Mageia-8

* Thu Jul 22 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- final version: 31.0.2 (testing only 4)
- Disable installation of license file; "vendor/core/NOTICE is gone in 31.0.2 #30"
- Remove zsh completions for now; "zsh completions are broken #38"
- Fix build with gcc 11; "Build failure with gcc 11 #16"
- Upgrade to platform-tools-31.0.2:
  https://github.com/nmeum/android-tools/releases/tag/31.0.2

* Mon Jul 19 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- new version: 31.0.2 (testing only 3)
- remove BuildRequires: pkgconfig(fmt); "does not compile with fmt >= 8 #44"
  https://github.com/nmeum/android-tools/issues/44

* Mon Jun 28 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- new version: 31.0.2 (testing only 2)
- adding the adbusers group (Thanks to Morgan Leijström, mga#28860)
- replace 51-android.rules (20210501) from:
  https://github.com/M0Rf30/android-udev-rules/releases/tag/20210501

* Sat Jun 26 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- new version: 31.0.2 (testing only)
- fixed "Reduce TCP keepalive interval" https://github.com/nmeum/android-tools/issues/28
- fixed "fastboot-android fail to use mke2fs" (Thanks to Morgan Leijström, mga#29157)
- add android-tools LICENSE
- add BuildRequires: pkgconfig(fmt)

* Tue May 04 2021 daviddavid <daviddavid> 31.0.0p1-1.mga8
+ Revision: 1721285
- new version: 31.0.0p1
- switch to the unoffical CMake-based build system project for android command
  line utilities at https://github.com/nmeum/android-tools
- fix 51-android.rules file to make it usable with user
  permissions (Thanks to Alex Kotov, mga#28860)
- rename fastboot-android to fastboot like it is originally (mga#24139)
- branch android-tools in backports repo
```
**Description:**  
These packages are built based on `android-tools.spec` from the package:  
https://distrib-coffee.ipsl.jussieu.fr/pub/linux/Mageia/distrib/8/SRPMS/core/backports_testing/android-tools-31.0.0p1-1.mga8.src.rpm

Unoffical CMake-based build system for android command line utilities: https://github.com/nmeum/android-tools  
```
git clone --recurse-submodules https://github.com/nmeum/android-tools.git
cd ./android-tools && mkdir ./build && cd ./build && cmake .. && make
```
android-udev-rules:  
https://github.com/M0Rf30/android-udev-rules/blob/master/51-android.rules  

**After installation, run:** `usermod -aG adbusers $LOGNAME; reboot`
