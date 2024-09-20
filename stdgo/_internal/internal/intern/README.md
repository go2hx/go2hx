# Module: `stdgo._internal.internal.intern`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _safeMap():stdgo.GoMap<stdgo._internal.internal.intern.T_key, stdgo.Ref<stdgo._internal.internal.intern.Value>>`](<#function-_safemap>)

- [`function _finalize(_v:stdgo.Ref<stdgo._internal.internal.intern.Value>):Void`](<#function-_finalize>)

- [`function _get(_k:stdgo._internal.internal.intern.T_key):stdgo.Ref<stdgo._internal.internal.intern.Value>`](<#function-_get>)

- [`function _keyFor(_cmpVal:stdgo.AnyInterface):stdgo._internal.internal.intern.T_key`](<#function-_keyfor>)

- [`function get(_cmpVal:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.internal.intern.Value>`](<#function-get>)

- [`function getByString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.intern.Value>`](<#function-getbystring>)

- [class T\_key](<#class-t_key>)

  - [`function new(?_s:stdgo.GoString, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool):Void`](<#t_key-function-new>)

- [class Value](<#class-value>)

  - [`function new(?__1:stdgo.GoArray<():Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool):Void`](<#value-function-new>)

# Variables


```haxe
import stdgo._internal.internal.intern.Intern_getByString
```


```haxe
var _valMap:stdgo.GoMap<stdgo._internal.internal.intern.T_key, stdgo.GoUIntptr>
```


```haxe
var _intern:stdgo.Ref<stdgo._internal.internal.godebug.Setting>
```


```haxe
var _valSafe:stdgo.GoMap<stdgo._internal.internal.intern.T_key, stdgo.Ref<stdgo._internal.internal.intern.Value>>
```


```haxe
var _mu:stdgo._internal.sync.Mutex
```


# Functions


```haxe
import stdgo._internal.internal.intern.Intern_getByString
```


## function \_safeMap


```haxe
function _safeMap():stdgo.GoMap<stdgo._internal.internal.intern.T_key, stdgo.Ref<stdgo._internal.internal.intern.Value>>
```


[\(view code\)](<./Intern_getByString.hx#L2>)


## function \_finalize


```haxe
function _finalize(_v:stdgo.Ref<stdgo._internal.internal.intern.Value>):Void
```


[\(view code\)](<./Intern_getByString.hx#L2>)


## function \_get


```haxe
function _get(_k:stdgo._internal.internal.intern.T_key):stdgo.Ref<stdgo._internal.internal.intern.Value>
```


[\(view code\)](<./Intern_getByString.hx#L2>)


## function \_keyFor


```haxe
function _keyFor(_cmpVal:stdgo.AnyInterface):stdgo._internal.internal.intern.T_key
```


[\(view code\)](<./Intern_getByString.hx#L2>)


## function get


```haxe
function get(_cmpVal:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.internal.intern.Value>
```


[\(view code\)](<./Intern_getByString.hx#L2>)


## function getByString


```haxe
function getByString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.intern.Value>
```


[\(view code\)](<./Intern_getByString.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.intern.*
```


## class T\_key


```haxe
var _cmpVal:stdgo.AnyInterface
```


```haxe
var _isString:Bool
```


```haxe
var _s:stdgo.GoString
```


### T\_key function new


```haxe
function new(?_s:stdgo.GoString, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool):Void
```


[\(view code\)](<./Intern_T_key.hx#L6>)


## class Value


```haxe
var __1:stdgo.GoArray<():Void>
```


```haxe
var _cmpVal:stdgo.AnyInterface
```


```haxe
var _resurrected:Bool
```


### Value function new


```haxe
function new(?__1:stdgo.GoArray<():Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool):Void
```


[\(view code\)](<./Intern_Value.hx#L7>)


