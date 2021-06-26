# android-tools rpm-packages for testing
%changelog

```
* Sat Jun 26 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- new version: 31.0.2 (testing only)
- fixed "Reduce TCP keepalive interval" https://github.com/nmeum/android-tools/issues/28
- fixed "fastboot-android fail to use mke2fs" (Thanks to Morgan Leijström, mga#29157)
- add android-tools LICENSE

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

After installation, run: `usermod -aG usb $LOGNAME; reboot`
