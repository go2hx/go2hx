# Module: `stdgo.internal.cpu`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Cpu](<#class-cpu>)

  - [`function initialize(_env:String):Void`](<#cpu-function-initialize>)

  - [`function name():String`](<#cpu-function-name>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [abstract CacheLinePad](<#abstract-cachelinepad>)

- [abstract T\_option](<#abstract-t_option>)

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


# Classes


```haxe
import stdgo.internal.cpu.*
```


## class Cpu


```
Package cpu implements processor feature detection
    used by the Go standard library.
```
### Cpu function initialize


```haxe
function initialize(_env:String):Void
```


```
Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
```
[\(view code\)](<./Cpu.hx#L126>)


### Cpu function name


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

[\(view code\)](<./Cpu.hx#L137>)


# Typedefs


```haxe
import stdgo.internal.cpu.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.cpu.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.internal.cpu.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.internal.cpu.T__struct_2;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.internal.cpu.T__struct_3;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.internal.cpu.T__struct_4;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.internal.cpu.T__struct_5;
```


# Abstracts


## abstract CacheLinePad


[\(view file containing code\)](<./Cpu.hx>)


## abstract T\_option


[\(view file containing code\)](<./Cpu.hx>)


