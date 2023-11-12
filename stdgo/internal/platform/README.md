# Module: `stdgo.internal.platform`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-asansupported>)

- [`function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-broken>)

- [`function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-buildmodesupported>)

- [`function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-cgosupported>)

- [`function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool`](<#function-defaultpie>)

- [`function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-executablehasdwarf>)

- [`function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-firstclass>)

- [`function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-fuzzinstrumented>)

- [`function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-fuzzsupported>)

- [`function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-internallinkpiesupported>)

- [`function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-msansupported>)

- [`function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool`](<#function-mustlinkexternal>)

- [`function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool`](<#function-racedetectorsupported>)

- [class OSArch](<#class-osarch>)

  - [`function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString):Void`](<#osarch-function-new>)

  - [`function string():stdgo.GoString`](<#osarch-function-string>)

# Variables


```haxe
import stdgo.internal.platform.Platform
```


```haxe
var _distInfo:stdgo.GoMap<stdgo.internal.platform.OSArch, stdgo.internal.platform.T_osArchInfo>
```


```haxe
var list:stdgo.Slice<stdgo.internal.platform.OSArch>
```



List is the list of all valid GOOS/GOARCH combinations,
including known\-broken ports.  

# Functions


```haxe
import stdgo.internal.platform.Platform
```


## function asanSupported


```haxe
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



ASanSupported reports whether goos/goarch supports the address
sanitizer option.  

[\(view code\)](<./Platform.hx#L69>)


## function broken


```haxe
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



Broken reportsr whether goos/goarch is considered a broken port.
\(See https://go.dev/wiki/PortingPolicy#broken-ports.\)  

[\(view code\)](<./Platform.hx#L116>)


## function buildModeSupported


```haxe
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



BuildModeSupported reports whether goos/goarch supports the given build mode
using the given compiler.
There is a copy of this function in cmd/dist/test.go.  

[\(view code\)](<./Platform.hx#L90>)


## function cgoSupported


```haxe
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



CgoSupported reports whether goos/goarch supports cgo.  

[\(view code\)](<./Platform.hx#L106>)


## function defaultPIE


```haxe
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool
```



DefaultPIE reports whether goos/goarch produces a PIE binary when using the
"default" buildmode. On Windows this is affected by \-race,
so force the caller to pass that in to centralize that choice.  

[\(view code\)](<./Platform.hx#L97>)


## function executableHasDWARF


```haxe
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



ExecutableHasDWARF reports whether the linked executable includes DWARF
symbols on goos/goarch.  

[\(view code\)](<./Platform.hx#L102>)


## function firstClass


```haxe
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



FirstClass reports whether goos/goarch is considered a “first class” port.
\(See https://go.dev/wiki/PortingPolicy#first-class-ports.\)  

[\(view code\)](<./Platform.hx#L111>)


## function fuzzInstrumented


```haxe
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
instrumentation. \(FuzzInstrumented implies FuzzSupported.\)  

[\(view code\)](<./Platform.hx#L79>)


## function fuzzSupported


```haxe
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



FuzzSupported reports whether goos/goarch supports fuzzing
\('go test \-fuzz=.'\).  

[\(view code\)](<./Platform.hx#L74>)


## function internalLinkPIESupported


```haxe
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L91>)


## function msanSupported


```haxe
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



MSanSupported reports whether goos/goarch supports the memory
sanitizer option.  

[\(view code\)](<./Platform.hx#L64>)


## function mustLinkExternal


```haxe
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool
```



MustLinkExternal reports whether goos/goarch requires external linking
with or without cgo dependencies.  

[\(view code\)](<./Platform.hx#L84>)


## function raceDetectorSupported


```haxe
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```



RaceDetectorSupported reports whether goos/goarch supports the race
detector. There is a copy of this function in cmd/dist/test.go.
Race detector only supports 48\-bit VMA on arm64. But it will always
return true for arm64, because we don't have VMA size information during
the compile time.  

[\(view code\)](<./Platform.hx#L59>)


# Classes


```haxe
import stdgo.internal.platform.*
```


## class OSArch



An OSArch is a pair of GOOS and GOARCH values indicating a platform.  

```haxe
var goarch:stdgo.GoString
```


```haxe
var goos:stdgo.GoString
```


### OSArch function new


```haxe
function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L23>)


### OSArch function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Platform.hx#L130>)


