# Module: `stdgo.internal.syscall.unix`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Unix](<#class-unix>)

  - [`function fcntl(_fd:Int, _cmd:Int, _arg:Int):stdgo.Tuple<Int, stdgo.Error>`](<#unix-function-fcntl>)

  - [`function hasNonblockFlag(_flag:Int):Bool`](<#unix-function-hasnonblockflag>)

  - [`function isNonblock(_fd:Int):stdgo.Tuple<Bool, stdgo.Error>`](<#unix-function-isnonblock>)

  - [`function kernelVersion():stdgo.Tuple<Int, Int>`](<#unix-function-kernelversion>)

  - [`function recvfromInet4(_fd:Int, _p:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet4):stdgo.Tuple<Int, stdgo.Error>`](<#unix-function-recvfrominet4>)

  - [`function recvfromInet6(_fd:Int, _p:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet6):stdgo.Tuple<Int, stdgo.Error>`](<#unix-function-recvfrominet6>)

  - [`function recvmsgInet4(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet4):stdgo.Tuple4<Int, Int, Int, stdgo.Error>`](<#unix-function-recvmsginet4>)

  - [`function recvmsgInet6(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet6):stdgo.Tuple4<Int, Int, Int, stdgo.Error>`](<#unix-function-recvmsginet6>)

  - [`function sendmsgNInet4(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _to:stdgo._internal.syscall.SockaddrInet4, _flags:Int):stdgo.Tuple<Int, stdgo.Error>`](<#unix-function-sendmsgninet4>)

  - [`function sendmsgNInet6(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _to:stdgo._internal.syscall.SockaddrInet6, _flags:Int):stdgo.Tuple<Int, stdgo.Error>`](<#unix-function-sendmsgninet6>)

  - [`function sendtoInet4(_fd:Int, _p:Array<UInt>, _flags:Int, _to:stdgo._internal.syscall.SockaddrInet4):stdgo.Error`](<#unix-function-sendtoinet4>)

  - [`function sendtoInet6(_fd:Int, _p:Array<UInt>, _flags:Int, _to:stdgo._internal.syscall.SockaddrInet6):stdgo.Error`](<#unix-function-sendtoinet6>)

# Constants


```haxe
import stdgo.internal.syscall.unix.Unix
```


```haxe
final utime_OMIT:haxe.UInt64 = stdgo._internal.internal.syscall.unix.Unix_utime_OMIT.utime_OMIT
```


# Classes


```haxe
import stdgo.internal.syscall.unix.*
```


## class Unix


### Unix function fcntl


```haxe
function fcntl(_fd:Int, _cmd:Int, _arg:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L4>)


### Unix function hasNonblockFlag


```haxe
function hasNonblockFlag(_flag:Int):Bool
```


[\(view code\)](<./Unix.hx#L76>)


### Unix function isNonblock


```haxe
function isNonblock(_fd:Int):stdgo.Tuple<Bool, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L70>)


### Unix function kernelVersion


```haxe
function kernelVersion():stdgo.Tuple<Int, Int>
```


[\(view code\)](<./Unix.hx#L10>)


### Unix function recvfromInet4


```haxe
function recvfromInet4(_fd:Int, _p:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet4):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L16>)


### Unix function recvfromInet6


```haxe
function recvfromInet6(_fd:Int, _p:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet6):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L23>)


### Unix function recvmsgInet4


```haxe
function recvmsgInet4(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet4):stdgo.Tuple4<Int, Int, Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L54>)


### Unix function recvmsgInet6


```haxe
function recvmsgInet6(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _flags:Int, _from:stdgo._internal.syscall.SockaddrInet6):stdgo.Tuple4<Int, Int, Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L62>)


### Unix function sendmsgNInet4


```haxe
function sendmsgNInet4(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _to:stdgo._internal.syscall.SockaddrInet4, _flags:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L38>)


### Unix function sendmsgNInet6


```haxe
function sendmsgNInet6(_fd:Int, _p:Array<UInt>, _oob:Array<UInt>, _to:stdgo._internal.syscall.SockaddrInet6, _flags:Int):stdgo.Tuple<Int, stdgo.Error>
```


[\(view code\)](<./Unix.hx#L46>)


### Unix function sendtoInet4


```haxe
function sendtoInet4(_fd:Int, _p:Array<UInt>, _flags:Int, _to:stdgo._internal.syscall.SockaddrInet4):stdgo.Error
```


[\(view code\)](<./Unix.hx#L30>)


### Unix function sendtoInet6


```haxe
function sendtoInet6(_fd:Int, _p:Array<UInt>, _flags:Int, _to:stdgo._internal.syscall.SockaddrInet6):stdgo.Error
```


[\(view code\)](<./Unix.hx#L34>)


