# Module: `stdgo._internal.internal.bytealg`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-_abigen_runtime_cmpstring>)

- [`function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Bool`](<#function-_abigen_runtime_memequal>)

- [`function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer):Bool`](<#function-_abigen_runtime_memequal_varlen>)

- [`function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-compare>)

- [`function count(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-count>)

- [`function countString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-countstring>)

- [`function cutover(_n:stdgo.GoInt):stdgo.GoInt`](<#function-cutover>)

- [`function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-equal>)

- [`function hashStr(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstr>)

- [`function hashStrBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrbytes>)

- [`function hashStrRev(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrrev>)

- [`function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrrevbytes>)

- [`function index(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-index>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexByteString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbytestring>)

- [`function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-indexrabinkarp>)

- [`function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-indexrabinkarpbytes>)

- [`function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-indexstring>)

- [`function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-makenozero>)

# Constants


```haxe
import stdgo._internal.internal.bytealg.Bytealg_primeRK
```


```haxe
final _offsetPPC64HasPOWER9:stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe_offsetof_.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu_ppc64.ppc64.isPOWER9))
```


```haxe
final _offsetS390xHasVX:stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe_offsetof_.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu_s390x.s390x.hasVX))
```


```haxe
final _offsetX86HasAVX2:stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe_offsetof_.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu_x86.x86.hasAVX2))
```


```haxe
final _offsetX86HasPOPCNT:stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe_offsetof_.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu_x86.x86.hasPOPCNT))
```


```haxe
final _offsetX86HasSSE42:stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe_offsetof_.offsetof_(stdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu_x86.x86.hasSSE42))
```


```haxe
final maxBruteForce:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final primeRK:stdgo.GoUInt64 = ((16777619i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.internal.bytealg.Bytealg_primeRK
```


```haxe
var maxLen:stdgo.GoInt
```


# Functions


```haxe
import stdgo._internal.internal.bytealg.Bytealg_primeRK
```


## function \_abigen\_runtime\_cmpstring


```haxe
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function \_abigen\_runtime\_memequal


```haxe
function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Bool
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function \_abigen\_runtime\_memequal\_varlen


```haxe
function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer):Bool
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function count


```haxe
function count(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function countString


```haxe
function countString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function cutover


```haxe
function cutover(_n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function hashStr


```haxe
function hashStr(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function hashStrBytes


```haxe
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function hashStrRev


```haxe
function hashStrRev(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function index


```haxe
function index(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function indexByteString


```haxe
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function indexRabinKarp


```haxe
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function indexString


```haxe
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


## function makeNoZero


```haxe
function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytealg_primeRK.hx#L2>)


