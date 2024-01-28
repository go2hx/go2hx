# Module: `stdgo.syscall`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _asanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanread>)

- [`function _asanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_asanwrite>)

- [`function _checkPath(_path:stdgo.GoString):Void`](<#function-_checkpath>)

- [`function _copyenv():Void`](<#function-_copyenv>)

- [`function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntino>)

- [`function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntnamlen>)

- [`function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntreclen>)

- [`function _errnoErr(_e:stdgo.syscall.Errno):Void`](<#function-_errnoerr>)

- [`function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_faketimewrite>)

- [`function _fdToFile(_fd:stdgo.GoInt):Void`](<#function-_fdtofile>)

- [`function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-_fscall>)

- [`function _mapJSError(_jsErr:stdgo._internal.syscall.js.Value):Void`](<#function-_mapjserror>)

- [`function _msanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanread>)

- [`function _msanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-_msanwrite>)

- [`function _now():Void`](<#function-_now>)

- [`function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):Void`](<#function-_readint>)

- [`function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void`](<#function-_readintbe>)

- [`function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void`](<#function-_readintle>)

- [`function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void`](<#function-_recovererr>)

- [`function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void`](<#function-_runtimesetenv>)

- [`function _runtimeUnsetenv(_k:stdgo.GoString):Void`](<#function-_runtimeunsetenv>)

- [`function _runtime_envs():Void`](<#function-_runtime_envs>)

- [`function _setStat(_st:stdgo.Ref<stdgo.syscall.Stat_t>, _jsSt:stdgo._internal.syscall.js.Value):Void`](<#function-_setstat>)

- [`function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Void`](<#function-_settimespec>)

- [`function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):Void`](<#function-_settimeval>)

- [`function accept(_fd:stdgo.GoInt):Void`](<#function-accept>)

- [`function bind(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):Void`](<#function-bind>)

- [`function bytePtrFromString(_s:stdgo.GoString):Void`](<#function-byteptrfromstring>)

- [`function byteSliceFromString(_s:stdgo.GoString):Void`](<#function-byteslicefromstring>)

- [`function chdir(_path:stdgo.GoString):Void`](<#function-chdir>)

- [`function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):Void`](<#function-chmod>)

- [`function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void`](<#function-chown>)

- [`function clearenv():Void`](<#function-clearenv>)

- [`function close(_fd:stdgo.GoInt):Void`](<#function-close>)

- [`function closeOnExec(_fd:stdgo.GoInt):Void`](<#function-closeonexec>)

- [`function connect(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):Void`](<#function-connect>)

- [`function dup(_fd:stdgo.GoInt):Void`](<#function-dup>)

- [`function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):Void`](<#function-dup2>)

- [`function environ():Void`](<#function-environ>)

- [`function exit(_code:stdgo.GoInt):Void`](<#function-exit>)

- [`function fchdir(_fd:stdgo.GoInt):Void`](<#function-fchdir>)

- [`function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):Void`](<#function-fchmod>)

- [`function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void`](<#function-fchown>)

- [`function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void`](<#function-fstat>)

- [`function fsync(_fd:stdgo.GoInt):Void`](<#function-fsync>)

- [`function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):Void`](<#function-ftruncate>)

- [`function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-getcwd>)

- [`function getegid():Void`](<#function-getegid>)

- [`function getenv(_key:stdgo.GoString):Void`](<#function-getenv>)

- [`function geteuid():Void`](<#function-geteuid>)

- [`function getgid():Void`](<#function-getgid>)

- [`function getgroups():Void`](<#function-getgroups>)

- [`function getpagesize():Void`](<#function-getpagesize>)

- [`function getpid():Void`](<#function-getpid>)

- [`function getppid():Void`](<#function-getppid>)

- [`function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):Void`](<#function-getsockoptint>)

- [`function gettimeofday(_tv:stdgo.Ref<stdgo.syscall.Timeval>):Void`](<#function-gettimeofday>)

- [`function getuid():Void`](<#function-getuid>)

- [`function getwd():Void`](<#function-getwd>)

- [`function kill(_pid:stdgo.GoInt, _signum:stdgo.syscall.Signal):Void`](<#function-kill>)

- [`function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void`](<#function-lchown>)

- [`function link(_path:stdgo.GoString, _link:stdgo.GoString):Void`](<#function-link>)

- [`function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):Void`](<#function-listen>)

- [`function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void`](<#function-lstat>)

- [`function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):Void`](<#function-mkdir>)

- [`function nsecToTimespec(_nsec:stdgo.GoInt64):Void`](<#function-nsectotimespec>)

- [`function nsecToTimeval(_nsec:stdgo.GoInt64):Void`](<#function-nsectotimeval>)

- [`function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):Void`](<#function-open>)

- [`function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):Void`](<#function-parsedirent>)

- [`function pipe(_fd:stdgo.Slice<stdgo.GoInt>):Void`](<#function-pipe>)

- [`function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):Void`](<#function-pread>)

- [`function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):Void`](<#function-pwrite>)

- [`function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):Void`](<#function-rawsyscall>)

- [`function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):Void`](<#function-rawsyscall6>)

- [`function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-read>)

- [`function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-readdirent>)

- [`function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-readlink>)

- [`function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):Void`](<#function-recvfrom>)

- [`function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):Void`](<#function-recvmsg>)

- [`function rename(_from:stdgo.GoString, _to:stdgo.GoString):Void`](<#function-rename>)

- [`function rmdir(_path:stdgo.GoString):Void`](<#function-rmdir>)

- [`function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):Void`](<#function-seek>)

- [`function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):Void`](<#function-sendfile>)

- [`function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.syscall.Sockaddr, _flags:stdgo.GoInt):Void`](<#function-sendmsgn>)

- [`function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.syscall.Sockaddr):Void`](<#function-sendto>)

- [`function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):Void`](<#function-setnonblock>)

- [`function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):Void`](<#function-setreaddeadline>)

- [`function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):Void`](<#function-setwritedeadline>)

- [`function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void`](<#function-setenv>)

- [`function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):Void`](<#function-setsockoptint>)

- [`function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):Void`](<#function-shutdown>)

- [`function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):Void`](<#function-socket>)

- [`function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.syscall.ProcAttr>):Void`](<#function-startprocess>)

- [`function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void`](<#function-stat>)

- [`function stopIO(_fd:stdgo.GoInt):Void`](<#function-stopio>)

- [`function stringBytePtr(_s:stdgo.GoString):Void`](<#function-stringbyteptr>)

- [`function stringByteSlice(_s:stdgo.GoString):Void`](<#function-stringbyteslice>)

- [`function symlink(_path:stdgo.GoString, _link:stdgo.GoString):Void`](<#function-symlink>)

- [`function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):Void`](<#function-syscall>)

- [`function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):Void`](<#function-syscall6>)

- [`function sysctl(_key:stdgo.GoString):Void`](<#function-sysctl>)

- [`function timespecToNsec(_ts:stdgo.syscall.Timespec):Void`](<#function-timespectonsec>)

- [`function timevalToNsec(_tv:stdgo.syscall.Timeval):Void`](<#function-timevaltonsec>)

- [`function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):Void`](<#function-truncate>)

- [`function umask(_mask:stdgo.GoInt):Void`](<#function-umask>)

- [`function unlink(_path:stdgo.GoString):Void`](<#function-unlink>)

- [`function unsetenv(_key:stdgo.GoString):Void`](<#function-unsetenv>)

- [`function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo.syscall.Timespec>):Void`](<#function-utimesnano>)

- [`function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo.syscall.Rusage>):Void`](<#function-wait4>)

- [`function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-write>)

- [typedef Conn](<#typedef-conn>)

- [typedef Dirent](<#typedef-dirent>)

- [typedef Errno](<#typedef-errno>)

- [typedef Errno\_asInterface](<#typedef-errno_asinterface>)

- [typedef Errno\_static\_extension](<#typedef-errno_static_extension>)

- [typedef Iovec](<#typedef-iovec>)

- [typedef ProcAttr](<#typedef-procattr>)

- [typedef RawConn](<#typedef-rawconn>)

- [typedef Rusage](<#typedef-rusage>)

- [typedef Signal](<#typedef-signal>)

- [typedef Signal\_asInterface](<#typedef-signal_asinterface>)

- [typedef Signal\_static\_extension](<#typedef-signal_static_extension>)

- [typedef Sockaddr](<#typedef-sockaddr>)

- [typedef SockaddrInet4](<#typedef-sockaddrinet4>)

- [typedef SockaddrInet6](<#typedef-sockaddrinet6>)

- [typedef SockaddrUnix](<#typedef-sockaddrunix>)

- [typedef Stat\_t](<#typedef-stat_t>)

- [typedef SysProcAttr](<#typedef-sysprocattr>)

- [typedef T\_jsFile](<#typedef-t_jsfile>)

- [typedef Timespec](<#typedef-timespec>)

- [typedef Timespec\_asInterface](<#typedef-timespec_asinterface>)

- [typedef Timespec\_static\_extension](<#typedef-timespec_static_extension>)

- [typedef Timeval](<#typedef-timeval>)

- [typedef Timeval\_asInterface](<#typedef-timeval_asinterface>)

- [typedef Timeval\_static\_extension](<#typedef-timeval_static_extension>)

- [typedef WaitStatus](<#typedef-waitstatus>)

- [typedef WaitStatus\_asInterface](<#typedef-waitstatus_asinterface>)

- [typedef WaitStatus\_static\_extension](<#typedef-waitstatus_static_extension>)

# Variables


```haxe
import stdgo.syscall.Syscall
```


```haxe
var __10:Dynamic
```


```haxe
var __8:Dynamic
```


```haxe
var __9:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var __zero:Dynamic
```


```haxe
var _asanenabled:Dynamic
```


```haxe
var _constants:Dynamic
```


```haxe
var _direntSize:Dynamic
```


```haxe
var _env:Dynamic
```


```haxe
var _envLock:Dynamic
```


```haxe
var _envOnce:Dynamic
```


```haxe
var _envs:Dynamic
```


```haxe
var _errEAGAIN:Dynamic
```


```haxe
var _errEINVAL:Dynamic
```


```haxe
var _errENOENT:Dynamic
```


```haxe
var _errnoByCode:Dynamic
```


```haxe
var _errorstr:Dynamic
```


```haxe
var _faketime:Dynamic
```


```haxe
var _files:Dynamic
```


```haxe
var _filesMu:Dynamic
```


```haxe
var _isBigEndian:Dynamic
```


```haxe
var _jsFS:Dynamic
```


```haxe
var _jsProcess:Dynamic
```


```haxe
var _msanenabled:Dynamic
```


```haxe
var _nodeAPPEND:Dynamic
```


```haxe
var _nodeCREATE:Dynamic
```


```haxe
var _nodeEXCL:Dynamic
```


```haxe
var _nodeRDWR:Dynamic
```


```haxe
var _nodeTRUNC:Dynamic
```


```haxe
var _nodeWRONLY:Dynamic
```


```haxe
var _signals:Dynamic
```


```haxe
var _sys_access:Dynamic
```


```haxe
var _sys_brk:Dynamic
```


```haxe
var _sys_chdir:Dynamic
```


```haxe
var _sys_chmod:Dynamic
```


```haxe
var _sys_clock:Dynamic
```


```haxe
var _sys_clock_getres:Dynamic
```


```haxe
var _sys_clock_gettime:Dynamic
```


```haxe
var _sys_close:Dynamic
```


```haxe
var _sys_cond_broadcast:Dynamic
```


```haxe
var _sys_cond_create:Dynamic
```


```haxe
var _sys_cond_signal:Dynamic
```


```haxe
var _sys_cond_timed_wait_abs:Dynamic
```


```haxe
var _sys_cond_wait:Dynamic
```


```haxe
var _sys_dup:Dynamic
```


```haxe
var _sys_dup2:Dynamic
```


```haxe
var _sys_dyncode_create:Dynamic
```


```haxe
var _sys_dyncode_delete:Dynamic
```


```haxe
var _sys_dyncode_modify:Dynamic
```


```haxe
var _sys_exception_clear_flag:Dynamic
```


```haxe
var _sys_exception_handler:Dynamic
```


```haxe
var _sys_exception_stack:Dynamic
```


```haxe
var _sys_exit:Dynamic
```


```haxe
var _sys_fstat:Dynamic
```


```haxe
var _sys_futex_wait_abs:Dynamic
```


```haxe
var _sys_futex_wake:Dynamic
```


```haxe
var _sys_get_random_bytes:Dynamic
```


```haxe
var _sys_getcwd:Dynamic
```


```haxe
var _sys_getdents:Dynamic
```


```haxe
var _sys_getpid:Dynamic
```


```haxe
var _sys_gettimeofday:Dynamic
```


```haxe
var _sys_imc_accept:Dynamic
```


```haxe
var _sys_imc_connect:Dynamic
```


```haxe
var _sys_imc_makeboundsock:Dynamic
```


```haxe
var _sys_imc_mem_obj_create:Dynamic
```


```haxe
var _sys_imc_recvmsg:Dynamic
```


```haxe
var _sys_imc_sendmsg:Dynamic
```


```haxe
var _sys_imc_socketpair:Dynamic
```


```haxe
var _sys_isatty:Dynamic
```


```haxe
var _sys_link:Dynamic
```


```haxe
var _sys_list_mappings:Dynamic
```


```haxe
var _sys_lseek:Dynamic
```


```haxe
var _sys_lstat:Dynamic
```


```haxe
var _sys_mkdir:Dynamic
```


```haxe
var _sys_mmap:Dynamic
```


```haxe
var _sys_mprotect:Dynamic
```


```haxe
var _sys_munmap:Dynamic
```


```haxe
var _sys_mutex_create:Dynamic
```


```haxe
var _sys_mutex_lock:Dynamic
```


```haxe
var _sys_mutex_trylock:Dynamic
```


```haxe
var _sys_mutex_unlock:Dynamic
```


```haxe
var _sys_nameservice:Dynamic
```


```haxe
var _sys_nanosleep:Dynamic
```


```haxe
var _sys_null:Dynamic
```


```haxe
var _sys_open:Dynamic
```


```haxe
var _sys_pread:Dynamic
```


```haxe
var _sys_pwrite:Dynamic
```


```haxe
var _sys_read:Dynamic
```


```haxe
var _sys_readlink:Dynamic
```


```haxe
var _sys_rename:Dynamic
```


```haxe
var _sys_rmdir:Dynamic
```


```haxe
var _sys_sched_yield:Dynamic
```


```haxe
var _sys_second_tls_get:Dynamic
```


```haxe
var _sys_second_tls_set:Dynamic
```


```haxe
var _sys_sem_create:Dynamic
```


```haxe
var _sys_sem_get_value:Dynamic
```


```haxe
var _sys_sem_post:Dynamic
```


```haxe
var _sys_sem_wait:Dynamic
```


```haxe
var _sys_stat:Dynamic
```


```haxe
var _sys_symlink:Dynamic
```


```haxe
var _sys_sysconf:Dynamic
```


```haxe
var _sys_test_crash:Dynamic
```


```haxe
var _sys_test_infoleak:Dynamic
```


```haxe
var _sys_test_syscall_1:Dynamic
```


```haxe
var _sys_test_syscall_2:Dynamic
```


```haxe
var _sys_thread_create:Dynamic
```


```haxe
var _sys_thread_exit:Dynamic
```


```haxe
var _sys_thread_nice:Dynamic
```


```haxe
var _sys_tls_get:Dynamic
```


```haxe
var _sys_tls_init:Dynamic
```


```haxe
var _sys_truncate:Dynamic
```


```haxe
var _sys_unlink:Dynamic
```


```haxe
var _sys_utimes:Dynamic
```


```haxe
var _sys_write:Dynamic
```


```haxe
var _uint8Array:Dynamic
```


```haxe
var af_INET:Dynamic
```


```haxe
var af_INET6:Dynamic
```


```haxe
var af_UNIX:Dynamic
```


```haxe
var af_UNSPEC:Dynamic
```


```haxe
var e2big:Dynamic
```


```haxe
var eacces:Dynamic
```


```haxe
var eaddrinuse:Dynamic
```


```haxe
var eaddrnotavail:Dynamic
```


```haxe
var eadv:Dynamic
```


```haxe
var eafnosupport:Dynamic
```


```haxe
var eagain:Dynamic
```


```haxe
var ealready:Dynamic
```


```haxe
var ebade:Dynamic
```


```haxe
var ebadf:Dynamic
```


```haxe
var ebadfd:Dynamic
```


```haxe
var ebadmsg:Dynamic
```


```haxe
var ebadr:Dynamic
```


```haxe
var ebadrqc:Dynamic
```


```haxe
var ebadslt:Dynamic
```


```haxe
var ebfont:Dynamic
```


```haxe
var ebusy:Dynamic
```


```haxe
var ecanceled:Dynamic
```


```haxe
var ecaseclash:Dynamic
```


```haxe
var echild:Dynamic
```


```haxe
var echrng:Dynamic
```


```haxe
var ecomm:Dynamic
```


```haxe
var econnaborted:Dynamic
```


```haxe
var econnrefused:Dynamic
```


```haxe
var econnreset:Dynamic
```


```haxe
var edeadlk:Dynamic
```


```haxe
var edeadlock:Dynamic
```


```haxe
var edestaddrreq:Dynamic
```


```haxe
var edom:Dynamic
```


```haxe
var edotdot:Dynamic
```


```haxe
var edquot:Dynamic
```


```haxe
var eexist:Dynamic
```


```haxe
var efault:Dynamic
```


```haxe
var efbig:Dynamic
```


```haxe
var eftype:Dynamic
```


```haxe
var ehostdown:Dynamic
```


```haxe
var ehostunreach:Dynamic
```


```haxe
var eidrm:Dynamic
```


```haxe
var eilseq:Dynamic
```


```haxe
var einprogress:Dynamic
```


```haxe
var eintr:Dynamic
```


```haxe
var einval:Dynamic
```


```haxe
var eio:Dynamic
```


```haxe
var eisconn:Dynamic
```


```haxe
var eisdir:Dynamic
```


```haxe
var el2hlt:Dynamic
```


```haxe
var el2nsync:Dynamic
```


```haxe
var el3hlt:Dynamic
```


```haxe
var el3rst:Dynamic
```


```haxe
var elbin:Dynamic
```


```haxe
var elibacc:Dynamic
```


```haxe
var elibbad:Dynamic
```


```haxe
var elibexec:Dynamic
```


```haxe
var elibmax:Dynamic
```


```haxe
var elibscn:Dynamic
```


```haxe
var elnrng:Dynamic
```


```haxe
var eloop:Dynamic
```


```haxe
var emfile:Dynamic
```


```haxe
var emlink:Dynamic
```


```haxe
var emsgsize:Dynamic
```


```haxe
var emultihop:Dynamic
```


```haxe
var enametoolong:Dynamic
```


```haxe
var enetdown:Dynamic
```


```haxe
var enetreset:Dynamic
```


```haxe
var enetunreach:Dynamic
```


```haxe
var enfile:Dynamic
```


```haxe
var enmfile:Dynamic
```


```haxe
var enoano:Dynamic
```


```haxe
var enobufs:Dynamic
```


```haxe
var enocsi:Dynamic
```


```haxe
var enodata:Dynamic
```


```haxe
var enodev:Dynamic
```


```haxe
var enoent:Dynamic
```


```haxe
var enoexec:Dynamic
```


```haxe
var enolck:Dynamic
```


```haxe
var enolink:Dynamic
```


```haxe
var enomedium:Dynamic
```


```haxe
var enomem:Dynamic
```


```haxe
var enomsg:Dynamic
```


```haxe
var enonet:Dynamic
```


```haxe
var enopkg:Dynamic
```


```haxe
var enoprotoopt:Dynamic
```


```haxe
var enoshare:Dynamic
```


```haxe
var enospc:Dynamic
```


```haxe
var enosr:Dynamic
```


```haxe
var enostr:Dynamic
```


```haxe
var enosys:Dynamic
```


```haxe
var enotconn:Dynamic
```


```haxe
var enotdir:Dynamic
```


```haxe
var enotempty:Dynamic
```


```haxe
var enotsock:Dynamic
```


```haxe
var enotsup:Dynamic
```


```haxe
var enotty:Dynamic
```


```haxe
var enotuniq:Dynamic
```


```haxe
var enxio:Dynamic
```


```haxe
var eopnotsupp:Dynamic
```


```haxe
var eoverflow:Dynamic
```


```haxe
var eperm:Dynamic
```


```haxe
var epfnosupport:Dynamic
```


```haxe
var epipe:Dynamic
```


```haxe
var eproclim:Dynamic
```


```haxe
var eproto:Dynamic
```


```haxe
var eprotonosupport:Dynamic
```


```haxe
var eprototype:Dynamic
```


```haxe
var erange:Dynamic
```


```haxe
var eremchg:Dynamic
```


```haxe
var eremote:Dynamic
```


```haxe
var erofs:Dynamic
```


```haxe
var eshutdown:Dynamic
```


```haxe
var esocktnosupport:Dynamic
```


```haxe
var espipe:Dynamic
```


```haxe
var esrch:Dynamic
```


```haxe
var esrmnt:Dynamic
```


```haxe
var estale:Dynamic
```


```haxe
var etime:Dynamic
```


```haxe
var etimedout:Dynamic
```


```haxe
var etoomanyrefs:Dynamic
```


```haxe
var eunatch:Dynamic
```


```haxe
var eusers:Dynamic
```


```haxe
var ewouldblock:Dynamic
```


```haxe
var exdev:Dynamic
```


```haxe
var exfull:Dynamic
```


```haxe
var f_CNVT:Dynamic
```


```haxe
var f_DUPFD:Dynamic
```


```haxe
var f_DUPFD_CLOEXEC:Dynamic
```


```haxe
var f_GETFD:Dynamic
```


```haxe
var f_GETFL:Dynamic
```


```haxe
var f_GETLK:Dynamic
```


```haxe
var f_GETOWN:Dynamic
```


```haxe
var f_RDLCK:Dynamic
```


```haxe
var f_RGETLK:Dynamic
```


```haxe
var f_RSETLK:Dynamic
```


```haxe
var f_RSETLKW:Dynamic
```


```haxe
var f_SETFD:Dynamic
```


```haxe
var f_SETFL:Dynamic
```


```haxe
var f_SETLK:Dynamic
```


```haxe
var f_SETLKW:Dynamic
```


```haxe
var f_SETOWN:Dynamic
```


```haxe
var f_UNLCK:Dynamic
```


```haxe
var f_UNLKSYS:Dynamic
```


```haxe
var f_WRLCK:Dynamic
```


```haxe
var forkLock:Dynamic
```


```haxe
var implementsGetwd:Dynamic
```


```haxe
var ipproto_IP:Dynamic
```


```haxe
var ipproto_IPV4:Dynamic
```


```haxe
var ipproto_IPV6:Dynamic
```


```haxe
var ipproto_TCP:Dynamic
```


```haxe
var ipproto_UDP:Dynamic
```


```haxe
var ipv6_V6ONLY:Dynamic
```


```haxe
var o_APPEND:Dynamic
```


```haxe
var o_CLOEXEC:Dynamic
```


```haxe
var o_CREAT:Dynamic
```


```haxe
var o_CREATE:Dynamic
```


```haxe
var o_EXCL:Dynamic
```


```haxe
var o_RDONLY:Dynamic
```


```haxe
var o_RDWR:Dynamic
```


```haxe
var o_SYNC:Dynamic
```


```haxe
var o_TRUNC:Dynamic
```


```haxe
var o_WRONLY:Dynamic
```


```haxe
var pathMax:Dynamic
```


```haxe
var s_IEXEC:Dynamic
```


```haxe
var s_IFBLK:Dynamic
```


```haxe
var s_IFBOUNDSOCK:Dynamic
```


```haxe
var s_IFCHR:Dynamic
```


```haxe
var s_IFCOND:Dynamic
```


```haxe
var s_IFDIR:Dynamic
```


```haxe
var s_IFDSOCK:Dynamic
```


```haxe
var s_IFIFO:Dynamic
```


```haxe
var s_IFLNK:Dynamic
```


```haxe
var s_IFMT:Dynamic
```


```haxe
var s_IFMUTEX:Dynamic
```


```haxe
var s_IFREG:Dynamic
```


```haxe
var s_IFSEMA:Dynamic
```


```haxe
var s_IFSHM:Dynamic
```


```haxe
var s_IFSHM_SYSV:Dynamic
```


```haxe
var s_IFSOCK:Dynamic
```


```haxe
var s_IFSOCKADDR:Dynamic
```


```haxe
var s_IREAD:Dynamic
```


```haxe
var s_IRGRP:Dynamic
```


```haxe
var s_IROTH:Dynamic
```


```haxe
var s_IRUSR:Dynamic
```


```haxe
var s_IRWXG:Dynamic
```


```haxe
var s_IRWXO:Dynamic
```


```haxe
var s_IRWXU:Dynamic
```


```haxe
var s_ISGID:Dynamic
```


```haxe
var s_ISUID:Dynamic
```


```haxe
var s_ISVTX:Dynamic
```


```haxe
var s_IWGRP:Dynamic
```


```haxe
var s_IWOTH:Dynamic
```


```haxe
var s_IWRITE:Dynamic
```


```haxe
var s_IWUSR:Dynamic
```


```haxe
var s_IXGRP:Dynamic
```


```haxe
var s_IXOTH:Dynamic
```


```haxe
var s_IXUSR:Dynamic
```


```haxe
var s_UNSUP:Dynamic
```


```haxe
var sigchld:Dynamic
```


```haxe
var sigint:Dynamic
```


```haxe
var sigkill:Dynamic
```


```haxe
var sigquit:Dynamic
```


```haxe
var sigterm:Dynamic
```


```haxe
var sigtrap:Dynamic
```


```haxe
var so_ERROR:Dynamic
```


```haxe
var sock_DGRAM:Dynamic
```


```haxe
var sock_RAW:Dynamic
```


```haxe
var sock_SEQPACKET:Dynamic
```


```haxe
var sock_STREAM:Dynamic
```


```haxe
var somaxconn:Dynamic
```


```haxe
var stderr:Dynamic
```


```haxe
var stdin:Dynamic
```


```haxe
var stdout:Dynamic
```


```haxe
var sys_FCNTL:Dynamic
```


# Functions


```haxe
import stdgo.syscall.Syscall
```


## function \_asanRead


```haxe
function _asanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L350>)


## function \_asanWrite


```haxe
function _asanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L351>)


## function \_checkPath


```haxe
function _checkPath(_path:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L401>)


## function \_copyenv


```haxe
function _copyenv():Void
```


[\(view code\)](<./Syscall.hx#L357>)


## function \_direntIno


```haxe
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L430>)


## function \_direntNamlen


```haxe
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L432>)


## function \_direntReclen


```haxe
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L431>)


## function \_errnoErr


```haxe
function _errnoErr(_e:stdgo.syscall.Errno):Void
```


[\(view code\)](<./Syscall.hx#L454>)


## function \_faketimeWrite


```haxe
function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L455>)


## function \_fdToFile


```haxe
function _fdToFile(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L364>)


## function \_fsCall


```haxe
function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Syscall.hx#L400>)


## function \_mapJSError


```haxe
function _mapJSError(_jsErr:stdgo._internal.syscall.js.Value):Void
```


[\(view code\)](<./Syscall.hx#L403>)


## function \_msanRead


```haxe
function _msanRead(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L404>)


## function \_msanWrite


```haxe
function _msanWrite(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L405>)


## function \_now


```haxe
function _now():Void
```


[\(view code\)](<./Syscall.hx#L363>)


## function \_readInt


```haxe
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L352>)


## function \_readIntBE


```haxe
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L353>)


## function \_readIntLE


```haxe
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L354>)


## function \_recoverErr


```haxe
function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void
```


[\(view code\)](<./Syscall.hx#L402>)


## function \_runtimeSetenv


```haxe
function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L428>)


## function \_runtimeUnsetenv


```haxe
function _runtimeUnsetenv(_k:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L429>)


## function \_runtime\_envs


```haxe
function _runtime_envs():Void
```


[\(view code\)](<./Syscall.hx#L356>)


## function \_setStat


```haxe
function _setStat(_st:stdgo.Ref<stdgo.syscall.Stat_t>, _jsSt:stdgo._internal.syscall.js.Value):Void
```


[\(view code\)](<./Syscall.hx#L370>)


## function \_setTimespec


```haxe
function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L452>)


## function \_setTimeval


```haxe
function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L453>)


## function accept


```haxe
function accept(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L410>)


## function bind


```haxe
function bind(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):Void
```


[\(view code\)](<./Syscall.hx#L407>)


## function bytePtrFromString


```haxe
function bytePtrFromString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L425>)


## function byteSliceFromString


```haxe
function byteSliceFromString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L423>)


## function chdir


```haxe
function chdir(_path:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L386>)


## function chmod


```haxe
function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syscall.hx#L376>)


## function chown


```haxe
function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L378>)


## function clearenv


```haxe
function clearenv():Void
```


[\(view code\)](<./Syscall.hx#L361>)


## function close


```haxe
function close(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L366>)


## function closeOnExec


```haxe
function closeOnExec(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L367>)


## function connect


```haxe
function connect(_fd:stdgo.GoInt, _sa:stdgo.syscall.Sockaddr):Void
```


[\(view code\)](<./Syscall.hx#L411>)


## function dup


```haxe
function dup(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L397>)


## function dup2


```haxe
function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L398>)


## function environ


```haxe
function environ():Void
```


[\(view code\)](<./Syscall.hx#L362>)


## function exit


```haxe
function exit(_code:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L427>)


## function fchdir


```haxe
function fchdir(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L387>)


## function fchmod


```haxe
function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syscall.hx#L377>)


## function fchown


```haxe
function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L379>)


## function fstat


```haxe
function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void
```


[\(view code\)](<./Syscall.hx#L373>)


## function fsync


```haxe
function fsync(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L391>)


## function ftruncate


```haxe
function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L384>)


## function getcwd


```haxe
function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L385>)


## function getegid


```haxe
function getegid():Void
```


[\(view code\)](<./Syscall.hx#L442>)


## function getenv


```haxe
function getenv(_key:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L359>)


## function geteuid


```haxe
function geteuid():Void
```


[\(view code\)](<./Syscall.hx#L441>)


## function getgid


```haxe
function getgid():Void
```


[\(view code\)](<./Syscall.hx#L440>)


## function getgroups


```haxe
function getgroups():Void
```


[\(view code\)](<./Syscall.hx#L443>)


## function getpagesize


```haxe
function getpagesize():Void
```


[\(view code\)](<./Syscall.hx#L426>)


## function getpid


```haxe
function getpid():Void
```


[\(view code\)](<./Syscall.hx#L444>)


## function getppid


```haxe
function getppid():Void
```


[\(view code\)](<./Syscall.hx#L445>)


## function getsockoptInt


```haxe
function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L416>)


## function gettimeofday


```haxe
function gettimeofday(_tv:stdgo.Ref<stdgo.syscall.Timeval>):Void
```


[\(view code\)](<./Syscall.hx#L447>)


## function getuid


```haxe
function getuid():Void
```


[\(view code\)](<./Syscall.hx#L439>)


## function getwd


```haxe
function getwd():Void
```


[\(view code\)](<./Syscall.hx#L438>)


## function kill


```haxe
function kill(_pid:stdgo.GoInt, _signum:stdgo.syscall.Signal):Void
```


[\(view code\)](<./Syscall.hx#L448>)


## function lchown


```haxe
function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L380>)


## function link


```haxe
function link(_path:stdgo.GoString, _link:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L389>)


## function listen


```haxe
function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L409>)


## function lstat


```haxe
function lstat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void
```


[\(view code\)](<./Syscall.hx#L372>)


## function mkdir


```haxe
function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syscall.hx#L368>)


## function nsecToTimespec


```haxe
function nsecToTimespec(_nsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L457>)


## function nsecToTimeval


```haxe
function nsecToTimeval(_nsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L459>)


## function open


```haxe
function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syscall.hx#L365>)


## function parseDirent


```haxe
function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Syscall.hx#L355>)


## function pipe


```haxe
function pipe(_fd:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Syscall.hx#L399>)


## function pread


```haxe
function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L394>)


## function pwrite


```haxe
function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L395>)


## function rawSyscall


```haxe
function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L435>)


## function rawSyscall6


```haxe
function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L436>)


## function read


```haxe
function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L392>)


## function readDirent


```haxe
function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L369>)


## function readlink


```haxe
function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L388>)


## function recvfrom


```haxe
function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L412>)


## function recvmsg


```haxe
function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L414>)


## function rename


```haxe
function rename(_from:stdgo.GoString, _to:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L382>)


## function rmdir


```haxe
function rmdir(_path:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L375>)


## function seek


```haxe
function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L396>)


## function sendfile


```haxe
function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L449>)


## function sendmsgN


```haxe
function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.syscall.Sockaddr, _flags:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L415>)


## function sendto


```haxe
function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.syscall.Sockaddr):Void
```


[\(view code\)](<./Syscall.hx#L413>)


## function setNonblock


```haxe
function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):Void
```


[\(view code\)](<./Syscall.hx#L421>)


## function setReadDeadline


```haxe
function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L418>)


## function setWriteDeadline


```haxe
function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L419>)


## function setenv


```haxe
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L360>)


## function setsockoptInt


```haxe
function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L417>)


## function shutdown


```haxe
function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L420>)


## function socket


```haxe
function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L406>)


## function startProcess


```haxe
function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.syscall.ProcAttr>):Void
```


[\(view code\)](<./Syscall.hx#L450>)


## function stat


```haxe
function stat(_path:stdgo.GoString, _st:stdgo.Ref<stdgo.syscall.Stat_t>):Void
```


[\(view code\)](<./Syscall.hx#L371>)


## function stopIO


```haxe
function stopIO(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L408>)


## function stringBytePtr


```haxe
function stringBytePtr(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L424>)


## function stringByteSlice


```haxe
function stringByteSlice(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L422>)


## function symlink


```haxe
function symlink(_path:stdgo.GoString, _link:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L390>)


## function syscall


```haxe
function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L433>)


## function syscall6


```haxe
function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Syscall.hx#L434>)


## function sysctl


```haxe
function sysctl(_key:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L437>)


## function timespecToNsec


```haxe
function timespecToNsec(_ts:stdgo.syscall.Timespec):Void
```


[\(view code\)](<./Syscall.hx#L456>)


## function timevalToNsec


```haxe
function timevalToNsec(_tv:stdgo.syscall.Timeval):Void
```


[\(view code\)](<./Syscall.hx#L458>)


## function truncate


```haxe
function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):Void
```


[\(view code\)](<./Syscall.hx#L383>)


## function umask


```haxe
function umask(_mask:stdgo.GoInt):Void
```


[\(view code\)](<./Syscall.hx#L446>)


## function unlink


```haxe
function unlink(_path:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L374>)


## function unsetenv


```haxe
function unsetenv(_key:stdgo.GoString):Void
```


[\(view code\)](<./Syscall.hx#L358>)


## function utimesNano


```haxe
function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<stdgo.syscall.Timespec>):Void
```


[\(view code\)](<./Syscall.hx#L381>)


## function wait4


```haxe
function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<stdgo.syscall.Rusage>):Void
```


[\(view code\)](<./Syscall.hx#L451>)


## function write


```haxe
function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Syscall.hx#L393>)


# Typedefs


```haxe
import stdgo.syscall.*
```


## typedef Conn


```haxe
typedef Conn = stdgo._internal.syscall.Conn;
```


## typedef Dirent


```haxe
typedef Dirent = Dynamic;
```


## typedef Errno


```haxe
typedef Errno = stdgo._internal.syscall.Errno;
```


## typedef Errno\_asInterface


```haxe
typedef Errno_asInterface = Dynamic;
```


## typedef Errno\_static\_extension


```haxe
typedef Errno_static_extension = Dynamic;
```


## typedef Iovec


```haxe
typedef Iovec = Dynamic;
```


## typedef ProcAttr


```haxe
typedef ProcAttr = Dynamic;
```


## typedef RawConn


```haxe
typedef RawConn = stdgo._internal.syscall.RawConn;
```


## typedef Rusage


```haxe
typedef Rusage = Dynamic;
```


## typedef Signal


```haxe
typedef Signal = stdgo._internal.syscall.Signal;
```


## typedef Signal\_asInterface


```haxe
typedef Signal_asInterface = Dynamic;
```


## typedef Signal\_static\_extension


```haxe
typedef Signal_static_extension = Dynamic;
```


## typedef Sockaddr


```haxe
typedef Sockaddr = stdgo._internal.syscall.Sockaddr;
```


## typedef SockaddrInet4


```haxe
typedef SockaddrInet4 = Dynamic;
```


## typedef SockaddrInet6


```haxe
typedef SockaddrInet6 = Dynamic;
```


## typedef SockaddrUnix


```haxe
typedef SockaddrUnix = Dynamic;
```


## typedef Stat\_t


```haxe
typedef Stat_t = Dynamic;
```


## typedef SysProcAttr


```haxe
typedef SysProcAttr = Dynamic;
```


## typedef T\_jsFile


```haxe
typedef T_jsFile = Dynamic;
```


## typedef Timespec


```haxe
typedef Timespec = Dynamic;
```


## typedef Timespec\_asInterface


```haxe
typedef Timespec_asInterface = Dynamic;
```


## typedef Timespec\_static\_extension


```haxe
typedef Timespec_static_extension = Dynamic;
```


## typedef Timeval


```haxe
typedef Timeval = Dynamic;
```


## typedef Timeval\_asInterface


```haxe
typedef Timeval_asInterface = Dynamic;
```


## typedef Timeval\_static\_extension


```haxe
typedef Timeval_static_extension = Dynamic;
```


## typedef WaitStatus


```haxe
typedef WaitStatus = stdgo._internal.syscall.WaitStatus;
```


## typedef WaitStatus\_asInterface


```haxe
typedef WaitStatus_asInterface = Dynamic;
```


## typedef WaitStatus\_static\_extension


```haxe
typedef WaitStatus_static_extension = Dynamic;
```


