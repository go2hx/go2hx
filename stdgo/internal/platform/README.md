# Module: `stdgo.internal.platform`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-asansupported>)

- [`function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-broken>)

- [`function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-buildmodesupported>)

- [`function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-cgosupported>)

- [`function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Void`](<#function-defaultpie>)

- [`function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-executablehasdwarf>)

- [`function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-firstclass>)

- [`function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-fuzzinstrumented>)

- [`function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-fuzzsupported>)

- [`function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-internallinkpiesupported>)

- [`function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-msansupported>)

- [`function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Void`](<#function-mustlinkexternal>)

- [`function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void`](<#function-racedetectorsupported>)

- [typedef OSArch](<#typedef-osarch>)

- [typedef OSArch\_asInterface](<#typedef-osarch_asinterface>)

- [typedef OSArch\_static\_extension](<#typedef-osarch_static_extension>)

- [typedef T\_osArchInfo](<#typedef-t_osarchinfo>)

# Variables


```haxe
import stdgo.internal.platform.Platform
```


```haxe
var _distInfo:Dynamic
```


```haxe
var list:Dynamic
```


# Functions


```haxe
import stdgo.internal.platform.Platform
```


## function asanSupported


```haxe
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L8>)


## function broken


```haxe
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L18>)


## function buildModeSupported


```haxe
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L12>)


## function cgoSupported


```haxe
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L16>)


## function defaultPIE


```haxe
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Void
```


[\(view code\)](<./Platform.hx#L14>)


## function executableHasDWARF


```haxe
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L15>)


## function firstClass


```haxe
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L17>)


## function fuzzInstrumented


```haxe
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L10>)


## function fuzzSupported


```haxe
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L9>)


## function internalLinkPIESupported


```haxe
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L13>)


## function msanSupported


```haxe
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L7>)


## function mustLinkExternal


```haxe
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Void
```


[\(view code\)](<./Platform.hx#L11>)


## function raceDetectorSupported


```haxe
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Void
```


[\(view code\)](<./Platform.hx#L6>)


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


