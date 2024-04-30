# Module: `stdgo.internal.platform`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function asanSupported(goos:String, goarch:String):Bool`](<#function-asansupported>)

- [`function broken(goos:String, goarch:String):Bool`](<#function-broken>)

- [`function buildModeSupported(compiler:String, buildmode:String, goos:String, goarch:String):Bool`](<#function-buildmodesupported>)

- [`function cgoSupported(goos:String, goarch:String):Bool`](<#function-cgosupported>)

- [`function defaultPIE(goos:String, goarch:String, isRace:Bool):Bool`](<#function-defaultpie>)

- [`function executableHasDWARF(goos:String, goarch:String):Bool`](<#function-executablehasdwarf>)

- [`function firstClass(goos:String, goarch:String):Bool`](<#function-firstclass>)

- [`function fuzzInstrumented(goos:String, goarch:String):Bool`](<#function-fuzzinstrumented>)

- [`function fuzzSupported(goos:String, goarch:String):Bool`](<#function-fuzzsupported>)

- [`function get_list():Array<stdgo._internal.internal.platform.OSArch>`](<#function-get_list>)

- [`function internalLinkPIESupported(goos:String, goarch:String):Bool`](<#function-internallinkpiesupported>)

- [`function msanSupported(goos:String, goarch:String):Bool`](<#function-msansupported>)

- [`function mustLinkExternal(goos:String, goarch:String, withCgo:Bool):Bool`](<#function-mustlinkexternal>)

- [`function raceDetectorSupported(goos:String, goarch:String):Bool`](<#function-racedetectorsupported>)

- [`function set_list(v:Array<stdgo._internal.internal.platform.OSArch>):Array<stdgo._internal.internal.platform.OSArch>`](<#function-set_list>)

- [typedef OSArch](<#typedef-osarch>)

- [typedef OSArch\_asInterface](<#typedef-osarch_asinterface>)

- [typedef OSArch\_static\_extension](<#typedef-osarch_static_extension>)

- [typedef T\_osArchInfo](<#typedef-t_osarchinfo>)

# Variables


```haxe
import stdgo.internal.platform.Platform
```


```haxe
var list:Array<stdgo._internal.internal.platform.OSArch>
```


# Functions


```haxe
import stdgo.internal.platform.Platform
```


## function asanSupported


```haxe
function asanSupported(goos:String, goarch:String):Bool
```


```
ASanSupported reports whether goos/goarch supports the address
    sanitizer option.
```
[\(view code\)](<./Platform.hx#L24>)


## function broken


```haxe
function broken(goos:String, goarch:String):Bool
```


```
Broken reportsr whether goos/goarch is considered a broken port.
    (See https://go.dev/wiki/PortingPolicy#broken-ports.)
```
[\(view code\)](<./Platform.hx#L71>)


## function buildModeSupported


```haxe
function buildModeSupported(compiler:String, buildmode:String, goos:String, goarch:String):Bool
```


```
BuildModeSupported reports whether goos/goarch supports the given build mode
    using the given compiler.
    There is a copy of this function in cmd/dist/test.go.
```
[\(view code\)](<./Platform.hx#L45>)


## function cgoSupported


```haxe
function cgoSupported(goos:String, goarch:String):Bool
```



CgoSupported reports whether goos/goarch supports cgo.  

[\(view code\)](<./Platform.hx#L61>)


## function defaultPIE


```haxe
function defaultPIE(goos:String, goarch:String, isRace:Bool):Bool
```


```
DefaultPIE reports whether goos/goarch produces a PIE binary when using the
    "default" buildmode. On Windows this is affected by -race,
    so force the caller to pass that in to centralize that choice.
```
[\(view code\)](<./Platform.hx#L52>)


## function executableHasDWARF


```haxe
function executableHasDWARF(goos:String, goarch:String):Bool
```


```
ExecutableHasDWARF reports whether the linked executable includes DWARF
    symbols on goos/goarch.
```
[\(view code\)](<./Platform.hx#L57>)


## function firstClass


```haxe
function firstClass(goos:String, goarch:String):Bool
```


```
FirstClass reports whether goos/goarch is considered a “first class” port.
    (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
```
[\(view code\)](<./Platform.hx#L66>)


## function fuzzInstrumented


```haxe
function fuzzInstrumented(goos:String, goarch:String):Bool
```


```
FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
    instrumentation. (FuzzInstrumented implies FuzzSupported.)
```
[\(view code\)](<./Platform.hx#L34>)


## function fuzzSupported


```haxe
function fuzzSupported(goos:String, goarch:String):Bool
```


```
FuzzSupported reports whether goos/goarch supports fuzzing
    ('go test -fuzz=.').
```
[\(view code\)](<./Platform.hx#L29>)


## function get\_list


```haxe
function get_list():Array<stdgo._internal.internal.platform.OSArch>
```


[\(view code\)](<./Platform.hx#L3>)


## function internalLinkPIESupported


```haxe
function internalLinkPIESupported(goos:String, goarch:String):Bool
```


[\(view code\)](<./Platform.hx#L46>)


## function msanSupported


```haxe
function msanSupported(goos:String, goarch:String):Bool
```


```
MSanSupported reports whether goos/goarch supports the memory
    sanitizer option.
```
[\(view code\)](<./Platform.hx#L19>)


## function mustLinkExternal


```haxe
function mustLinkExternal(goos:String, goarch:String, withCgo:Bool):Bool
```


```
MustLinkExternal reports whether goos/goarch requires external linking
    with or without cgo dependencies.
```
[\(view code\)](<./Platform.hx#L39>)


## function raceDetectorSupported


```haxe
function raceDetectorSupported(goos:String, goarch:String):Bool
```


```
RaceDetectorSupported reports whether goos/goarch supports the race
    detector. There is a copy of this function in cmd/dist/test.go.
    Race detector only supports 48-bit VMA on arm64. But it will always
    return true for arm64, because we don't have VMA size information during
    the compile time.
```
[\(view code\)](<./Platform.hx#L14>)


## function set\_list


```haxe
function set_list(v:Array<stdgo._internal.internal.platform.OSArch>):Array<stdgo._internal.internal.platform.OSArch>
```


[\(view code\)](<./Platform.hx#L4>)


# Typedefs


```haxe
import stdgo.internal.platform.*
```


## typedef OSArch


```haxe
typedef OSArch = Dynamic;
```


## typedef OSArch\_asInterface


```haxe
typedef OSArch_asInterface = Dynamic;
```


## typedef OSArch\_static\_extension


```haxe
typedef OSArch_static_extension = Dynamic;
```


## typedef T\_osArchInfo


```haxe
typedef T_osArchInfo = Dynamic;
```


