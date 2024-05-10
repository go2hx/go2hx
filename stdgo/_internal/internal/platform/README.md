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

  - [`function string():stdgo.GoString`](<#osarch-function-string>)

# Variables


```haxe
import stdgo._internal.internal.platform.Platform
```


```haxe
var _distInfo:stdgo.GoMap<stdgo._internal.internal.platform.OSArch, stdgo._internal.internal.platform.T_osArchInfo>
```


```haxe
var list:stdgo.Slice<stdgo._internal.internal.platform.OSArch>
```


# Functions


```haxe
import stdgo._internal.internal.platform.Platform
```


## function asanSupported


```haxe
function asanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L32>)


## function broken


```haxe
function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L42>)


## function buildModeSupported


```haxe
function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L36>)


## function cgoSupported


```haxe
function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L40>)


## function defaultPIE


```haxe
function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool
```


[\(view code\)](<./Platform.hx#L38>)


## function executableHasDWARF


```haxe
function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L39>)


## function firstClass


```haxe
function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L41>)


## function fuzzInstrumented


```haxe
function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L34>)


## function fuzzSupported


```haxe
function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L33>)


## function internalLinkPIESupported


```haxe
function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L37>)


## function msanSupported


```haxe
function msanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L31>)


## function mustLinkExternal


```haxe
function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool
```


[\(view code\)](<./Platform.hx#L35>)


## function raceDetectorSupported


```haxe
function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool
```


[\(view code\)](<./Platform.hx#L30>)


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


[\(view code\)](<./Platform.hx#L7>)


### OSArch function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Platform.hx#L56>)


