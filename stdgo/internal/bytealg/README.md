# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):Void`](<#function-_abigen_runtime_cmpstring>)

- [`function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Void`](<#function-_abigen_runtime_memequal>)

- [`function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-_abigen_runtime_memequal_varlen>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-compare>)

- [`function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-count>)

- [`function countString(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-countstring>)

- [`function cutover(_n:stdgo.GoInt):Void`](<#function-cutover>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-equal>)

- [`function hashStr(_sep:stdgo.GoString):Void`](<#function-hashstr>)

- [`function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-hashstrbytes>)

- [`function hashStrRev(_sep:stdgo.GoString):Void`](<#function-hashstrrev>)

- [`function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-hashstrrevbytes>)

- [`function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-index>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-indexbyte>)

- [`function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-indexbytestring>)

- [`function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):Void`](<#function-indexrabinkarp>)

- [`function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-indexrabinkarpbytes>)

- [`function indexString(_a:stdgo.GoString, _b:stdgo.GoString):Void`](<#function-indexstring>)

- [`function makeNoZero(_n:stdgo.GoInt):Void`](<#function-makenozero>)

# Variables


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
var _offsetPPC64HasPOWER9:Dynamic
```


```haxe
var _offsetS390xHasVX:Dynamic
```


```haxe
var _offsetX86HasAVX2:Dynamic
```


```haxe
var _offsetX86HasPOPCNT:Dynamic
```


```haxe
var _offsetX86HasSSE42:Dynamic
```


```haxe
var maxBruteForce:Dynamic
```


```haxe
var maxLen:Dynamic
```


```haxe
var primeRK:Dynamic
```


# Functions


```haxe
import stdgo.internal.bytealg.Bytealg
```


## function \_abigen\_runtime\_cmpstring


```haxe
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):Void
```


[\(view code\)](<./Bytealg.hx#L18>)


## function \_abigen\_runtime\_memequal


```haxe
function _abigen_runtime_memequal(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Bytealg.hx#L22>)


## function \_abigen\_runtime\_memequal\_varlen


```haxe
function _abigen_runtime_memequal_varlen(_a:stdgo._internal.unsafe.UnsafePointer, _b:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Bytealg.hx#L23>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L17>)


## function count


```haxe
function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytealg.hx#L19>)


## function countString


```haxe
function countString(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytealg.hx#L20>)


## function cutover


```haxe
function cutover(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytealg.hx#L26>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L21>)


## function hashStr


```haxe
function hashStr(_sep:stdgo.GoString):Void
```


[\(view code\)](<./Bytealg.hx#L11>)


## function hashStrBytes


```haxe
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L10>)


## function hashStrRev


```haxe
function hashStrRev(_sep:stdgo.GoString):Void
```


[\(view code\)](<./Bytealg.hx#L13>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L12>)


## function index


```haxe
function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L24>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytealg.hx#L27>)


## function indexByteString


```haxe
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytealg.hx#L28>)


## function indexRabinKarp


```haxe
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):Void
```


[\(view code\)](<./Bytealg.hx#L15>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytealg.hx#L14>)


## function indexString


```haxe
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):Void
```


[\(view code\)](<./Bytealg.hx#L25>)


## function makeNoZero


```haxe
function makeNoZero(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytealg.hx#L16>)


