# Dummy Engine

Stub engine for [yascheduler](https://github.com/tilde-lab/yascheduler).

It takes N files as arguments, reads them and, after waiting a random amount of
time, writes their contents into the same files with the extension `.out`.

## How to build

For `linux` version you need `make` and `g++`:
`make dummyengine`

For `win32` version you need `make` and MinGW's `i686-w64-mingw32-c++`:
`make dummeengine.exe`
