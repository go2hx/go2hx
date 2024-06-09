# Module: `stdgo._internal.syscall`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _asanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanread>)

- [`function _asanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanwrite>)

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

- [`function _errnoErr(_e:stdgo._internal.syscall.Errno):stdgo.Error`](<#function-_errnoerr>)

- [`function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-_faketimewrite>)

- [`function _fdToFile(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.syscall.T_jsFile>;
}`](<#function-_fdtofile>)

- [`function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo._internal.syscall.js.Value;
}`](<#function-_fscall>)

- [`function _mapJSError(_jsErr:stdgo._internal.syscall.js.Value):stdgo.Error`](<#function-_mapjserror>)

- [`function _msanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanread>)

- [`function _msanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanwrite>)

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

- [`function _setStat(_st:stdgo.Ref<stdgo._internal.syscall.Stat_t>, _jsSt:stdgo._internal.syscall.js.Value):Void`](<#function-_setstat>)

- [`function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo._internal.syscall.Timespec`](<#function-_settimespec>)

- [`function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):stdgo._internal.syscall.Timeval`](<#function-_settimeval>)

- [`function accept(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-accept>)

- [`function bind(_fd:stdgo.GoInt, _sa:stdgo._internal.syscall.Sockaddr):stdgo.Error`](<#function-bind>)

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

- [`function connect(_fd:stdgo.GoInt, _sa:stdgo._internal.syscall.Sockaddr):stdgo.Error`](<#function-connect>)

- [`function dup(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-dup>)

- [`function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error`](<#function-dup2>)

- [`function environ_():stdgo.Slice<stdgo.GoString>`](<#function-environ_>)

- [`function exit(_code:stdgo.GoInt):Void`](<#function-exit>)

- [`function fchdir(_fd:stdgo.GoInt):stdgo.Error`](<#function-fchdir>)

- [`function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error`](<#function-fchmod>)

- [`function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#function-fchown>)

- [`function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error`](<#function-fstat>)

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

- [`function gettimeofday(_tv:stdgo.Ref<stdgo._internal.syscall.Timeval>):stdgo.Error`](<#function-gettimeofday>)

- [`function getuid():stdgo.GoInt`](<#function-getuid>)

- [`function getwd():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-getwd>)

- [`function kill(_pid:stdgo.GoInt, _signum:stdgo._internal.syscall.Signal):stdgo.Error`](<#function-kill>)

- [`function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#function-lchown>)

- [`function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error`](<#function-link>)

- [`function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error`](<#function-listen>)

- [`function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error`](<#function-lstat>)

- [`function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error`](<#function-mkdir>)

- [`function nsecToTimespec(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Timespec`](<#function-nsectotimespec>)

- [`function nsecToTimeval(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Timeval`](<#function-nsectotimeval>)

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
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-rawsyscall>)

- [`function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
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
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-recvfrom>)

- [`function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo._internal.syscall.Sockaddr;
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

- [`function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo._internal.syscall.Sockaddr, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sendmsgn>)

- [`function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo._internal.syscall.Sockaddr):stdgo.Error`](<#function-sendto>)

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

- [`function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo._internal.syscall.ProcAttr>):{
	_2:stdgo.Error;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoInt;
}`](<#function-startprocess>)

- [`function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error`](<#function-stat>)

- [`function stopIO(_fd:stdgo.GoInt):stdgo.Error`](<#function-stopio>)

- [`function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>`](<#function-stringbyteptr>)

- [`function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-stringbyteslice>)

- [`function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error`](<#function-symlink>)

- [`function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-syscall>)

- [`function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}`](<#function-syscall6>)

- [`function sysctl(_key:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-sysctl>)

- [`function timespecToNsec(_ts:stdgo._internal.syscall.Timespec):stdgo.GoInt64`](<#function-timespectonsec>)

- [`function timevalToNsec(_tv:stdgo._internal.syscall.Timeval):stdgo.GoInt64`](<#function-timevaltonsec>)

- [`function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error`](<#function-truncate>)

- [`function umask(_mask:stdgo.GoInt):stdgo.GoInt`](<#function-umask>)

- [`function unlink(_path:stdgo.GoString):stdgo.Error`](<#function-unlink>)

- [`function unsetenv(_key:stdgo.GoString):stdgo.Error`](<#function-unsetenv>)

- [`function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo._internal.syscall.Timespec>):stdgo.Error`](<#function-utimesnano>)

- [`function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo._internal.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo._internal.syscall.Rusage>):{
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

  - [`function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo._internal.syscall.SysProcAttr>):Void`](<#procattr-function-new>)

- [class Rusage](<#class-rusage>)

  - [`function new(?utime:stdgo._internal.syscall.Timeval, ?stime:stdgo._internal.syscall.Timeval):Void`](<#rusage-function-new>)

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
import stdgo._internal.syscall.Syscall
```


```haxe
final __12:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final __13:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final __14:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


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


```haxe
final _sys_brk:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_chdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_chmod:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_clock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_clock_getres:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_clock_gettime:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_close:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_cond_broadcast:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_cond_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_cond_signal:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_cond_timed_wait_abs:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_cond_wait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_dup:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_dup2:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_dyncode_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_dyncode_delete:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_dyncode_modify:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_exception_clear_flag:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_exception_handler:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_exception_stack:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_exit:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_fstat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_futex_wait_abs:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_futex_wake:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_get_random_bytes:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_getcwd:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_getdents:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_getpid:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_gettimeofday:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_accept:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_connect:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_makeboundsock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_mem_obj_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_recvmsg:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_sendmsg:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_imc_socketpair:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_isatty:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_link:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_list_mappings:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_lseek:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_lstat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mkdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mmap:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mprotect:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_munmap:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mutex_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mutex_lock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mutex_trylock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_mutex_unlock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_nameservice:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_nanosleep:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_null:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_open:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_pread:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_pwrite:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_read:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_readlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_rename:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_rmdir:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sched_yield:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_second_tls_get:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_second_tls_set:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sem_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sem_get_value:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sem_post:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sem_wait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_stat:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_symlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_sysconf:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_test_crash:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_test_infoleak:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_test_syscall_1:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_test_syscall_2:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_thread_create:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_thread_exit:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_thread_nice:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_tls_get:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_tls_init:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_truncate:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_unlink:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_utimes:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _sys_write:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final af_INET:Null<Any> = @:invalid_type null
```


```haxe
final af_INET6:Null<Any> = @:invalid_type null
```


```haxe
final af_UNIX:Null<Any> = @:invalid_type null
```


```haxe
final af_UNSPEC:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final e2big:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eacces:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eaddrinuse:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eaddrnotavail:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eadv:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eafnosupport:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eagain:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ealready:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebade:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadf:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadfd:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadmsg:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadr:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadrqc:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebadslt:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebfont:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ebusy:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ecanceled:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ecaseclash:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final echild:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final echrng:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ecomm:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final econnaborted:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final econnrefused:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final econnreset:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edeadlk:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edeadlock:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edestaddrreq:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edom:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edotdot:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final edquot:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eexist:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final efault:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final efbig:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eftype:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ehostdown:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ehostunreach:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eidrm:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eilseq:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final einprogress:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eintr:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final einval:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eio:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eisconn:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eisdir:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final el2hlt:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final el2nsync:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final el3hlt:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final el3rst:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elbin:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elibacc:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elibbad:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elibexec:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elibmax:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elibscn:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final elnrng:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eloop:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final emfile:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final emlink:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final emsgsize:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final emultihop:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enametoolong:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enetdown:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enetreset:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enetunreach:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enfile:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enmfile:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enoano:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enobufs:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enocsi:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enodata:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enodev:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enoent:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enoexec:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enolck:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enolink:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enomedium:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enomem:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enomsg:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enonet:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enopkg:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enoprotoopt:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enoshare:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enospc:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enosr:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enostr:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enosys:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotconn:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotdir:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotempty:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotsock:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotsup:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotty:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enotuniq:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final enxio:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eopnotsupp:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eoverflow:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eperm:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final epfnosupport:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final epipe:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eproclim:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eproto:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eprotonosupport:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eprototype:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final erange:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eremchg:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eremote:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final erofs:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eshutdown:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final esocktnosupport:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final espipe:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final esrch:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final esrmnt:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final estale:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final etime:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final etimedout:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final etoomanyrefs:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eunatch:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final eusers:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final ewouldblock:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final exdev:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final exfull:stdgo._internal.syscall.Errno = ((((0 : stdgo.GoUIntptr)) : stdgo._internal.syscall.Syscall.Errno))
```


```haxe
final f_CNVT:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_DUPFD:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final f_DUPFD_CLOEXEC:Null<Any> = @:invalid_type null
```


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
final ipv6_V6ONLY:Null<Any> = @:invalid_type null
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
final sigchld:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final sigint:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final sigkill:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final sigquit:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final sigterm:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final sigtrap:stdgo._internal.syscall.Signal = ((((0 : stdgo.GoInt)) : stdgo._internal.syscall.Syscall.Signal))
```


```haxe
final so_ERROR:Null<Any> = @:invalid_type null
```


```haxe
final sock_DGRAM:Null<Any> = @:invalid_type null
```


```haxe
final sock_RAW:Null<Any> = @:invalid_type null
```


```haxe
final sock_SEQPACKET:Null<Any> = @:invalid_type null
```


```haxe
final sock_STREAM:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final somaxconn:Null<Any> = @:invalid_type null
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


# Variables


```haxe
import stdgo._internal.syscall.Syscall
```


```haxe
var __zero:stdgo.GoUIntptr
```


```haxe
var _constants:stdgo._internal.syscall.js.Value
```


```haxe
var _env:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>
```


```haxe
var _envLock:stdgo._internal.sync.RWMutex
```


```haxe
var _envOnce:stdgo._internal.sync.Once
```


```haxe
var _envs:stdgo.Slice<stdgo.GoString>
```


```haxe
var _errEAGAIN:stdgo.Error
```


```haxe
var _errEINVAL:stdgo.Error
```


```haxe
var _errENOENT:stdgo.Error
```


```haxe
var _errnoByCode:stdgo.GoMap<stdgo.GoString, stdgo._internal.syscall.Errno>
```


```haxe
var _errorstr:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _files:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.T_jsFile>>
```


```haxe
var _filesMu:stdgo._internal.sync.Mutex
```


```haxe
var _jsFS:stdgo._internal.syscall.js.Value
```


```haxe
var _jsProcess:stdgo._internal.syscall.js.Value
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
var _uint8Array:stdgo._internal.syscall.js.Value
```


```haxe
var forkLock:stdgo._internal.sync.RWMutex
```


# Functions


```haxe
import stdgo._internal.syscall.Syscall
```


## function \_asanRead


```haxe
function _asanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L570>)


## function \_asanWrite


```haxe
function _asanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L571>)


## function \_checkPath


```haxe
function _checkPath(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L621>)


## function \_copyenv


```haxe
function _copyenv():Void
```


[\(view code\)](<./Syscall.hx#L577>)


## function \_direntIno


```haxe
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L650>)


## function \_direntNamlen


```haxe
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L652>)


## function \_direntReclen


```haxe
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L651>)


## function \_errnoErr


```haxe
function _errnoErr(_e:stdgo._internal.syscall.Errno):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L674>)


## function \_faketimeWrite


```haxe
function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L675>)


## function \_fdToFile


```haxe
function _fdToFile(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.syscall.T_jsFile>;
}
```


[\(view code\)](<./Syscall.hx#L584>)


## function \_fsCall


```haxe
function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo._internal.syscall.js.Value;
}
```


[\(view code\)](<./Syscall.hx#L620>)


## function \_mapJSError


```haxe
function _mapJSError(_jsErr:stdgo._internal.syscall.js.Value):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L623>)


## function \_msanRead


```haxe
function _msanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L624>)


## function \_msanWrite


```haxe
function _msanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L625>)


## function \_now


```haxe
function _now():{
	_1:stdgo.GoInt32;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Syscall.hx#L583>)


## function \_readInt


```haxe
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Syscall.hx#L572>)


## function \_readIntBE


```haxe
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64
```


[\(view code\)](<./Syscall.hx#L573>)


## function \_readIntLE


```haxe
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64
```


[\(view code\)](<./Syscall.hx#L574>)


## function \_recoverErr


```haxe
function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void
```


[\(view code\)](<./Syscall.hx#L622>)


## function \_runtimeSetenv


```haxe
function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L648>)


## function \_runtimeUnsetenv


```haxe
function _runtimeUnsetenv(_k:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L649>)


## function \_runtime\_envs


```haxe
function _runtime_envs():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Syscall.hx#L576>)


## function \_setStat


```haxe
function _setStat(_st:stdgo.Ref<stdgo._internal.syscall.Stat_t>, _jsSt:stdgo._internal.syscall.js.Value):Void
```


[\(view code\)](<./Syscall.hx#L590>)


## function \_setTimespec


```haxe
function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo._internal.syscall.Timespec
```


[\(view code\)](<./Syscall.hx#L672>)


## function \_setTimeval


```haxe
function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):stdgo._internal.syscall.Timeval
```


[\(view code\)](<./Syscall.hx#L673>)


## function accept


```haxe
function accept(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L630>)


## function bind


```haxe
function bind(_fd:stdgo.GoInt, _sa:stdgo._internal.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L627>)


## function bytePtrFromString


```haxe
function bytePtrFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Pointer<stdgo.GoByte>;
}
```


[\(view code\)](<./Syscall.hx#L645>)


## function byteSliceFromString


```haxe
function byteSliceFromString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Syscall.hx#L643>)


## function chdir


```haxe
function chdir(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L606>)


## function chmod


```haxe
function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L596>)


## function chown


```haxe
function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L598>)


## function clearenv


```haxe
function clearenv():Void
```


[\(view code\)](<./Syscall.hx#L581>)


## function close


```haxe
function close(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L586>)


## function closeOnExec


```haxe
function closeOnExec(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L587>)


## function connect


```haxe
function connect(_fd:stdgo.GoInt, _sa:stdgo._internal.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L631>)


## function dup


```haxe
function dup(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L617>)


## function dup2


```haxe
function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L618>)


## function environ\_


```haxe
function environ_():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Syscall.hx#L582>)


## function exit


```haxe
function exit(_code:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L647>)


## function fchdir


```haxe
function fchdir(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L607>)


## function fchmod


```haxe
function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L597>)


## function fchown


```haxe
function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L599>)


## function fstat


```haxe
function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L593>)


## function fsync


```haxe
function fsync(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L611>)


## function ftruncate


```haxe
function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L604>)


## function getcwd


```haxe
function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L605>)


## function getegid


```haxe
function getegid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L662>)


## function getenv


```haxe
function getenv(_key:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L579>)


## function geteuid


```haxe
function geteuid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L661>)


## function getgid


```haxe
function getgid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L660>)


## function getgroups


```haxe
function getgroups():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Syscall.hx#L663>)


## function getpagesize


```haxe
function getpagesize():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L646>)


## function getpid


```haxe
function getpid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L664>)


## function getppid


```haxe
function getppid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L665>)


## function getsockoptInt


```haxe
function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L636>)


## function gettimeofday


```haxe
function gettimeofday(_tv:stdgo.Ref<stdgo._internal.syscall.Timeval>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L667>)


## function getuid


```haxe
function getuid():stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L659>)


## function getwd


```haxe
function getwd():{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L658>)


## function kill


```haxe
function kill(_pid:stdgo.GoInt, _signum:stdgo._internal.syscall.Signal):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L668>)


## function lchown


```haxe
function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L600>)


## function link


```haxe
function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L609>)


## function listen


```haxe
function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L629>)


## function lstat


```haxe
function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L592>)


## function mkdir


```haxe
function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L588>)


## function nsecToTimespec


```haxe
function nsecToTimespec(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Timespec
```


[\(view code\)](<./Syscall.hx#L677>)


## function nsecToTimeval


```haxe
function nsecToTimeval(_nsec:stdgo.GoInt64):stdgo._internal.syscall.Timeval
```


[\(view code\)](<./Syscall.hx#L679>)


## function open


```haxe
function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L585>)


## function parseDirent


```haxe
function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{
	_2:stdgo.Slice<stdgo.GoString>;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L575>)


## function pipe


```haxe
function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L619>)


## function pread


```haxe
function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L614>)


## function pwrite


```haxe
function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L615>)


## function rawSyscall


```haxe
function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L655>)


## function rawSyscall6


```haxe
function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L656>)


## function read


```haxe
function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L612>)


## function readDirent


```haxe
function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L589>)


## function readlink


```haxe
function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L608>)


## function recvfrom


```haxe
function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L632>)


## function recvmsg


```haxe
function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo._internal.syscall.Sockaddr;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L634>)


## function rename


```haxe
function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L602>)


## function rmdir


```haxe
function rmdir(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L595>)


## function seek


```haxe
function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Syscall.hx#L616>)


## function sendfile


```haxe
function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L669>)


## function sendmsgN


```haxe
function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo._internal.syscall.Sockaddr, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L635>)


## function sendto


```haxe
function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo._internal.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L633>)


## function setNonblock


```haxe
function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L641>)


## function setReadDeadline


```haxe
function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L638>)


## function setWriteDeadline


```haxe
function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L639>)


## function setenv


```haxe
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L580>)


## function setsockoptInt


```haxe
function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L637>)


## function shutdown


```haxe
function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L640>)


## function socket


```haxe
function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L626>)


## function startProcess


```haxe
function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo._internal.syscall.ProcAttr>):{
	_2:stdgo.Error;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L670>)


## function stat


```haxe
function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L591>)


## function stopIO


```haxe
function stopIO(_fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L628>)


## function stringBytePtr


```haxe
function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte>
```


[\(view code\)](<./Syscall.hx#L644>)


## function stringByteSlice


```haxe
function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Syscall.hx#L642>)


## function symlink


```haxe
function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L610>)


## function syscall


```haxe
function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L653>)


## function syscall6


```haxe
function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{
	_2:stdgo._internal.syscall.Errno;
	_1:stdgo.GoUIntptr;
	_0:stdgo.GoUIntptr;
}
```


[\(view code\)](<./Syscall.hx#L654>)


## function sysctl


```haxe
function sysctl(_key:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syscall.hx#L657>)


## function timespecToNsec


```haxe
function timespecToNsec(_ts:stdgo._internal.syscall.Timespec):stdgo.GoInt64
```


[\(view code\)](<./Syscall.hx#L676>)


## function timevalToNsec


```haxe
function timevalToNsec(_tv:stdgo._internal.syscall.Timeval):stdgo.GoInt64
```


[\(view code\)](<./Syscall.hx#L678>)


## function truncate


```haxe
function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L603>)


## function umask


```haxe
function umask(_mask:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Syscall.hx#L666>)


## function unlink


```haxe
function unlink(_path:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L594>)


## function unsetenv


```haxe
function unsetenv(_key:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L578>)


## function utimesNano


```haxe
function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo._internal.syscall.Timespec>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L601>)


## function wait4


```haxe
function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo._internal.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo._internal.syscall.Rusage>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L671>)


## function write


```haxe
function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Syscall.hx#L613>)


# Classes


```haxe
import stdgo._internal.syscall.*
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


[\(view code\)](<./Syscall.hx#L435>)


## class Iovec


### Iovec function new


```haxe
function new():Void
```


[\(view code\)](<./Syscall.hx#L536>)


## class ProcAttr


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
var sys:stdgo.Ref<stdgo._internal.syscall.SysProcAttr>
```


### ProcAttr function new


```haxe
function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo._internal.syscall.SysProcAttr>):Void
```


[\(view code\)](<./Syscall.hx#L517>)


## class Rusage


```haxe
var stime:stdgo._internal.syscall.Timeval
```


```haxe
var utime:stdgo._internal.syscall.Timeval
```


### Rusage function new


```haxe
function new(?utime:stdgo._internal.syscall.Timeval, ?stime:stdgo._internal.syscall.Timeval):Void
```


[\(view code\)](<./Syscall.hx#L503>)


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


[\(view code\)](<./Syscall.hx#L399>)


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


[\(view code\)](<./Syscall.hx#L412>)


## class SockaddrUnix


```haxe
var name:stdgo.GoString
```


### SockaddrUnix function new


```haxe
function new(?name:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L424>)


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


[\(view code\)](<./Syscall.hx#L461>)


## class SysProcAttr


### SysProcAttr function new


```haxe
function new():Void
```


[\(view code\)](<./Syscall.hx#L529>)


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


[\(view code\)](<./Syscall.hx#L545>)


### Timespec function nano


```haxe
function nano():stdgo.GoInt64
```


[\(view code\)](<./Syscall.hx#L695>)


### Timespec function unix


```haxe
function unix():{
	_1:stdgo.GoInt64;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Syscall.hx#L697>)


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


[\(view code\)](<./Syscall.hx#L557>)


### Timeval function nano


```haxe
function nano():stdgo.GoInt64
```


[\(view code\)](<./Syscall.hx#L714>)


### Timeval function unix


```haxe
function unix():{
	_1:stdgo.GoInt64;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Syscall.hx#L716>)


# Typedefs


```haxe
import stdgo._internal.syscall.*
```


## typedef Conn


```haxe
typedef Conn = {
	public function syscallConn():{
		_1:stdgo.Error;
		_0:stdgo._internal.syscall.RawConn;
	};	// SyscallConn returns a raw network connection.
};
```


## typedef Errno


```haxe
typedef Errno = stdgo.GoUIntptr;
```


## typedef RawConn


```haxe
typedef RawConn = {
	public function write(_f:(_fd:stdgo.GoUIntptr):Bool):stdgo.Error;	// Write is like Read but for writing.
	public function read(_f:(_fd:stdgo.GoUIntptr):Bool):stdgo.Error;	// Read invokes f on the underlying connection's file descriptor or handle; f is expected to try to read from the file descriptor. If f returns true, Read returns. Otherwise Read blocks waiting for the connection to be ready for reading and tries again repeatedly. The file descriptor is guaranteed to remain valid while f executes but not after f returns.
	public function control(_f:(_fd:stdgo.GoUIntptr):Void):stdgo.Error;	// Control invokes f on the underlying connection's file descriptor or handle. The file descriptor fd is guaranteed to remain valid while f executes but not after f returns.
};
```


## typedef Signal


```haxe
typedef Signal = stdgo.GoInt;
```


## typedef Sockaddr


```haxe
typedef Sockaddr = stdgo.AnyInterface;
```


## typedef WaitStatus


```haxe
typedef WaitStatus = stdgo.GoUInt32;
```


