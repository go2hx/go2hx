# Module: `stdgo._internal.internal.syscall.unix`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function fcntl(_fd:stdgo.GoInt, _cmd:stdgo.GoInt, _arg:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fcntl>)

- [`function hasNonblockFlag(_flag:stdgo.GoInt):Bool`](<#function-hasnonblockflag>)

- [`function isNonblock(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-isnonblock>)

- [`function kernelVersion():{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-kernelversion>)

- [`function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-recvfrominet4>)

- [`function recvfromInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-recvfrominet6>)

- [`function recvmsgInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-recvmsginet4>)

- [`function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-recvmsginet6>)

- [`function sendmsgNInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sendmsgninet4>)

- [`function sendmsgNInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sendmsgninet6>)

- [`function sendtoInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):stdgo.Error`](<#function-sendtoinet4>)

- [`function sendtoInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):stdgo.Error`](<#function-sendtoinet6>)

# Constants


```haxe
import stdgo._internal.internal.syscall.unix.Unix_utime_OMIT
```


```haxe
final utime_OMIT:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.syscall.unix.Unix_utime_OMIT
```


## function fcntl


```haxe
function fcntl(_fd:stdgo.GoInt, _cmd:stdgo.GoInt, _arg:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function hasNonblockFlag


```haxe
function hasNonblockFlag(_flag:stdgo.GoInt):Bool
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function isNonblock


```haxe
function isNonblock(_fd:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:Bool;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function kernelVersion


```haxe
function kernelVersion():{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function recvfromInet4


```haxe
function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function recvfromInet6


```haxe
function recvfromInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function recvmsgInet4


```haxe
function recvmsgInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function recvmsgInet6


```haxe
function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):{
	_3:stdgo.Error;
	_2:stdgo.GoInt;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function sendmsgNInet4


```haxe
function sendmsgNInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function sendmsgNInet6


```haxe
function sendmsgNInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>, _flags:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function sendtoInet4


```haxe
function sendtoInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet4>):stdgo.Error
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


## function sendtoInet6


```haxe
function sendtoInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo._internal.syscall.SockaddrInet6>):stdgo.Error
```


[\(view code\)](<./Unix_utime_OMIT.hx#L2>)


