# Module: `stdgo.syscall`

[(view library index)](../stdgo.md)


# Overview



Package syscall contains an interface to the low\-level operating system
primitives. The details vary depending on the underlying system, and
by default, godoc will display the syscall documentation for the current
system. If you want godoc to display syscall documentation for another
system, set $GOOS and $GOARCH to the desired system. For example, if
you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
to freebsd and $GOARCH to arm.
The primary use of syscall is inside other packages that provide a more
portable interface to the system, such as "os", "time" and "net".  Use
those packages rather than this one if you can.
For details of the functions and data types in this package consult
the manuals for the appropriate operating system.
These calls return err == nil to indicate success; otherwise
err is an operating system error describing the failure.
On most systems, that error has type syscall.Errno.  


Deprecated: this package is locked down. Callers should use the
corresponding package in the golang.org/x/sys repository instead.
That is also where updates required by new systems or versions
should be applied. See https://golang.org/s/go1.4-syscall for more
information.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _asanRead(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanread>)

- [`function _asanWrite(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanwrite>)

- [`function _checkPath(_path:stdgo.GoString):stdgo.Error`](<#function-_checkpath>)

- [`function _copyenv():Void`](<#function-_copyenv>)

- [`function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}`](<#function-_direntino>)

- [`function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}`](<#function-_direntnamlen>)

- [`function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}`](<#function-_direntreclen>)

- [`function _errnoErr(_e:stdgo.syscall.Errno):stdgo.Error`](<#function-_errnoerr>)

- [`function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-_faketimewrite>)

