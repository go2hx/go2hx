# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


Package cpu implements processor feature detection��// used by the Go standard library. 


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _doinit():Void`](<#function-_doinit>)

- [`function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_indexbyte>)

- [`function _processOptions(_env:stdgo.GoString):Void`](<#function-_processoptions>)

- [`function initialize(_env:stdgo.GoString):Void`](<#function-initialize>)

- [`function name():stdgo.GoString`](<#function-name>)

- [class CacheLinePad](<#class-cachelinepad>)

  - [`function new(?_1:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#cachelinepad-function-new>)

# Constants


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:stdgo.GoUInt64 = (("64" : GoUInt64))
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var arm:stdgo.internal.cpu._Cpu.T__struct_1
```


The booleans in ARM contain the correspondingly named cpu feature bit.��// The struct is padded to avoid false sharing. 


```haxe
var arm64:stdgo.internal.cpu._Cpu.T__struct_2
```


The booleans in ARM64 contain the correspondingly named cpu feature bit.��// The struct is padded to avoid false sharing. 


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


CacheLineSize is the CPU's assumed cache line size.��// There is currently no runtime detection of the real cache line size��// so we use the constant per GOARCH CacheLinePadSize as an approximation. 


```haxe
var debugOptions:Bool
```


DebugOptions is set to true by the runtime if the OS supports reading��// GODEBUG early in runtime startup.��// This should not be changed after it is initialized. 


```haxe
var mips64x:stdgo.internal.cpu._Cpu.T__struct_3
```


```haxe
var ppc64:stdgo.internal.cpu._Cpu.T__struct_4
```


For ppc64\(le\), it is safe to check only for ISA level starting on ISA v3.00,��// since there are no optional categories. There are some exceptions that also��// require kernel support to work \(darn, scv\), so there are feature bits for��// those as well. The minimum processor requirement is POWER8 \(ISA 2.07\).��// The struct is padded to avoid false sharing. 


```haxe
var s390x:stdgo.internal.cpu._Cpu.T__struct_5
```


```haxe
var x86:stdgo.internal.cpu._Cpu.T__struct_0
```


The booleans in X86 contain the correspondingly named cpuid feature bit.��// HasAVX and HasAVX2 are only set if the OS does support XMM and YMM registers��// in addition to the cpuid feature bit being set.��// The struct is padded to avoid false sharing. 


# Functions


```haxe
import stdgo.internal.cpu.Cpu
```


## function \_doinit


```haxe
function _doinit():Void
```


 


[\(view code\)](<./Cpu.hx#L704>)


## function \_indexByte


```haxe
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


indexByte returns the index of the first instance of c in s,��// or \-1 if c is not present in s. 


[\(view code\)](<./Cpu.hx#L680>)


## function \_processOptions


```haxe
function _processOptions(_env:stdgo.GoString):Void
```


processOptions enables or disables CPU feature values based on the parsed env string.��// The env string is expected to be of the form cpu.feature1=value1,cpu.feature2=value2...��// where feature names is one of the architecture specific list stored in the��// cpu packages options variable and values are either 'on' or 'off'.��// If env contains cpu.all=off then all cpu features referenced through the options��// variable are disabled. Other feature names and values result in warning messages. 


[\(view code\)](<./Cpu.hx#L606>)


## function initialize


```haxe
function initialize(_env:stdgo.GoString):Void
```


Initialize examines the processor and sets the relevant variables above.��// This is called by the runtime package early in program initialization,��// before normal init functions are run. env is set by runtime if the OS supports��// cpu feature options in GODEBUG. 


[\(view code\)](<./Cpu.hx#L593>)


## function name


```haxe
function name():stdgo.GoString
```


Name returns the CPU name given by the vendor��// if it can be read directly from memory or by CPU instructions.��// If the CPU name can not be determined an empty string is returned.��//��// Implementations that use the Operating System \(e.g. sysctl or /sys/\)��// to gather CPU information for display should be placed in internal/sysinfo. 


[\(view code\)](<./Cpu.hx#L700>)


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class CacheLinePad


CacheLinePad is used to pad structs to avoid false sharing. 


```haxe
var _1:stdgo.GoArray<stdgo.GoUInt8>
```


### CacheLinePad function new


```haxe
function new(?_1:stdgo.GoArray<stdgo.GoUInt8>):Void
```


 


[\(view code\)](<./Cpu.hx#L138>)

