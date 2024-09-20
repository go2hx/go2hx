# Module: `stdgo._internal.internal.poll`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function testHookDidWritev()`](<#function-testhookdidwritev>)

- [`function closeFunc()`](<#function-closefunc>)

- [`function acceptFunc()`](<#function-acceptfunc>)

- [`function consume(:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, :stdgo.GoInt64):Void`](<#function-consume>)

- [`function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}`](<#function-_accept>)

- [`function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, _n:stdgo.GoInt64):Void`](<#function-_consume>)

- [`function _dupCloseOnExecOld(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}`](<#function-_dupcloseonexecold>)

- [`function _errClosing(_isFile:Bool):stdgo.Error`](<#function-_errclosing>)

- [`function _ignoringEINTR(_fn:():stdgo.Error):stdgo.Error`](<#function-_ignoringeintr>)

- [`function _ignoringEINTRIO(_fn:(:stdgo.GoInt, :stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-_ignoringeintrio>)

- [`function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semacquire>)

- [`function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semrelease>)

- [`function _setDeadlineImpl(_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):stdgo.Error`](<#function-_setdeadlineimpl>)

- [`function dupCloseOnExec(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}`](<#function-dupcloseonexec>)

- [`function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool`](<#function-ispolldescriptor>)

- [class DeadlineExceededError](<#class-deadlineexceedederror>)

  - [`function new():Void`](<#deadlineexceedederror-function-new>)

- [class FD](<#class-fd>)

  - [`function _init():Void`](<#fd-function-_init>)

  - [`function new(?_fdmu:stdgo._internal.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.SysFile, ?_pd:stdgo._internal.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void`](<#fd-function-new>)

- [class SysFile](<#class-sysfile>)

  - [`function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>):Void`](<#sysfile-function-new>)

- [class T\_errNetClosing](<#class-t_errnetclosing>)

  - [`function new():Void`](<#t_errnetclosing-function-new>)

- [class T\_fdMutex](<#class-t_fdmutex>)

  - [`function new(?_state:stdgo.GoUInt64, ?_rsema:stdgo.GoUInt32, ?_wsema:stdgo.GoUInt32):Void`](<#t_fdmutex-function-new>)

- [class T\_pollDesc](<#class-t_polldesc>)

  - [`function new(?_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, ?_closing:Bool):Void`](<#t_polldesc-function-new>)

- [class XFDMutex](<#class-xfdmutex>)

  - [`function _decref():Bool`](<#xfdmutex-function-_decref>)

  - [`function _incref():Bool`](<#xfdmutex-function-_incref>)

  - [`function _increfAndClose():Bool`](<#xfdmutex-function-_increfandclose>)

  - [`function _rwlock(__0:Bool):Bool`](<#xfdmutex-function-_rwlock>)

  - [`function _rwunlock(__0:Bool):Bool`](<#xfdmutex-function-_rwunlock>)

  - [`function new(?_fdMutex:stdgo._internal.internal.poll.T_fdMutex):Void`](<#xfdmutex-function-new>)

# Constants


```haxe
import stdgo._internal.internal.poll.Poll_isPollDescriptor
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
import stdgo._internal.internal.poll.Poll_isPollDescriptor
```


```haxe
var errNetClosing:stdgo._internal.internal.poll.T_errNetClosing
```


```haxe
var errFileClosing:stdgo.Error
```


```haxe
var errNoDeadline:stdgo.Error
```


```haxe
var errDeadlineExceeded:stdgo.Error
```


```haxe
var errNotPollable:stdgo.Error
```


```haxe
var _dupCloexecUnsupported:stdgo._internal.sync.atomic_.Bool_
```


# Functions


```haxe
import stdgo._internal.internal.poll.Poll_isPollDescriptor
```


## function testHookDidWritev


```haxe
function testHookDidWritev()
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function closeFunc


```haxe
function closeFunc()
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function acceptFunc


```haxe
function acceptFunc()
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function consume


```haxe
function consume(:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, :stdgo.GoInt64):Void
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_accept


```haxe
function _accept(_s:stdgo.GoInt):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:stdgo._internal.syscall.Sockaddr;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_consume


```haxe
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_dupCloseOnExecOld


```haxe
function _dupCloseOnExecOld(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_errClosing


```haxe
function _errClosing(_isFile:Bool):stdgo.Error
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_ignoringEINTR


```haxe
function _ignoringEINTR(_fn:():stdgo.Error):stdgo.Error
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_ignoringEINTRIO


```haxe
function _ignoringEINTRIO(_fn:(:stdgo.GoInt, :stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_runtime\_Semacquire


```haxe
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_runtime\_Semrelease


```haxe
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function \_setDeadlineImpl


```haxe
function _setDeadlineImpl(_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function dupCloseOnExec


```haxe
function dupCloseOnExec(_fd:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


## function isPollDescriptor


```haxe
function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Poll_isPollDescriptor.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.poll.*
```


## class DeadlineExceededError


### DeadlineExceededError function new


```haxe
function new():Void
```


[\(view code\)](<./Poll_DeadlineExceededError.hx#L3>)


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


[\(view code\)](<./Poll_FD.hx#L26>)


### FD function new


```haxe
function new(?_fdmu:stdgo._internal.internal.poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.SysFile, ?_pd:stdgo._internal.internal.poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool):Void
```


[\(view code\)](<./Poll_FD.hx#L13>)


## class SysFile


```haxe
var _iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>
```


### SysFile function new


```haxe
function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Iovec>>):Void
```


[\(view code\)](<./Poll_SysFile.hx#L4>)


## class T\_errNetClosing


### T\_errNetClosing function new


```haxe
function new():Void
```


[\(view code\)](<./Poll_T_errNetClosing.hx#L3>)


## class T\_fdMutex


```haxe
var _rsema:stdgo.GoUInt32
```


```haxe
var _state:stdgo.GoUInt64
```


```haxe
var _wsema:stdgo.GoUInt32
```


### T\_fdMutex function new


```haxe
function new(?_state:stdgo.GoUInt64, ?_rsema:stdgo.GoUInt32, ?_wsema:stdgo.GoUInt32):Void
```


[\(view code\)](<./Poll_T_fdMutex.hx#L6>)


## class T\_pollDesc


```haxe
var _closing:Bool
```


```haxe
var _fd:stdgo.Ref<stdgo._internal.internal.poll.FD>
```


### T\_pollDesc function new


```haxe
function new(?_fd:stdgo.Ref<stdgo._internal.internal.poll.FD>, ?_closing:Bool):Void
```


[\(view code\)](<./Poll_T_pollDesc.hx#L5>)


## class XFDMutex


```haxe
var _fdMutex:stdgo._internal.internal.poll.T_fdMutex
```


### XFDMutex function \_decref


```haxe
function _decref():Bool
```


[\(view code\)](<./Poll_XFDMutex.hx#L10>)


### XFDMutex function \_incref


```haxe
function _incref():Bool
```


[\(view code\)](<./Poll_XFDMutex.hx#L12>)


### XFDMutex function \_increfAndClose


```haxe
function _increfAndClose():Bool
```


[\(view code\)](<./Poll_XFDMutex.hx#L14>)


### XFDMutex function \_rwlock


```haxe
function _rwlock(__0:Bool):Bool
```


[\(view code\)](<./Poll_XFDMutex.hx#L16>)


### XFDMutex function \_rwunlock


```haxe
function _rwunlock(__0:Bool):Bool
```


[\(view code\)](<./Poll_XFDMutex.hx#L18>)


### XFDMutex function new


```haxe
function new(?_fdMutex:stdgo._internal.internal.poll.T_fdMutex):Void
```


[\(view code\)](<./Poll_XFDMutex.hx#L5>)


