# Module: `stdgo._internal.internal`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function generate():Float`](<#function-generate>)

- [`function int(min:Int, max:Int):Int`](<#function-int>)

- [`function shuffle(a:Array<shuffle.T>):Array<shuffle.T>`](<#function-shuffle>)

- [class TypeInfoData\_go2hx\_](<#class-typeinfodatago2hx>)

  - [`function new():Void`](<#typeinfodatago2hx-function-new>)

- [class Async](<#class-async>)

  - [`function tick():Void`](<#async-function-tick>)

- [class HxbTypeInfoData](<#class-hxbtypeinfodata>)

  - [`function new():Void`](<#hxbtypeinfodata-function-new>)

- [class Macro](<#class-macro>)

  - [`function controlFlow(expr:Dynamic):Dynamic`](<#macro-function-controlflow>)

  - [`function stack(expr:Dynamic):Dynamic`](<#macro-function-stack>)

- [class TypeInfo](<#class-typeinfo>)

- [abstract TypeInternalMap](<#abstract-typeinternalmap>)

# Variables


```haxe
import stdgo._internal.internal.Random
```


```haxe
var MAX_VALUE_FLOAT:Float
```


```haxe
var MODULUS:Float
```


```haxe
var MULTIPLIER:Float
```


```haxe
var seed:Float
```


# Functions


```haxe
import stdgo._internal.internal.Random
```


## function generate


```haxe
function generate():Float
```


[\(view code\)](<./Random.hx#L9>)


## function int


```haxe
function int(min:Int, max:Int):Int
```


[\(view code\)](<./Random.hx#L12>)


## function shuffle


```haxe
function shuffle(a:Array<shuffle.T>):Array<shuffle.T>
```


[\(view code\)](<./Random.hx#L14>)


# Classes


```haxe
import stdgo._internal.internal.*
```


## class TypeInfoData\_go2hx\_


```haxe
var names:haxe.ds.Map<String, stdgo._internal.internal.reflect.GoType>
```


### TypeInfoData\_go2hx\_ function new


```haxe
function new():Void
```


[\(view code\)](<./Macro.macro.hx#L59>)


## class Async


### Async function tick


```haxe
function tick():Void
```


[\(view code\)](<./Async.hx#L4>)


## class HxbTypeInfoData


```haxe
var names:haxe.ds.Map<String, stdgo._internal.internal.reflect.GoType>
```


### HxbTypeInfoData function new


```haxe
function new():Void
```


[\(view code\)](<./HxbTypeInfoData.hx#L4>)


## class Macro


### Macro function controlFlow


```haxe
function controlFlow(expr:Dynamic):Dynamic
```


### Macro function stack


```haxe
function stack(expr:Dynamic):Dynamic
```


## class TypeInfo


```haxe
var names:stdgo._internal.internal._TypeInfo.TypeInternalMap
```


# Abstracts


## abstract TypeInternalMap


[\(view file containing code\)](<./TypeInfo.hx>)


