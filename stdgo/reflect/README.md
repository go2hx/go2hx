# Module: `stdgo.reflect`

[(view library index)](../stdgo.md)


# Overview



Package reflect implements run\-time reflection, allowing a program to
manipulate objects with arbitrary types. The typical use is to take a value
with static type interface\{\} and extract its dynamic type information by
calling TypeOf, which returns a Type.  


A call to ValueOf returns a Value representing the run\-time data.
Zero takes a Type and returns a Value representing a zero value
for that type.  


See "The Laws of Reflection" for an introduction to reflection in Go:
https://golang.org/doc/articles/laws_of_reflection.html  

# Index


- [Constants](<#constants>)

- [`function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-append>)

- [`function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-appendslice>)

- [`function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-arrayof>)

- [`function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-chanof>)

- [`function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):stdgo.GoInt`](<#function-copy>)

- [`function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool`](<#function-deepequal>)

- [`function funcOf(_in:stdgo.Slice<stdgo.reflect.Type_>, _out:stdgo.Slice<stdgo.reflect.Type_>, _variadic:Bool):stdgo.reflect.Type_`](<#function-funcof>)

- [`function indirect(_v:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-indirect>)

- [`function makeChan(_typ:stdgo.reflect.Type_, _buffer:stdgo.GoInt):stdgo.reflect.Value`](<#function-makechan>)

- [`function makeFunc(_typ:stdgo.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value`](<#function-makefunc>)

- [`function makeMap(_typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-makemap>)

- [`function makeMapWithSize(_typ:stdgo.reflect.Type_, _n:stdgo.GoInt):stdgo.reflect.Value`](<#function-makemapwithsize>)

- [`function makeSlice(_typ:stdgo.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo.reflect.Value`](<#function-makeslice>)

- [`function mapOf(_key:stdgo.reflect.Type_, _elem:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-mapof>)

- [`function newAt(_typ:stdgo.reflect.Type_, _p:stdgo.unsafe.UnsafePointer):stdgo.reflect.Value`](<#function-newat>)

- [`function new_(_typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-new_>)

- [`function pointerTo(_t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-pointerto>)

- [`function ptrTo(_t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-ptrto>)

- [`function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):{
	_2:Bool;
	_1:stdgo.reflect.Value;
	_0:stdgo.GoInt;
}`](<#function-select>)

- [`function sliceOf(_t:stdgo.reflect.Type_):stdgo.reflect.Type_`](<#function-sliceof>)

- [`function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):stdgo.reflect.Type_`](<#function-structof>)

- [`function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#function-swapper>)

- [`function typeOf(_i:stdgo.AnyInterface):stdgo.reflect.Type_`](<#function-typeof>)

- [`function valueOf(_i:stdgo.AnyInterface):stdgo.reflect.Value`](<#function-valueof>)

- [`function visibleFields(_t:stdgo.reflect.Type_):stdgo.Slice<stdgo.reflect.StructField>`](<#function-visiblefields>)

- [`function zero(_typ:stdgo.reflect.Type_):stdgo.reflect.Value`](<#function-zero>)

- [class MapIter](<#class-mapiter>)

  - [`function new(?map:haxe.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo.internal.reflect._Type, ?index:Int):Void`](<#mapiter-function-new>)

  - [`function key():stdgo.reflect.Value`](<#mapiter-function-key>)

  - [`function next():Bool`](<#mapiter-function-next>)

  - [`function reset( _v:stdgo.reflect.Value):Void`](<#mapiter-function-reset>)

  - [`function value():stdgo.reflect.Value`](<#mapiter-function-value>)

- [class Method](<#class-method>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type_>, ?func:stdgo.reflect.Value, ?index:Null<stdgo.GoInt>):Void`](<#method-function-new>)

  - [`function isExported():Bool`](<#method-function-isexported>)

- [class SelectCase](<#class-selectcase>)

  - [`function new(?dir:Null<stdgo.reflect.SelectDir>, ?chan:stdgo.reflect.Value, ?send:stdgo.reflect.Value):Void`](<#selectcase-function-new>)

- [class SliceHeader](<#class-sliceheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void`](<#sliceheader-function-new>)

- [class StringHeader](<#class-stringheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>):Void`](<#stringheader-function-new>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type_>, ?tag:Null<stdgo.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void`](<#structfield-function-new>)

  - [`function isExported():Bool`](<#structfield-function-isexported>)

- [class Value](<#class-value>)

  - [`function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:Null<stdgo.GoInt>, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string:():stdgo.GoString):Void`](<#value-function-new>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function addr():stdgo.reflect.Value`](<#value-function-addr>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#value-function-bytes>)

  - [`function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value-function-call>)

  - [`function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>`](<#value-function-callslice>)

  - [`function canAddr():Bool`](<#value-function-canaddr>)

  - [`function canComplex():Bool`](<#value-function-cancomplex>)

  - [`function canConvert( _t:stdgo.reflect.Type_):Bool`](<#value-function-canconvert>)

  - [`function canFloat():Bool`](<#value-function-canfloat>)

  - [`function canInt():Bool`](<#value-function-canint>)

  - [`function canInterface():Bool`](<#value-function-caninterface>)

  - [`function canSet():Bool`](<#value-function-canset>)

  - [`function canUint():Bool`](<#value-function-canuint>)

  - [`function cap():stdgo.GoInt`](<#value-function-cap>)

  - [`function clear():Void`](<#value-function-clear>)

  - [`function close():Void`](<#value-function-close>)

  - [`function comparable():Bool`](<#value-function-comparable>)

  - [`function complex():stdgo.GoComplex128`](<#value-function-complex>)

  - [`function convert( _t:stdgo.reflect.Type_):stdgo.reflect.Value`](<#value-function-convert>)

  - [`function elem():stdgo.reflect.Value`](<#value-function-elem>)

  - [`function equal( _u:stdgo.reflect.Value):Bool`](<#value-function-equal>)

  - [`function field( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-field>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value`](<#value-function-fieldbyindex>)

  - [`function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{ _1:stdgo.Error; _0:stdgo.reflect.Value;}`](<#value-function-fieldbyindexerr>)

  - [`function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):stdgo.reflect.Value`](<#value-function-fieldbynamefunc>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#value-function-grow>)

  - [`function index( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-index>)

  - [`function int_():stdgo.GoInt64`](<#value-function-int_>)

  - [`function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>`](<#value-function-interfacedata>)

  - [`function interface_():stdgo.AnyInterface`](<#value-function-interface_>)

  - [`function isNil():Bool`](<#value-function-isnil>)

  - [`function isValid():Bool`](<#value-function-isvalid>)

  - [`function isZero():Bool`](<#value-function-iszero>)

  - [`function kind():stdgo.reflect.Kind`](<#value-function-kind>)

  - [`function len():stdgo.GoInt`](<#value-function-len>)

  - [`function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value`](<#value-function-mapindex>)

  - [`function mapKeys():stdgo.Slice<stdgo.reflect.Value>`](<#value-function-mapkeys>)

  - [`function mapRange():stdgo.Ref<stdgo.reflect.MapIter>`](<#value-function-maprange>)

  - [`function method( _i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-method>)

  - [`function methodByName( _name:stdgo.GoString):stdgo.reflect.Value`](<#value-function-methodbyname>)

  - [`function numField():stdgo.GoInt`](<#value-function-numfield>)

  - [`function numMethod():stdgo.GoInt`](<#value-function-nummethod>)

  - [`function overflowComplex( _x:stdgo.GoComplex128):Bool`](<#value-function-overflowcomplex>)

  - [`function overflowFloat( _x:stdgo.GoFloat64):Bool`](<#value-function-overflowfloat>)

  - [`function overflowInt( _x:stdgo.GoInt64):Bool`](<#value-function-overflowint>)

  - [`function overflowUint( _x:stdgo.GoUInt64):Bool`](<#value-function-overflowuint>)

  - [`function pointer():stdgo.GoUIntptr`](<#value-function-pointer>)

  - [`function recv():{ _1:Bool; _0:stdgo.reflect.Value;}`](<#value-function-recv>)

  - [`function send( _x:stdgo.reflect.Value):Void`](<#value-function-send>)

  - [`function set( _x:stdgo.reflect.Value):Void`](<#value-function-set>)

  - [`function setBool( _x:Bool):Void`](<#value-function-setbool>)

  - [`function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void`](<#value-function-setbytes>)

  - [`function setCap( _n:stdgo.GoInt):Void`](<#value-function-setcap>)

  - [`function setComplex( _x:stdgo.GoComplex128):Void`](<#value-function-setcomplex>)

  - [`function setFloat( _x:stdgo.GoFloat64):Void`](<#value-function-setfloat>)

  - [`function setInt( _x:stdgo.GoInt64):Void`](<#value-function-setint>)

  - [`function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value-function-setiterkey>)

  - [`function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void`](<#value-function-setitervalue>)

  - [`function setLen( _n:stdgo.GoInt):Void`](<#value-function-setlen>)

  - [`function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void`](<#value-function-setmapindex>)

  - [`function setPointer( _x:stdgo.unsafe.UnsafePointer):Void`](<#value-function-setpointer>)

  - [`function setString( _x:stdgo.GoString):Void`](<#value-function-setstring>)

  - [`function setUint( _x:stdgo.GoUInt64):Void`](<#value-function-setuint>)

  - [`function setZero():Void`](<#value-function-setzero>)

  - [`function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-slice>)

  - [`function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-slice3>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function tryRecv():{ _1:Bool; _0:stdgo.reflect.Value;}`](<#value-function-tryrecv>)

  - [`function trySend( _x:stdgo.reflect.Value):Bool`](<#value-function-trysend>)

  - [`function type():stdgo.reflect.Type_`](<#value-function-type>)

  - [`function uint():stdgo.GoUInt64`](<#value-function-uint>)

  - [`function unsafeAddr():stdgo.GoUIntptr`](<#value-function-unsafeaddr>)

  - [`function unsafePointer():stdgo.unsafe.UnsafePointer`](<#value-function-unsafepointer>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?kind:stdgo.reflect.Kind, ?toString:():String):Void`](<#valueerror-function-new>)

  - [`function toString():String`](<#valueerror-function-tostring>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [typedef ChanDir](<#typedef-chandir>)

- [typedef Kind](<#typedef-kind>)

- [typedef SelectDir](<#typedef-selectdir>)

- [typedef StructTag](<#typedef-structtag>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo.reflect.Reflect
```


```haxe
final array:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final bool_:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final bothDir:stdgo.reflect.ChanDir = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.reflect.Reflect.ChanDir))
```



chan  

```haxe
final chan:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final complex128:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final complex64:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final float32:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final float64:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final func:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final int16:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final int32:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final int64:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final int8:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final int_:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final interface_:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final invalid:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final map_:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final pointer:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final ptr:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```



Ptr is the old name for the Pointer kind.  

```haxe
final recvDir:stdgo.reflect.ChanDir = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.reflect.Reflect.ChanDir))
```



\<\-chan  

```haxe
final selectDefault:Null<Dynamic> = @:unknown_default_value null
```



default  

```haxe
final selectRecv:Null<Dynamic> = @:unknown_default_value null
```



case \<\-Chan:  

```haxe
final selectSend:Null<Dynamic> = @:unknown_default_value null
```



case Chan \<\- Send  

```haxe
final sendDir:stdgo.reflect.ChanDir = ((((0 : stdgo.StdGoTypes.GoInt)) : stdgo.reflect.Reflect.ChanDir))
```



chan\<\-  

```haxe
final slice:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final string:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final struct_:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uint:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uint16:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uint32:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uint64:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uint8:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final uintptr:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


```haxe
final unsafePointer:stdgo.reflect.Kind = ((((0 : stdgo.StdGoTypes.GoUInt)) : stdgo.reflect.Reflect.Kind))
```


# Functions


```haxe
import stdgo.reflect.Reflect
```


## function append


```haxe
function append(_s:stdgo.reflect.Value, _x:haxe.Rest<stdgo.reflect.Value>):stdgo.reflect.Value
```



Append appends the values x to a slice s and returns the resulting slice.
As in Go, each x's value must be assignable to the slice's element type.  

[\(view code\)](<./Reflect.hx#L968>)


## function appendSlice


```haxe
function appendSlice(_s:stdgo.reflect.Value, _t:stdgo.reflect.Value):stdgo.reflect.Value
```



AppendSlice appends a slice t to a slice s and returns the resulting slice.
The slices s and t must have the same element type.  

[\(view code\)](<./Reflect.hx#L973>)


## function arrayOf


```haxe
function arrayOf(_length:stdgo.GoInt, _elem:stdgo.reflect.Type_):stdgo.reflect.Type_
```



ArrayOf returns the array type with the given length and element type.
For example, if t represents int, ArrayOf\(5, t\) represents \[5\]int.  


If the resulting type would be larger than the available address space,
ArrayOf panics.  

[\(view code\)](<./Reflect.hx#L963>)


## function chanOf


```haxe
function chanOf(_dir:stdgo.reflect.ChanDir, _t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



ChanOf returns the channel type with the given direction and element type.
For example, if t represents int, ChanOf\(RecvDir, t\) represents \<\-chan int.  


The gc runtime imposes a limit of 64 kB on channel element types.
If t's size is equal to or exceeds this limit, ChanOf panics.  

[\(view code\)](<./Reflect.hx#L921>)


## function copy


```haxe
function copy(_dst:stdgo.reflect.Value, _src:stdgo.reflect.Value):stdgo.GoInt
```



Copy copies the contents of src into dst until either
dst has been filled or src has been exhausted.
It returns the number of elements copied.
Dst and src each must have kind Slice or Array, and
dst and src must have the same element type.  


As a special case, src can have kind String if the element type of dst is kind Uint8.  

[\(view code\)](<./Reflect.hx#L983>)


## function deepEqual


```haxe
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Bool
```



DeepEqual reports whether x and y are “deeply equal,” defined as follows.
Two values of identical type are deeply equal if one of the following cases applies.
Values of distinct types are never deeply equal.  


Array values are deeply equal when their corresponding elements are deeply equal.  


Struct values are deeply equal if their corresponding fields,
both exported and unexported, are deeply equal.  


Func values are deeply equal if both are nil; otherwise they are not deeply equal.  


Interface values are deeply equal if they hold deeply equal concrete values.  


Map values are deeply equal when all of the following are true:
they are both nil or both non\-nil, they have the same length,
and either they are the same map object or their corresponding keys
\(matched using Go equality\) map to deeply equal values.  


Pointer values are deeply equal if they are equal using Go's == operator
or if they point to deeply equal values.  


Slice values are deeply equal when all of the following are true:
they are both nil or both non\-nil, they have the same length,
and either they point to the same initial entry of the same underlying array
\(that is, &x\[0\] == &y\[0\]\) or their corresponding elements \(up to length\) are deeply equal.
Note that a non\-nil empty slice and a nil slice \(for example, \[\]byte\{\} and \[\]byte\(nil\)\)
are not deeply equal.  


Other values \- numbers, bools, strings, and channels \- are deeply equal
if they are equal using Go's == operator.  


In general DeepEqual is a recursive relaxation of Go's == operator.
However, this idea is impossible to implement without some inconsistency.
Specifically, it is possible for a value to be unequal to itself,
either because it is of func type \(uncomparable in general\)
or because it is a floating\-point NaN value \(not equal to itself in floating\-point comparison\),
or because it is an array, struct, or interface containing
such a value.
On the other hand, pointer values are always equal to themselves,
even if they point at or contain such problematic values,
because they compare equal using Go's == operator, and that
is a sufficient condition to be deeply equal, regardless of content.
DeepEqual has been defined so that the same short\-cut applies
to slices and maps: if x and y are the same slice or the same map,
they are deeply equal regardless of content.  


As DeepEqual traverses the data values it may find a cycle. The
second and subsequent times that DeepEqual compares two pointer
values that have been compared before, it treats the values as
equal rather than examining the values to which they point.
This ensures that DeepEqual terminates.  

[\(view code\)](<./Reflect.hx#L854>)


## function funcOf


```haxe
function funcOf(_in:stdgo.Slice<stdgo.reflect.Type_>, _out:stdgo.Slice<stdgo.reflect.Type_>, _variadic:Bool):stdgo.reflect.Type_
```



FuncOf returns the function type with the given argument and result types.
For example if k represents int and e represents string,
FuncOf\(\[\]Type\{k\}, \[\]Type\{e\}, false\) represents func\(int\) string.  


The variadic argument controls whether the function is variadic. FuncOf
panics if the in\[len\(in\)\-1\] does not represent a slice and variadic is
true.  

[\(view code\)](<./Reflect.hx#L940>)


## function indirect


```haxe
function indirect(_v:stdgo.reflect.Value):stdgo.reflect.Value
```



Indirect returns the value that v points to.
If v is a nil pointer, Indirect returns a zero Value.
If v is not a pointer, Indirect returns v.  

[\(view code\)](<./Reflect.hx#L1023>)


## function makeChan


```haxe
function makeChan(_typ:stdgo.reflect.Type_, _buffer:stdgo.GoInt):stdgo.reflect.Value
```



MakeChan creates a new channel with the specified type and buffer size.  

[\(view code\)](<./Reflect.hx#L1008>)


## function makeFunc


```haxe
function makeFunc(_typ:stdgo.reflect.Type_, _fn:(_args:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>):stdgo.reflect.Value
```



MakeFunc returns a new function of the given Type
that wraps the function fn. When called, that new function
does the following:  

```
   - converts its arguments to a slice of Values.
   - runs results := fn(args).
   - returns the results as a slice of Values, one per formal result.
```

The implementation fn can assume that the argument Value slice
has the number and type of arguments given by typ.
If typ describes a variadic function, the final Value is itself
a slice representing the variadic arguments, as in the
body of a variadic function. The result Value slice returned by fn
must have the number and type of results given by typ.  


The Value.Call method allows the caller to invoke a typed function
in terms of Values; in contrast, MakeFunc allows the caller to implement
a typed function in terms of Values.  


The Examples section of the documentation includes an illustration
of how to use MakeFunc to build a swap function for different types.  

[\(view code\)](<./Reflect.hx#L885>)


## function makeMap


```haxe
function makeMap(_typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



MakeMap creates a new map with the specified type.  

[\(view code\)](<./Reflect.hx#L1012>)


## function makeMapWithSize


```haxe
function makeMapWithSize(_typ:stdgo.reflect.Type_, _n:stdgo.GoInt):stdgo.reflect.Value
```



MakeMapWithSize creates a new map with the specified type
and initial space for approximately n elements.  

[\(view code\)](<./Reflect.hx#L1017>)


## function makeSlice


```haxe
function makeSlice(_typ:stdgo.reflect.Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):stdgo.reflect.Value
```



MakeSlice creates a new zero\-initialized slice value
for the specified slice type, length, and capacity.  

[\(view code\)](<./Reflect.hx#L999>)


## function mapOf


```haxe
function mapOf(_key:stdgo.reflect.Type_, _elem:stdgo.reflect.Type_):stdgo.reflect.Type_
```



MapOf returns the map type with the given key and element types.
For example, if k represents int and e represents string,
MapOf\(k, e\) represents map\[int\]string.  


If the key type is not a valid map key type \(that is, if it does
not implement Go's == operator\), MapOf panics.  

[\(view code\)](<./Reflect.hx#L930>)


## function newAt


```haxe
function newAt(_typ:stdgo.reflect.Type_, _p:stdgo.unsafe.UnsafePointer):stdgo.reflect.Value
```



NewAt returns a Value representing a pointer to a value of the
specified type, using p as that pointer.  

[\(view code\)](<./Reflect.hx#L1054>)


## function new\_


```haxe
function new_(_typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



New returns a Value representing a pointer to a new zero value
for the specified type. That is, the returned Value's Type is PointerTo\(typ\).  

[\(view code\)](<./Reflect.hx#L1045>)


## function pointerTo


```haxe
function pointerTo(_t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



PointerTo returns the pointer type with element t.
For example, if t represents type Foo, PointerTo\(t\) represents \*Foo.  

[\(view code\)](<./Reflect.hx#L913>)


## function ptrTo


```haxe
function ptrTo(_t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



PtrTo returns the pointer type with element t.
For example, if t represents type Foo, PtrTo\(t\) represents \*Foo.  


PtrTo is the old spelling of PointerTo.
The two functions behave identically.  

[\(view code\)](<./Reflect.hx#L908>)


## function select


```haxe
function select(_cases:stdgo.Slice<stdgo.reflect.SelectCase>):{
	_2:Bool;
	_1:stdgo.reflect.Value;
	_0:stdgo.GoInt;
}
```



Select executes a select operation described by the list of cases.
Like the Go select statement, it blocks until at least one of the cases
can proceed, makes a uniform pseudo\-random choice,
and then executes that case. It returns the index of the chosen case
and, if that case was a receive operation, the value received and a
boolean indicating whether the value corresponds to a send on the channel
\(as opposed to a zero value received because the channel is closed\).
Select supports a maximum of 65536 cases.  

[\(view code\)](<./Reflect.hx#L994>)


## function sliceOf


```haxe
function sliceOf(_t:stdgo.reflect.Type_):stdgo.reflect.Type_
```



SliceOf returns the slice type with element type t.
For example, if t represents int, SliceOf\(t\) represents \[\]int.  

[\(view code\)](<./Reflect.hx#L945>)


## function structOf


```haxe
function structOf(_fields:stdgo.Slice<stdgo.reflect.StructField>):stdgo.reflect.Type_
```



StructOf returns the struct type containing fields.
The Offset and Index fields are ignored and computed as they would be
by the compiler.  


StructOf currently does not generate wrapper methods for embedded
fields and panics if passed unexported StructFields.
These limitations may be lifted in a future version.  

[\(view code\)](<./Reflect.hx#L955>)


## function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```



Swapper returns a function that swaps the elements in the provided
slice.  


Swapper panics if the provided interface is not a slice.  

[\(view code\)](<./Reflect.hx#L892>)


## function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):stdgo.reflect.Type_
```



TypeOf returns the reflection Type that represents the dynamic type of i.
If i is a nil interface value, TypeOf returns nil.  

[\(view code\)](<./Reflect.hx#L897>)


## function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):stdgo.reflect.Value
```



ValueOf returns a new Value initialized to the concrete value
stored in the interface i. ValueOf\(nil\) returns the zero Value.  

[\(view code\)](<./Reflect.hx#L1028>)


## function visibleFields


```haxe
function visibleFields(_t:stdgo.reflect.Type_):stdgo.Slice<stdgo.reflect.StructField>
```



VisibleFields returns all the visible fields in t, which must be a
struct type. A field is defined as visible if it's accessible
directly with a FieldByName call. The returned fields include fields
inside anonymous struct members and unexported fields. They follow
the same order found in the struct, with anonymous fields followed
immediately by their promoted fields.  


For each element e of the returned slice, the corresponding field
can be retrieved from a value v of type t by calling v.FieldByIndex\(e.Index\).  

[\(view code\)](<./Reflect.hx#L1066>)


## function zero


```haxe
function zero(_typ:stdgo.reflect.Type_):stdgo.reflect.Value
```



Zero returns a Value representing the zero value for the specified type.
The result is different from the zero value of the Value struct,
which represents no value at all.
For example, Zero\(TypeOf\(42\)\) returns a Value with Kind Int and value 0.
The returned value is neither addressable nor settable.  

[\(view code\)](<./Reflect.hx#L1038>)


# Classes


```haxe
import stdgo.reflect.*
```


## class MapIter



A MapIter is an iterator for ranging over a map.
See Value.MapRange.  

### MapIter function new


```haxe
function new(?map:haxe.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo.internal.reflect._Type, ?index:Int):Void
```


[\(view code\)](<./Reflect.hx#L681>)


### MapIter function key


```haxe
function key():stdgo.reflect.Value
```



Key returns the key of iter's current map entry.  

[\(view code\)](<./Reflect.hx#L3016>)


### MapIter function next


```haxe
function next():Bool
```



Next advances the map iterator and reports whether there is another
entry. It returns false when iter is exhausted; subsequent
calls to Key, Value, or Next will panic.  

[\(view code\)](<./Reflect.hx#L2982>)


### MapIter function reset


```haxe
function reset( _v:stdgo.reflect.Value):Void
```



Reset modifies iter to iterate over v.
It panics if v's Kind is not Map and v is not the zero Value.
Reset\(Value\{\}\) causes iter to not to refer to any map,
which may allow the previously iterated\-over map to be garbage collected.  

[\(view code\)](<./Reflect.hx#L2969>)


### MapIter function value


```haxe
function value():stdgo.reflect.Value
```



Value returns the value of iter's current map entry.  

[\(view code\)](<./Reflect.hx#L2997>)


## class Method



Method represents a single method.  

```haxe
var func:stdgo.reflect.Value
```


```haxe
var index:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```



Name is the method name.  

```haxe
var pkgPath:stdgo.GoString
```



PkgPath is the package path that qualifies a lower case \(unexported\)
method name. It is empty for upper case \(exported\) method names.
The combination of PkgPath and Name uniquely identifies a method
in a method set.
See https://golang.org/ref/spec#Uniqueness_of_identifiers  

```haxe
var type:stdgo.reflect.Type_
```


### Method function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type_>, ?func:stdgo.reflect.Value, ?index:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Reflect.hx#L512>)


### Method function isExported


```haxe
function isExported():Bool
```



IsExported reports whether the method is exported.  

[\(view code\)](<./Reflect.hx#L1086>)


## class SelectCase



A SelectCase describes a single case in a select operation.
The kind of case depends on Dir, the communication direction.  


If Dir is SelectDefault, the case represents a default case.
Chan and Send must be zero Values.  


If Dir is SelectSend, the case represents a send operation.
Normally Chan's underlying value must be a channel, and Send's underlying value must be
assignable to the channel's element type. As a special case, if Chan is a zero Value,
then the case is ignored, and the field Send will also be ignored and may be either zero
or non\-zero.  


If Dir is SelectRecv, the case represents a receive operation.
Normally Chan's underlying value must be a channel and Send must be a zero Value.
If Chan is a zero Value, then the case is ignored, but Send must still be a zero Value.
When a receive operation is selected, the received Value is returned by Select.  

```haxe
var chan:stdgo.reflect.Value
```


```haxe
var dir:stdgo.reflect.SelectDir
```


```haxe
var send:stdgo.reflect.Value
```


### SelectCase function new


```haxe
function new(?dir:Null<stdgo.reflect.SelectDir>, ?chan:stdgo.reflect.Value, ?send:stdgo.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L767>)


## class SliceHeader



SliceHeader is the runtime representation of a slice.
It cannot be used safely or portably and its representation may
change in a later release.
Moreover, the Data field is not sufficient to guarantee the data
it references will not be garbage collected, so programs must keep
a separate, correctly typed pointer to the underlying data.  


Deprecated: Use unsafe.Slice or unsafe.SliceData instead.  

```haxe
var cap:stdgo.GoInt
```


```haxe
var data:stdgo.GoUIntptr
```


```haxe
var len:stdgo.GoInt
```


### SliceHeader function new


```haxe
function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Reflect.hx#L733>)


## class StringHeader



StringHeader is the runtime representation of a string.
It cannot be used safely or portably and its representation may
change in a later release.
Moreover, the Data field is not sufficient to guarantee the data
it references will not be garbage collected, so programs must keep
a separate, correctly typed pointer to the underlying data.  


Deprecated: Use unsafe.String or unsafe.StringData instead.  

```haxe
var data:stdgo.GoUIntptr
```


```haxe
var len:stdgo.GoInt
```


### StringHeader function new


```haxe
function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Reflect.hx#L708>)


## class StructField



A StructField describes a single field in a struct.  

```haxe
var anonymous:Bool
```


```haxe
var index:stdgo.Slice<stdgo.GoInt>
```


```haxe
var name:stdgo.GoString
```



Name is the field name.  

```haxe
var offset:stdgo.GoUIntptr
```


```haxe
var pkgPath:stdgo.GoString
```



PkgPath is the package path that qualifies a lower case \(unexported\)
field name. It is empty for upper case \(exported\) field names.
See https://golang.org/ref/spec#Uniqueness_of_identifiers  

```haxe
var tag:stdgo.reflect.StructTag
```


```haxe
var type:stdgo.reflect.Type_
```


### StructField function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:Null<stdgo.reflect.Type_>, ?tag:Null<stdgo.reflect.StructTag>, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void
```


[\(view code\)](<./Reflect.hx#L545>)


### StructField function isExported


```haxe
function isExported():Bool
```



IsExported reports whether the field is exported.  

[\(view code\)](<./Reflect.hx#L1107>)


## class Value



Value is the reflection interface to a Go value.  


Not all methods apply to all kinds of values. Restrictions,
if any, are noted in the documentation for each method.
Use the Kind method to find out the kind of value before
calling kind\-specific methods. Calling a method
inappropriate to the kind of type causes a run time panic.  


The zero Value represents no value.
Its IsValid method returns false, its Kind method returns Invalid,
its String method returns "\<invalid Value\>", and all other methods panic.
Most functions and methods never return an invalid value.
If one does, its documentation states the conditions explicitly.  


A Value can be used concurrently by multiple goroutines provided that
the underlying Go value can be used concurrently for the equivalent
direct operations.  


To compare two Values, compare the results of the Interface method.
Using == on two Values does not compare the underlying values
they represent.  

### Value function new


```haxe
function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:Null<stdgo.GoInt>, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string:():stdgo.GoString):Void
```


[\(view code\)](<./Reflect.hx#L627>)


### Value function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L593>)


### Value function addr


```haxe
function addr():stdgo.reflect.Value
```



Addr returns a pointer value representing the address of v.
It panics if CanAddr\(\) returns false.
Addr is typically used to obtain a pointer to a struct field
or slice element in order to call a method that requires a
pointer receiver.  

[\(view code\)](<./Reflect.hx#L2910>)


### Value function bool\_


```haxe
function bool_():Bool
```



Bool returns v's underlying value.
It panics if v's kind is not Bool.  

[\(view code\)](<./Reflect.hx#L2877>)


### Value function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```



Bytes returns v's underlying value.
It panics if v's underlying value is not a slice of bytes or
an addressable array of bytes.  

[\(view code\)](<./Reflect.hx#L2832>)


### Value function call


```haxe
function call( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```



Call calls the function v with the input arguments in.
For example, if len\(in\) == 3, v.Call\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]\).
Call panics if v's Kind is not Func.
It returns the output results as Values.
As in Go, each input argument must be assignable to the
type of the function's corresponding input parameter.
If v is a variadic function, Call creates the variadic slice parameter
itself, copying in the corresponding values.  

[\(view code\)](<./Reflect.hx#L2795>)


### Value function callSlice


```haxe
function callSlice( _in:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.reflect.Value>
```



CallSlice calls the variadic function v with the input arguments in,
assigning the slice in\[len\(in\)\-1\] to v's final variadic argument.
For example, if len\(in\) == 3, v.CallSlice\(in\) represents the Go call v\(in\[0\], in\[1\], in\[2\]...\).
CallSlice panics if v's Kind is not Func or if v is not variadic.
It returns the output results as Values.
As in Go, each input argument must be assignable to the
type of the function's corresponding input parameter.  

[\(view code\)](<./Reflect.hx#L2783>)


### Value function canAddr


```haxe
function canAddr():Bool
```



CanAddr reports whether the value's address can be obtained with Addr.
Such values are called addressable. A value is addressable if it is
an element of a slice, an element of an addressable array,
a field of an addressable struct, or the result of dereferencing a pointer.
If CanAddr returns false, calling Addr will panic.  

[\(view code\)](<./Reflect.hx#L2822>)


### Value function canComplex


```haxe
function canComplex():Bool
```



CanComplex reports whether Complex can be used without panicking.  

[\(view code\)](<./Reflect.hx#L2760>)


### Value function canConvert


```haxe
function canConvert( _t:stdgo.reflect.Type_):Bool
```



CanConvert reports whether the value v can be converted to type t.
If v.CanConvert\(t\) returns true then v.Convert\(t\) will not panic.  

[\(view code\)](<./Reflect.hx#L1725>)


### Value function canFloat


```haxe
function canFloat():Bool
```



CanFloat reports whether Float can be used without panicking.  

[\(view code\)](<./Reflect.hx#L2623>)


### Value function canInt


```haxe
function canInt():Bool
```



CanInt reports whether Int can be used without panicking.  

[\(view code\)](<./Reflect.hx#L2538>)


### Value function canInterface


```haxe
function canInterface():Bool
```



CanInterface reports whether Interface can be used without panicking.  

[\(view code\)](<./Reflect.hx#L2492>)


### Value function canSet


```haxe
function canSet():Bool
```



CanSet reports whether the value of v can be changed.
A Value can be changed only if it is addressable and was not
obtained by the use of unexported struct fields.
If CanSet returns false, calling Set or any type\-specific
setter \(e.g., SetBool, SetInt\) will panic.  

[\(view code\)](<./Reflect.hx#L2813>)


### Value function canUint


```haxe
function canUint():Bool
```



CanUint reports whether Uint can be used without panicking.  

[\(view code\)](<./Reflect.hx#L1817>)


### Value function cap


```haxe
function cap():stdgo.GoInt
```



Cap returns v's capacity.
It panics if v's Kind is not Array, Chan, Slice or pointer to Array.  

[\(view code\)](<./Reflect.hx#L2772>)


### Value function clear


```haxe
function clear():Void
```



Clear clears the contents of a map or zeros the contents of a slice.  


It panics if v's Kind is not Map or Slice.  

[\(view code\)](<./Reflect.hx#L1739>)


### Value function close


```haxe
function close():Void
```



Close closes the channel v.
It panics if v's Kind is not Chan.  

[\(view code\)](<./Reflect.hx#L2766>)


### Value function comparable


```haxe
function comparable():Bool
```



Comparable reports whether the value v is comparable.
If the type of v is an interface, this checks the dynamic type.
If this reports true then v.Interface\(\) == x will not panic for any x,
nor will v.Equal\(u\) for any Value u.  

[\(view code\)](<./Reflect.hx#L1719>)


### Value function complex


```haxe
function complex():stdgo.GoComplex128
```



Complex returns v's underlying value, as a complex128.
It panics if v's Kind is not Complex64 or Complex128  

[\(view code\)](<./Reflect.hx#L2731>)


### Value function convert


```haxe
function convert( _t:stdgo.reflect.Type_):stdgo.reflect.Value
```



Convert returns the value v converted to type t.
If the usual Go conversion rules do not allow conversion
of the value v to type t, or if converting v to type t panics, Convert panics.  

[\(view code\)](<./Reflect.hx#L1732>)


### Value function elem


```haxe
function elem():stdgo.reflect.Value
```



Elem returns the value that the interface v contains
or that the pointer v points to.
It panics if v's Kind is not Interface or Pointer.
It returns the zero Value if v is nil.  

[\(view code\)](<./Reflect.hx#L2682>)


### Value function equal


```haxe
function equal( _u:stdgo.reflect.Value):Bool
```



Equal reports true if v is equal to u.
For two invalid values, Equal will report true.
For an interface value, Equal will compare the value within the interface.
Otherwise, If the values have different types, Equal will report false.
Otherwise, for arrays and structs Equal will compare each element in order,
and report false if it finds non\-equal elements.
During all comparisons, if values of the same type are compared,
and the type is not comparable, Equal will panic.  

[\(view code\)](<./Reflect.hx#L1711>)


### Value function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.Value
```



Field returns the i'th field of the struct v.
It panics if v's Kind is not Struct or i is out of range.  

[\(view code\)](<./Reflect.hx#L2659>)


### Value function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.Value
```



FieldByIndex returns the nested field corresponding to index.
It panics if evaluation requires stepping through a nil
pointer or a field that is not a struct.  

[\(view code\)](<./Reflect.hx#L2653>)


### Value function fieldByIndexErr


```haxe
function fieldByIndexErr( _index:stdgo.Slice<stdgo.GoInt>):{
	_1:stdgo.Error;
	_0:stdgo.reflect.Value;
}
```



FieldByIndexErr returns the nested field corresponding to index.
It returns an error if evaluation requires stepping through a nil
pointer, but panics if it must step through a field that
is not a struct.  

[\(view code\)](<./Reflect.hx#L2646>)


### Value function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):stdgo.reflect.Value
```



FieldByName returns the struct field with the given name.
It returns the zero Value if no field was found.
It panics if v's Kind is not struct.  

[\(view code\)](<./Reflect.hx#L2638>)


### Value function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):stdgo.reflect.Value
```



FieldByNameFunc returns the struct field with a name
that satisfies the match function.
It panics if v's Kind is not struct.
It returns the zero Value if no field was found.  

[\(view code\)](<./Reflect.hx#L2631>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```



Float returns v's underlying value, as a float64.
It panics if v's Kind is not Float32 or Float64  

[\(view code\)](<./Reflect.hx#L2592>)


### Value function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```



Grow increases the slice's capacity, if necessary, to guarantee space for
another n elements. After Grow\(n\), at least n elements can be appended
to the slice without another allocation.  


It panics if v's Kind is not a Slice or if n is negative or too large to
allocate the memory.  

[\(view code\)](<./Reflect.hx#L1749>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo.reflect.Value
```



Index returns v's i'th element.
It panics if v's Kind is not Array, Slice, or String or i is out of range.  

[\(view code\)](<./Reflect.hx#L2544>)


### Value function int\_


```haxe
function int_():stdgo.GoInt64
```



Int returns v's underlying value, as an int64.
It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.  

[\(view code\)](<./Reflect.hx#L2501>)


### Value function interfaceData


```haxe
function interfaceData():stdgo.GoArray<stdgo.GoUIntptr>
```



InterfaceData returns a pair of unspecified uintptr values.
It panics if v's Kind is not Interface.  


In earlier versions of Go, this function returned the interface's
value as a uintptr pair. As of Go 1.4, the implementation of
interface values precludes any defined use of InterfaceData.  


Deprecated: The memory representation of interface values is not
compatible with InterfaceData.  

[\(view code\)](<./Reflect.hx#L2476>)


### Value function interface\_


```haxe
function interface_():stdgo.AnyInterface
```



Interface returns v's current value as an interface\{\}.
It is equivalent to:  

```
	var i interface{} = (v's underlying value)
```

It panics if the Value was obtained by accessing
unexported struct fields.  

[\(view code\)](<./Reflect.hx#L2487>)


### Value function isNil


```haxe
function isNil():Bool
```



IsNil reports whether its argument v is nil. The argument must be
a chan, func, interface, map, pointer, or slice value; if it is
not, IsNil panics. Note that IsNil is not always equivalent to a
regular comparison with nil in Go. For example, if v was created
by calling ValueOf with an uninitialized interface variable i,
i==nil will be true but v.IsNil will panic as v will be the zero
Value.  

[\(view code\)](<./Reflect.hx#L2412>)


### Value function isValid


```haxe
function isValid():Bool
```



IsValid reports whether v represents a value.
It returns false if v is the zero Value.
If IsValid returns false, all other methods except String panic.
Most functions and methods never return an invalid Value.
If one does, its documentation states the conditions explicitly.  

[\(view code\)](<./Reflect.hx#L2391>)


### Value function isZero


```haxe
function isZero():Bool
```



IsZero reports whether v is the zero value for its type.
It panics if the argument is invalid.  

[\(view code\)](<./Reflect.hx#L2382>)


### Value function kind


```haxe
function kind():stdgo.reflect.Kind
```



Kind returns v's Kind.
If v is the zero Value \(IsValid returns false\), Kind returns Invalid.  

[\(view code\)](<./Reflect.hx#L2370>)


### Value function len


```haxe
function len():stdgo.GoInt
```



Len returns v's length.
It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.  

[\(view code\)](<./Reflect.hx#L2330>)


### Value function mapIndex


```haxe
function mapIndex( _key:stdgo.reflect.Value):stdgo.reflect.Value
```



MapIndex returns the value associated with key in the map v.
It panics if v's Kind is not Map.
It returns the zero Value if key is not found in the map or if v represents a nil map.
As in Go, the key's value must be assignable to the map's key type.  

[\(view code\)](<./Reflect.hx#L2324>)


### Value function mapKeys


```haxe
function mapKeys():stdgo.Slice<stdgo.reflect.Value>
```



MapKeys returns a slice containing all the keys present in the map,
in unspecified order.
It panics if v's Kind is not Map.
It returns an empty slice if v represents a nil map.  

[\(view code\)](<./Reflect.hx#L2316>)


### Value function mapRange


```haxe
function mapRange():stdgo.Ref<stdgo.reflect.MapIter>
```



MapRange returns a range iterator for a map.
It panics if v's Kind is not Map.  


Call Next to advance the iterator, and Key/Value to access each entry.
Next returns false when the iterator is exhausted.
MapRange follows the same iteration semantics as a range statement.  


Example:  

```
	iter := reflect.ValueOf(m).MapRange()
	for iter.Next() {
		k := iter.Key()
		v := iter.Value()
		...
	}
```
[\(view code\)](<./Reflect.hx#L2289>)


### Value function method


```haxe
function method( _i:stdgo.GoInt):stdgo.reflect.Value
```



Method returns a function value corresponding to v's i'th method.
The arguments to a Call on the returned function should not include
a receiver; the returned function will always use v as the receiver.
Method panics if i is out of range or if v is a nil interface value.  

[\(view code\)](<./Reflect.hx#L2270>)


### Value function methodByName


```haxe
function methodByName( _name:stdgo.GoString):stdgo.reflect.Value
```



MethodByName returns a function value corresponding to the method
of v with the given name.
The arguments to a Call on the returned function should not include
a receiver; the returned function will always use v as the receiver.
It returns the zero Value if no method was found.  

[\(view code\)](<./Reflect.hx#L2253>)


### Value function numField


```haxe
function numField():stdgo.GoInt
```



NumField returns the number of fields in the struct v.
It panics if v's Kind is not Struct.  

[\(view code\)](<./Reflect.hx#L2241>)


### Value function numMethod


```haxe
function numMethod():stdgo.GoInt
```



NumMethod returns the number of methods in the value's method set.  


For a non\-interface type, it returns the number of exported methods.  


For an interface type, it returns the number of exported and unexported methods.  

[\(view code\)](<./Reflect.hx#L2262>)


### Value function overflowComplex


```haxe
function overflowComplex( _x:stdgo.GoComplex128):Bool
```



OverflowComplex reports whether the complex128 x cannot be represented by v's type.
It panics if v's Kind is not Complex64 or Complex128.  

[\(view code\)](<./Reflect.hx#L2235>)


### Value function overflowFloat


```haxe
function overflowFloat( _x:stdgo.GoFloat64):Bool
```



OverflowFloat reports whether the float64 x cannot be represented by v's type.
It panics if v's Kind is not Float32 or Float64.  

[\(view code\)](<./Reflect.hx#L2229>)


### Value function overflowInt


```haxe
function overflowInt( _x:stdgo.GoInt64):Bool
```



OverflowInt reports whether the int64 x cannot be represented by v's type.
It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.  

[\(view code\)](<./Reflect.hx#L2223>)


### Value function overflowUint


```haxe
function overflowUint( _x:stdgo.GoUInt64):Bool
```



OverflowUint reports whether the uint64 x cannot be represented by v's type.
It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.  

[\(view code\)](<./Reflect.hx#L2217>)


### Value function pointer


```haxe
function pointer():stdgo.GoUIntptr
```



Pointer returns v's value as a uintptr.
It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.  


If v's Kind is Func, the returned pointer is an underlying
code pointer, but not necessarily enough to identify a
single function uniquely. The only guarantee is that the
result is zero if and only if v is a nil func Value.  


If v's Kind is Slice, the returned pointer is to the first
element of the slice. If the slice is nil the returned value
is 0.  If the slice is empty but non\-nil the return value is non\-zero.  


It's preferred to use uintptr\(Value.UnsafePointer\(\)\) to get the equivalent result.  

[\(view code\)](<./Reflect.hx#L2206>)


### Value function recv


```haxe
function recv():{
	_1:Bool;
	_0:stdgo.reflect.Value;
}
```



Recv receives and returns a value from the channel v.
It panics if v's Kind is not Chan.
The receive blocks until a value is ready.
The boolean value ok is true if the value x corresponds to a send
on the channel, false if it is a zero value received because the channel is closed.  

[\(view code\)](<./Reflect.hx#L2189>)


### Value function send


```haxe
function send( _x:stdgo.reflect.Value):Void
```



Send sends x on the channel v.
It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
As in Go, x's value must be assignable to the channel's element type.  

[\(view code\)](<./Reflect.hx#L2180>)


### Value function set


```haxe
function set( _x:stdgo.reflect.Value):Void
```



Set assigns x to the value v.
It panics if CanSet returns false.
As in Go, x's value must be assignable to v's type and
must not be derived from an unexported field.  

[\(view code\)](<./Reflect.hx#L2112>)


### Value function setBool


```haxe
function setBool( _x:Bool):Void
```



SetBool sets v's underlying value.
It panics if v's Kind is not Bool or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L2100>)


### Value function setBytes


```haxe
function setBytes( _x:stdgo.Slice<stdgo.GoByte>):Void
```



SetBytes sets v's underlying value.
It panics if v's underlying value is not a slice of bytes.  

[\(view code\)](<./Reflect.hx#L2094>)


### Value function setCap


```haxe
function setCap( _n:stdgo.GoInt):Void
```



SetCap sets v's capacity to n.
It panics if v's Kind is not Slice or if n is smaller than the length or
greater than the capacity of the slice.  

[\(view code\)](<./Reflect.hx#L2011>)


### Value function setComplex


```haxe
function setComplex( _x:stdgo.GoComplex128):Void
```



SetComplex sets v's underlying value to x.
It panics if v's Kind is not Complex64 or Complex128, or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L2076>)


### Value function setFloat


```haxe
function setFloat( _x:stdgo.GoFloat64):Void
```



SetFloat sets v's underlying value to x.
It panics if v's Kind is not Float32 or Float64, or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L2058>)


### Value function setInt


```haxe
function setInt( _x:stdgo.GoInt64):Void
```



SetInt sets v's underlying value to x.
It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L2024>)


### Value function setIterKey


```haxe
function setIterKey( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```



SetIterKey assigns to v the key of iter's current map entry.
It is equivalent to v.Set\(iter.Key\(\)\), but it avoids allocating a new Value.
As in Go, the key must be assignable to v's type and
must not be derived from an unexported field.  

[\(view code\)](<./Reflect.hx#L2308>)


### Value function setIterValue


```haxe
function setIterValue( _iter:stdgo.Ref<stdgo.reflect.MapIter>):Void
```



SetIterValue assigns to v the value of iter's current map entry.
It is equivalent to v.Set\(iter.Value\(\)\), but it avoids allocating a new Value.
As in Go, the value must be assignable to v's type and
must not be derived from an unexported field.  

[\(view code\)](<./Reflect.hx#L2300>)


### Value function setLen


```haxe
function setLen( _n:stdgo.GoInt):Void
```



SetLen sets v's length to n.
It panics if v's Kind is not Slice or if n is negative or
greater than the capacity of the slice.  

[\(view code\)](<./Reflect.hx#L2018>)


### Value function setMapIndex


```haxe
function setMapIndex( _key:stdgo.reflect.Value, _elem:stdgo.reflect.Value):Void
```



SetMapIndex sets the element associated with key in the map v to elem.
It panics if v's Kind is not Map.
If elem is the zero Value, SetMapIndex deletes the key from the map.
Otherwise if v holds a nil map, SetMapIndex will panic.
As in Go, key's elem must be assignable to the map's key type,
and elem's value must be assignable to the map's elem type.  

[\(view code\)](<./Reflect.hx#L2004>)


### Value function setPointer


```haxe
function setPointer( _x:stdgo.unsafe.UnsafePointer):Void
```



SetPointer sets the \[unsafe.Pointer\] value v to x.
It panics if v's Kind is not UnsafePointer.  

[\(view code\)](<./Reflect.hx#L1958>)


### Value function setString


```haxe
function setString( _x:stdgo.GoString):Void
```



SetString sets v's underlying value to x.
It panics if v's Kind is not String or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L1948>)


### Value function setUint


```haxe
function setUint( _x:stdgo.GoUInt64):Void
```



SetUint sets v's underlying value to x.
It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet\(\) is false.  

[\(view code\)](<./Reflect.hx#L1964>)


### Value function setZero


```haxe
function setZero():Void
```



SetZero sets v to be the zero value of v's type.
It panics if CanSet returns false.  

[\(view code\)](<./Reflect.hx#L2376>)


### Value function slice


```haxe
function slice( _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.reflect.Value
```



Slice returns v\[i:j\].
It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
or if the indexes are out of bounds.  

[\(view code\)](<./Reflect.hx#L1911>)


### Value function slice3


```haxe
function slice3( _i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo.reflect.Value
```



Slice3 is the 3\-index form of the slice operation: it returns v\[i:j:k\].
It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
or if the indexes are out of bounds.  

[\(view code\)](<./Reflect.hx#L1904>)


### Value function string


```haxe
function string():stdgo.GoString
```



String returns the string v's underlying value, as a string.
String is a special case because of Go's String method convention.
Unlike the other getters, it does not panic if v's Kind is not String.
Instead, it returns a string of the form "\<T value\>" where T is v's type.
The fmt package treats Values specially. It does not call their String
method implicitly but instead prints the concrete values they hold.  

[\(view code\)](<./Reflect.hx#L1864>)


### Value function tryRecv


```haxe
function tryRecv():{
	_1:Bool;
	_0:stdgo.reflect.Value;
}
```



TryRecv attempts to receive a value from the channel v but will not block.
It panics if v's Kind is not Chan.
If the receive delivers a value, x is the transferred value and ok is true.
If the receive cannot finish without blocking, x is the zero Value and ok is false.
If the channel is closed, x is the zero value for the channel's element type and ok is false.  

[\(view code\)](<./Reflect.hx#L1854>)


### Value function trySend


```haxe
function trySend( _x:stdgo.reflect.Value):Bool
```



TrySend attempts to send x on the channel v but will not block.
It panics if v's Kind is not Chan.
It reports whether the value was sent.
As in Go, x's value must be assignable to the channel's element type.  

[\(view code\)](<./Reflect.hx#L1845>)


### Value function type


```haxe
function type():stdgo.reflect.Type_
```



Type returns v's type.  

[\(view code\)](<./Reflect.hx#L1830>)


### Value function uint


```haxe
function uint():stdgo.GoUInt64
```



Uint returns v's underlying value, as a uint64.
It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.  

[\(view code\)](<./Reflect.hx#L1778>)


### Value function unsafeAddr


```haxe
function unsafeAddr():stdgo.GoUIntptr
```



UnsafeAddr returns a pointer to v's data, as a uintptr.
It panics if v is not addressable.  


It's preferred to use uintptr\(Value.Addr\(\).UnsafePointer\(\)\) to get the equivalent result.  

[\(view code\)](<./Reflect.hx#L1772>)


### Value function unsafePointer


```haxe
function unsafePointer():stdgo.unsafe.UnsafePointer
```



UnsafePointer returns v's value as a \[unsafe.Pointer\].
It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.  


If v's Kind is Func, the returned pointer is an underlying
code pointer, but not necessarily enough to identify a
single function uniquely. The only guarantee is that the
result is zero if and only if v is a nil func Value.  


If v's Kind is Slice, the returned pointer is to the first
element of the slice. If the slice is nil the returned value
is nil.  If the slice is empty but non\-nil the return value is non\-nil.  

[\(view code\)](<./Reflect.hx#L1764>)


## class ValueError



A ValueError occurs when a Value method is invoked on
a Value that does not support it. Such cases are documented
in the description of each method.  

```haxe
var kind:stdgo.reflect.Kind
```


```haxe
var method:stdgo.GoString
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?kind:stdgo.reflect.Kind, ?toString:():String):Void
```


[\(view code\)](<./Reflect.hx#L654>)


### ValueError function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L651>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L2925>)


# Typedefs


```haxe
import stdgo.reflect.*
```


## typedef ChanDir


```haxe
typedef ChanDir = stdgo.GoInt;
```



ChanDir represents a channel type's direction.  

## typedef Kind


```haxe
typedef Kind = stdgo.GoUInt;
```



A Kind represents the specific kind of type that a Type represents.
The zero Kind is not a valid kind.  

## typedef SelectDir


```haxe
typedef SelectDir = stdgo.GoInt;
```



A SelectDir describes the communication direction of a select case.  

## typedef StructTag


```haxe
typedef StructTag = stdgo.GoString;
```



A StructTag is the tag string in a struct field.  


By convention, tag strings are a concatenation of
optionally space\-separated key:"value" pairs.
Each key is a non\-empty string consisting of non\-control
characters other than space \(U\+0020 ' '\), quote \(U\+0022 '"'\),
and colon \(U\+003A ':'\).  Each value is quoted using U\+0022 '"'
characters and Go string literal syntax.  

## typedef Type\_


```haxe
typedef Type_ = {
	public function string():stdgo.GoString;	//  String returns a string representation of the type. The string representation may use shortened package names (e.g., base64 instead of "encoding/base64") and is not guaranteed to be unique among types. To test for type identity, compare the Types directly.
	public function size():stdgo.GoUIntptr;	//  Size returns the number of bytes needed to store a value of the given type; it is analogous to unsafe.Sizeof.
	public function pkgPath():stdgo.GoString;	//  PkgPath returns a defined type's package path, that is, the import path that uniquely identifies the package, such as "encoding/base64". If the type was predeclared (string, error) or not defined (*T, struct{}, []int, or A where A is an alias for a non-defined type), the package path will be the empty string.
	public function out(_i:stdgo.GoInt):stdgo.reflect.Type_;	//  Out returns the type of a function type's i'th output parameter. It panics if the type's Kind is not Func. It panics if i is not in the range [0, NumOut()).
	public function numOut():stdgo.GoInt;	//  NumOut returns a function type's output parameter count. It panics if the type's Kind is not Func.
	public function numMethod():stdgo.GoInt;	//  NumMethod returns the number of methods accessible using Method. For a non-interface type, it returns the number of exported methods. For an interface type, it returns the number of exported and unexported methods.
	public function numIn():stdgo.GoInt;	//  NumIn returns a function type's input parameter count. It panics if the type's Kind is not Func.
	public function numField():stdgo.GoInt;	//  NumField returns a struct type's field count. It panics if the type's Kind is not Struct.
	public function name():stdgo.GoString;	//  Name returns the type's name within its package for a defined type. For other (non-defined) types it returns the empty string.
	public function methodByName(_0:stdgo.GoString):{
		_1:Bool;
		_0:stdgo.reflect.Method;
	};	//  MethodByName returns the method with that name in the type's method set and a boolean indicating if the method was found. For a non-interface type T or *T, the returned Method's Type and Func fields describe a function whose first argument is the receiver. For an interface type, the returned Method's Type field gives the method signature, without a receiver, and the Func field is nil.
	public function method(_0:stdgo.GoInt):stdgo.reflect.Method;	//  Method returns the i'th method in the type's method set. It panics if i is not in the range [0, NumMethod()). For a non-interface type T or *T, the returned Method's Type and Func fields describe a function whose first argument is the receiver, and only exported methods are accessible. For an interface type, the returned Method's Type field gives the method signature, without a receiver, and the Func field is nil. Methods are sorted in lexicographic order.
	public function len():stdgo.GoInt;	//  Len returns an array type's length. It panics if the type's Kind is not Array.
	public function kind():stdgo.reflect.Kind;	//  Kind returns the specific kind of this type.
	public function key():stdgo.reflect.Type_;	//  Key returns a map type's key type. It panics if the type's Kind is not Map.
	public function isVariadic():Bool;	//  IsVariadic reports whether a function type's final input parameter is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's implicit actual type []T. For concreteness, if t represents func(x int, y ... float64), then t.NumIn() == 2 t.In(0) is the reflect.Type for "int" t.In(1) is the reflect.Type for "[]float64" t.IsVariadic() == true IsVariadic panics if the type's Kind is not Func.
	public function in_(_i:stdgo.GoInt):stdgo.reflect.Type_;	//  In returns the type of a function type's i'th input parameter. It panics if the type's Kind is not Func. It panics if i is not in the range [0, NumIn()).
	public function implements_(_u:stdgo.reflect.Type_):Bool;	//  Implements reports whether the type implements the interface type u.
	public function fieldByNameFunc(_match:()):{
		_1:Bool;
		_0:stdgo.reflect.StructField;
	};	//  FieldByNameFunc returns the struct field with a name that satisfies the match function and a boolean indicating if the field was found. FieldByNameFunc considers the fields in the struct itself and then the fields in any embedded structs, in breadth first order, stopping at the shallowest nesting depth containing one or more fields satisfying the match function. If multiple fields at that depth satisfy the match function, they cancel each other and FieldByNameFunc returns no match. This behavior mirrors Go's handling of name lookup in structs containing embedded fields.
	public function fieldByName(_name:stdgo.GoString):{
		_1:Bool;
		_0:stdgo.reflect.StructField;
	};	//  FieldByName returns the struct field with the given name and a boolean indicating if the field was found.
	public function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField;	//  FieldByIndex returns the nested field corresponding to the index sequence. It is equivalent to calling Field successively for each index i. It panics if the type's Kind is not Struct.
	public function fieldAlign():stdgo.GoInt;	//  FieldAlign returns the alignment in bytes of a value of this type when used as a field in a struct.
	public function field(_i:stdgo.GoInt):stdgo.reflect.StructField;	//  Field returns a struct type's i'th field. It panics if the type's Kind is not Struct. It panics if i is not in the range [0, NumField()).
	public function elem():stdgo.reflect.Type_;	//  Elem returns a type's element type. It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
	public function convertibleTo(_u:stdgo.reflect.Type_):Bool;	//  ConvertibleTo reports whether a value of the type is convertible to type u. Even if ConvertibleTo returns true, the conversion may still panic. For example, a slice of type []T is convertible to *[N]T, but the conversion will panic if its length is less than N.
	public function comparable():Bool;	//  Comparable reports whether values of this type are comparable. Even if Comparable returns true, the comparison may still panic. For example, values of interface type are comparable, but the comparison will panic if their dynamic type is not comparable.
	public function chanDir():stdgo.reflect.ChanDir;	//  ChanDir returns a channel type's direction. It panics if the type's Kind is not Chan.
	public function bits():stdgo.GoInt;	//  Bits returns the size of the type in bits. It panics if the type's Kind is not one of the sized or unsized Int, Uint, Float, or Complex kinds.
	public function assignableTo(_u:stdgo.reflect.Type_):Bool;	//  AssignableTo reports whether a value of the type is assignable to type u.
	public function align():stdgo.GoInt;	//  Align returns the alignment in bytes of a value of this type when allocated in memory.
};
```



Type is the representation of a Go type.  


Not all methods apply to all kinds of types. Restrictions,
if any, are noted in the documentation for each method.
Use the Kind method to find out the kind of type before
calling kind\-specific methods. Calling a method
inappropriate to the kind of type causes a run\-time panic.  


Type values are comparable, such as with the == operator,
so they can be used as map keys.
Two Type values are equal if they represent identical types.  

