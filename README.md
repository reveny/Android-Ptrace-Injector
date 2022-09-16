# Android-Ptrace-Injector

# Features
- [x] Android 5 - 12
- [x] armeabi-v7a
- [x] arm64-v8a
- [x] x86
- [x] x86 for game emulators (nox, ldplayer, ...)
- [ ] x86_64

# Build and Installation
Build:
  ```shell
  git clone https://github.com/reveny/Android-Ptrace-Injector.git
  cd Android-Ptrace-Injector
  ndk-build (Add ndk-build to your env variables)
  adb push PtraceInject /data/local/tmp
  ```
  Usage:
   ```shell
  su
  cd /data/local/tmp
  chmod +x PtraceInject
  ./PtraceInject
  ```
  
  
