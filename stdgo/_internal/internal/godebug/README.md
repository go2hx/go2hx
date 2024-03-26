# Module: `stdgo._internal.internal.godebug`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.T_setting>`](<#function-_lookup>)

- [`function _newIncNonDefault(_name:stdgo.GoString):():Void`](<#function-_newincnondefault>)

- [`function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void`](<#function-_parse>)

- [`function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void`](<#function-_registermetric>)

- [`function _setNewIncNonDefault(_newIncNonDefault:()):Void`](<#function-_setnewincnondefault>)

- [`function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void`](<#function-_setupdate>)

- [`function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void`](<#function-_update>)

- [`function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32`](<#function-_write>)

- [`function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.Setting>`](<#function-new_>)

- [class Setting](<#class-setting>)

  - [`function new(?_name:stdgo.GoString, ?_once:stdgo._internal.sync.Once, ?_setting:stdgo.Ref<stdgo._internal.internal.godebug.T_setting>):Void`](<#setting-function-new>)

  - [`function _register():Void`](<#setting-function-_register>)

  - [`function incNonDefault():Void`](<#setting-function-incnondefault>)

  - [`function name():stdgo.GoString`](<#setting-function-name>)

  - [`function string():stdgo.GoString`](<#setting-function-string>)

  - [`function undocumented():Bool`](<#setting-function-undocumented>)

  - [`function value():stdgo.GoString`](<#setting-function-value>)

# Variables


```haxe
import stdgo._internal.internal.godebug.Godebug
```


```haxe
var _cache:stdgo._internal.sync.Map_
```


```haxe
var _empty:stdgo._internal.internal.godebug.T_value
```


```haxe
var _stderr:stdgo._internal.internal.godebug.T_runtimeStderr
```


```haxe
var _updateMu:stdgo._internal.sync.Mutex
```


# Functions


```haxe
import stdgo._internal.internal.godebug.Godebug
```


## function \_lookup


```haxe
function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.T_setting>
```


[\(view code\)](<./Godebug.hx#L59>)


## function \_newIncNonDefault


```haxe
function _newIncNonDefault(_name:stdgo.GoString):():Void
```


[\(view code\)](<./Godebug.hx#L63>)


## function \_parse


```haxe
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L65>)


## function \_registerMetric


```haxe
function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void
```


[\(view code\)](<./Godebug.hx#L61>)


## function \_setNewIncNonDefault


```haxe
function _setNewIncNonDefault(_newIncNonDefault:()):Void
```


[\(view code\)](<./Godebug.hx#L62>)


## function \_setUpdate


```haxe
function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void
```


[\(view code\)](<./Godebug.hx#L60>)


## function \_update


```haxe
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void
```


[\(view code\)](<./Godebug.hx#L64>)


## function \_write


```haxe
function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Godebug.hx#L66>)


## function new\_


```haxe
function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.Setting>
```


[\(view code\)](<./Godebug.hx#L58>)


# Classes


```haxe
import stdgo._internal.internal.godebug.*
```


## class Setting


```haxe
var _name:stdgo.GoString
```


```haxe
var _once:stdgo._internal.sync.Once
```


```haxe
var _setting:stdgo.Ref<stdgo._internal.internal.godebug.T_setting>
```


### Setting function new


```haxe
function new(?_name:stdgo.GoString, ?_once:stdgo._internal.sync.Once, ?_setting:stdgo.Ref<stdgo._internal.internal.godebug.T_setting>):Void
```


[\(view code\)](<./Godebug.hx#L13>)


### Setting function \_register


```haxe
function _register():Void
```


[\(view code\)](<./Godebug.hx#L92>)


### Setting function incNonDefault


```haxe
function incNonDefault():Void
```


[\(view code\)](<./Godebug.hx#L94>)


### Setting function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Godebug.hx#L100>)


### Setting function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Godebug.hx#L96>)


### Setting function undocumented


```haxe
function undocumented():Bool
```


[\(view code\)](<./Godebug.hx#L98>)


### Setting function value


```haxe
function value():stdgo.GoString
```


[\(view code\)](<./Godebug.hx#L90>)


