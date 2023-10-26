# Android-Ptrace-Injector

# Features
- [x] Android 5 - 14
- [x] Support Arm Emulation
- [x] Support Emulators x86 and x86_64
- [x] Hide Injection with remap hide

# Build and Installation
Build:
  ```shell
  git clone https://github.com/reveny/Android-Ptrace-Injector.git
  cd Android-Ptrace-Injector
  ndk-build (Add ndk-build to your env variables)
  adb push Injector /data/local/tmp
  ```
  Usage:
   ```shell
  su
  cd /data/local/tmp
  chmod +x Injector
  ./Injector -h

  Usage: Injector [options]
  Options:
  -p, --pkg <package>         Set the package name
  -l, --library <library>     Set the library path
  -a, --auto_launch           Enable auto launch
  --launcher <launcher>       Set the launcher (required with --auto_launch)
  -r, --remap                 Enable remap
  -h, --help                  Show this help message
  ```
  
  
