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

- [`function accept(fd:Int):stdgo.Tuple3<Int, stdgo.syscall.Sockaddr, stdgo.Error>`](<#function-accept>)

- [`function bind(fd:Int, sa:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-bind>)

- [`function bytePtrFromString(s:String):stdgo.Tuple<stdgo.Pointer<Int>, stdgo.Error>`](<#function-byteptrfromstring>)

- [`function byteSliceFromString(s:String):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#function-byteslicefromstring>)

- [`function chdir(path:String):stdgo.Error`](<#function-chdir>)

- [`function chmod(path:String, mode:UInt):stdgo.Error`](<#function-chmod>)

- [`function chown(path:String, uid:Int, gid:Int):stdgo.Error`](<#function-chown>)

- [`function clearenv():Void`](<#function-clearenv>)

- [`function close(fd:Int):stdgo.Error`](<#function-close>)

- [`function closeOnExec(fd:Int):Void`](<#function-closeonexec>)

- [`function connect(fd:Int, sa:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-connect>)

- [`function dup(fd:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-dup>)

- [`function dup2(fd:Int, newfd:Int):stdgo.Error`](<#function-dup2>)

- [`function environ():Array<String>`](<#function-environ>)

- [`function exit(code:Int):Void`](<#function-exit>)

- [`function fchdir(fd:Int):stdgo.Error`](<#function-fchdir>)

- [`function fchmod(fd:Int, mode:UInt):stdgo.Error`](<#function-fchmod>)

- [`function fchown(fd:Int, uid:Int, gid:Int):stdgo.Error`](<#function-fchown>)

- [`function fstat(fd:Int, st:stdgo.syscall.Stat_t):stdgo.Error`](<#function-fstat>)

- [`function fsync(fd:Int):stdgo.Error`](<#function-fsync>)

- [`function ftruncate(fd:Int, _length:haxe.Int64):stdgo.Error`](<#function-ftruncate>)

- [`function get_forkLock():stdgo._internal.sync.RWMutex`](<#function-get_forklock>)

- [`function getcwd(buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-getcwd>)

- [`function getegid():Int`](<#function-getegid>)

- [`function getenv(key:String):stdgo.Tuple<String, Bool>`](<#function-getenv>)

- [`function geteuid():Int`](<#function-geteuid>)

- [`function getgid():Int`](<#function-getgid>)

- [`function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error>`](<#function-getgroups>)

- [`function getpagesize():Int`](<#function-getpagesize>)

- [`function getpid():Int`](<#function-getpid>)

- [`function getppid():Int`](<#function-getppid>)

- [`function getsockoptInt(fd:Int, level:Int, opt:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-getsockoptint>)

- [`function gettimeofday(tv:stdgo.syscall.Timeval):stdgo.Error`](<#function-gettimeofday>)

- [`function getuid():Int`](<#function-getuid>)

- [`function getwd():stdgo.Tuple<String, stdgo.Error>`](<#function-getwd>)

- [`function kill(pid:Int, signum:stdgo.syscall.Signal):stdgo.Error`](<#function-kill>)

- [`function lchown(path:String, uid:Int, gid:Int):stdgo.Error`](<#function-lchown>)

- [`function link(path:String, link:String):stdgo.Error`](<#function-link>)

- [`function listen(fd:Int, backlog:Int):stdgo.Error`](<#function-listen>)

- [`function lstat(path:String, st:stdgo.syscall.Stat_t):stdgo.Error`](<#function-lstat>)

- [`function mkdir(path:String, perm:UInt):stdgo.Error`](<#function-mkdir>)

- [`function nsecToTimespec(nsec:haxe.Int64):stdgo.syscall.Timespec`](<#function-nsectotimespec>)

- [`function nsecToTimeval(nsec:haxe.Int64):stdgo.syscall.Timeval`](<#function-nsectotimeval>)

- [`function open(path:String, openmode:Int, perm:UInt):stdgo.Tuple<Int, stdgo.Error>`](<#function-open>)

- [`function parseDirent(buf:Array<Int>, max:Int, names:Array<String>):stdgo.Tuple3<Int, Int, Array<String>>`](<#function-parsedirent>)

- [`function pipe(fd:Array<Int>):stdgo.Error`](<#function-pipe>)

- [`function pread(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error>`](<#function-pread>)

- [`function pwrite(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error>`](<#function-pwrite>)

- [`function rawSyscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>`](<#function-rawsyscall>)

- [`function rawSyscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>`](<#function-rawsyscall6>)

- [`function read(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-read>)

- [`function readDirent(fd:Int, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-readdirent>)

- [`function readlink(path:String, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-readlink>)

- [`function recvfrom(fd:Int, p:Array<Int>, flags:Int):stdgo.Tuple3<Int, stdgo.syscall.Sockaddr, stdgo.Error>`](<#function-recvfrom>)

- [`function recvmsg(fd:Int, p:Array<Int>, oob:Array<Int>, flags:Int):stdgo.Tuple5<Int, Int, Int, stdgo.syscall.Sockaddr, stdgo.Error>`](<#function-recvmsg>)

- [`function rename(from:String, to:String):stdgo.Error`](<#function-rename>)

- [`function rmdir(path:String):stdgo.Error`](<#function-rmdir>)

- [`function seek(fd:Int, offset:haxe.Int64, whence:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-seek>)

- [`function sendfile(outfd:Int, infd:Int, offset:stdgo.Pointer<haxe.Int64>, count:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-sendfile>)

- [`function sendmsgN(fd:Int, p:Array<Int>, oob:Array<Int>, to:stdgo.syscall.Sockaddr, flags:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-sendmsgn>)

- [`function sendto(fd:Int, p:Array<Int>, flags:Int, to:stdgo.syscall.Sockaddr):stdgo.Error`](<#function-sendto>)

- [`function setNonblock(fd:Int, nonblocking:Bool):stdgo.Error`](<#function-setnonblock>)

- [`function setReadDeadline(fd:Int, t:haxe.Int64):stdgo.Error`](<#function-setreaddeadline>)

- [`function setWriteDeadline(fd:Int, t:haxe.Int64):stdgo.Error`](<#function-setwritedeadline>)

- [`function set_forkLock(v:stdgo._internal.sync.RWMutex):stdgo._internal.sync.RWMutex`](<#function-set_forklock>)

- [`function setenv(key:String, value:String):stdgo.Error`](<#function-setenv>)

- [`function setsockoptInt(fd:Int, level:Int, opt:Int, value:Int):stdgo.Error`](<#function-setsockoptint>)

- [`function shutdown(fd:Int, how:Int):stdgo.Error`](<#function-shutdown>)

- [`function socket(proto:Int, sotype:Int, unused:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-socket>)

- [`function startProcess(argv0:String, argv:Array<String>, attr:stdgo.syscall.ProcAttr):stdgo.Tuple3<Int, stdgo.GoUIntptr, stdgo.Error>`](<#function-startprocess>)

- [`function stat(path:String, st:stdgo.syscall.Stat_t):stdgo.Error`](<#function-stat>)

- [`function stopIO(fd:Int):stdgo.Error`](<#function-stopio>)

- [`function stringBytePtr(s:String):stdgo.Pointer<Int>`](<#function-stringbyteptr>)

- [`function stringByteSlice(s:String):Array<Int>`](<#function-stringbyteslice>)

- [`function symlink(path:String, link:String):stdgo.Error`](<#function-symlink>)

- [`function syscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>`](<#function-syscall>)

- [`function syscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>`](<#function-syscall6>)

- [`function sysctl(key:String):stdgo.Tuple<String, stdgo.Error>`](<#function-sysctl>)

- [`function timespecToNsec(ts:stdgo.syscall.Timespec):haxe.Int64`](<#function-timespectonsec>)

- [`function timevalToNsec(tv:stdgo.syscall.Timeval):haxe.Int64`](<#function-timevaltonsec>)

- [`function truncate(path:String, _length:haxe.Int64):stdgo.Error`](<#function-truncate>)

- [`function umask(mask:Int):Int`](<#function-umask>)

- [`function unlink(path:String):stdgo.Error`](<#function-unlink>)

- [`function unsetenv(key:String):stdgo.Error`](<#function-unsetenv>)

- [`function utimesNano(path:String, ts:Array<stdgo.syscall.Timespec>):stdgo.Error`](<#function-utimesnano>)

- [`function wait4(pid:Int, wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, options:Int, rusage:stdgo.syscall.Rusage):stdgo.Tuple<Int, stdgo.Error>`](<#function-wait4>)

- [`function write(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-write>)

- [typedef Conn](<#typedef-conn>)

- [typedef Conn\_static\_extension](<#typedef-conn_static_extension>)

- [typedef Dirent](<#typedef-dirent>)

- [typedef Errno](<#typedef-errno>)

- [typedef Errno\_asInterface](<#typedef-errno_asinterface>)

- [typedef Errno\_static\_extension](<#typedef-errno_static_extension>)

- [typedef Iovec](<#typedef-iovec>)

- [typedef ProcAttr](<#typedef-procattr>)

- [typedef RawConn](<#typedef-rawconn>)

- [typedef RawConn\_static\_extension](<#typedef-rawconn_static_extension>)

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

# Constants


```haxe
import stdgo.syscall.Syscall
```


```haxe
final af_INET:Null<Any> = stdgo._internal.syscall.Syscall.af_INET
```


```haxe
final af_INET6:Null<Any> = stdgo._internal.syscall.Syscall.af_INET6
```


```haxe
final af_UNIX:Null<Any> = stdgo._internal.syscall.Syscall.af_UNIX
```


```haxe
final af_UNSPEC:haxe.UInt64 = stdgo._internal.syscall.Syscall.af_UNSPEC
```


```haxe
final e2big:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.e2big
```


```haxe
final eacces:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eacces
```


```haxe
final eaddrinuse:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eaddrinuse
```


```haxe
final eaddrnotavail:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eaddrnotavail
```


```haxe
final eadv:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eadv
```


```haxe
final eafnosupport:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eafnosupport
```


```haxe
final eagain:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eagain
```


```haxe
final ealready:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ealready
```


```haxe
final ebade:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebade
```


```haxe
final ebadf:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadf
```


```haxe
final ebadfd:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadfd
```


```haxe
final ebadmsg:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadmsg
```


```haxe
final ebadr:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadr
```


```haxe
final ebadrqc:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadrqc
```


```haxe
final ebadslt:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebadslt
```


```haxe
final ebfont:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebfont
```


```haxe
final ebusy:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ebusy
```


```haxe
final ecanceled:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ecanceled
```


```haxe
final ecaseclash:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ecaseclash
```


```haxe
final echild:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.echild
```


```haxe
final echrng:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.echrng
```


```haxe
final ecomm:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ecomm
```


```haxe
final econnaborted:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.econnaborted
```


```haxe
final econnrefused:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.econnrefused
```


```haxe
final econnreset:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.econnreset
```


```haxe
final edeadlk:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edeadlk
```


```haxe
final edeadlock:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edeadlock
```


```haxe
final edestaddrreq:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edestaddrreq
```


```haxe
final edom:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edom
```


```haxe
final edotdot:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edotdot
```


```haxe
final edquot:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.edquot
```


```haxe
final eexist:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eexist
```


```haxe
final efault:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.efault
```


```haxe
final efbig:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.efbig
```


```haxe
final eftype:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eftype
```


```haxe
final ehostdown:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ehostdown
```


```haxe
final ehostunreach:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ehostunreach
```


```haxe
final eidrm:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eidrm
```


```haxe
final eilseq:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eilseq
```


```haxe
final einprogress:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.einprogress
```


```haxe
final eintr:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eintr
```


```haxe
final einval:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.einval
```


```haxe
final eio:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eio
```


```haxe
final eisconn:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eisconn
```


```haxe
final eisdir:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eisdir
```


```haxe
final el2hlt:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.el2hlt
```


```haxe
final el2nsync:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.el2nsync
```


```haxe
final el3hlt:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.el3hlt
```


```haxe
final el3rst:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.el3rst
```


```haxe
final elbin:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elbin
```


```haxe
final elibacc:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elibacc
```


```haxe
final elibbad:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elibbad
```


```haxe
final elibexec:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elibexec
```


```haxe
final elibmax:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elibmax
```


```haxe
final elibscn:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elibscn
```


```haxe
final elnrng:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.elnrng
```


```haxe
final eloop:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eloop
```


```haxe
final emfile:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.emfile
```


```haxe
final emlink:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.emlink
```


```haxe
final emsgsize:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.emsgsize
```


```haxe
final emultihop:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.emultihop
```


```haxe
final enametoolong:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enametoolong
```


```haxe
final enetdown:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enetdown
```


```haxe
final enetreset:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enetreset
```


```haxe
final enetunreach:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enetunreach
```


```haxe
final enfile:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enfile
```


```haxe
final enmfile:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enmfile
```


```haxe
final enoano:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enoano
```


```haxe
final enobufs:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enobufs
```


```haxe
final enocsi:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enocsi
```


```haxe
final enodata:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enodata
```


```haxe
final enodev:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enodev
```


```haxe
final enoent:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enoent
```


```haxe
final enoexec:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enoexec
```


```haxe
final enolck:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enolck
```


```haxe
final enolink:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enolink
```


```haxe
final enomedium:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enomedium
```


```haxe
final enomem:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enomem
```


```haxe
final enomsg:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enomsg
```


```haxe
final enonet:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enonet
```


```haxe
final enopkg:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enopkg
```


```haxe
final enoprotoopt:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enoprotoopt
```


```haxe
final enoshare:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enoshare
```


```haxe
final enospc:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enospc
```


```haxe
final enosr:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enosr
```


```haxe
final enostr:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enostr
```


```haxe
final enosys:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enosys
```


```haxe
final enotconn:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotconn
```


```haxe
final enotdir:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotdir
```


```haxe
final enotempty:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotempty
```


```haxe
final enotsock:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotsock
```


```haxe
final enotsup:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotsup
```


```haxe
final enotty:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotty
```


```haxe
final enotuniq:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enotuniq
```


```haxe
final enxio:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.enxio
```


```haxe
final eopnotsupp:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eopnotsupp
```


```haxe
final eoverflow:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eoverflow
```


```haxe
final eperm:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eperm
```


```haxe
final epfnosupport:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.epfnosupport
```


```haxe
final epipe:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.epipe
```


```haxe
final eproclim:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eproclim
```


```haxe
final eproto:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eproto
```


```haxe
final eprotonosupport:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eprotonosupport
```


```haxe
final eprototype:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eprototype
```


```haxe
final erange:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.erange
```


```haxe
final eremchg:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eremchg
```


```haxe
final eremote:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eremote
```


```haxe
final erofs:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.erofs
```


```haxe
final eshutdown:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eshutdown
```


```haxe
final esocktnosupport:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.esocktnosupport
```


```haxe
final espipe:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.espipe
```


```haxe
final esrch:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.esrch
```


```haxe
final esrmnt:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.esrmnt
```


```haxe
final estale:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.estale
```


```haxe
final etime:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.etime
```


```haxe
final etimedout:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.etimedout
```


```haxe
final etoomanyrefs:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.etoomanyrefs
```


```haxe
final eunatch:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eunatch
```


```haxe
final eusers:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.eusers
```


```haxe
final ewouldblock:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.ewouldblock
```


```haxe
final exdev:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.exdev
```


```haxe
final exfull:stdgo._internal.syscall.Errno = stdgo._internal.syscall.Syscall.exfull
```


```haxe
final f_CNVT:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_CNVT
```


```haxe
final f_DUPFD:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_DUPFD
```


```haxe
final f_DUPFD_CLOEXEC:Null<Any> = stdgo._internal.syscall.Syscall.f_DUPFD_CLOEXEC
```


```haxe
final f_GETFD:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETFD
```


```haxe
final f_GETFL:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETFL
```


```haxe
final f_GETLK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETLK
```


```haxe
final f_GETOWN:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETOWN
```


```haxe
final f_RDLCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RDLCK
```


```haxe
final f_RGETLK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RGETLK
```


```haxe
final f_RSETLK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RSETLK
```


```haxe
final f_RSETLKW:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RSETLKW
```


```haxe
final f_SETFD:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETFD
```


```haxe
final f_SETFL:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETFL
```


```haxe
final f_SETLK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETLK
```


```haxe
final f_SETLKW:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETLKW
```


```haxe
final f_SETOWN:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETOWN
```


```haxe
final f_UNLCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_UNLCK
```


```haxe
final f_UNLKSYS:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_UNLKSYS
```


```haxe
final f_WRLCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.f_WRLCK
```


```haxe
final implementsGetwd:Bool = stdgo._internal.syscall.Syscall.implementsGetwd
```


```haxe
final ipproto_IP:haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IP
```


```haxe
final ipproto_IPV4:haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IPV4
```


```haxe
final ipproto_IPV6:haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IPV6
```


```haxe
final ipproto_TCP:haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_TCP
```


```haxe
final ipproto_UDP:haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_UDP
```


```haxe
final ipv6_V6ONLY:Null<Any> = stdgo._internal.syscall.Syscall.ipv6_V6ONLY
```


```haxe
final o_APPEND:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_APPEND
```


```haxe
final o_CLOEXEC:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CLOEXEC
```


```haxe
final o_CREAT:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CREAT
```


```haxe
final o_CREATE:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CREATE
```


```haxe
final o_EXCL:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_EXCL
```


```haxe
final o_RDONLY:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_RDONLY
```


```haxe
final o_RDWR:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_RDWR
```


```haxe
final o_SYNC:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_SYNC
```


```haxe
final o_TRUNC:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_TRUNC
```


```haxe
final o_WRONLY:haxe.UInt64 = stdgo._internal.syscall.Syscall.o_WRONLY
```


```haxe
final pathMax:haxe.UInt64 = stdgo._internal.syscall.Syscall.pathMax
```


```haxe
final s_IEXEC:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IEXEC
```


```haxe
final s_IFBLK:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFBLK
```


```haxe
final s_IFBOUNDSOCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFBOUNDSOCK
```


```haxe
final s_IFCHR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFCHR
```


```haxe
final s_IFCOND:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFCOND
```


```haxe
final s_IFDIR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFDIR
```


```haxe
final s_IFDSOCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFDSOCK
```


```haxe
final s_IFIFO:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFIFO
```


```haxe
final s_IFLNK:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFLNK
```


```haxe
final s_IFMT:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFMT
```


```haxe
final s_IFMUTEX:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFMUTEX
```


```haxe
final s_IFREG:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFREG
```


```haxe
final s_IFSEMA:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSEMA
```


```haxe
final s_IFSHM:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSHM
```


```haxe
final s_IFSHM_SYSV:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSHM_SYSV
```


```haxe
final s_IFSOCK:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSOCK
```


```haxe
final s_IFSOCKADDR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSOCKADDR
```


```haxe
final s_IREAD:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IREAD
```


```haxe
final s_IRGRP:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRGRP
```


```haxe
final s_IROTH:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IROTH
```


```haxe
final s_IRUSR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRUSR
```


```haxe
final s_IRWXG:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXG
```


```haxe
final s_IRWXO:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXO
```


```haxe
final s_IRWXU:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXU
```


```haxe
final s_ISGID:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISGID
```


```haxe
final s_ISUID:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISUID
```


```haxe
final s_ISVTX:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISVTX
```


```haxe
final s_IWGRP:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWGRP
```


```haxe
final s_IWOTH:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWOTH
```


```haxe
final s_IWRITE:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWRITE
```


```haxe
final s_IWUSR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWUSR
```


```haxe
final s_IXGRP:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXGRP
```


```haxe
final s_IXOTH:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXOTH
```


```haxe
final s_IXUSR:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXUSR
```


```haxe
final s_UNSUP:haxe.UInt64 = stdgo._internal.syscall.Syscall.s_UNSUP
```


```haxe
final sigchld:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigchld
```


```haxe
final sigint:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigint
```


```haxe
final sigkill:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigkill
```


```haxe
final sigquit:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigquit
```


```haxe
final sigterm:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigterm
```


```haxe
final sigtrap:stdgo._internal.syscall.Signal = stdgo._internal.syscall.Syscall.sigtrap
```


```haxe
final so_ERROR:Null<Any> = stdgo._internal.syscall.Syscall.so_ERROR
```


```haxe
final sock_DGRAM:Null<Any> = stdgo._internal.syscall.Syscall.sock_DGRAM
```


```haxe
final sock_RAW:Null<Any> = stdgo._internal.syscall.Syscall.sock_RAW
```


```haxe
final sock_SEQPACKET:Null<Any> = stdgo._internal.syscall.Syscall.sock_SEQPACKET
```


```haxe
final sock_STREAM:haxe.UInt64 = stdgo._internal.syscall.Syscall.sock_STREAM
```


```haxe
final somaxconn:Null<Any> = stdgo._internal.syscall.Syscall.somaxconn
```


```haxe
final stderr:haxe.UInt64 = stdgo._internal.syscall.Syscall.stderr
```


```haxe
final stdin:haxe.UInt64 = stdgo._internal.syscall.Syscall.stdin
```


```haxe
final stdout:haxe.UInt64 = stdgo._internal.syscall.Syscall.stdout
```


```haxe
final sys_FCNTL:haxe.UInt64 = stdgo._internal.syscall.Syscall.sys_FCNTL
```


# Variables


```haxe
import stdgo.syscall.Syscall
```


```haxe
var forkLock:stdgo._internal.sync.RWMutex
```


# Functions


```haxe
import stdgo.syscall.Syscall
```


## function accept


```haxe
function accept(fd:Int):stdgo.Tuple3<Int, stdgo.syscall.Sockaddr, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L313>)


## function bind


```haxe
function bind(fd:Int, sa:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L310>)


## function bytePtrFromString


```haxe
function bytePtrFromString(s:String):stdgo.Tuple<stdgo.Pointer<Int>, stdgo.Error>
```



BytePtrFromString returns a pointer to a NUL\-terminated array of
bytes containing the text of s. If s contains a NUL byte at any
location, it returns \(nil, EINVAL\).  

[\(view code\)](<./Syscall.hx#L352>)


## function byteSliceFromString


```haxe
function byteSliceFromString(s:String):stdgo.Tuple<Array<Int>, stdgo.Error>
```



ByteSliceFromString returns a NUL\-terminated slice of bytes
containing the text of s. If s contains a NUL byte at any
location, it returns \(nil, EINVAL\).  

[\(view code\)](<./Syscall.hx#L338>)


## function chdir


```haxe
function chdir(path:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L295>)


## function chmod


```haxe
function chmod(path:String, mode:UInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L285>)


## function chown


```haxe
function chown(path:String, uid:Int, gid:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L287>)


## function clearenv


```haxe
function clearenv():Void
```


[\(view code\)](<./Syscall.hx#L273>)


## function close


```haxe
function close(fd:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L276>)


## function closeOnExec


```haxe
function closeOnExec(fd:Int):Void
```


[\(view code\)](<./Syscall.hx#L277>)


## function connect


```haxe
function connect(fd:Int, sa:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L314>)


## function dup


```haxe
function dup(fd:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L306>)


## function dup2


```haxe
function dup2(fd:Int, newfd:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L307>)


## function environ


```haxe
function environ():Array<String>
```


[\(view code\)](<./Syscall.hx#L274>)


## function exit


```haxe
function exit(code:Int):Void
```


[\(view code\)](<./Syscall.hx#L354>)


## function fchdir


```haxe
function fchdir(fd:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L296>)


## function fchmod


```haxe
function fchmod(fd:Int, mode:UInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L286>)


## function fchown


```haxe
function fchown(fd:Int, uid:Int, gid:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L288>)


## function fstat


```haxe
function fstat(fd:Int, st:stdgo.syscall.Stat_t):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L282>)


## function fsync


```haxe
function fsync(fd:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L300>)


## function ftruncate


```haxe
function ftruncate(fd:Int, _length:haxe.Int64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L293>)


## function get\_forkLock


```haxe
function get_forkLock():stdgo._internal.sync.RWMutex
```


[\(view code\)](<./Syscall.hx#L118>)


## function getcwd


```haxe
function getcwd(buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L294>)


## function getegid


```haxe
function getegid():Int
```


[\(view code\)](<./Syscall.hx#L364>)


## function getenv


```haxe
function getenv(key:String):stdgo.Tuple<String, Bool>
```


[\(view code\)](<./Syscall.hx#L271>)


## function geteuid


```haxe
function geteuid():Int
```


[\(view code\)](<./Syscall.hx#L363>)


## function getgid


```haxe
function getgid():Int
```


[\(view code\)](<./Syscall.hx#L362>)


## function getgroups


```haxe
function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L365>)


## function getpagesize


```haxe
function getpagesize():Int
```


[\(view code\)](<./Syscall.hx#L353>)


## function getpid


```haxe
function getpid():Int
```


[\(view code\)](<./Syscall.hx#L366>)


## function getppid


```haxe
function getppid():Int
```


[\(view code\)](<./Syscall.hx#L367>)


## function getsockoptInt


```haxe
function getsockoptInt(fd:Int, level:Int, opt:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L319>)


## function gettimeofday


```haxe
function gettimeofday(tv:stdgo.syscall.Timeval):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L369>)


## function getuid


```haxe
function getuid():Int
```


[\(view code\)](<./Syscall.hx#L361>)


## function getwd


```haxe
function getwd():stdgo.Tuple<String, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L360>)


## function kill


```haxe
function kill(pid:Int, signum:stdgo.syscall.Signal):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L370>)


## function lchown


```haxe
function lchown(path:String, uid:Int, gid:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L289>)


## function link


```haxe
function link(path:String, link:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L298>)


## function listen


```haxe
function listen(fd:Int, backlog:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L312>)


## function lstat


```haxe
function lstat(path:String, st:stdgo.syscall.Stat_t):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L281>)


## function mkdir


```haxe
function mkdir(path:String, perm:UInt):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L278>)


## function nsecToTimespec


```haxe
function nsecToTimespec(nsec:haxe.Int64):stdgo.syscall.Timespec
```



NsecToTimespec converts a number of nanoseconds into a Timespec.  

[\(view code\)](<./Syscall.hx#L381>)


## function nsecToTimeval


```haxe
function nsecToTimeval(nsec:haxe.Int64):stdgo.syscall.Timeval
```



NsecToTimeval converts a number of nanoseconds into a Timeval.  

[\(view code\)](<./Syscall.hx#L389>)


## function open


```haxe
function open(path:String, openmode:Int, perm:UInt):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L275>)


## function parseDirent


```haxe
function parseDirent(buf:Array<Int>, max:Int, names:Array<String>):stdgo.Tuple3<Int, Int, Array<String>>
```



ParseDirent parses up to max directory entries in buf,
appending the names to names. It returns the number of
bytes consumed from buf, the number of entries added
to names, and the new names slice.  

[\(view code\)](<./Syscall.hx#L269>)


## function pipe


```haxe
function pipe(fd:Array<Int>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L308>)


## function pread


```haxe
function pread(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L303>)


## function pwrite


```haxe
function pwrite(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L304>)


## function rawSyscall


```haxe
function rawSyscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>
```


[\(view code\)](<./Syscall.hx#L357>)


## function rawSyscall6


```haxe
function rawSyscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>
```


[\(view code\)](<./Syscall.hx#L358>)


## function read


```haxe
function read(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L301>)


## function readDirent


```haxe
function readDirent(fd:Int, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L279>)


## function readlink


```haxe
function readlink(path:String, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L297>)


## function recvfrom


```haxe
function recvfrom(fd:Int, p:Array<Int>, flags:Int):stdgo.Tuple3<Int, stdgo.syscall.Sockaddr, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L315>)


## function recvmsg


```haxe
function recvmsg(fd:Int, p:Array<Int>, oob:Array<Int>, flags:Int):stdgo.Tuple5<Int, Int, Int, stdgo.syscall.Sockaddr, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L317>)


## function rename


```haxe
function rename(from:String, to:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L291>)


## function rmdir


```haxe
function rmdir(path:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L284>)


## function seek


```haxe
function seek(fd:Int, offset:haxe.Int64, whence:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L305>)


## function sendfile


```haxe
function sendfile(outfd:Int, infd:Int, offset:stdgo.Pointer<haxe.Int64>, count:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L371>)


## function sendmsgN


```haxe
function sendmsgN(fd:Int, p:Array<Int>, oob:Array<Int>, to:stdgo.syscall.Sockaddr, flags:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L318>)


## function sendto


```haxe
function sendto(fd:Int, p:Array<Int>, flags:Int, to:stdgo.syscall.Sockaddr):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L316>)


## function setNonblock


```haxe
function setNonblock(fd:Int, nonblocking:Bool):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L324>)


## function setReadDeadline


```haxe
function setReadDeadline(fd:Int, t:haxe.Int64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L321>)


## function setWriteDeadline


```haxe
function setWriteDeadline(fd:Int, t:haxe.Int64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L322>)


## function set\_forkLock


```haxe
function set_forkLock(v:stdgo._internal.sync.RWMutex):stdgo._internal.sync.RWMutex
```


[\(view code\)](<./Syscall.hx#L119>)


## function setenv


```haxe
function setenv(key:String, value:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L272>)


## function setsockoptInt


```haxe
function setsockoptInt(fd:Int, level:Int, opt:Int, value:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L320>)


## function shutdown


```haxe
function shutdown(fd:Int, how:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L323>)


## function socket


```haxe
function socket(proto:Int, sotype:Int, unused:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L309>)


## function startProcess


```haxe
function startProcess(argv0:String, argv:Array<String>, attr:stdgo.syscall.ProcAttr):stdgo.Tuple3<Int, stdgo.GoUIntptr, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L372>)


## function stat


```haxe
function stat(path:String, st:stdgo.syscall.Stat_t):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L280>)


## function stopIO


```haxe
function stopIO(fd:Int):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L311>)


## function stringBytePtr


```haxe
function stringBytePtr(s:String):stdgo.Pointer<Int>
```



StringBytePtr returns a pointer to a NUL\-terminated array of bytes.
If s contains a NUL byte this function panics instead of returning
an error.  


Deprecated: Use BytePtrFromString instead.  

[\(view code\)](<./Syscall.hx#L346>)


## function stringByteSlice


```haxe
function stringByteSlice(s:String):Array<Int>
```



StringByteSlice converts a string to a NUL\-terminated \[\]byte,
If s contains a NUL byte this function panics instead of
returning an error.  


Deprecated: Use ByteSliceFromString instead.  

[\(view code\)](<./Syscall.hx#L332>)


## function symlink


```haxe
function symlink(path:String, link:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L299>)


## function syscall


```haxe
function syscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>
```


[\(view code\)](<./Syscall.hx#L355>)


## function syscall6


```haxe
function syscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.syscall.Errno>
```


[\(view code\)](<./Syscall.hx#L356>)


## function sysctl


```haxe
function sysctl(key:String):stdgo.Tuple<String, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L359>)


## function timespecToNsec


```haxe
function timespecToNsec(ts:stdgo.syscall.Timespec):haxe.Int64
```



TimespecToNsec returns the time stored in ts as nanoseconds.  

[\(view code\)](<./Syscall.hx#L377>)


## function timevalToNsec


```haxe
function timevalToNsec(tv:stdgo.syscall.Timeval):haxe.Int64
```



TimevalToNsec returns the time stored in tv as nanoseconds.  

[\(view code\)](<./Syscall.hx#L385>)


## function truncate


```haxe
function truncate(path:String, _length:haxe.Int64):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L292>)


## function umask


```haxe
function umask(mask:Int):Int
```


[\(view code\)](<./Syscall.hx#L368>)


## function unlink


```haxe
function unlink(path:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L283>)


## function unsetenv


```haxe
function unsetenv(key:String):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L270>)


## function utimesNano


```haxe
function utimesNano(path:String, ts:Array<stdgo.syscall.Timespec>):stdgo.Error
```


[\(view code\)](<./Syscall.hx#L290>)


## function wait4


```haxe
function wait4(pid:Int, wstatus:stdgo.Pointer<stdgo.syscall.WaitStatus>, options:Int, rusage:stdgo.syscall.Rusage):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L373>)


## function write


```haxe
function write(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Syscall.hx#L302>)


# Typedefs


```haxe
import stdgo.syscall.*
```


## typedef Conn


```haxe
typedef Conn = stdgo._internal.syscall.Conn;
```


## typedef Conn\_static\_extension


```haxe
typedef Conn_static_extension = Dynamic;
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


## typedef RawConn\_static\_extension


```haxe
typedef RawConn_static_extension = Dynamic;
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


