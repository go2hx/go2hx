# Module: `stdgo._internal.internal.cpu`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _doinit():Void`](<#function-_doinit>)

- [`function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_indexbyte>)

- [`function _processOptions(_env:stdgo.GoString):Void`](<#function-_processoptions>)

- [`function initialize(_env:stdgo.GoString):Void`](<#function-initialize>)

- [`function name():stdgo.GoString`](<#function-name>)

- [class CacheLinePad](<#class-cachelinepad>)

  - [`function new(?__1:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#cachelinepad-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

# Constants


```haxe
import stdgo._internal.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.internal.cpu.Cpu
```


```haxe
var _options:stdgo.Slice<stdgo._internal.internal.cpu.T_option>
```


```haxe
var arm:stdgo._internal.internal.cpu.T__struct_1
```


```haxe
var arm64:stdgo._internal.internal.cpu.T__struct_2
```


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


```haxe
var debugOptions:Bool
```


```haxe
var mips64x:stdgo._internal.internal.cpu.T__struct_3
```


```haxe
var ppc64:stdgo._internal.internal.cpu.T__struct_4
```


```haxe
var s390x:stdgo._internal.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo._internal.internal.cpu.T__struct_0
```


# Functions


```haxe
import stdgo._internal.internal.cpu.Cpu
```


## function \_doinit


```haxe
function _doinit():Void
```


[\(view code\)](<./Cpu.hx#L290>)


## function \_indexByte


```haxe
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Cpu.hx#L276>)


## function \_processOptions


```haxe
function _processOptions(_env:stdgo.GoString):Void
```


[\(view code\)](<./Cpu.hx#L207>)


## function initialize


```haxe
function initialize(_env:stdgo.GoString):Void
```


[\(view code\)](<./Cpu.hx#L203>)


## function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Cpu.hx#L287>)


# Classes


```haxe
import stdgo._internal.internal.cpu.*
```


## class CacheLinePad


```haxe
var __1:stdgo.GoArray<stdgo.GoUInt8>
```


### CacheLinePad function new


```haxe
function new(?__1:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Cpu.hx#L16>)


# Typedefs


```haxe
import stdgo._internal.internal.cpu.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	hasSSSE3:Bool;
	hasSSE42:Bool;
	hasSSE41:Bool;
	hasSSE3:Bool;
	hasSHA:Bool;
	hasRDTSCP:Bool;
	hasPOPCNT:Bool;
	hasPCLMULQDQ:Bool;
	hasOSXSAVE:Bool;
	hasFMA:Bool;
	hasERMS:Bool;
	hasBMI2:Bool;
	hasBMI1:Bool;
	hasAVX2:Bool;
	hasAVX:Bool;
	hasAES:Bool;
	hasADX:Bool;
	{<__9> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__7> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	hasVFPv4:Bool;
	hasIDIVA:Bool;
	{<__17> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__15> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	isNeoverse:Bool;
	hasSHA512:Bool;
	hasSHA2:Bool;
	hasSHA1:Bool;
	hasPMULL:Bool;
	hasCRC32:Bool;
	hasCPUID:Bool;
	hasATOMICS:Bool;
	hasAES:Bool;
	{<__25> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__23> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	hasMSA:Bool;
	{<__33> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__31> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	isPOWER9:Bool;
	isPOWER8:Bool;
	isPOWER10:Bool;
	hasSCV:Bool;
	hasDARN:Bool;
	{<__41> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__39> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	hasZARCH:Bool;
	hasVXE:Bool;
	hasVX:Bool;
	hasSTFLE:Bool;
	hasSHA512:Bool;
	hasSHA3:Bool;
	hasSHA256:Bool;
	hasSHA1:Bool;
	hasMSA:Bool;
	hasLDISP:Bool;
	hasKDSA:Bool;
	hasGHASH:Bool;
	hasETF3EH:Bool;
	hasEIMM:Bool;
	hasEDDSA:Bool;
	hasECDSA:Bool;
	hasDFP:Bool;
	hasAESGCM:Bool;
	hasAESCTR:Bool;
	hasAESCBC:Bool;
	hasAES:Bool;
	{<__49> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__47> | Null<stdgo._internal.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


