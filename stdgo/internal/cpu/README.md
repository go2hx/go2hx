# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


```
Package cpu implements processor feature detection
    used by the Go standard library.
```
# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function get_arm():stdgo.internal.cpu.T__struct_1`](<#function-get_arm>)

- [`function get_arm64():stdgo.internal.cpu.T__struct_2`](<#function-get_arm64>)

- [`function get_cacheLineSize():stdgo.GoUIntptr`](<#function-get_cachelinesize>)

- [`function get_debugOptions():Bool`](<#function-get_debugoptions>)

- [`function get_mips64x():stdgo.internal.cpu.T__struct_3`](<#function-get_mips64x>)

- [`function get_ppc64():stdgo.internal.cpu.T__struct_4`](<#function-get_ppc64>)

- [`function get_s390x():stdgo.internal.cpu.T__struct_5`](<#function-get_s390x>)

- [`function get_x86():stdgo.internal.cpu.T__struct_0`](<#function-get_x86>)

- [`function initialize(env:String):Void`](<#function-initialize>)

- [`function name():String`](<#function-name>)

- [`function set_arm(v:stdgo.internal.cpu.T__struct_1):stdgo.internal.cpu.T__struct_1`](<#function-set_arm>)

- [`function set_arm64(v:stdgo.internal.cpu.T__struct_2):stdgo.internal.cpu.T__struct_2`](<#function-set_arm64>)

- [`function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-set_cachelinesize>)

- [`function set_debugOptions(v:Bool):Bool`](<#function-set_debugoptions>)

- [`function set_mips64x(v:stdgo.internal.cpu.T__struct_3):stdgo.internal.cpu.T__struct_3`](<#function-set_mips64x>)

- [`function set_ppc64(v:stdgo.internal.cpu.T__struct_4):stdgo.internal.cpu.T__struct_4`](<#function-set_ppc64>)

- [`function set_s390x(v:stdgo.internal.cpu.T__struct_5):stdgo.internal.cpu.T__struct_5`](<#function-set_s390x>)

- [`function set_x86(v:stdgo.internal.cpu.T__struct_0):stdgo.internal.cpu.T__struct_0`](<#function-set_x86>)

- [typedef CacheLinePad](<#typedef-cachelinepad>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_3\_asInterface](<#typedef-t__struct_3_asinterface>)

- [typedef T\_\_struct\_3\_static\_extension](<#typedef-t__struct_3_static_extension>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_4\_asInterface](<#typedef-t__struct_4_asinterface>)

- [typedef T\_\_struct\_4\_static\_extension](<#typedef-t__struct_4_static_extension>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_5\_asInterface](<#typedef-t__struct_5_asinterface>)

- [typedef T\_\_struct\_5\_static\_extension](<#typedef-t__struct_5_static_extension>)

- [typedef T\_option](<#typedef-t_option>)

# Constants


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
final cacheLinePadSize:haxe.UInt64 = stdgo._internal.internal.cpu.Cpu.cacheLinePadSize
```


# Variables


```haxe
import stdgo.internal.cpu.Cpu
```


```haxe
var arm:stdgo.internal.cpu.T__struct_1
```


```haxe
var arm64:stdgo.internal.cpu.T__struct_2
```


```haxe
var cacheLineSize:stdgo.GoUIntptr
```


```haxe
var debugOptions:Bool
```


```haxe
var mips64x:stdgo.internal.cpu.T__struct_3
```


```haxe
var ppc64:stdgo.internal.cpu.T__struct_4
```


```haxe
var s390x:stdgo.internal.cpu.T__struct_5
```


```haxe
var x86:stdgo.internal.cpu.T__struct_0
```


# Functions


```haxe
import stdgo.internal.cpu.Cpu
```


## function get\_arm


```haxe
function get_arm():stdgo.internal.cpu.T__struct_1
```


[\(view code\)](<./Cpu.hx#L14>)


## function get\_arm64


```haxe
function get_arm64():stdgo.internal.cpu.T__struct_2
```


[\(view code\)](<./Cpu.hx#L17>)


## function get\_cacheLineSize


```haxe
function get_cacheLineSize():stdgo.GoUIntptr
```


[\(view code\)](<./Cpu.hx#L30>)


## function get\_debugOptions


```haxe
function get_debugOptions():Bool
```


[\(view code\)](<./Cpu.hx#L8>)


## function get\_mips64x


```haxe
function get_mips64x():stdgo.internal.cpu.T__struct_3
```


[\(view code\)](<./Cpu.hx#L20>)


## function get\_ppc64


```haxe
function get_ppc64():stdgo.internal.cpu.T__struct_4
```


[\(view code\)](<./Cpu.hx#L23>)


## function get\_s390x


```haxe
function get_s390x():stdgo.internal.cpu.T__struct_5
```


[\(view code\)](<./Cpu.hx#L26>)


## function get\_x86


```haxe
function get_x86():stdgo.internal.cpu.T__struct_0
```


[\(view code\)](<./Cpu.hx#L11>)


## function initialize


```haxe
function initialize(env:String):Void
```


```
Initialize examines the processor and sets the relevant variables above.
    This is called by the runtime package early in program initialization,
    before normal init functions are run. env is set by runtime if the OS supports
    cpu feature options in GODEBUG.
```
[\(view code\)](<./Cpu.hx#L58>)


## function name


```haxe
function name():String
```


```
Name returns the CPU name given by the vendor
    if it can be read directly from memory or by CPU instructions.
    If the CPU name can not be determined an empty string is returned.
```

Implementations that use the Operating System \(e.g. sysctl or /sys/\)
to gather CPU information for display should be placed in internal/sysinfo.  

[\(view code\)](<./Cpu.hx#L67>)


## function set\_arm


```haxe
function set_arm(v:stdgo.internal.cpu.T__struct_1):stdgo.internal.cpu.T__struct_1
```


[\(view code\)](<./Cpu.hx#L15>)


## function set\_arm64


```haxe
function set_arm64(v:stdgo.internal.cpu.T__struct_2):stdgo.internal.cpu.T__struct_2
```


[\(view code\)](<./Cpu.hx#L18>)


## function set\_cacheLineSize


```haxe
function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Cpu.hx#L31>)


## function set\_debugOptions


```haxe
function set_debugOptions(v:Bool):Bool
```


[\(view code\)](<./Cpu.hx#L9>)


## function set\_mips64x


```haxe
function set_mips64x(v:stdgo.internal.cpu.T__struct_3):stdgo.internal.cpu.T__struct_3
```


[\(view code\)](<./Cpu.hx#L21>)


## function set\_ppc64


```haxe
function set_ppc64(v:stdgo.internal.cpu.T__struct_4):stdgo.internal.cpu.T__struct_4
```


[\(view code\)](<./Cpu.hx#L24>)


## function set\_s390x


```haxe
function set_s390x(v:stdgo.internal.cpu.T__struct_5):stdgo.internal.cpu.T__struct_5
```


[\(view code\)](<./Cpu.hx#L27>)


## function set\_x86


```haxe
function set_x86(v:stdgo.internal.cpu.T__struct_0):stdgo.internal.cpu.T__struct_0
```


[\(view code\)](<./Cpu.hx#L12>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
```


## typedef CacheLinePad


```haxe
typedef CacheLinePad = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.cpu.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.internal.cpu.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.internal.cpu.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.internal.cpu.T__struct_3;
```


## typedef T\_\_struct\_3\_asInterface


```haxe
typedef T__struct_3_asInterface = Dynamic;
```


## typedef T\_\_struct\_3\_static\_extension


```haxe
typedef T__struct_3_static_extension = Dynamic;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.internal.cpu.T__struct_4;
```


## typedef T\_\_struct\_4\_asInterface


```haxe
typedef T__struct_4_asInterface = Dynamic;
```


## typedef T\_\_struct\_4\_static\_extension


```haxe
typedef T__struct_4_static_extension = Dynamic;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.internal.cpu.T__struct_5;
```


## typedef T\_\_struct\_5\_asInterface


```haxe
typedef T__struct_5_asInterface = Dynamic;
```


## typedef T\_\_struct\_5\_static\_extension


```haxe
typedef T__struct_5_static_extension = Dynamic;
```


## typedef T\_option


```haxe
typedef T_option = Dynamic;
```


