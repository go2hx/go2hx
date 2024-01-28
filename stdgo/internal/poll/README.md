# Module: `stdgo.internal.poll`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _accept(_s:stdgo.GoInt):Void`](<#function-_accept>)

- [`function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void`](<#function-_consume>)

- [`function _dupCloseOnExecOld(_fd:stdgo.GoInt):Void`](<#function-_dupcloseonexecold>)

- [`function _errClosing(_isFile:Bool):Void`](<#function-_errclosing>)

- [`function _ignoringEINTR(_fn:():stdgo.Error):Void`](<#function-_ignoringeintr>)

- [`function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_ignoringeintrio>)

- [`function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semacquire>)

- [`function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semrelease>)

- [`function _setDeadlineImpl(_fd:stdgo.Ref<stdgo.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):Void`](<#function-_setdeadlineimpl>)

- [`function dupCloseOnExec(_fd:stdgo.GoInt):Void`](<#function-dupcloseonexec>)

- [`function isPollDescriptor(_fd:stdgo.GoUIntptr):Void`](<#function-ispolldescriptor>)

- [typedef DeadlineExceededError](<#typedef-deadlineexceedederror>)

- [typedef DeadlineExceededError\_asInterface](<#typedef-deadlineexceedederror_asinterface>)

- [typedef DeadlineExceededError\_static\_extension](<#typedef-deadlineexceedederror_static_extension>)

- [typedef FD](<#typedef-fd>)

- [typedef FD\_asInterface](<#typedef-fd_asinterface>)

- [typedef FD\_static\_extension](<#typedef-fd_static_extension>)

- [typedef SysFile](<#typedef-sysfile>)

- [typedef SysFile\_asInterface](<#typedef-sysfile_asinterface>)

- [typedef SysFile\_static\_extension](<#typedef-sysfile_static_extension>)

- [typedef T\_errNetClosing](<#typedef-t_errnetclosing>)

- [typedef T\_errNetClosing\_asInterface](<#typedef-t_errnetclosing_asinterface>)

- [typedef T\_errNetClosing\_static\_extension](<#typedef-t_errnetclosing_static_extension>)

- [typedef T\_fdMutex](<#typedef-t_fdmutex>)

- [typedef T\_fdMutex\_asInterface](<#typedef-t_fdmutex_asinterface>)

- [typedef T\_fdMutex\_static\_extension](<#typedef-t_fdmutex_static_extension>)

- [typedef T\_pollDesc](<#typedef-t_polldesc>)

- [typedef T\_pollDesc\_asInterface](<#typedef-t_polldesc_asinterface>)

- [typedef T\_pollDesc\_static\_extension](<#typedef-t_polldesc_static_extension>)

# Variables


```haxe
import stdgo.internal.poll.Poll
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _dupCloexecUnsupported:Dynamic
```


```haxe
var _maxRW:Dynamic
```


```haxe
var _mutexClosed:Dynamic
```


```haxe
var _mutexRLock:Dynamic
```


```haxe
var _mutexRMask:Dynamic
```


```haxe
var _mutexRWait:Dynamic
```


```haxe
var _mutexRef:Dynamic
```


```haxe
var _mutexRefMask:Dynamic
```


```haxe
var _mutexWLock:Dynamic
```


```haxe
var _mutexWMask:Dynamic
```


```haxe
var _mutexWWait:Dynamic
```


```haxe
var _overflowMsg:Dynamic
```


```haxe
var acceptFunc:Dynamic
```


```haxe
var closeFunc:Dynamic
```


```haxe
var errDeadlineExceeded:Dynamic
```


```haxe
var errFileClosing:Dynamic
```


```haxe
var errNetClosing:Dynamic
```


```haxe
var errNoDeadline:Dynamic
```


```haxe
var errNotPollable:Dynamic
```


```haxe
var testHookDidWritev:Dynamic
```


# Functions


```haxe
import stdgo.internal.poll.Poll
```


## function \_accept


```haxe
function _accept(_s:stdgo.GoInt):Void
```


[\(view code\)](<./Poll.hx#L39>)


## function \_consume


```haxe
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Poll.hx#L30>)


## function \_dupCloseOnExecOld


```haxe
function _dupCloseOnExecOld(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Poll.hx#L38>)


## function \_errClosing


```haxe
function _errClosing(_isFile:Bool):Void
```


[\(view code\)](<./Poll.hx#L29>)


## function \_ignoringEINTR


```haxe
function _ignoringEINTR(_fn:():stdgo.Error):Void
```


[\(view code\)](<./Poll.hx#L35>)


## function \_ignoringEINTRIO


```haxe
function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Poll.hx#L37>)


## function \_runtime\_Semacquire


```haxe
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll.hx#L31>)


## function \_runtime\_Semrelease


```haxe
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Poll.hx#L32>)


## function \_setDeadlineImpl


```haxe
function _setDeadlineImpl(_fd:stdgo.Ref<stdgo.internal.poll.FD>, _t:stdgo._internal.time.Time, _mode:stdgo.GoInt):Void
```


[\(view code\)](<./Poll.hx#L33>)


## function dupCloseOnExec


```haxe
function dupCloseOnExec(_fd:stdgo.GoInt):Void
```


[\(view code\)](<./Poll.hx#L36>)


## function isPollDescriptor


```haxe
function isPollDescriptor(_fd:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Poll.hx#L34>)


# Typedefs


```haxe
import stdgo.internal.poll.*
```


## typedef DeadlineExceededError


```haxe
typedef DeadlineExceededError = Dynamic;
```


## typedef DeadlineExceededError\_asInterface


```haxe
typedef DeadlineExceededError_asInterface = Dynamic;
```


## typedef DeadlineExceededError\_static\_extension


```haxe
typedef DeadlineExceededError_static_extension = Dynamic;
```


## typedef FD


```haxe
typedef FD = Dynamic;
```


## typedef FD\_asInterface


```haxe
typedef FD_asInterface = Dynamic;
```


## typedef FD\_static\_extension


```haxe
typedef FD_static_extension = Dynamic;
```


## typedef SysFile


```haxe
typedef SysFile = Dynamic;
```


## typedef SysFile\_asInterface


```haxe
typedef SysFile_asInterface = Dynamic;
```


## typedef SysFile\_static\_extension


```haxe
typedef SysFile_static_extension = Dynamic;
```


## typedef T\_errNetClosing


```haxe
typedef T_errNetClosing = Dynamic;
```


## typedef T\_errNetClosing\_asInterface


```haxe
typedef T_errNetClosing_asInterface = Dynamic;
```


## typedef T\_errNetClosing\_static\_extension


```haxe
typedef T_errNetClosing_static_extension = Dynamic;
```


## typedef T\_fdMutex


```haxe
typedef T_fdMutex = Dynamic;
```


## typedef T\_fdMutex\_asInterface


```haxe
typedef T_fdMutex_asInterface = Dynamic;
```


## typedef T\_fdMutex\_static\_extension


```haxe
typedef T_fdMutex_static_extension = Dynamic;
```


## typedef T\_pollDesc


```haxe
typedef T_pollDesc = Dynamic;
```


## typedef T\_pollDesc\_asInterface


```haxe
typedef T_pollDesc_asInterface = Dynamic;
```


## typedef T\_pollDesc\_static\_extension


```haxe
typedef T_pollDesc_static_extension = Dynamic;
```


