# asm-hello-world

### Nasm hello world examples for macos 64-bit ###
<br>
<br>

# Dependencies
## macos ##
```
10.15.7 (19H2)
```
## nasm: ##
```
> nasm -v
    NASM version 2.15.05 compiled on Aug 29 2020
```

## gcc ##
```
> gcc --version
    Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer SDKs/MacOSX.sdk/usr/include/c++/4.2.1
    Apple clang version 12.0.0 (clang-1200.0.32.2)
    Target: x86_64-apple-darwin19.6.0
    Thread model: posix
    InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
```

## ld ##
```
> ld -v
    @(#)PROGRAM:ld  PROJECT:ld64-609
    BUILD 07:59:13 Aug 25 2020
    configured to support archs: armv6 armv7 armv7s arm64 arm64e arm64_32 i386 x86_64 x86_64h armv6m armv7k armv7m armv7em
    LTO support using: LLVM version 12.0.0, (clang-1200.0.32.2) (static support for 27, runtime is 27)
    TAPI support using: Apple TAPI version 12.0.0 (tapi-1200.0.23)
```
<br>

# Building

| File                  | Command |
| --------------------- | ------- |
| hello_via_libc.asm    | nasm -f macho64 hello_via_syscall.asm && ld -macosx_version_min 10.7.0 hello_via_syscall.o -no_pie |
| hello_via_syscall.asm | nasm -f macho64 hello_via_libc.asm && gcc -e entrypoint hello_via_libc.o                           |