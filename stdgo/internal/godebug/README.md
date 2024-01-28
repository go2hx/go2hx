# Module: `stdgo.internal.godebug`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _lookup(_name:stdgo.GoString):Void`](<#function-_lookup>)

- [`function _newIncNonDefault(_name:stdgo.GoString):Void`](<#function-_newincnondefault>)

- [`function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void`](<#function-_parse>)

- [`function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void`](<#function-_registermetric>)

- [`function _setNewIncNonDefault(_newIncNonDefault:()):Void`](<#function-_setnewincnondefault>)

- [`function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void`](<#function-_setupdate>)

- [`function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void`](<#function-_update>)

- [`function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.UnsafePointer, _n:stdgo.GoInt32):Void`](<#function-_write>)

- [`function new_(_name:stdgo.GoString):Void`](<#function-new_>)

- [typedef Setting](<#typedef-setting>)

- [typedef Setting\_asInterface](<#typedef-setting_asinterface>)

- [typedef Setting\_static\_extension](<#typedef-setting_static_extension>)

- [typedef T\_runtimeStderr](<#typedef-t_runtimestderr>)

- [typedef T\_runtimeStderr\_asInterface](<#typedef-t_runtimestderr_asinterface>)

- [typedef T\_runtimeStderr\_static\_extension](<#typedef-t_runtimestderr_static_extension>)

- [typedef T\_setting](<#typedef-t_setting>)

- [typedef T\_value](<#typedef-t_value>)

# Variables


```haxe
import stdgo.internal.godebug.Godebug
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _cache:Dynamic
```


```haxe
var _empty:Dynamic
```


```haxe
var _stderr:Dynamic
```


```haxe
var _updateMu:Dynamic
```


# Functions


```haxe
import stdgo.internal.godebug.Godebug
```


## function \_lookup


```haxe
function _lookup(_name:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L12>)


## function \_newIncNonDefault


```haxe
function _newIncNonDefault(_name:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L16>)


## function \_parse


```haxe
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L18>)


## function \_registerMetric


```haxe
function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void
```


[\(view code\)](<./Godebug.hx#L14>)


## function \_setNewIncNonDefault


```haxe
function _setNewIncNonDefault(_newIncNonDefault:()):Void
```


[\(view code\)](<./Godebug.hx#L15>)


## function \_setUpdate


```haxe
function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void
```


[\(view code\)](<./Godebug.hx#L13>)


## function \_update


```haxe
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L17>)


## function \_write


```haxe
function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.UnsafePointer, _n:stdgo.GoInt32):Void
```


[\(view code\)](<./Godebug.hx#L19>)


## function new\_


```haxe
function new_(_name:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L11>)


# Typedefs


```haxe
import stdgo.internal.godebug.*
```


## typedef Setting


```haxe
typedef Setting = Dynamic;
```


## typedef Setting\_asInterface


```haxe
typedef Setting_asInterface = Dynamic;
```


## typedef Setting\_static\_extension


```haxe
typedef Setting_static_extension = Dynamic;
```


## typedef T\_runtimeStderr


```haxe
typedef T_runtimeStderr = Dynamic;
```


## typedef T\_runtimeStderr\_asInterface


```haxe
typedef T_runtimeStderr_asInterface = Dynamic;
```


## typedef T\_runtimeStderr\_static\_extension


```haxe
typedef T_runtimeStderr_static_extension = Dynamic;
```


## typedef T\_setting


```haxe
typedef T_setting = Dynamic;
```


## typedef T\_value


```haxe
typedef T_value = Dynamic;
```


