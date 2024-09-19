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

- [class T\_runtimeStderr](<#class-t_runtimestderr>)

  - [`function new():Void`](<#t_runtimestderr-function-new>)

- [class T\_setting](<#class-t_setting>)

  - [`function new(?_value:stdgo._internal.sync.atomic_.Pointer_<stdgo._internal.internal.godebug.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Uint64, ?_info:stdgo.Ref<stdgo._internal.internal.godebugs.Info>):Void`](<#t_setting-function-new>)

- [class T\_value](<#class-t_value>)

  - [`function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>):Void`](<#t_value-function-new>)

# Variables


```haxe
import stdgo._internal.internal.godebug.Godebug_new_
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
import stdgo._internal.internal.godebug.Godebug_new_
```


## function \_lookup


```haxe
function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.T_setting>
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_newIncNonDefault


```haxe
function _newIncNonDefault(_name:stdgo.GoString):():Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_parse


```haxe
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_registerMetric


```haxe
function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_setNewIncNonDefault


```haxe
function _setNewIncNonDefault(_newIncNonDefault:()):Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_setUpdate


```haxe
function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_update


```haxe
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function \_write


```haxe
function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Godebug_new_.hx#L3>)


## function new\_


```haxe
function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.Setting>
```


[\(view code\)](<./Godebug_new_.hx#L3>)


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


[\(view code\)](<./Godebug_Setting.hx#L8>)


## class T\_runtimeStderr


### T\_runtimeStderr function new


```haxe
function new():Void
```


[\(view code\)](<./Godebug_T_runtimeStderr.hx#L4>)


## class T\_setting


```haxe
var _info:stdgo.Ref<stdgo._internal.internal.godebugs.Info>
```


```haxe
var _nonDefault:stdgo._internal.sync.atomic_.Uint64
```


```haxe
var _nonDefaultOnce:stdgo._internal.sync.Once
```


```haxe
var _value:stdgo._internal.sync.atomic_.Pointer_<stdgo._internal.internal.godebug.T_value>
```


### T\_setting function new


```haxe
function new(?_value:stdgo._internal.sync.atomic_.Pointer_<stdgo._internal.internal.godebug.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Uint64, ?_info:stdgo.Ref<stdgo._internal.internal.godebugs.Info>):Void
```


[\(view code\)](<./Godebug_T_setting.hx#L8>)


## class T\_value


```haxe
var _bisect:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>
```


```haxe
var _text:stdgo.GoString
```


### T\_value function new


```haxe
function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>):Void
```


[\(view code\)](<./Godebug_T_value.hx#L6>)


