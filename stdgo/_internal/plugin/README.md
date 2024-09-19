# Module: `stdgo._internal.plugin`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [`function _lookup(_p:stdgo.Ref<stdgo._internal.plugin.Plugin>, _symName:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.plugin.Symbol;
}`](<#function-_lookup>)

- [`function _open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.plugin.Plugin>;
}`](<#function-_open>)

- [`function open(_path:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.plugin.Plugin>;
}`](<#function-open>)

- [class Plugin](<#class-plugin>)

  - [`function new(?_pluginpath:stdgo.GoString, ?_err:stdgo.GoString, ?_loaded:stdgo.Chan<{}>, ?_syms:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):Void`](<#plugin-function-new>)

- [typedef Symbol](<#typedef-symbol>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Functions


```haxe
import stdgo._internal.plugin.Plugin_open
```


## function \_lookup


```haxe
function _lookup(_p:stdgo.Ref<stdgo._internal.plugin.Plugin>, _symName:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.plugin.Symbol;
}
```


[\(view code\)](<./Plugin_open.hx#L2>)


## function \_open


```haxe
function _open(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.plugin.Plugin>;
}
```


[\(view code\)](<./Plugin_open.hx#L2>)


## function open


```haxe
function open(_path:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.plugin.Plugin>;
}
```


[\(view code\)](<./Plugin_open.hx#L2>)


# Classes


```haxe
import stdgo._internal.plugin.*
```


## class Plugin


```haxe
var _err:stdgo.GoString
```


```haxe
var _loaded:stdgo.Chan<{
}>
```


```haxe
var _pluginpath:stdgo.GoString
```


```haxe
var _syms:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>
```


### Plugin function new


```haxe
function new(?_pluginpath:stdgo.GoString, ?_err:stdgo.GoString, ?_loaded:stdgo.Chan<{
}>, ?_syms:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):Void
```


[\(view code\)](<./Plugin_Plugin.hx#L7>)


# Typedefs


```haxe
import stdgo._internal.plugin.*
```


## typedef Symbol


```haxe
typedef Symbol = stdgo.AnyInterface;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


