# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview



Package cpu implements processor feature detection
used by the Go standard library.  

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
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var _options:stdgo.Slice<stdgo.internal.cpu.T_option>
```



options contains the cpu debug options that can be used in GODEBUG.
Options are arch dependent and are added by the arch specific doinit functions.
Features that are mandatory for the specific GOARCH should not be added to options
\(e.g. SSE2 on amd64\).  

```haxe
var arm:stdgo.internal.cpu.T__struct_1
```



The booleans in ARM contain the correspondingly named cpu feature bit.
The struct is padded to avoid false sharing.  

```haxe
var arm64:stdgo.internal.cpu.T__struct_2
```



The booleans in ARM64 contain the correspondingly named cpu feature bit.
The struct is padded to avoid false sharing.  

```haxe
var cacheLineSize:stdgo.GoUIntptr
```



CacheLineSize is the CPU's assumed cache line size.
There is currently no runtime detection of the real cache line size
so we use the constant per GOARCH CacheLinePadSize as an approximation.  

```haxe
var debugOptions:Bool
```



DebugOptions is set to true by the runtime if the OS supports reading
GODEBUG early in runtime startup.
This should not be changed after it is initialized.  

```haxe
var mips64x:stdgo.internal.cpu.T__struct_3
```


```haxe
var ppc64:stdgo.internal.cpu.T__struct_4
```



For ppc64\(le\), it is safe to check only for ISA level starting on ISA v3.00,
since there are no optional categories. There are some exceptions that also
require kernel support to work \(darn, scv\), so there are feature bits for
those as well. The minimum processor requirement is POWER8 \(ISA 2.07\).
The struct is padded to avoid false sharing.  

```haxe
var s390x:stdgo.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo.internal.cpu.T__struct_0
```



The booleans in X86 contain the correspondingly named cpuid feature bit.
HasAVX and HasAVX2 are only set if the OS does support XMM and YMM registers
in addition to the cpuid feature bit being set.
The struct is padded to avoid false sharing.  

# Functions


```haxe
import stdgo.internal.cpu.Cpu
```


## function \_doinit


```haxe
function _doinit():Void
```


[\(view code\)](<./Cpu.hx#L396>)


## function \_indexByte


```haxe
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```



indexByte returns the index of the first instance of c in s,
or \-1 if c is not present in s.  

[\(view code\)](<./Cpu.hx#L374>)


## function \_processOptions


```haxe
function _processOptions(_env:stdgo.GoString):Void
```



processOptions enables or disables CPU feature values based on the parsed env string.
The env string is expected to be of the form cpu.feature1=value1,cpu.feature2=value2...
where feature names is one of the architecture specific list stored in the
cpu packages options variable and values are either 'on' or 'off'.
If env contains cpu.all=off then all cpu features referenced through the options
variable are disabled. Other feature names and values result in warning messages.  

[\(view code\)](<./Cpu.hx#L301>)


## function initialize


```haxe
function initialize(_env:stdgo.GoString):Void
```



Initialize examines the processor and sets the relevant variables above.
This is called by the runtime package early in program initialization,
before normal init functions are run. env is set by runtime if the OS supports
cpu feature options in GODEBUG.  

[\(view code\)](<./Cpu.hx#L289>)


## function name


```haxe
function name():stdgo.GoString
```



Name returns the CPU name given by the vendor
if it can be read directly from memory or by CPU instructions.
If the CPU name can not be determined an empty string is returned.  


Implementations that use the Operating System \(e.g. sysctl or /sys/\)
to gather CPU information for display should be placed in internal/sysinfo.  

[\(view code\)](<./Cpu.hx#L393>)


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class CacheLinePad



CacheLinePad is used to pad structs to avoid false sharing.  

```haxe
var __1:stdgo.GoArray<stdgo.GoUInt8>
```


### CacheLinePad function new


```haxe
function new(?__1:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Cpu.hx#L91>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
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
	{<__9> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__7> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	hasVFPv4:Bool;
	hasIDIVA:Bool;
	{<__17> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__15> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
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
	{<__25> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__23> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	hasMSA:Bool;
	{<__33> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__31> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
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
	{<__41> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__39> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
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
	{<__49> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
	{<__47> | Null<stdgo.internal.cpu.CacheLinePad> | meta:{<m>}};
};
```


