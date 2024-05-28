# Module: `stdgo._internal.internal.fmtsort`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [`function _compare(_aVal:stdgo._internal.reflect.Value, _bVal:stdgo._internal.reflect.Value):stdgo.GoInt`](<#function-_compare>)

- [`function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt`](<#function-_floatcompare>)

- [`function _isNaN(_a:stdgo.GoFloat64):Bool`](<#function-_isnan>)

- [`function _nilCompare(_aVal:stdgo._internal.reflect.Value, _bVal:stdgo._internal.reflect.Value):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_nilcompare>)

- [`function compare(_a:stdgo._internal.reflect.Value, _b:stdgo._internal.reflect.Value):stdgo.GoInt`](<#function-compare>)

- [`function sort(_mapValue:stdgo._internal.reflect.Value):stdgo.Ref<stdgo._internal.internal.fmtsort.SortedMap>`](<#function-sort>)

- [class SortedMap](<#class-sortedmap>)

  - [`function new(?key:stdgo.Slice<stdgo._internal.reflect.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Value>):Void`](<#sortedmap-function-new>)

  - [`function len():stdgo.GoInt`](<#sortedmap-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#sortedmap-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#sortedmap-function-swap>)

# Functions


```haxe
import stdgo._internal.internal.fmtsort.Fmtsort
```


## function \_compare


```haxe
function _compare(_aVal:stdgo._internal.reflect.Value, _bVal:stdgo._internal.reflect.Value):stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L34>)


## function \_floatCompare


```haxe
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L167>)


## function \_isNaN


```haxe
function _isNaN(_a:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Fmtsort.hx#L179>)


## function \_nilCompare


```haxe
function _nilCompare(_aVal:stdgo._internal.reflect.Value, _bVal:stdgo._internal.reflect.Value):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmtsort.hx#L155>)


## function compare


```haxe
function compare(_a:stdgo._internal.reflect.Value, _b:stdgo._internal.reflect.Value):stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L15>)


## function sort


```haxe
function sort(_mapValue:stdgo._internal.reflect.Value):stdgo.Ref<stdgo._internal.internal.fmtsort.SortedMap>
```


[\(view code\)](<./Fmtsort.hx#L18>)


# Classes


```haxe
import stdgo._internal.internal.fmtsort.*
```


## class SortedMap


```haxe
var key:stdgo.Slice<stdgo._internal.reflect.Value>
```


```haxe
var value:stdgo.Slice<stdgo._internal.reflect.Value>
```


### SortedMap function new


```haxe
function new(?key:stdgo.Slice<stdgo._internal.reflect.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Value>):Void
```


[\(view code\)](<./Fmtsort.hx#L6>)


### SortedMap function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L228>)


### SortedMap function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Fmtsort.hx#L223>)


### SortedMap function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Fmtsort.hx#L199>)


