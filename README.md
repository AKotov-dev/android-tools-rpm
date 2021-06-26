# android-tools rpm-packages for testing
%changelog

```* Sat Jun 26 2021 AKotov-dev <alex_q_2000> 31.0.2-0.mrx8
- new version: 31.0.2 (testing only)
  https://github.com/AKotov-dev/android-tools/tree/platform-tools-31.0.2/RPM-for-testing
- fixed "TCP keep alive" https://github.com/nmeum/android-tools/issues/28
- fixed "mke2fs location" (Thanks to Morgan Leijström, mga#29157)
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