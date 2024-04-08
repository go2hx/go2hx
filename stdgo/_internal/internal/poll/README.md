# Module: `stdgo._internal.internal.poll`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo._internal.syscall.Sockaddr;
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

- [`function _setDeadlineImpl(_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):stdgo.Error`](<#function-_setdeadlineimpl>)

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

  - [`function new(?_fdmu:stdgo._internal.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.SysFile, ?_pd:stdgo._internal.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void`](<#fd-function-new>)

  - [`function _decref():stdgo.Error`](<#fd-function-_decref>)

  - [`function _destroy():stdgo.Error`](<#fd-function-_destroy>)

  - [`function _eofError( _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error`](<#fd-function-_eoferror>)

  - [`function _incref():stdgo.Error`](<#fd-function-_incref>)

  - [`function _init():Void`](<#fd-function-_init>)

  - [`function _readLock():stdgo.Error`](<#fd-function-_readlock>)

  - [`function _readUnlock():Void`](<#fd-function-_readunlock>)

  - [`function _writeLock():stdgo.Error`](<#fd-function-_writelock>)

  - [`function _writeUnlock():Void`](<#fd-function-_writeunlock>)

  - [`function accept():{ _3:stdgo.Error; _2:stdgo.GoString; _1:stdgo._internal.syscall.Sockaddr; _0:stdgo.GoInt;}`](<#fd-function-accept>)

  - [`function close():stdgo.Error`](<#fd-function-close>)

  - [`function dup():{ _2:stdgo.Error; _1:stdgo.GoString; _0:stdgo.GoInt;}`](<#fd-function-dup>)

  - [`function fchdir():stdgo.Error`](<#fd-function-fchdir>)

  - [`function fchmod( _mode:stdgo.GoUInt32):stdgo.Error`](<#fd-function-fchmod>)

  - [`function fchown( _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error`](<#fd-function-fchown>)

  - [`function fstat( _s:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error`](<#fd-function-fstat>)

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

  - [`function readFrom( _p:stdgo.Slice<stdgo.GoByte>):{ _2:stdgo.Error; _1:stdgo._internal.syscall.Sockaddr; _0:stdgo.GoInt;}`](<#fd-function-readfrom>)

  - [`function readFromInet4( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-readfrominet4>)

  - [`function readFromInet6( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-readfrominet6>)

  - [`function readMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ _4:stdgo.Error; _3:stdgo._internal.syscall.Sockaddr; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsg>)

  - [`function readMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{ _3:stdgo.Error; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsginet4>)

  - [`function readMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{ _3:stdgo.Error; _2:stdgo.GoInt; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-readmsginet6>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#fd-function-seek>)

  - [`function setBlocking():stdgo.Error`](<#fd-function-setblocking>)

  - [`function setDeadline( _t:stdgo._internal.time.Time):stdgo.Error`](<#fd-function-setdeadline>)

  - [`function setReadDeadline( _t:stdgo._internal.time.Time):stdgo.Error`](<#fd-function-setreaddeadline>)

  - [`function setWriteDeadline( _t:stdgo._internal.time.Time):stdgo.Error`](<#fd-function-setwritedeadline>)

  - [`function shutdown( _how:stdgo.GoInt):stdgo.Error`](<#fd-function-shutdown>)

  - [`function waitWrite():stdgo.Error`](<#fd-function-waitwrite>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-write>)

  - [`function writeMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Sockaddr):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsg>)

  - [`function writeMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsginet4>)

  - [`function writeMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#fd-function-writemsginet6>)

  - [`function writeOnce( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writeonce>)

  - [`function writeTo( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Sockaddr):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writeto>)

  - [`function writeToInet4( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writetoinet4>)

  - [`function writeToInet6( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#fd-function-writetoinet6>)

- [class SysFile](<#class-sysfile>)

  - [`function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>):Void`](<#sysfile-function-new>)

  - [`function _destroy( _fd:stdgo.GoInt):stdgo.Error`](<#sysfile-function-_destroy>)

  - [`function _init():Void`](<#sysfile-function-_init>)

# Constants


```haxe
import stdgo._internal.internal.poll.Poll
```


```haxe
final _maxRW:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexClosed:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexRLock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexRMask:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexRWait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexRef:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexRefMask:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexWLock:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexWMask:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _mutexWWait:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _overflowMsg:stdgo.GoString = (("" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.internal.poll.Poll
```


```haxe
var _dupCloexecUnsupported:stdgo._internal.sync.atomic_.Bool_
```


```haxe
var errDeadlineExceeded:stdgo.Error
```


```haxe
var errFileClosing:stdgo.Error
```


```haxe
var errNetClosing:stdgo._internal.internal.poll.T_errNetClosing
```


```haxe
var errNoDeadline:stdgo.Error
```


```haxe
var errNotPollable:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.internal.poll.Poll
```


## function \_accept


```haxe
function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L112>)


## function \_consume


```haxe
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Poll.hx#L103>)


## function \_dupCloseOnExecOld


```haxe
function _dupCloseOnExecOld(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L111>)


## function \_errClosing


```haxe
function _errClosing(_isFile:Bool):stdgo.Error
```


[\(view code\)](<./Poll.hx#L102>)


## function \_ignoringEINTR


```haxe
function _ignoringEINTR(_fn:():stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L108>)


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


[\(view code\)](<./Poll.hx#L110>)


## function \_runtime\_Semacquire


```haxe
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll.hx#L104>)


## function \_runtime\_Semrelease


```haxe
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll.hx#L105>)


## function \_setDeadlineImpl


```haxe
function _setDeadlineImpl(_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L106>)


## function acceptFunc


```haxe
function acceptFunc()
```


[\(view code\)](<./Poll.hx#L22>)


## function closeFunc


```haxe
function closeFunc()
```


[\(view code\)](<./Poll.hx#L21>)


## function dupCloseOnExec


```haxe
function dupCloseOnExec(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L109>)


## function isPollDescriptor


```haxe
function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Poll.hx#L107>)


## function testHookDidWritev


```haxe
function testHookDidWritev()
```


[\(view code\)](<./Poll.hx#L20>)


# Classes


```haxe
import stdgo._internal.internal.poll.*
```


## class DeadlineExceededError


### DeadlineExceededError function new


```haxe
function new():Void
```


[\(view code\)](<./Poll.hx#L31>)


### DeadlineExceededError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Poll.hx#L157>)


### DeadlineExceededError function temporary


```haxe
function temporary():Bool
```


[\(view code\)](<./Poll.hx#L153>)


### DeadlineExceededError function timeout


```haxe
function timeout():Bool
```


[\(view code\)](<./Poll.hx#L155>)


## class FD


```haxe
var _csema:stdgo.GoUInt32
```


```haxe
var _fdmu:stdgo._internal.internal.poll.T_fdMutex
```


```haxe
var _isBlocking:stdgo.GoUInt32
```


```haxe
var _isFile:Bool
```


```haxe
var _pd:stdgo._internal.internal.poll.T_pollDesc
```


```haxe
var isStream:Bool
```


```haxe
var sysFile:stdgo._internal.internal.poll.SysFile
```


```haxe
var sysfd:stdgo.GoInt
```


```haxe
var zeroReadIsEOF:Bool
```


### FD function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L87>)


### FD function new


```haxe
function new(?_fdmu:stdgo._internal.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.SysFile, ?_pd:stdgo._internal.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void
```


[\(view code\)](<./Poll.hx#L74>)


### FD function \_decref


```haxe
function _decref():stdgo.Error
```


[\(view code\)](<./Poll.hx#L436>)


### FD function \_destroy


```haxe
function _destroy():stdgo.Error
```


[\(view code\)](<./Poll.hx#L408>)


### FD function \_eofError


```haxe
function _eofError( _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll.hx#L420>)


### FD function \_incref


```haxe
function _incref():stdgo.Error
```


[\(view code\)](<./Poll.hx#L438>)


### FD function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L442>)


### FD function \_readLock


```haxe
function _readLock():stdgo.Error
```


[\(view code\)](<./Poll.hx#L434>)


### FD function \_readUnlock


```haxe
function _readUnlock():Void
```


[\(view code\)](<./Poll.hx#L432>)


### FD function \_writeLock


```haxe
function _writeLock():stdgo.Error
```


[\(view code\)](<./Poll.hx#L430>)


### FD function \_writeUnlock


```haxe
function _writeUnlock():Void
```


[\(view code\)](<./Poll.hx#L428>)


### FD function accept


```haxe
function accept():{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L370>)


### FD function close


```haxe
function close():stdgo.Error
```


[\(view code\)](<./Poll.hx#L406>)


### FD function dup


```haxe
function dup():{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L364>)


### FD function fchdir


```haxe
function fchdir():stdgo.Error
```


[\(view code\)](<./Poll.hx#L354>)


### FD function fchmod


```haxe
function fchmod( _mode:stdgo.GoUInt32):stdgo.Error
```


[\(view code\)](<./Poll.hx#L368>)


### FD function fchown


```haxe
function fchown( _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L416>)


### FD function fstat


```haxe
function fstat( _s:stdgo.Ref<stdgo._internal.syscall.Stat_t>):stdgo.Error
```


[\(view code\)](<./Poll.hx#L366>)


### FD function fsync


```haxe
function fsync():stdgo.Error
```


[\(view code\)](<./Poll.hx#L440>)


### FD function ftruncate


```haxe
function ftruncate( _size:stdgo.GoInt64):stdgo.Error
```


[\(view code\)](<./Poll.hx#L414>)


### FD function init


```haxe
function init( _net:stdgo.GoString, _pollable:Bool):stdgo.Error
```


[\(view code\)](<./Poll.hx#L410>)


### FD function pread


```haxe
function pread( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L400>)


### FD function pwrite


```haxe
function pwrite( _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L384>)


### FD function rawControl


```haxe
function rawControl( _f:()):stdgo.Error
```


[\(view code\)](<./Poll.hx#L412>)


### FD function rawRead


```haxe
function rawRead( _f:()):stdgo.Error
```


[\(view code\)](<./Poll.hx#L358>)


### FD function rawWrite


```haxe
function rawWrite( _f:()):stdgo.Error
```


[\(view code\)](<./Poll.hx#L356>)


### FD function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L402>)


### FD function readDirent


```haxe
function readDirent( _buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L352>)


### FD function readFrom


```haxe
function readFrom( _p:stdgo.Slice<stdgo.GoByte>):{
	_2:stdgo.Error;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L398>)


### FD function readFromInet4


```haxe
function readFromInet4( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L396>)


### FD function readFromInet6


```haxe
function readFromInet6( _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L394>)


### FD function readMsg


```haxe
function readMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{
	_4:stdgo.Error;
	_3:stdgo._internal.syscall.Sockaddr;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L392>)


### FD function readMsgInet4


```haxe
function readMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L390>)


### FD function readMsgInet6


```haxe
function readMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L388>)


### FD function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Poll.hx#L350>)


### FD function setBlocking


```haxe
function setBlocking():stdgo.Error
```


[\(view code\)](<./Poll.hx#L404>)


### FD function setDeadline


```haxe
function setDeadline( _t:stdgo._internal.time.Time):stdgo.Error
```


[\(view code\)](<./Poll.hx#L426>)


### FD function setReadDeadline


```haxe
function setReadDeadline( _t:stdgo._internal.time.Time):stdgo.Error
```


[\(view code\)](<./Poll.hx#L424>)


### FD function setWriteDeadline


```haxe
function setWriteDeadline( _t:stdgo._internal.time.Time):stdgo.Error
```


[\(view code\)](<./Poll.hx#L422>)


### FD function shutdown


```haxe
function shutdown( _how:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L418>)


### FD function waitWrite


```haxe
function waitWrite():stdgo.Error
```


[\(view code\)](<./Poll.hx#L362>)


### FD function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L386>)


### FD function writeMsg


```haxe
function writeMsg( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Sockaddr):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L376>)


### FD function writeMsgInet4


```haxe
function writeMsgInet4( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L374>)


### FD function writeMsgInet6


```haxe
function writeMsgInet6( _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L372>)


### FD function writeOnce


```haxe
function writeOnce( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L360>)


### FD function writeTo


```haxe
function writeTo( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Sockaddr):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L378>)


### FD function writeToInet4


```haxe
function writeToInet4( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L382>)


### FD function writeToInet6


```haxe
function writeToInet6( _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll.hx#L380>)


## class SysFile


```haxe
var _iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>
```


### SysFile function new


```haxe
function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>):Void
```


[\(view code\)](<./Poll.hx#L94>)


### SysFile function \_destroy


```haxe
function _destroy( _fd:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll.hx#L459>)


### SysFile function \_init


```haxe
function _init():Void
```


[\(view code\)](<./Poll.hx#L461>)


