# Module: `stdgo._internal.internal.platform`

[(view library index)](../../../stdgo.md)


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

- [class T\_osArchInfo](<#class-t_osarchinfo>)

  - [`function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool):Void`](<#t_osarchinfo-function-new>)

# Variables


```haxe
import stdgo._internal.internal.platform.Platform_raceDetectorSupported
```


```haxe
var list:stdgo.Slice<stdgo._internal.internal.platform.OSArch>
```


```haxe
var _distInfo:stdgo.GoMap<stdgo._internal.internal.platform.OSArch, stdgo._internal.internal.platform.T_osArchInfo>
```


# Functions


```haxe
import stdgo._internal.internal.platform.Platform_raceDetectorSupported
```


## function asanSupported


```haxe
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function broken


```haxe
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function buildModeSupported


```haxe
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function cgoSupported


```haxe
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function defaultPIE


```haxe
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function executableHasDWARF


```haxe
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function firstClass


```haxe
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function fuzzInstrumented


```haxe
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function fuzzSupported


```haxe
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function internalLinkPIESupported


```haxe
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function msanSupported


```haxe
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function mustLinkExternal


```haxe
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


## function raceDetectorSupported


```haxe
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform_raceDetectorSupported.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.platform.*
```


## class OSArch


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


[\(view code\)](<./Platform_OSArch.hx#L5>)


## class T\_osArchInfo


```haxe
var broken:Bool
```


```haxe
var cgoSupported:Bool
```


```haxe
var firstClass:Bool
```


### T\_osArchInfo function new


```haxe
function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool):Void
```


[\(view code\)](<./Platform_T_osArchInfo.hx#L6>)


