# Module: `stdgo.internal.platform`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Platform](<#class-platform>)

  - [`function asanSupported(_goos:String, _goarch:String):Bool`](<#platform-function-asansupported>)

  - [`function broken(_goos:String, _goarch:String):Bool`](<#platform-function-broken>)

  - [`function buildModeSupported(_compiler:String, _buildmode:String, _goos:String, _goarch:String):Bool`](<#platform-function-buildmodesupported>)

  - [`function cgoSupported(_goos:String, _goarch:String):Bool`](<#platform-function-cgosupported>)

  - [`function defaultPIE(_goos:String, _goarch:String, _isRace:Bool):Bool`](<#platform-function-defaultpie>)

  - [`function executableHasDWARF(_goos:String, _goarch:String):Bool`](<#platform-function-executablehasdwarf>)

  - [`function firstClass(_goos:String, _goarch:String):Bool`](<#platform-function-firstclass>)

  - [`function fuzzInstrumented(_goos:String, _goarch:String):Bool`](<#platform-function-fuzzinstrumented>)

  - [`function fuzzSupported(_goos:String, _goarch:String):Bool`](<#platform-function-fuzzsupported>)

  - [`function internalLinkPIESupported(_goos:String, _goarch:String):Bool`](<#platform-function-internallinkpiesupported>)

  - [`function msanSupported(_goos:String, _goarch:String):Bool`](<#platform-function-msansupported>)

  - [`function mustLinkExternal(_goos:String, _goarch:String, _withCgo:Bool):Bool`](<#platform-function-mustlinkexternal>)

  - [`function raceDetectorSupported(_goos:String, _goarch:String):Bool`](<#platform-function-racedetectorsupported>)

- [abstract OSArch](<#abstract-osarch>)

- [abstract T\_osArchInfo](<#abstract-t_osarchinfo>)

# Variables


```haxe
import stdgo.internal.platform.Platform
```


```haxe
var list:Array<stdgo.internal.platform.OSArch>
```


# Classes


```haxe
import stdgo.internal.platform.*
```


## class Platform


### Platform function asanSupported


```haxe
function asanSupported(_goos:String, _goarch:String):Bool
```


```
ASanSupported reports whether goos/goarch supports the address
        sanitizer option.
```
[\(view code\)](<./Platform.hx#L75>)


### Platform function broken


```haxe
function broken(_goos:String, _goarch:String):Bool
```


```
Broken reportsr whether goos/goarch is considered a broken port.
        (See https://go.dev/wiki/PortingPolicy#broken-ports.)
```
[\(view code\)](<./Platform.hx#L142>)


### Platform function buildModeSupported


```haxe
function buildModeSupported(_compiler:String, _buildmode:String, _goos:String, _goarch:String):Bool
```


```
BuildModeSupported reports whether goos/goarch supports the given build mode
        using the given compiler.
        There is a copy of this function in cmd/dist/test.go.
```
[\(view code\)](<./Platform.hx#L104>)


### Platform function cgoSupported


```haxe
function cgoSupported(_goos:String, _goarch:String):Bool
```



CgoSupported reports whether goos/goarch supports cgo.  

[\(view code\)](<./Platform.hx#L128>)


### Platform function defaultPIE


```haxe
function defaultPIE(_goos:String, _goarch:String, _isRace:Bool):Bool
```


```
DefaultPIE reports whether goos/goarch produces a PIE binary when using the
        "default" buildmode. On Windows this is affected by -race,
        so force the caller to pass that in to centralize that choice.
```
[\(view code\)](<./Platform.hx#L115>)


### Platform function executableHasDWARF


```haxe
function executableHasDWARF(_goos:String, _goarch:String):Bool
```


```
ExecutableHasDWARF reports whether the linked executable includes DWARF
        symbols on goos/goarch.
```
[\(view code\)](<./Platform.hx#L122>)


### Platform function firstClass


```haxe
function firstClass(_goos:String, _goarch:String):Bool
```


```
FirstClass reports whether goos/goarch is considered a “first class” port.
        (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
```
[\(view code\)](<./Platform.hx#L135>)


### Platform function fuzzInstrumented


```haxe
function fuzzInstrumented(_goos:String, _goarch:String):Bool
```


```
FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
        instrumentation. (FuzzInstrumented implies FuzzSupported.)
```
[\(view code\)](<./Platform.hx#L89>)


### Platform function fuzzSupported


```haxe
function fuzzSupported(_goos:String, _goarch:String):Bool
```


```
FuzzSupported reports whether goos/goarch supports fuzzing
        ('go test -fuzz=.').
```
[\(view code\)](<./Platform.hx#L82>)


### Platform function internalLinkPIESupported


```haxe
function internalLinkPIESupported(_goos:String, _goarch:String):Bool
```


[\(view code\)](<./Platform.hx#L107>)


### Platform function msanSupported


```haxe
function msanSupported(_goos:String, _goarch:String):Bool
```


```
MSanSupported reports whether goos/goarch supports the memory
        sanitizer option.
```
[\(view code\)](<./Platform.hx#L68>)


### Platform function mustLinkExternal


```haxe
function mustLinkExternal(_goos:String, _goarch:String, _withCgo:Bool):Bool
```


```
MustLinkExternal reports whether goos/goarch requires external linking
        with or without cgo dependencies.
```
[\(view code\)](<./Platform.hx#L96>)


### Platform function raceDetectorSupported


```haxe
function raceDetectorSupported(_goos:String, _goarch:String):Bool
```


```
RaceDetectorSupported reports whether goos/goarch supports the race
        detector. There is a copy of this function in cmd/dist/test.go.
        Race detector only supports 48-bit VMA on arm64. But it will always
        return true for arm64, because we don't have VMA size information during
        the compile time.
```
[\(view code\)](<./Platform.hx#L61>)


# Abstracts


## abstract OSArch


[\(view file containing code\)](<./Platform.hx>)


## abstract T\_osArchInfo


[\(view file containing code\)](<./Platform.hx>)


