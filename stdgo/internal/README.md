# Module: `stdgo.internal`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function generate():Float`](<#function-generate>)

- [`function int(min:Int, max:Int):Int`](<#function-int>)

- [`function shuffle(a:Array<shuffle.T>):Array<shuffle.T>`](<#function-shuffle>)

- [class TypeInfoData\_go2hx\_null](<#class-typeinfodata_go2hx_null>)

  - [`function new():Void`](<#typeinfodata_go2hx_null-function-new>)

- [class Async](<#class-async>)

  - [`function tick():Void`](<#async-function-tick>)

- [class Macro](<#class-macro>)

  - [`function controlFlow(expr:Dynamic):Dynamic`](<#macro-function-controlflow>)

  - [`function stack(expr:Dynamic):Dynamic`](<#macro-function-stack>)

- [class TypeInfo](<#class-typeinfo>)

- [abstract TypeInternalMap](<#abstract-typeinternalmap>)

# Variables


```haxe
import stdgo.internal.Random
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
import stdgo.internal.Random
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
import stdgo.internal.*
```


## class TypeInfoData\_go2hx\_null


```haxe
var names:Map<String, Dynamic>
```


### TypeInfoData\_go2hx\_null function new


```haxe
function new():Void
```


[\(view code\)](<./Macro.macro.hx#L29>)


## class Async


### Async function tick


```haxe
function tick():Void
```


[\(view code\)](<./Async.hx#L4>)


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
var names:stdgo.internal._TypeInfo.TypeInternalMap
```


```haxe
var namesHxb:stdgo.internal._TypeInfo.TypeInternalMap
```


# Abstracts


## abstract TypeInternalMap


[\(view file containing code\)](<./TypeInfo.hx>)


