# Module: `stdgo.internal.syscall.unix`

[(view library index)](../../../stdgo.md)


# Overview


 


# Index


- [`function isNonblock(_fd:stdgo.GoInt):{_1:stdgo.Error, _0:Bool}`](<#function-isnonblock>)

- [`function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-recvfrominet4>)

- [`function recvfromInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-recvfrominet6>)

- [`function recvmsgInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{_3:stdgo.Error, _2:stdgo.GoInt, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#function-recvmsginet4>)

- [`function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{_3:stdgo.Error, _2:stdgo.GoInt, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#function-recvmsginet6>)

- [`function sendmsgNInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.Ref<stdgo.syscall.SockaddrInet4>, _flags:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-sendmsgninet4>)

- [`function sendmsgNInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.Ref<stdgo.syscall.SockaddrInet6>, _flags:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-sendmsgninet6>)

- [`function sendtoInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo.syscall.SockaddrInet4>):stdgo.Error`](<#function-sendtoinet4>)

- [`function sendtoInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo.syscall.SockaddrInet6>):stdgo.Error`](<#function-sendtoinet6>)

# Functions


```haxe
import stdgo.internal.syscall.unix.Unix
```


## function isNonblock


```haxe
function isNonblock(_fd:stdgo.GoInt):{_1:stdgo.Error, _0:Bool}
```


 


[\(view code\)](<./Unix.hx#L50>)


## function recvfromInet4


```haxe
function recvfromInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L14>)


## function recvfromInet6


```haxe
function recvfromInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L17>)


## function recvmsgInet4


```haxe
function recvmsgInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet4>):{_3:stdgo.Error, _2:stdgo.GoInt, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L39>)


## function recvmsgInet6


```haxe
function recvmsgInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _from:stdgo.Ref<stdgo.syscall.SockaddrInet6>):{_3:stdgo.Error, _2:stdgo.GoInt, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L47>)


## function sendmsgNInet4


```haxe
function sendmsgNInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.Ref<stdgo.syscall.SockaddrInet4>, _flags:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L27>)


## function sendmsgNInet6


```haxe
function sendmsgNInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:stdgo.Ref<stdgo.syscall.SockaddrInet6>, _flags:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Unix.hx#L31>)


## function sendtoInet4


```haxe
function sendtoInet4(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo.syscall.SockaddrInet4>):stdgo.Error
```


 


[\(view code\)](<./Unix.hx#L20>)


## function sendtoInet6


```haxe
function sendtoInet6(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:stdgo.Ref<stdgo.syscall.SockaddrInet6>):stdgo.Error
```


 


[\(view code\)](<./Unix.hx#L23>)


