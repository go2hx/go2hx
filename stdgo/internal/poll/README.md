# Module: `stdgo.internal.poll`

[(view library index)](../../stdgo.md)


# Overview



Package poll supports non\-blocking I/O on file descriptors with polling.
This supports I/O operations that block only a goroutine, not a thread.
This is used by the net and os packages.
It uses a poller built into the runtime, with support from the
runtime scheduler.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-_accept>)

- [`function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void`](<#function-_consume>)

- [`function _dupCloseOnExecOld(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}`](<#function-_dupcloseonexecold>)

- [`function _errClosing(_isFile:Bool):stdgo.Error`](<#function-_errclosing>)

- [`function _ignoringEINTR(_fn:():stdgo.Error):stdgo.Error`](<#function-_ignoringeintr>)

- [`function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-_ignoringeintrio>)

- [`function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semacquire>)

- [`function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semrelease>)

- [`function _setDeadlineImpl(_fd:stdgo.Ref<stdgo.internal.poll.FD>, _t:stdgo.time.Time, _mode:stdgo.GoInt):stdgo.Error`](<#function-_setdeadlineimpl>)

- [`function acceptFunc()`](<#function-acceptfunc>)

- [`function closeFunc()`](<#function-closefunc>)

- [`function dupCloseOnExec(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}`](<#function-dupcloseonexec>)

- [`function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool`](<#function-ispolldescriptor>)

- [`function testHookDidWritev()`](<#function-testhookdidwritev>)

- [class DeadlineExceededError](<#class-deadlineexceedederror>)

  - [`function new():Void`](<#deadlineexceedederror-function-new>)

  - [`function error():stdgo.GoString`](<#deadlineexceedederror-function-error>)

  - [`function temporary():Bool`](<#deadlineexceedederror-function-temporary>)

  - [`function timeout():Bool`](<#deadlineexceedederror-function-timeout>)

- [class FD](<#class-fd>)

  - [`function _init():Void`](<#fd-function-_init>)

  - [`function new(?_fdmu:stdgo.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo.internal.poll.SysFile, ?_pd:stdgo.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void`](<#fd-function-new>)

  - [`function _decref():stdgo.Error`](<#fd-function-_decref>)

  - [`function _destroy():stdgo.Error`](<#fd-function-_destroy>)

  - [`function _eofError( _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error`](<#fd-function-_eoferror>)

  - [`function _incref():stdgo.Error`](<#fd-function-_incref>)

  - [`function _init():Void`](<#fd-function-_init>)

  - [`function _readLock():stdgo.Error`](<#fd-function-_readlock>)

  - [`function _readUnlock():Void`](<#fd-function-_readunlock>)

  - [`function _writeLock():stdgo.Error`](<#fd-function-_writelock>)

  - [`function _writeUnlock():Void`](<#fd-function-_writeunlock>)

  - [`function accept():{ _3:stdgo.Error; _2:stdgo.GoString; _1:stdgo.syscall.Sockaddr; _0:stdgo.GoInt;}`](<#fd-function-accept>)

  - [`function close():stdgo.Error`](<#fd-function-close>)

  - [`function dup():{ _2:stdgo.Error; _1:stdgo.GoString; _0:stdgo.GoInt;}`](<#fd-function-dup>)

  - [`function fchdir():stdgo.Error`](<#fd-function-fchdir>)

  - [`function fchmod( _mode:stdgo.GoUInt32):stdgo.Error`](<#fd-function-fchmod>)

  - [`function fchown( _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#fd-function-fchown>)

  - [`function fstat( _s:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error`](<#fd-function-fstat>)

  - [`function fsync():stdgo.Error`](<#fd-function-fsync>)

  - [`function ftruncate( _size:stdgo.GoInt64):stdgo.Error`](<#fd-function-ftruncate>)

  - [`function init( _net:stdgo.GoString, _pollable:Bool):stdgo.Error`](<#fd-function-init>)

  - [`function pread( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-pread>)

  - [`function pwrite( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-pwrite>)

  - [`function rawControl( _f:()):stdgo.Error`](<#fd-function-rawcontrol>)

  - [`function rawRead( _f:()):stdgo.Error`](<#fd-function-rawread>)

  - [`function rawWrite( _f:()):stdgo.Error`](<#fd-function-rawwrite>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-read>)

  - [`function readDirent( _buf:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-readdirent>)

  - [`function readFrom( _p:stdgo.Slice<stdgo.GoByte>):{ _2:stdgo.Error; _1:stdgo.syscall.Sockaddr; _0:stdgo.GoInt;}`](<#fd-function-readfrom>)

  - [`function readFromInet4( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-readfrominet4>)

  - [`function readFromInet6( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-readfrominet6>)

  - [`function readMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ _4:stdgo.Error; _3:stdgo.syscall.Sockaddr; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsg>)

  - [`function readMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{ _3:stdgo.Error; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsginet4>)

  - [`function readMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{ _3:stdgo.Error; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsginet6>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#fd-function-seek>)

  - [`function setBlocking():stdgo.Error`](<#fd-function-setblocking>)

  - [`function setDeadline( _t:stdgo.time.Time):stdgo.Error`](<#fd-function-setdeadline>)

  - [`function setReadDeadline( _t:stdgo.time.Time):stdgo.Error`](<#fd-function-setreaddeadline>)

  - [`function setWriteDeadline( _t:stdgo.time.Time):stdgo.Error`](<#fd-function-setwritedeadline>)

  - [`function shutdown( _how:stdgo.GoInt):stdgo.Error`](<#fd-function-shutdown>)

  - [`function waitWrite():stdgo.Error`](<#fd-function-waitwrite>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-write>)

  - [`function writeMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.syscall.Sockaddr):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsg>)

  - [`function writeMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsginet4>)

  - [`function writeMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsginet6>)

  - [`function writeOnce( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writeonce>)

  - [`function writeTo( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.syscall.Sockaddr):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writeto>)

  - [`function writeToInet4( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writetoinet4>)

  - [`function writeToInet6( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writetoinet6>)

- [class SysFile](<#class-sysfile>)

  - [`function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo.syscall.Iovec>>):Void`](<#sysfile-function-new>)

  - [`function _destroy( _fd:stdgo.GoInt):stdgo.Error`](<#sysfile-function-_destroy>)

  - [`function _init():Void`](<#sysfile-function-_init>)

# Constants


```haxe
import stdgo.internal.poll.Poll
```


```haxe
final _maxRW:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



Darwin and FreeBSD can't read or write 2GB\+ files at a time,
even on 64\-bit systems.
The same is true of socket implementations on many systems.
See golang.org/issue/7812 and golang.org/issue/16266.
Use 1GB instead of, say, 2GB\-1, to keep subsequent reads aligned.  

```haxe
final _mutexClosed:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexRLock:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexRMask:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexRWait:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexRef:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexRefMask:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexWLock:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexWMask:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _mutexWWait:stdgo.GoUInt64 = ((0 : stdgo.StdGoTypes.GoUInt64))
```



fdMutex.state is organized as follows:
1 bit \- whether FD is closed, if set all subsequent lock operations will fail.
1 bit \- lock for read operations.
1 bit \- lock for write operations.
20 bits \- total number of references \(read\+write\+misc\).
20 bits \- number of outstanding read waiters.
20 bits \- number of outstanding write waiters.  

```haxe
final _overflowMsg:stdgo.GoString = (("" : stdgo.GoString))
```


# Variables


```haxe
import stdgo.internal.poll.Poll
```


```haxe
var _dupCloexecUnsupported:stdgo.sync.atomic.Bool_
```



dupCloexecUnsupported indicates whether F\_DUPFD\_CLOEXEC is supported by the kernel.  

```haxe
var errDeadlineExceeded:stdgo.Error
```



ErrDeadlineExceeded is returned for an expired deadline.
This is exported by the os package as os.ErrDeadlineExceeded.  

```haxe
var errFileClosing:stdgo.Error
```



ErrFileClosing is returned when a file descriptor is used after it
has been closed.  

```haxe
var errNetClosing:stdgo.internal.poll.T_errNetClosing
```



ErrNetClosing is returned when a network descriptor is used after
it has been closed.  

```haxe
var errNoDeadline:stdgo.Error
```



ErrNoDeadline is returned when a request is made to set a deadline
on a file type that does not use the poller.  

```haxe
var errNotPollable:stdgo.Error
```



ErrNotPollable is returned when the file or socket is not suitable
for event notification.  

# Functions


```haxe
import stdgo.internal.poll.Poll
```


## function \_accept


```haxe
function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```



Wrapper around the accept system call that marks the returned file
descriptor as nonblocking and close\-on\-exec.  

[\(view code\)](<./Poll.hx#L384>)


## function \_consume


```haxe
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void
```



consume removes data from a slice of byte slices, for writev.  

[\(view code\)](<./Poll.hx#L345>)


## function \_dupCloseOnExecOld


```haxe
function _dupCloseOnExecOld(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```



dupCloseOnExecOld is the traditional way to dup an fd and
set its O\_CLOEXEC bit, using two system calls.  

[\(view code\)](<./Poll.hx#L379>)


## function \_errClosing


```haxe
function _errClosing(_isFile:Bool):stdgo.Error
```



Return the appropriate closing error based on isFile.  

[\(view code\)](<./Poll.hx#L341>)


## function \_ignoringEINTR


```haxe
function _ignoringEINTR(_fn:():stdgo.Error):stdgo.Error
```



ignoringEINTR makes a function call and repeats it if it returns
an EINTR error. This appears to be required even though we install all
signal handlers with SA\_RESTART: see \#22838, \#38033, \#38836, \#40846.
Also \#20400 and \#36644 are issues in which a signal handler is
installed without setting SA\_RESTART. None of these are the common case,
but there are enough of them that it seems that we can't avoid
an EINTR loop.  

[\(view code\)](<./Poll.hx#L366>)


## function \_ignoringEINTRIO


```haxe
function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ignoringEINTRIO is like ignoringEINTR, but just for IO calls.  

[\(view code\)](<./Poll.hx#L374>)


## function \_runtime\_Semacquire


```haxe
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```



Implemented in runtime package.  

[\(view code\)](<./Poll.hx#L349>)


## function \_runtime\_Semrelease


```haxe
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll.hx#L350>)


## function \_setDeadlineImpl


```haxe
function _setDeadlineImpl(_fd:stdgo.Ref<stdgo.internal.poll.FD>, _t:stdgo.time.Time, _mode:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L351>)


## function acceptFunc


```haxe
function acceptFunc()
```



AcceptFunc is used to hook the accept call.  

[\(view code\)](<./Poll.hx#L62>)


## function closeFunc


```haxe
function closeFunc()
```



CloseFunc is used to hook the close call.  

[\(view code\)](<./Poll.hx#L56>)


## function dupCloseOnExec


```haxe
function dupCloseOnExec(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```



DupCloseOnExec dups fd and marks it close\-on\-exec.  

[\(view code\)](<./Poll.hx#L370>)


## function isPollDescriptor


```haxe
function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool
```



IsPollDescriptor reports whether fd is the descriptor being used by the poller.
This is only used for testing.  

[\(view code\)](<./Poll.hx#L356>)


## function testHookDidWritev


```haxe
function testHookDidWritev()
```



TestHookDidWritev is a hook for testing writev.  

[\(view code\)](<./Poll.hx#L50>)


# Classes


```haxe
import stdgo.internal.poll.*
```


## class DeadlineExceededError



DeadlineExceededError is returned for an expired deadline.  

### DeadlineExceededError function new


```haxe
function new():Void
```


[\(view code\)](<./Poll.hx#L212>)


### DeadlineExceededError function error


```haxe
function error():stdgo.GoString
```



Implement the net.Error interface.
The string is "i/o timeout" because that is what was returned
by earlier Go versions. Changing it may break programs that
match on error strings.  

[\(view code\)](<./Poll.hx#L453>)


### DeadlineExceededError function temporary


```haxe
function temporary():Bool
```


[\(view code\)](<./Poll.hx#L443>)


### DeadlineExceededError function timeout


```haxe
function timeout():Bool
```


[\(view code\)](<./Poll.hx#L445>)


## class FD



FD is a file descriptor. The net and os packages use this type as a
field of a larger type representing a network connection or OS file.  

```haxe
var _csema:stdgo.GoUInt32
```



Semaphore signaled when file is closed.  

```haxe
var _fdmu:stdgo.internal.poll.T_fdMutex
```



Lock sysfd and serialize access to Read and Write methods.  

```haxe
var _isBlocking:stdgo.GoUInt32
```



Non\-zero if this file has been set to blocking mode.  

```haxe
var _isFile:Bool
```



Whether this is a file rather than a network socket.  

```haxe
var _pd:stdgo.internal.poll.T_pollDesc
```



I/O poller.  

```haxe
var isStream:Bool
```



Whether this is a streaming descriptor, as opposed to a
packet\-based descriptor like a UDP socket. Immutable.  

```haxe
var sysFile:stdgo.internal.poll.SysFile
```



Platform dependent state of the file descriptor.  

```haxe
var sysfd:stdgo.GoInt
```



System file descriptor. Immutable until Close.  

```haxe
var zeroReadIsEOF:Bool
```



Whether a zero byte read indicates EOF. This is false for a
message based socket connection.  

### FD function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L315>)


### FD function new


```haxe
function new(?_fdmu:stdgo.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo.internal.poll.SysFile, ?_pd:stdgo.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void
```


[\(view code\)](<./Poll.hx#L302>)


### FD function \_decref


```haxe
function _decref():stdgo.Error
```



decref removes a reference from fd.
It also closes fd when the state of fd is set to closed and there
is no remaining reference.  

[\(view code\)](<./Poll.hx#L1079>)


### FD function \_destroy


```haxe
function _destroy():stdgo.Error
```



Destroy closes the file descriptor. This is called when there are
no remaining references.  

[\(view code\)](<./Poll.hx#L995>)


### FD function \_eofError


```haxe
function _eofError( _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error
```



eofError returns io.EOF when fd is available for reading end of
file.  

[\(view code\)](<./Poll.hx#L1031>)


### FD function \_incref


```haxe
function _incref():stdgo.Error
```



incref adds a reference to fd.
It returns an error when fd cannot be used.  

[\(view code\)](<./Poll.hx#L1085>)


### FD function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L1092>)


### FD function \_readLock


```haxe
function _readLock():stdgo.Error
```



readLock adds a reference to fd and locks fd for reading.
It returns an error when fd cannot be used for reading.  

[\(view code\)](<./Poll.hx#L1072>)


### FD function \_readUnlock


```haxe
function _readUnlock():Void
```



readUnlock removes a reference from fd and unlocks fd for reading.
It also closes fd when the state of fd is set to closed and there
is no remaining reference.  

[\(view code\)](<./Poll.hx#L1066>)


### FD function \_writeLock


```haxe
function _writeLock():stdgo.Error
```



writeLock adds a reference to fd and locks fd for writing.
It returns an error when fd cannot be used for writing.  

[\(view code\)](<./Poll.hx#L1059>)


### FD function \_writeUnlock


```haxe
function _writeUnlock():Void
```



writeUnlock removes a reference from fd and unlocks fd for writing.
It also closes fd when the state of fd is set to closed and there
is no remaining reference.  

[\(view code\)](<./Poll.hx#L1053>)


### FD function accept


```haxe
function accept():{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```



Accept wraps the accept network call.  

[\(view code\)](<./Poll.hx#L898>)


### FD function close


```haxe
function close():stdgo.Error
```



Close closes the FD. The underlying file descriptor is closed by the
destroy method when there are no remaining references.  

[\(view code\)](<./Poll.hx#L989>)


### FD function dup


```haxe
function dup():{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```



Dup duplicates the file descriptor.  

[\(view code\)](<./Poll.hx#L883>)


### FD function fchdir


```haxe
function fchdir():stdgo.Error
```



Fchdir wraps syscall.Fchdir.  

[\(view code\)](<./Poll.hx#L858>)


### FD function fchmod


```haxe
function fchmod( _mode:stdgo.GoUInt32):stdgo.Error
```



Fchmod wraps syscall.Fchmod.  

[\(view code\)](<./Poll.hx#L893>)


### FD function fchown


```haxe
function fchown( _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```



Fchown wraps syscall.Fchown.  

[\(view code\)](<./Poll.hx#L1020>)


### FD function fstat


```haxe
function fstat( _s:stdgo.Ref<stdgo.syscall.Stat_t>):stdgo.Error
```



Fstat wraps syscall.Fstat  

[\(view code\)](<./Poll.hx#L888>)


### FD function fsync


```haxe
function fsync():stdgo.Error
```



Fsync wraps syscall.Fsync.  

[\(view code\)](<./Poll.hx#L1090>)


### FD function ftruncate


```haxe
function ftruncate( _size:stdgo.GoInt64):stdgo.Error
```



Ftruncate wraps syscall.Ftruncate.  

[\(view code\)](<./Poll.hx#L1015>)


### FD function init


```haxe
function init( _net:stdgo.GoString, _pollable:Bool):stdgo.Error
```



Init initializes the FD. The Sysfd field should already be set.
This can be called multiple times on a single FD.
The net argument is a network name from the net package \(e.g., "tcp"\),
or "file".
Set pollable to true if fd should be managed by runtime netpoll.  

[\(view code\)](<./Poll.hx#L1004>)


### FD function pread


```haxe
function pread( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Pread wraps the pread system call.  

[\(view code\)](<./Poll.hx#L973>)


### FD function pwrite


```haxe
function pwrite( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Pwrite wraps the pwrite system call.  

[\(view code\)](<./Poll.hx#L933>)


### FD function rawControl


```haxe
function rawControl( _f:()):stdgo.Error
```



RawControl invokes the user\-defined function f for a non\-IO
operation.  

[\(view code\)](<./Poll.hx#L1010>)


### FD function rawRead


```haxe
function rawRead( _f:()):stdgo.Error
```



RawRead invokes the user\-defined function f for a read operation.  

[\(view code\)](<./Poll.hx#L868>)


### FD function rawWrite


```haxe
function rawWrite( _f:()):stdgo.Error
```



RawWrite invokes the user\-defined function f for a write operation.  

[\(view code\)](<./Poll.hx#L863>)


### FD function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read implements io.Reader.  

[\(view code\)](<./Poll.hx#L978>)


### FD function readDirent


```haxe
function readDirent( _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadDirent wraps syscall.ReadDirent.
We treat this like an ordinary system call rather than a call
that tries to fill the buffer.  

[\(view code\)](<./Poll.hx#L853>)


### FD function readFrom


```haxe
function readFrom( _p:stdgo.Slice<stdgo.GoByte>):{
	_2:stdgo.Error;
	_1:stdgo.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```



ReadFrom wraps the recvfrom network call.  

[\(view code\)](<./Poll.hx#L968>)


### FD function readFromInet4


```haxe
function readFromInet4( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadFromInet4 wraps the recvfrom network call for IPv4.  

[\(view code\)](<./Poll.hx#L963>)


### FD function readFromInet6


```haxe
function readFromInet6( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadFromInet6 wraps the recvfrom network call for IPv6.  

[\(view code\)](<./Poll.hx#L958>)


### FD function readMsg


```haxe
function readMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo.syscall.Sockaddr;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



ReadMsg wraps the recvmsg network call.  

[\(view code\)](<./Poll.hx#L953>)


### FD function readMsgInet4


```haxe
function readMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



ReadMsgInet4 is ReadMsg, but specialized for syscall.SockaddrInet4.  

[\(view code\)](<./Poll.hx#L948>)


### FD function readMsgInet6


```haxe
function readMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



ReadMsgInet6 is ReadMsg, but specialized for syscall.SockaddrInet6.  

[\(view code\)](<./Poll.hx#L943>)


### FD function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



Seek wraps syscall.Seek.  

[\(view code\)](<./Poll.hx#L846>)


### FD function setBlocking


```haxe
function setBlocking():stdgo.Error
```



SetBlocking puts the file into blocking mode.  

[\(view code\)](<./Poll.hx#L983>)


### FD function setDeadline


```haxe
function setDeadline( _t:stdgo.time.Time):stdgo.Error
```



SetDeadline sets the read and write deadlines associated with fd.  

[\(view code\)](<./Poll.hx#L1046>)


### FD function setReadDeadline


```haxe
function setReadDeadline( _t:stdgo.time.Time):stdgo.Error
```



SetReadDeadline sets the read deadline associated with fd.  

[\(view code\)](<./Poll.hx#L1041>)


### FD function setWriteDeadline


```haxe
function setWriteDeadline( _t:stdgo.time.Time):stdgo.Error
```



SetWriteDeadline sets the write deadline associated with fd.  

[\(view code\)](<./Poll.hx#L1036>)


### FD function shutdown


```haxe
function shutdown( _how:stdgo.GoInt):stdgo.Error
```



Shutdown wraps syscall.Shutdown.  

[\(view code\)](<./Poll.hx#L1025>)


### FD function waitWrite


```haxe
function waitWrite():stdgo.Error
```



WaitWrite waits until data can be read from fd.  

[\(view code\)](<./Poll.hx#L878>)


### FD function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Write implements io.Writer.  

[\(view code\)](<./Poll.hx#L938>)


### FD function writeMsg


```haxe
function writeMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.syscall.Sockaddr):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



WriteMsg wraps the sendmsg network call.  

[\(view code\)](<./Poll.hx#L913>)


### FD function writeMsgInet4


```haxe
function writeMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



WriteMsgInet4 is WriteMsg specialized for syscall.SockaddrInet4.  

[\(view code\)](<./Poll.hx#L908>)


### FD function writeMsgInet6


```haxe
function writeMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



WriteMsgInet6 is WriteMsg specialized for syscall.SockaddrInet6.  

[\(view code\)](<./Poll.hx#L903>)


### FD function writeOnce


```haxe
function writeOnce( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteOnce is for testing only. It makes a single write call.  

[\(view code\)](<./Poll.hx#L873>)


### FD function writeTo


```haxe
function writeTo( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.syscall.Sockaddr):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteTo wraps the sendto network call.  

[\(view code\)](<./Poll.hx#L918>)


### FD function writeToInet4


```haxe
function writeToInet4( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteToInet4 wraps the sendto network call for IPv4 addresses.  

[\(view code\)](<./Poll.hx#L928>)


### FD function writeToInet6


```haxe
function writeToInet6( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteToInet6 wraps the sendto network call for IPv6 addresses.  

[\(view code\)](<./Poll.hx#L923>)


## class SysFile


```haxe
var _iovecs:stdgo.Ref<stdgo.Slice<stdgo.syscall.Iovec>>
```



Writev cache.  

### SysFile function new


```haxe
function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo.syscall.Iovec>>):Void
```


[\(view code\)](<./Poll.hx#L330>)


### SysFile function \_destroy


```haxe
function _destroy( _fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L1109>)


### SysFile function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L1111>)