- [`function _fdToFile(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.syscall.T_jsFile>;
}`](<#function-_fdtofile>)

- [`function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.syscall.js.Value;
}`](<#function-_fscall>)

- [`function _mapJSError(_jsErr:stdgo.syscall.js.Value):stdgo.Error`](<#function-_mapjserror>)

- [`function _msanRead(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanread>)

- [`function _msanWrite(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanwrite>)

- [`function _now():{
	_1:stdgo.GoInt32;
	_0:stdgo.GoInt64;
}`](<#function-_now>)

- [`function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}`](<#function-_readint>)

- [`function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64`](<#function-_readintbe>)

- [`function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64`](<#function-_readintle>)

- [`function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void`](<#function-_recovererr>)

- [`function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void`](<#function-_runtimesetenv>)

- [`function _runtimeUnsetenv(_k:stdgo.GoString):Void`](<#function-_runtimeunsetenv>)

- [`function _runtime_envs():stdgo.Slice<stdgo.GoString>`](<#function-_runtime_envs>)

- [`function _setStat(_st:stdgo.Ref<stdgo.syscall.Stat_t>, _jsSt:stdgo.syscall.js.Value):Void`](<#function-_setstat>)

- [`function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo.syscall.Timespec`](<#function-_settimespec>)

- [`function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):stdgo.syscall.Timeval`](<#function-_settimeval>)

- [`function accept(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-accept>)

- [`function bind(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-bind>)

- [`function bytePtrFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Pointer<stdgo.GoByte>;
}`](<#function-byteptrfromstring>)

- [`function byteSliceFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-byteslicefromstring>)

- [`function chdir(_path:stdgo.GoString):stdgo.Error`](<#function-chdir>)

- [`function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error`](<#function-chmod>)

- [`function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#function-chown>)

- [`function clearenv():Void`](<#function-clearenv>)

- [`function close(_fd:stdgo.GoInt):stdgo.Error`](<#function-close>)

- [`function closeOnExec(_fd:stdgo.GoInt):Void`](<#function-closeonexec>)

- [`function connect(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-connect>)

- [`function dup(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-dup>)

- [`function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error`](<#function-dup2>)

- [`function environ():stdgo.Slice<stdgo.GoString>`](<#function-environ>)

- [`function exit(_code:stdgo.GoInt):Void`](<#function-exit>)

- [`function fchdir(_fd:stdgo.GoInt):stdgo.Error`](<#function-fchdir>)

- [`function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error`](<#function-fchmod>)

- [`function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#function-fchown>)

- [`function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error`](<#function-fstat>)

- [`function fsync(_fd:stdgo.GoInt):stdgo.Error`](<#function-fsync>)

- [`function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error`](<#function-ftruncate>)

- [`function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-getcwd>)

- [`function getegid():stdgo.GoInt`](<#function-getegid>)

- [`function getenv(_key:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}`](<#function-getenv>)

- [`function geteuid():stdgo.GoInt`](<#function-geteuid>)

- [`function getgid():stdgo.GoInt`](<#function-getgid>)

- [`function getgroups():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-getgroups>)

- [`function getpagesize():stdgo.GoInt`](<#function-getpagesize>)

- [`function getpid():stdgo.GoInt`](<#function-getpid>)

- [`function getppid():stdgo.GoInt`](<#function-getppid>)

- [`function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-getsockoptint>)

- [`function gettimeofday(_tv:stdgo.Ref<stdgo.syscall.Timeval>):stdgo.Error`](<#function-gettimeofday>)

- [`function getuid():stdgo.GoInt`](<#function-getuid>)

- [`function getwd():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-getwd>)

- [`function kill(_pid:stdgo.GoInt, _signum:stdgo.syscall.Signal):stdgo.Error`](<#function-kill>)

- [`function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#function-lchown>)

- [`function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error`](<#function-link>)

- [`function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error`](<#function-listen>)

- [`function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error`](<#function-lstat>)

- [`function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error`](<#function-mkdir>)

- [`function nsecToTimespec(_nsec:stdgo.GoInt64):stdgo.syscall.Timespec`](<#function-nsectotimespec>)

- [`function nsecToTimeval(_nsec:stdgo.GoInt64):stdgo.syscall.Timeval`](<#function-nsectotimeval>)

- [`function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-open>)

- [`function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{
	_2:stdgo.Slice<stdgo.GoString>;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-parsedirent>)

- [`function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error`](<#function-pipe>)

- [`function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-pread>)

- [`function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-pwrite>)

- [`function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-rawsyscall>)

- [`function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-rawsyscall6>)

- [`function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-read>)

- [`function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-readdirent>)

- [`function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-readlink>)

- [`function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-recvfrom>)

- [`function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo.syscall.Sockaddr;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-recvmsg>)

- [`function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error`](<#function-rename>)

- [`function rmdir(_path:stdgo.GoString):stdgo.Error`](<#function-rmdir>)

- [`function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}`](<#function-seek>)

- [`function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sendfile>)

- [`function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.syscall.Sockaddr, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sendmsgn>)

- [`function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-sendto>)

- [`function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error`](<#function-setnonblock>)

- [`function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error`](<#function-setreaddeadline>)

- [`function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error`](<#function-setwritedeadline>)

- [`function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error`](<#function-setenv>)

- [`function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error`](<#function-setsockoptint>)

- [`function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error`](<#function-shutdown>)

- [`function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-socket>)

- [`function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.syscall.ProcAttr>):{
	_2:stdgo.Error;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoInt;
}`](<#function-startprocess>)

- [`function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error`](<#function-stat>)

- [`function stopIO(_fd:stdgo.GoInt):stdgo.Error`](<#function-stopio>)

- [`function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>`](<#function-stringbyteptr>)

- [`function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-stringbyteslice>)

- [`function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error`](<#function-symlink>)

- [`function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-syscall>)

- [`function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-syscall6>)

- [`function sysctl(_key:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-sysctl>)

- [`function timespecToNsec(_ts:stdgo.syscall.Timespec):stdgo.GoInt64`](<#function-timespectonsec>)

- [`function timevalToNsec(_tv:stdgo.syscall.Timeval):stdgo.GoInt64`](<#function-timevaltonsec>)

- [`function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error`](<#function-truncate>)

- [`function umask(_mask:stdgo.GoInt):stdgo.GoInt`](<#function-umask>)

- [`function unlink(_path:stdgo.GoString):stdgo.Error`](<#function-unlink>)

- [`function unsetenv(_key:stdgo.GoString):stdgo.Error`](<#function-unsetenv>)

- [`function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo.syscall.Timespec>):stdgo.Error`](<#function-utimesnano>)

- [`function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo.syscall.Rusage>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-wait4>)

- [`function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-write>)

- [class Dirent](<#class-dirent>)

  - [`function new(?reclen:stdgo.GoUInt16, ?name:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#dirent-function-new>)

- [class Iovec](<#class-iovec>)

  - [`function new():Void`](<#iovec-function-new>)

- [class ProcAttr](<#class-procattr>)

  - [`function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo.syscall.SysProcAttr>):Void`](<#procattr-function-new>)

- [class Rusage](<#class-rusage>)

  - [`function new(?utime:stdgo.syscall.Timeval, ?stime:stdgo.syscall.Timeval):Void`](<#rusage-function-new>)

- [class SockaddrInet4](<#class-sockaddrinet4>)

  - [`function new(?port:stdgo.GoInt, ?addr:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#sockaddrinet4-function-new>)

- [class SockaddrInet6](<#class-sockaddrinet6>)

  - [`function new(?port:stdgo.GoInt, ?zoneId:stdgo.GoUInt32, ?addr:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#sockaddrinet6-function-new>)

- [class SockaddrUnix](<#class-sockaddrunix>)

  - [`function new(?name:stdgo.GoString):Void`](<#sockaddrunix-function-new>)

- [class Stat\_t](<#class-stat_t>)

  - [`function new(?dev:stdgo.GoInt64, ?ino:stdgo.GoUInt64, ?mode:stdgo.GoUInt32, ?nlink:stdgo.GoUInt32, ?uid:stdgo.GoUInt32, ?gid:stdgo.GoUInt32, ?rdev:stdgo.GoInt64, ?size:stdgo.GoInt64, ?blksize:stdgo.GoInt32, ?blocks:stdgo.GoInt32, ?atime:stdgo.GoInt64, ?atimeNsec:stdgo.GoInt64, ?mtime:stdgo.GoInt64, ?mtimeNsec:stdgo.GoInt64, ?ctime:stdgo.GoInt64, ?ctimeNsec:stdgo.GoInt64):Void`](<#stat_t-function-new>)

- [class SysProcAttr](<#class-sysprocattr>)

  - [`function new():Void`](<#sysprocattr-function-new>)

- [class Timespec](<#class-timespec>)

  - [`function new(?sec:stdgo.GoInt64, ?nsec:stdgo.GoInt64):Void`](<#timespec-function-new>)

  - [`function nano():stdgo.GoInt64`](<#timespec-function-nano>)

  - [`function unix():{ _1:stdgo.GoInt64; _0:stdgo.GoInt64;}`](<#timespec-function-unix>)

- [class Timeval](<#class-timeval>)

  - [`function new(?sec:stdgo.GoInt64, ?usec:stdgo.GoInt64):Void`](<#timeval-function-new>)

  - [`function nano():stdgo.GoInt64`](<#timeval-function-nano>)

  - [`function unix():{ _1:stdgo.GoInt64; _0:stdgo.GoInt64;}`](<#timeval-function-unix>)

- [typedef Conn](<#typedef-conn>)

- [typedef Errno](<#typedef-errno>)

- [typedef RawConn](<#typedef-rawconn>)

- [typedef Signal](<#typedef-signal>)

- [typedef Sockaddr](<#typedef-sockaddr>)

- [typedef WaitStatus](<#typedef-waitstatus>)

# Constants


```haxe
import stdgo.syscall.Syscall
```


```haxe
final __10:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final __8:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final __9:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



Misc constants expected by package net but not supported.  

```haxe
final _asanenabled:Bool = false
```


```haxe
final _direntSize:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _faketime:Bool = false
```


```haxe
final _isBigEndian:Bool = false
```


```haxe
final _msanenabled:Bool = false
```


```haxe
final _sys_access:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_brk:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_chdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_chmod:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_clock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_clock_getres:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_clock_gettime:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_close:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_cond_broadcast:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_cond_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_cond_signal:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_cond_timed_wait_abs:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_cond_wait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_dup:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_dup2:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_dyncode_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_dyncode_delete:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_dyncode_modify:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_exception_clear_flag:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_exception_handler:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_exception_stack:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_exit:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_fstat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_futex_wait_abs:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_futex_wake:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_get_random_bytes:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_getcwd:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_getdents:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_getpid:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_gettimeofday:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_accept:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_connect:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_makeboundsock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_mem_obj_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_recvmsg:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_sendmsg:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_imc_socketpair:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_isatty:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_link:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_list_mappings:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_lseek:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_lstat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mkdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mmap:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mprotect:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_munmap:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mutex_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mutex_lock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mutex_trylock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_mutex_unlock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_nameservice:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_nanosleep:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_null:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_open:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_pread:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_pwrite:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_read:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_readlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_rename:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_rmdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sched_yield:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_second_tls_get:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_second_tls_set:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sem_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sem_get_value:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sem_post:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sem_wait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_stat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_symlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_sysconf:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_test_crash:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_test_infoleak:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_test_syscall_1:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_test_syscall_2:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_thread_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_thread_exit:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_thread_nice:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_tls_get:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_tls_init:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_truncate:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_unlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_utimes:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final _sys_write:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



These were originally used by Nacl, then later also used by
js/wasm. Now that they're only used by js/wasm, these numbers are
just arbitrary.  


TODO: delete? replace with something meaningful?  

```haxe
final af_INET:Null<Dynamic> = @:invalid_type null
```


```haxe
final af_INET6:Null<Dynamic> = @:invalid_type null
```


```haxe
final af_UNIX:Null<Dynamic> = @:invalid_type null
```


```haxe
final af_UNSPEC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final e2big:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Argument list too long  

```haxe
final eacces:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Permission denied  

```haxe
final eaddrinuse:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Address already in use  

```haxe
final eaddrnotavail:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Address not available  

```haxe
final eadv:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Advertise error  

```haxe
final eafnosupport:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Address family not supported by protocol family  

```haxe
final eagain:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Try again  

```haxe
final ealready:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Socket already connected  

```haxe
final ebade:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Invalid exchange  

```haxe
final ebadf:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Bad file number  

```haxe
final ebadfd:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


f.d. invalid for this operation  

```haxe
final ebadmsg:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Trying to read unreadable message  

```haxe
final ebadr:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Invalid request descriptor  

```haxe
final ebadrqc:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Invalid request code  

```haxe
final ebadslt:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Invalid slot  

```haxe
final ebfont:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Bad font file fmt  

```haxe
final ebusy:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Device or resource busy  

```haxe
final ecanceled:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Operation canceled.  

```haxe
final ecaseclash:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Filename exists with different case  

```haxe
final echild:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No child processes  

```haxe
final echrng:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Channel number out of range  

```haxe
final ecomm:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Communication error on send  

```haxe
final econnaborted:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Connection aborted  

```haxe
final econnrefused:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Connection refused  

```haxe
final econnreset:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Connection reset by peer  

```haxe
final edeadlk:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Deadlock condition  

```haxe
final edeadlock:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


File locking deadlock error  

```haxe
final edestaddrreq:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Destination address required  

```haxe
final edom:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Math arg out of domain of func  

```haxe
final edotdot:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Cross mount point \(not really error\)  

```haxe
final edquot:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Quota exceeded  

```haxe
final eexist:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


File exists  

```haxe
final efault:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Bad address  

```haxe
final efbig:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


File too large  

```haxe
final eftype:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Inappropriate file type or format  

```haxe
final ehostdown:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Host is down  

```haxe
final ehostunreach:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Host is unreachable  

```haxe
final eidrm:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Identifier removed  

```haxe
final eilseq:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final einprogress:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Connection already in progress  

```haxe
final eintr:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Interrupted system call  

```haxe
final einval:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Invalid argument  

```haxe
final eio:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


I/O error  

```haxe
final eisconn:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Socket is already connected  

```haxe
final eisdir:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Is a directory  

```haxe
final el2hlt:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Level 2 halted  

```haxe
final el2nsync:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Level 2 not synchronized  

```haxe
final el3hlt:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Level 3 halted  

```haxe
final el3rst:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Level 3 reset  

```haxe
final elbin:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Inode is remote \(not really error\)  

```haxe
final elibacc:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Can't access a needed shared lib  

```haxe
final elibbad:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Accessing a corrupted shared lib  

```haxe
final elibexec:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Attempting to exec a shared library  

```haxe
final elibmax:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Attempting to link in too many libs  

```haxe
final elibscn:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


.lib section in a.out corrupted  

```haxe
final elnrng:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Link number out of range  

```haxe
final eloop:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Too many symbolic links  

```haxe
final emfile:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Too many open files  

```haxe
final emlink:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Too many links  

```haxe
final emsgsize:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Message too long  

```haxe
final emultihop:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Multihop attempted  

```haxe
final enametoolong:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


File name too long  

```haxe
final enetdown:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Network interface is not configured  

```haxe
final enetreset:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final enetunreach:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Network is unreachable  

```haxe
final enfile:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


File table overflow  

```haxe
final enmfile:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No more files  

```haxe
final enoano:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No anode  

```haxe
final enobufs:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No buffer space available  

```haxe
final enocsi:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No CSI structure available  

```haxe
final enodata:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No data \(for no delay io\)  

```haxe
final enodev:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No such device  

```haxe
final enoent:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No such file or directory  

```haxe
final enoexec:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Exec format error  

```haxe
final enolck:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No record locks available  

```haxe
final enolink:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


The link has been severed  

```haxe
final enomedium:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No medium \(in tape drive\)  

```haxe
final enomem:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Out of memory  

```haxe
final enomsg:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No message of desired type  

```haxe
final enonet:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Machine is not on the network  

```haxe
final enopkg:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Package not installed  

```haxe
final enoprotoopt:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Protocol not available  

```haxe
final enoshare:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No such host or network path  

```haxe
final enospc:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No space left on device  

```haxe
final enosr:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Out of streams resources  

```haxe
final enostr:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Device not a stream  

```haxe
final enosys:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Function not implemented  

```haxe
final enotconn:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Socket is not connected  

```haxe
final enotdir:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Not a directory  

```haxe
final enotempty:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Directory not empty  

```haxe
final enotsock:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Socket operation on non\-socket  

```haxe
final enotsup:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Not supported  

```haxe
final enotty:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Not a typewriter  

```haxe
final enotuniq:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Given log. name not unique  

```haxe
final enxio:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No such device or address  

```haxe
final eopnotsupp:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Operation not supported on transport endpoint  

```haxe
final eoverflow:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Value too large for defined data type  

```haxe
final eperm:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



native\_client/src/trusted/service\_runtime/include/sys/errno.h
The errors are mainly copied from Linux.  


Operation not permitted  

```haxe
final epfnosupport:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Protocol family not supported  

```haxe
final epipe:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Broken pipe  

```haxe
final eproclim:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final eproto:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Protocol error  

```haxe
final eprotonosupport:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Unknown protocol  

```haxe
final eprototype:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Protocol wrong type for socket  

```haxe
final erange:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Math result not representable  

```haxe
final eremchg:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Remote address changed  

```haxe
final eremote:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


The object is remote  

```haxe
final erofs:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Read\-only file system  

```haxe
final eshutdown:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Can't send after socket shutdown  

```haxe
final esocktnosupport:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Socket type not supported  

```haxe
final espipe:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Illegal seek  

```haxe
final esrch:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


No such process  

```haxe
final esrmnt:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Srmount error  

```haxe
final estale:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final etime:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Timer expired  

```haxe
final etimedout:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Connection timed out  

```haxe
final etoomanyrefs:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final eunatch:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Protocol driver not attached  

```haxe
final eusers:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
final ewouldblock:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Operation would block  

```haxe
final exdev:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Cross\-device link  

```haxe
final exfull:stdgo.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo.syscall.Syscall.Errno))
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  


Exchange full  

```haxe
final f_CNVT:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_DUPFD:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_DUPFD_CLOEXEC:Null<Dynamic> = @:invalid_type null
```



Misc constants expected by package net but not supported.  

```haxe
final f_GETFD:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_GETFL:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_GETLK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_GETOWN:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_RDLCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_RGETLK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_RSETLK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_RSETLKW:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_SETFD:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_SETFL:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_SETLK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_SETLKW:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_SETOWN:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_UNLCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_UNLKSYS:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_WRLCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final implementsGetwd:Bool = false
```


```haxe
final ipproto_IP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final ipproto_IPV4:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final ipproto_IPV6:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final ipproto_TCP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final ipproto_UDP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final ipv6_V6ONLY:Null<Dynamic> = @:invalid_type null
```


```haxe
final o_APPEND:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_CLOEXEC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_CREAT:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_CREATE:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_EXCL:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_RDONLY:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_RDWR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_SYNC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_TRUNC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final o_WRONLY:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final pathMax:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IEXEC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFBLK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFBOUNDSOCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFCHR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFCOND:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFDIR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFDSOCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFIFO:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFLNK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFMT:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFMUTEX:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFREG:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFSEMA:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFSHM:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFSHM_SYSV:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFSOCK:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IFSOCKADDR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IREAD:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IRGRP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IROTH:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IRUSR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IRWXG:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IRWXO:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IRWXU:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_ISGID:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_ISUID:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_ISVTX:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IWGRP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IWOTH:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IWRITE:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IWUSR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IXGRP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IXOTH:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_IXUSR:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final s_UNSUP:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final sigchld:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final sigint:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final sigkill:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final sigquit:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final sigterm:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final sigtrap:stdgo.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo.syscall.Syscall.Signal))
```


```haxe
final so_ERROR:Null<Dynamic> = @:invalid_type null
```


```haxe
final sock_DGRAM:Null<Dynamic> = @:invalid_type null
```


```haxe
final sock_RAW:Null<Dynamic> = @:invalid_type null
```


```haxe
final sock_SEQPACKET:Null<Dynamic> = @:invalid_type null
```


```haxe
final sock_STREAM:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final somaxconn:Null<Dynamic> = @:invalid_type null
```


```haxe
final stderr:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final stdin:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final stdout:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final sys_FCNTL:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```



Misc constants expected by package net but not supported.  


unsupported  

# Variables


```haxe
import stdgo.syscall.Syscall
```


```haxe
var __zero:stdgo.GoUIntptr
```



Single\-word zero for use when we need a valid pointer to 0 bytes.
See mksyscall.pl.  

```haxe
var _constants:stdgo.syscall.js.Value
```


```haxe
var _env:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>
```



env maps from an environment variable to its first occurrence in envs.  

```haxe
var _envLock:stdgo.sync.RWMutex
```



envLock guards env and envs.  

```haxe
var _envOnce:stdgo.sync.Once
```



envOnce guards initialization by copyenv, which populates env.  

```haxe
var _envs:stdgo.Slice<stdgo.GoString>
```



envs is provided by the runtime. elements are expected to
be of the form "key=value". An empty string means deleted
\(or a duplicate to be ignored\).  

```haxe
var _errEAGAIN:stdgo.Error
```



Do the interface allocations only once for common
Errno values.  

```haxe
var _errEINVAL:stdgo.Error
```



Do the interface allocations only once for common
Errno values.  

```haxe
var _errENOENT:stdgo.Error
```



Do the interface allocations only once for common
Errno values.  

```haxe
var _errnoByCode:stdgo.GoMap<stdgo.GoString, stdgo.syscall.Errno>
```


```haxe
var _errorstr:stdgo.GoArray<stdgo.GoString>
```



TODO: Auto\-generate some day. \(Hard\-coded in binaries so not likely to change.\)  

```haxe
var _files:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.syscall.T_jsFile>>
```


```haxe
var _filesMu:stdgo.sync.Mutex
```


```haxe
var _jsFS:stdgo.syscall.js.Value
```


```haxe
var _jsProcess:stdgo.syscall.js.Value
```


```haxe
var _nodeAPPEND:stdgo.GoInt
```


```haxe
var _nodeCREATE:stdgo.GoInt
```


```haxe
var _nodeEXCL:stdgo.GoInt
```


```haxe
var _nodeRDWR:stdgo.GoInt
```


```haxe
var _nodeTRUNC:stdgo.GoInt
```


```haxe
var _nodeWRONLY:stdgo.GoInt
```


```haxe
var _signals:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _uint8Array:stdgo.syscall.js.Value
```


```haxe
var forkLock:stdgo.sync.RWMutex
```


# Functions


```haxe
import stdgo.syscall.Syscall
```


## function \_asanRead


```haxe
function _asanRead(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2660>)


## function \_asanWrite


```haxe
function _asanWrite(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2661>)


## function \_checkPath


```haxe
function _checkPath(_path:stdgo.GoString):stdgo.Error
```



checkPath checks that the path is not empty and that it contains no null characters.  

[\(view code\)](<./Syscall.hx#L2726>)


## function \_copyenv


```haxe
function _copyenv():Void
```


[\(view code\)](<./Syscall.hx#L2676>)


## function \_direntIno


```haxe
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L2785>)


## function \_direntNamlen


```haxe
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L2787>)


## function \_direntReclen


```haxe
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L2786>)


## function \_errnoErr


```haxe
function _errnoErr(_e:stdgo.syscall.Errno):stdgo.Error
```



errnoErr returns common boxed Errno values, to prevent
allocations at runtime.  

[\(view code\)](<./Syscall.hx#L2813>)


## function \_faketimeWrite


```haxe
function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2814>)


## function \_fdToFile


```haxe
function _fdToFile(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.syscall.T_jsFile>;
}
```


[\(view code\)](<./Syscall.hx#L2686>)


## function \_fsCall


```haxe
function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.syscall.js.Value;
}
```


[\(view code\)](<./Syscall.hx#L2722>)


## function \_mapJSError


```haxe
function _mapJSError(_jsErr:stdgo.syscall.js.Value):stdgo.Error
```



mapJSError maps an error given by Node.js to the appropriate Go error.  

[\(view code\)](<./Syscall.hx#L2731>)


## function \_msanRead


```haxe
function _msanRead(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2732>)


## function \_msanWrite


```haxe
function _msanWrite(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2733>)


## function \_now


```haxe
function _now():{
	_1:stdgo.GoInt32;
	_0:stdgo.GoInt64;
}
```



Provided by package runtime.  

[\(view code\)](<./Syscall.hx#L2685>)


## function \_readInt


```haxe
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```



readInt returns the size\-bytes unsigned integer in native byte order at offset off.  

[\(view code\)](<./Syscall.hx#L2665>)


## function \_readIntBE


```haxe
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64
```


[\(view code\)](<./Syscall.hx#L2666>)


## function \_readIntLE


```haxe
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64
```


[\(view code\)](<./Syscall.hx#L2667>)


## function \_recoverErr


```haxe
function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void
```


[\(view code\)](<./Syscall.hx#L2727>)


## function \_runtimeSetenv


```haxe
function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void
```



runtimeSetenv and runtimeUnsetenv are provided by the runtime.  

[\(view code\)](<./Syscall.hx#L2783>)


## function \_runtimeUnsetenv


```haxe
function _runtimeUnsetenv(_k:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L2784>)


## function \_runtime\_envs


```haxe
function _runtime_envs():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Syscall.hx#L2675>)


## function \_setStat


```haxe
function _setStat(_st:stdgo.Ref<stdgo.syscall.Stat_t>, _jsSt:stdgo.syscall.js.Value):Void
```


[\(view code\)](<./Syscall.hx#L2692>)


## function \_setTimespec


```haxe
function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo.syscall.Timespec
```


[\(view code\)](<./Syscall.hx#L2807>)


## function \_setTimeval


```haxe
function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):stdgo.syscall.Timeval
```


[\(view code\)](<./Syscall.hx#L2808>)


## function accept


```haxe
function accept(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2738>)


## function bind


```haxe
function bind(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2735>)


## function bytePtrFromString


```haxe
function bytePtrFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Pointer<stdgo.GoByte>;
}
```



BytePtrFromString returns a pointer to a NUL\-terminated array of
bytes containing the text of s. If s contains a NUL byte at any
location, it returns \(nil, EINVAL\).  

[\(view code\)](<./Syscall.hx#L2777>)


## function byteSliceFromString


```haxe
function byteSliceFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



ByteSliceFromString returns a NUL\-terminated slice of bytes
containing the text of s. If s contains a NUL byte at any
location, it returns \(nil, EINVAL\).  

[\(view code\)](<./Syscall.hx#L2763>)


## function chdir


```haxe
function chdir(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2708>)


## function chmod


```haxe
function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2698>)


## function chown


```haxe
function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2700>)


## function clearenv


```haxe
function clearenv():Void
```


[\(view code\)](<./Syscall.hx#L2680>)


## function close


```haxe
function close(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2688>)


## function closeOnExec


```haxe
function closeOnExec(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2689>)


## function connect


```haxe
function connect(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2739>)


## function dup


```haxe
function dup(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2719>)


## function dup2


```haxe
function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2720>)


## function environ


```haxe
function environ():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Syscall.hx#L2681>)


## function exit


```haxe
function exit(_code:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L2779>)


## function fchdir


```haxe
function fchdir(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2709>)


## function fchmod


```haxe
function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2699>)


## function fchown


```haxe
function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2701>)


## function fstat


```haxe
function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2695>)


## function fsync


```haxe
function fsync(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2713>)


## function ftruncate


```haxe
function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2706>)


## function getcwd


```haxe
function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2707>)


## function getegid


```haxe
function getegid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2797>)


## function getenv


```haxe
function getenv(_key:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L2678>)


## function geteuid


```haxe
function geteuid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2796>)


## function getgid


```haxe
function getgid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2795>)


## function getgroups


```haxe
function getgroups():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Syscall.hx#L2798>)


## function getpagesize


```haxe
function getpagesize():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2778>)


## function getpid


```haxe
function getpid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2799>)


## function getppid


```haxe
function getppid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2800>)


## function getsockoptInt


```haxe
function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2744>)


## function gettimeofday


```haxe
function gettimeofday(_tv:stdgo.Ref<stdgo.syscall.Timeval>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2802>)


## function getuid


```haxe
function getuid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2794>)


## function getwd


```haxe
function getwd():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L2793>)


## function kill


```haxe
function kill(_pid:stdgo.GoInt, _signum:stdgo.syscall.Signal):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2803>)


## function lchown


```haxe
function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2702>)


## function link


```haxe
function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2711>)


## function listen


```haxe
function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2737>)


## function lstat


```haxe
function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2694>)


## function mkdir


```haxe
function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2690>)


## function nsecToTimespec


```haxe
function nsecToTimespec(_nsec:stdgo.GoInt64):stdgo.syscall.Timespec
```



NsecToTimespec converts a number of nanoseconds into a Timespec.  

[\(view code\)](<./Syscall.hx#L2822>)


## function nsecToTimeval


```haxe
function nsecToTimeval(_nsec:stdgo.GoInt64):stdgo.syscall.Timeval
```



NsecToTimeval converts a number of nanoseconds into a Timeval.  

[\(view code\)](<./Syscall.hx#L2830>)


## function open


```haxe
function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2687>)


## function parseDirent


```haxe
function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{
	_2:stdgo.Slice<stdgo.GoString>;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



ParseDirent parses up to max directory entries in buf,
appending the names to names. It returns the number of
bytes consumed from buf, the number of entries added
to names, and the new names slice.  

[\(view code\)](<./Syscall.hx#L2674>)


## function pipe


```haxe
function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2721>)


## function pread


```haxe
function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2716>)


## function pwrite


```haxe
function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2717>)


## function rawSyscall


```haxe
function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L2790>)


## function rawSyscall6


```haxe
function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L2791>)


## function read


```haxe
function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2714>)


## function readDirent


```haxe
function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2691>)


## function readlink


```haxe
function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2710>)


## function recvfrom


```haxe
function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2740>)


## function recvmsg


```haxe
function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo.syscall.Sockaddr;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2742>)


## function rename


```haxe
function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2704>)


## function rmdir


```haxe
function rmdir(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2697>)


## function seek


```haxe
function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Syscall.hx#L2718>)


## function sendfile


```haxe
function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2804>)


## function sendmsgN


```haxe
function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.syscall.Sockaddr, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2743>)


## function sendto


```haxe
function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2741>)


## function setNonblock


```haxe
function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2749>)


## function setReadDeadline


```haxe
function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2746>)


## function setWriteDeadline


```haxe
function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2747>)


## function setenv


```haxe
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2679>)


## function setsockoptInt


```haxe
function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2745>)


## function shutdown


```haxe
function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2748>)


## function socket


```haxe
function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2734>)


## function startProcess


```haxe
function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.syscall.ProcAttr>):{
	_2:stdgo.Error;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2805>)


## function stat


```haxe
function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2693>)


## function stopIO


```haxe
function stopIO(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2736>)


## function stringBytePtr


```haxe
function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>
```



StringBytePtr returns a pointer to a NUL\-terminated array of bytes.
If s contains a NUL byte this function panics instead of returning
an error.  


Deprecated: Use BytePtrFromString instead.  

[\(view code\)](<./Syscall.hx#L2771>)


## function stringByteSlice


```haxe
function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



StringByteSlice converts a string to a NUL\-terminated \[\]byte,
If s contains a NUL byte this function panics instead of
returning an error.  


Deprecated: Use ByteSliceFromString instead.  

[\(view code\)](<./Syscall.hx#L2757>)


## function symlink


```haxe
function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2712>)


## function syscall


```haxe
function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L2788>)


## function syscall6


```haxe
function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L2789>)


## function sysctl


```haxe
function sysctl(_key:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L2792>)


## function timespecToNsec


```haxe
function timespecToNsec(_ts:stdgo.syscall.Timespec):stdgo.GoInt64
```



TimespecToNsec returns the time stored in ts as nanoseconds.  

[\(view code\)](<./Syscall.hx#L2818>)


## function timevalToNsec


```haxe
function timevalToNsec(_tv:stdgo.syscall.Timeval):stdgo.GoInt64
```



TimevalToNsec returns the time stored in tv as nanoseconds.  

[\(view code\)](<./Syscall.hx#L2826>)


## function truncate


```haxe
function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2705>)


## function umask


```haxe
function umask(_mask:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L2801>)


## function unlink


```haxe
function unlink(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2696>)


## function unsetenv


```haxe
function unsetenv(_key:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2677>)


## function utimesNano


```haxe
function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo.syscall.Timespec>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L2703>)


## function wait4


```haxe
function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo.syscall.Rusage>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2806>)


## function write


```haxe
function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L2715>)


# Classes


```haxe
import stdgo.syscall.*
```


## class Dirent


```haxe
var name:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var reclen:stdgo.GoUInt16
```


### Dirent function new


```haxe
function new(?reclen:stdgo.GoUInt16, ?name:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Syscall.hx#L2470>)


## class Iovec



dummy  

### Iovec function new


```haxe
function new():Void
```


[\(view code\)](<./Syscall.hx#L2596>)


## class ProcAttr



XXX made up  

```haxe
var dir:stdgo.GoString
```


```haxe
var env:stdgo.Slice<stdgo.GoString>
```


```haxe
var files:stdgo.Slice<stdgo.GoUIntptr>
```


```haxe
var sys:stdgo.Ref<stdgo.syscall.SysProcAttr>
```


### ProcAttr function new


```haxe
function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo.syscall.SysProcAttr>):Void
```


[\(view code\)](<./Syscall.hx#L2567>)


## class Rusage



XXX made up  

```haxe
var stime:stdgo.syscall.Timeval
```


```haxe
var utime:stdgo.syscall.Timeval
```


### Rusage function new


```haxe
function new(?utime:stdgo.syscall.Timeval, ?stime:stdgo.syscall.Timeval):Void
```


[\(view code\)](<./Syscall.hx#L2548>)


## class SockaddrInet4


```haxe
var addr:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var port:stdgo.GoInt
```


### SockaddrInet4 function new


```haxe
function new(?port:stdgo.GoInt, ?addr:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Syscall.hx#L2419>)


## class SockaddrInet6


```haxe
var addr:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var port:stdgo.GoInt
```


```haxe
var zoneId:stdgo.GoUInt32
```


### SockaddrInet6 function new


```haxe
function new(?port:stdgo.GoInt, ?zoneId:stdgo.GoUInt32, ?addr:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Syscall.hx#L2437>)


## class SockaddrUnix


```haxe
var name:stdgo.GoString
```


### SockaddrUnix function new


```haxe
function new(?name:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L2454>)


## class Stat\_t


```haxe
var atime:stdgo.GoInt64
```


```haxe
var atimeNsec:stdgo.GoInt64
```


```haxe
var blksize:stdgo.GoInt32
```


```haxe
var blocks:stdgo.GoInt32
```


```haxe
var ctime:stdgo.GoInt64
```


```haxe
var ctimeNsec:stdgo.GoInt64
```


```haxe
var dev:stdgo.GoInt64
```


```haxe
var gid:stdgo.GoUInt32
```


```haxe
var ino:stdgo.GoUInt64
```


```haxe
var mode:stdgo.GoUInt32
```


```haxe
var mtime:stdgo.GoInt64
```


```haxe
var mtimeNsec:stdgo.GoInt64
```


```haxe
var nlink:stdgo.GoUInt32
```


```haxe
var rdev:stdgo.GoInt64
```


```haxe
var size:stdgo.GoInt64
```


```haxe
var uid:stdgo.GoUInt32
```


### Stat\_t function new


```haxe
function new(?dev:stdgo.GoInt64, ?ino:stdgo.GoUInt64, ?mode:stdgo.GoUInt32, ?nlink:stdgo.GoUInt32, ?uid:stdgo.GoUInt32, ?gid:stdgo.GoUInt32, ?rdev:stdgo.GoInt64, ?size:stdgo.GoInt64, ?blksize:stdgo.GoInt32, ?blocks:stdgo.GoInt32, ?atime:stdgo.GoInt64, ?atimeNsec:stdgo.GoInt64, ?mtime:stdgo.GoInt64, ?mtimeNsec:stdgo.GoInt64, ?ctime:stdgo.GoInt64, ?ctimeNsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L2501>)


## class SysProcAttr


### SysProcAttr function new


```haxe
function new():Void
```


[\(view code\)](<./Syscall.hx#L2584>)


## class Timespec


```haxe
var nsec:stdgo.GoInt64
```


```haxe
var sec:stdgo.GoInt64
```


### Timespec function new


```haxe
function new(?sec:stdgo.GoInt64, ?nsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L2610>)


### Timespec function nano


```haxe
function nano():stdgo.GoInt64
```



Nano returns the time stored in ts as nanoseconds.  

[\(view code\)](<./Syscall.hx#L2855>)


### Timespec function unix


```haxe
function unix():{
	_1:stdgo.GoInt64;
	_0:stdgo.GoInt64;
}
```



Unix returns the time stored in ts as seconds plus nanoseconds.  

[\(view code\)](<./Syscall.hx#L2860>)


## class Timeval


```haxe
var sec:stdgo.GoInt64
```


```haxe
var usec:stdgo.GoInt64
```


### Timeval function new


```haxe
function new(?sec:stdgo.GoInt64, ?usec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L2627>)


### Timeval function nano


```haxe
function nano():stdgo.GoInt64
```



Nano returns the time stored in tv as nanoseconds.  

[\(view code\)](<./Syscall.hx#L2886>)


### Timeval function unix


```haxe
function unix():{
	_1:stdgo.GoInt64;
	_0:stdgo.GoInt64;
}
```



Unix returns the time stored in tv as seconds plus nanoseconds.  

[\(view code\)](<./Syscall.hx#L2891>)


# Typedefs


```haxe
import stdgo.syscall.*
```


## typedef Conn


```haxe
typedef Conn = {
	public function syscallConn():{
		_1:stdgo.Error;
		_0:stdgo.syscall.RawConn;
	};	//  SyscallConn returns a raw network connection.
};
```



Conn is implemented by some types in the net and os packages to provide
access to the underlying file descriptor or handle.  

## typedef Errno


```haxe
typedef Errno = stdgo.GoUIntptr;
```



An Errno is an unsigned number describing an error condition.
It implements the error interface. The zero Errno is by convention
a non\-error, so code to convert from Errno to error should use:  

```
	err = nil
	if errno != 0 {
		err = errno
	}
```

Errno values can be tested against error values using errors.Is.
For example:  

```
	_, _, err := syscall.Syscall(...)
	if errors.Is(err, fs.ErrNotExist) ...
```
## typedef RawConn


```haxe
typedef RawConn = {
	public function write(_f:(_fd:stdgo.GoUIntptr):Bool):stdgo.Error;	//  Write is like Read but for writing.
	public function read(_f:(_fd:stdgo.GoUIntptr):Bool):stdgo.Error;	//  Read invokes f on the underlying connection's file descriptor or handle; f is expected to try to read from the file descriptor. If f returns true, Read returns. Otherwise Read blocks waiting for the connection to be ready for reading and tries again repeatedly. The file descriptor is guaranteed to remain valid while f executes but not after f returns.
	public function control(_f:(_fd:stdgo.GoUIntptr):Void):stdgo.Error;	//  Control invokes f on the underlying connection's file descriptor or handle. The file descriptor fd is guaranteed to remain valid while f executes but not after f returns.
};
```



A RawConn is a raw network connection.  

## typedef Signal


```haxe
typedef Signal = stdgo.GoInt;
```



A Signal is a number describing a process signal.
It implements the os.Signal interface.  

## typedef Sockaddr


```haxe
typedef Sockaddr = stdgo.AnyInterface;
```


## typedef WaitStatus


```haxe
typedef WaitStatus = stdgo.GoUInt32;
```


