# Dummy Engine

Cross-platform Windows/Linux stub engine for [yascheduler](https://github.com/tilde-lab/yascheduler):

```
[engine.dummy]
platforms = linux
spawn = dummyengine *
check_pname = dummyengine
sleep_interval = 3
input_files = 1.input 2.input
output_files = 1.input 2.input 1.input.out 2.input.out

[engine.dummy]
platforms = windows
spawn = dummy.exe 1.input
check_pname = dummy.exe
sleep_interval = 6
input_files = 1.input
output_files = 1.input.out
```

It takes N files as arguments, reads them and, after waiting a random amount of
time, writes their contents into the same files with the extension `.out`.

## How to build

For `linux` version you need `make` and `g++`:
`make dummyengine`

For `win32` version you need `make` and MinGW's `i686-w64-mingw32-c++`:
`make dummeengine.exe`
