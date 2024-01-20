# Module: `stdgo.internal.fmtsort`

[(view library index)](../../stdgo.md)


# Overview



Package fmtsort provides a general stable ordering mechanism
for maps, on behalf of the fmt and text/template packages.
It is not guaranteed to be efficient and works only for types
that are valid map keys.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [`function _compare(_aVal:stdgo.reflect.Value, _bVal:stdgo.reflect.Value):stdgo.GoInt`](<#function-_compare>)

- [`function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt`](<#function-_floatcompare>)

- [`function _isNaN(_a:stdgo.GoFloat64):Bool`](<#function-_isnan>)

- [`function _nilCompare(_aVal:stdgo.reflect.Value, _bVal:stdgo.reflect.Value):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_nilcompare>)

- [`function compare(_a:stdgo.reflect.Value, _b:stdgo.reflect.Value):stdgo.GoInt`](<#function-compare>)

- [`function sort(_mapValue:stdgo.reflect.Value):stdgo.Ref<stdgo.internal.fmtsort.SortedMap>`](<#function-sort>)

- [class SortedMap](<#class-sortedmap>)

  - [`function new(?key:stdgo.Slice<stdgo.reflect.Value>, ?value:stdgo.Slice<stdgo.reflect.Value>):Void`](<#sortedmap-function-new>)

  - [`function len():stdgo.GoInt`](<#sortedmap-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#sortedmap-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#sortedmap-function-swap>)

# Functions


```haxe
import stdgo.internal.fmtsort.Fmtsort
```


## function \_compare


```haxe
function _compare(_aVal:stdgo.reflect.Value, _bVal:stdgo.reflect.Value):stdgo.GoInt
```



compare compares two values of the same type. It returns \-1, 0, 1
according to whether a \> b \(1\), a == b \(0\), or a \< b \(\-1\).
If the types differ, it returns \-1.
See the comment on Sort for the comparison rules.  

[\(view code\)](<./Fmtsort.hx#L72>)


## function \_floatCompare


```haxe
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt
```



floatCompare compares two floating\-point values. NaNs compare low.  

[\(view code\)](<./Fmtsort.hx#L215>)


## function \_isNaN


```haxe
function _isNaN(_a:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Fmtsort.hx#L227>)


## function \_nilCompare


```haxe
function _nilCompare(_aVal:stdgo.reflect.Value, _bVal:stdgo.reflect.Value):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



nilCompare checks whether either value is nil. If not, the boolean is false.
If either value is nil, the boolean is true and the integer is the comparison
value. The comparison is defined to be 0 if both are nil, otherwise the one
nil value compares low. Both arguments must represent a chan, func,
interface, map, pointer, or slice.  

[\(view code\)](<./Fmtsort.hx#L200>)


## function compare


```haxe
function compare(_a:stdgo.reflect.Value, _b:stdgo.reflect.Value):stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L27>)


## function sort


```haxe
function sort(_mapValue:stdgo.reflect.Value):stdgo.Ref<stdgo.internal.fmtsort.SortedMap>
```



Sort accepts a map and returns a SortedMap that has the same keys and
values but in a stable sorted order according to the keys, modulo issues
raised by unorderable key values such as NaNs.  


The ordering rules are more general than with Go's \< operator:  

```
   - when applicable, nil compares low
   - ints, floats, and strings order by <
   - NaN compares less than non-NaN floats
   - bool compares false before true
   - complex compares real, then imag
   - pointers compare by machine address
   - channel values compare by machine address
   - structs compare each field in turn
   - arrays compare each element in turn.
     Otherwise identical arrays compare by length.
   - interface values compare first by reflect.Type describing the concrete type
     and then by concrete value as described in the previous rules.
```
[\(view code\)](<./Fmtsort.hx#L50>)


# Classes


```haxe
import stdgo.internal.fmtsort.*
```


## class SortedMap



SortedMap represents a map's keys and values. The keys and values are
aligned in index order: Value\[i\] is the value in the map corresponding to Key\[i\].  

```haxe
var key:stdgo.Slice<stdgo.reflect.Value>
```


```haxe
var value:stdgo.Slice<stdgo.reflect.Value>
```


### SortedMap function new


```haxe
function new(?key:stdgo.Slice<stdgo.reflect.Value>, ?value:stdgo.Slice<stdgo.reflect.Value>):Void
```


[\(view code\)](<./Fmtsort.hx#L18>)


### SortedMap function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Fmtsort.hx#L268>)


### SortedMap function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Fmtsort.hx#L263>)


### SortedMap function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Fmtsort.hx#L247>)


