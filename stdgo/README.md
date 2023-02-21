# Module: `stdgo.Go`

[(view library index)](./stdgo.md)


# Overview





# Index


- [class AnyInterfaceData](<#class-anyinterfacedata>)

  - [`function new(value:Any, type:stdgo.internal.reflect._Type):Void`](<#anyinterfacedata-function-new>)

  - [`function toString():String`](<#anyinterfacedata-function-tostring>)

- [class ChanData](<#class-chandata>)

  - [`function iterator():stdgo._Chan.ChanIterator<stdgo.ChanData.T>`](<#chandata-function-iterator>)

  - [`function keyValueIterator():stdgo._Chan.ChanKeyValueIterator<stdgo.ChanData.T>`](<#chandata-function-keyvalueiterator>)

  - [`function new(length:stdgo.GoInt, defaultValue:():stdgo.ChanData.T):Void`](<#chandata-function-new>)

  - [`function toString():String`](<#chandata-function-tostring>)

- [class Complex](<#class-complex>)

  - [`function new(r:stdgo.Complex.T, i:stdgo.Complex.T):Void`](<#complex-function-new>)

  - [`function toString():String`](<#complex-function-tostring>)

- [class Go](<#class-go>)

  - [`function asInterface(expr:Dynamic):Dynamic`](<#go-function-asinterface>)

  - [`function cfor(cond:Dynamic, post:Dynamic, expr:Dynamic):Dynamic`](<#go-function-cfor>)

  - [`function copySlice(dst:Dynamic, src:Dynamic):Dynamic`](<#go-function-copyslice>)

  - [`function expectedValue(value:Dynamic):Dynamic`](<#go-function-expectedvalue>)

  - [`function map(exprs:Dynamic):Dynamic`](<#go-function-map>)

  - [`function multireturn(expr:Dynamic):Dynamic`](<#go-function-multireturn>)

  - [`function pointer(expr:Dynamic, hasSet:Dynamic):Dynamic`](<#go-function-pointer>)

  - [`function routine(func:():Void):Void`](<#go-function-routine>)

  - [`function select(expr:Dynamic):Dynamic`](<#go-function-select>)

  - [`function setKeys(expr:Dynamic):Dynamic`](<#go-function-setkeys>)

  - [`function str(expr:Dynamic):Dynamic`](<#go-function-str>)

  - [`function string(s:Dynamic):String`](<#go-function-string>)

  - [`function toInterface(expr:Dynamic):Dynamic`](<#go-function-tointerface>)

  - [`function typeAssert(expr:Dynamic):Dynamic`](<#go-function-typeassert>)

  - [`function typeEquals(expr:Dynamic):Dynamic`](<#go-function-typeequals>)

  - [`function typeFunction(e:Dynamic):Dynamic`](<#go-function-typefunction>)

  - [`function unquote(qvalue:Dynamic):Dynamic`](<#go-function-unquote>)

- [class GoIntIterator](<#class-gointiterator>)

  - [`function hasNext():Bool`](<#gointiterator-function-hasnext>)

  - [`function new(min:stdgo.GoInt, max:stdgo.GoInt):Void`](<#gointiterator-function-new>)

  - [`function next():stdgo.GoInt`](<#gointiterator-function-next>)

- [class GoObjectMap](<#class-goobjectmap>)

  - [`function clear():Void`](<#goobjectmap-function-clear>)

  - [`function copy():stdgo.GoObjectMap<stdgo.GoObjectMap.K, stdgo.GoObjectMap.V>`](<#goobjectmap-function-copy>)

  - [`function defaultValue():stdgo.GoObjectMap.V`](<#goobjectmap-function-defaultvalue>)

  - [`function exists(key:stdgo.GoObjectMap.K):Bool`](<#goobjectmap-function-exists>)

  - [`function get(key:stdgo.GoObjectMap.K):Null<stdgo.GoObjectMap.V>`](<#goobjectmap-function-get>)

  - [`function iterator():Iterator<stdgo.GoObjectMap.V>`](<#goobjectmap-function-iterator>)

  - [`function keyValueIterator():KeyValueIterator<stdgo.GoObjectMap.K, stdgo.GoObjectMap.V>`](<#goobjectmap-function-keyvalueiterator>)

  - [`function keys():Iterator<stdgo.GoObjectMap.K>`](<#goobjectmap-function-keys>)

  - [`function new(t:stdgo.internal.reflect._Type):Void`](<#goobjectmap-function-new>)

  - [`function remove(key:stdgo.GoObjectMap.K):Bool`](<#goobjectmap-function-remove>)

  - [`function set(key:stdgo.GoObjectMap.K, value:stdgo.GoObjectMap.V):Void`](<#goobjectmap-function-set>)

  - [`function toString():String`](<#goobjectmap-function-tostring>)

- [class GoStringTools](<#class-gostringtools>)

  - [`function indexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-indexof>)

  - [`function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-lastindexof>)

  - [`function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString`](<#gostringtools-function-substr>)

  - [`function toString(str:stdgo.GoString):String`](<#gostringtools-function-tostring>)

- [class PointerData](<#class-pointerdata>)

  - [`function assign():stdgo.PointerData.T`](<#pointerdata-function-assign>)

  - [`function convert()`](<#pointerdata-function-convert>)

  - [`function get():stdgo.PointerData.T`](<#pointerdata-function-get>)

  - [`function new(?get:():Null<stdgo.PointerData.T>, ?set:(value:stdgo.PointerData.T):stdgo.PointerData.T, ?hasSet:Bool, ?previous:stdgo.Pointer<Any>, ?underlying:Any, ?underlyingIndex:Any):Void`](<#pointerdata-function-new>)

  - [`function set()`](<#pointerdata-function-set>)

  - [`function toString():String`](<#pointerdata-function-tostring>)

- [class SliceData](<#class-slicedata>)

  - [`function get(index:Int):stdgo.SliceData.T`](<#slicedata-function-get>)

  - [`function grow():Void`](<#slicedata-function-grow>)

  - [`function new(length:Int, capacity:Int, args:haxe.Rest<stdgo.SliceData.T>):Void`](<#slicedata-function-new>)

  - [`function set(index:Int, value:stdgo.SliceData.T):stdgo.SliceData.T`](<#slicedata-function-set>)

  - [`function toArray():Array<stdgo.SliceData.T>`](<#slicedata-function-toarray>)

  - [`function toString():String`](<#slicedata-function-tostring>)

  - [`function toVector():haxe.ds.Vector<stdgo.SliceData.T>`](<#slicedata-function-tovector>)

- [class VectorData](<#class-vectordata>)

  - [`function get(i:Int):stdgo.VectorData.T`](<#vectordata-function-get>)

  - [`function new(length:Int):Void`](<#vectordata-function-new>)

  - [`function set(i:Int, value:stdgo.VectorData.T):stdgo.VectorData.T`](<#vectordata-function-set>)

  - [`function toString():String`](<#vectordata-function-tostring>)

- [typedef Complex128](<#typedef-complex128>)

- [typedef Complex64](<#typedef-complex64>)

- [typedef Error](<#typedef-error>)

- [typedef GoByte](<#typedef-gobyte>)

- [typedef GoFloat](<#typedef-gofloat>)

- [typedef GoInt](<#typedef-goint>)

- [typedef GoRune](<#typedef-gorune>)

- [typedef GoUInt](<#typedef-gouint>)

- [typedef InvalidType](<#typedef-invalidtype>)

- [typedef MapAccess](<#typedef-mapaccess>)

- [typedef Ref](<#typedef-ref>)

- [typedef StructType](<#typedef-structtype>)

- [abstract Chan](<#abstract-chan>)

- [abstract GoArray](<#abstract-goarray>)

- [abstract GoMap](<#abstract-gomap>)

- [abstract GoString](<#abstract-gostring>)

- [abstract Pointer](<#abstract-pointer>)

- [abstract Slice](<#abstract-slice>)

- [abstract GoUIntptr](<#abstract-gouintptr>)

- [abstract GoFloat64](<#abstract-gofloat64>)

- [abstract GoFloat32](<#abstract-gofloat32>)

- [abstract GoComplex64](<#abstract-gocomplex64>)

- [abstract GoComplex128](<#abstract-gocomplex128>)

- [abstract GoInt32](<#abstract-goint32>)

- [abstract GoUInt32](<#abstract-gouint32>)

- [abstract GoInt8](<#abstract-goint8>)

- [abstract GoInt16](<#abstract-goint16>)

- [abstract GoInt64](<#abstract-goint64>)

- [abstract GoUInt8](<#abstract-gouint8>)

- [abstract GoUInt16](<#abstract-gouint16>)

- [abstract GoUInt64](<#abstract-gouint64>)

- [abstract AnyInterface](<#abstract-anyinterface>)

# Classes


```haxe
import stdgo.*
```


## class AnyInterfaceData





```haxe
var type:stdgo.internal.reflect._Type
```


```haxe
var value:Any
```


### AnyInterfaceData function new


```haxe
function new(value:Any, type:stdgo.internal.reflect._Type):Void
```





[\(view code\)](<./StdGoTypes.hx#L1762>)


### AnyInterfaceData function toString


```haxe
function toString():String
```





[\(view code\)](<./StdGoTypes.hx#L1768>)


## class ChanData





```haxe
var capacity:stdgo.GoInt
```


```haxe
var length:stdgo.GoInt
```


### ChanData function iterator


```haxe
function iterator():stdgo._Chan.ChanIterator<stdgo.ChanData.T>
```





[\(view code\)](<./Chan.hx#L127>)


### ChanData function keyValueIterator


```haxe
function keyValueIterator():stdgo._Chan.ChanKeyValueIterator<stdgo.ChanData.T>
```





[\(view code\)](<./Chan.hx#L124>)


### ChanData function new


```haxe
function new(length:stdgo.GoInt, defaultValue:():stdgo.ChanData.T):Void
```





[\(view code\)](<./Chan.hx#L50>)


### ChanData function toString


```haxe
function toString():String
```





[\(view code\)](<./Chan.hx#L129>)


## class Complex





```haxe
var imag:stdgo.Complex.T
```


```haxe
var real:stdgo.Complex.T
```


### Complex function new


```haxe
function new(r:stdgo.Complex.T, i:stdgo.Complex.T):Void
```





[\(view code\)](<./StdGoTypes.hx#L232>)


### Complex function toString


```haxe
function toString():String
```





[\(view code\)](<./StdGoTypes.hx#L238>)


## class Go





```haxe
var recover_exception:stdgo.AnyInterface
```


### Go function asInterface


```haxe
function asInterface(expr:Dynamic):Dynamic
```





### Go function cfor


```haxe
function cfor(cond:Dynamic, post:Dynamic, expr:Dynamic):Dynamic
```





### Go function copySlice


```haxe
function copySlice(dst:Dynamic, src:Dynamic):Dynamic
```





### Go function expectedValue


```haxe
function expectedValue(value:Dynamic):Dynamic
```





### Go function map


```haxe
function map(exprs:Dynamic):Dynamic
```





### Go function multireturn


```haxe
function multireturn(expr:Dynamic):Dynamic
```





### Go function pointer


```haxe
function pointer(expr:Dynamic, hasSet:Dynamic):Dynamic
```





### Go function routine


```haxe
function routine(func:():Void):Void
```





[\(view code\)](<./Go.hx#L23>)


### Go function select


```haxe
function select(expr:Dynamic):Dynamic
```





### Go function setKeys


```haxe
function setKeys(expr:Dynamic):Dynamic
```





### Go function str


```haxe
function str(expr:Dynamic):Dynamic
```





### Go function string


```haxe
function string(s:Dynamic):String
```





[\(view code\)](<./Go.hx#L8>)


### Go function toInterface


```haxe
function toInterface(expr:Dynamic):Dynamic
```





### Go function typeAssert


```haxe
function typeAssert(expr:Dynamic):Dynamic
```





### Go function typeEquals


```haxe
function typeEquals(expr:Dynamic):Dynamic
```





### Go function typeFunction


```haxe
function typeFunction(e:Dynamic):Dynamic
```





### Go function unquote


```haxe
function unquote(qvalue:Dynamic):Dynamic
```





## class GoIntIterator





### GoIntIterator function hasNext


```haxe
function hasNext():Bool
```





[\(view code\)](<./StdGoTypes.hx#L1922>)


### GoIntIterator function new


```haxe
function new(min:stdgo.GoInt, max:stdgo.GoInt):Void
```





[\(view code\)](<./StdGoTypes.hx#L1917>)


### GoIntIterator function next


```haxe
function next():stdgo.GoInt
```





[\(view code\)](<./StdGoTypes.hx#L1926>)


## class GoObjectMap





```haxe
var t:stdgo.internal.reflect._Type
```


### GoObjectMap function clear


```haxe
function clear():Void
```





[\(view code\)](<./GoMap.hx#L172>)


### GoObjectMap function copy


```haxe
function copy():stdgo.GoObjectMap<stdgo.GoObjectMap.K, stdgo.GoObjectMap.V>
```





[\(view code\)](<./GoMap.hx#L158>)


### GoObjectMap function defaultValue


```haxe
function defaultValue():stdgo.GoObjectMap.V
```





[\(view code\)](<./GoMap.hx#L113>)


### GoObjectMap function exists


```haxe
function exists(key:stdgo.GoObjectMap.K):Bool
```





[\(view code\)](<./GoMap.hx#L129>)


### GoObjectMap function get


```haxe
function get(key:stdgo.GoObjectMap.K):Null<stdgo.GoObjectMap.V>
```





[\(view code\)](<./GoMap.hx#L121>)


### GoObjectMap function iterator


```haxe
function iterator():Iterator<stdgo.GoObjectMap.V>
```





[\(view code\)](<./GoMap.hx#L152>)


### GoObjectMap function keyValueIterator


```haxe
function keyValueIterator():KeyValueIterator<stdgo.GoObjectMap.K, stdgo.GoObjectMap.V>
```





[\(view code\)](<./GoMap.hx#L154>)


### GoObjectMap function keys


```haxe
function keys():Iterator<stdgo.GoObjectMap.K>
```





[\(view code\)](<./GoMap.hx#L149>)


### GoObjectMap function new


```haxe
function new(t:stdgo.internal.reflect._Type):Void
```





[\(view code\)](<./GoMap.hx#L79>)


### GoObjectMap function remove


```haxe
function remove(key:stdgo.GoObjectMap.K):Bool
```





[\(view code\)](<./GoMap.hx#L137>)


### GoObjectMap function set


```haxe
function set(key:stdgo.GoObjectMap.K, value:stdgo.GoObjectMap.V):Void
```





[\(view code\)](<./GoMap.hx#L83>)


### GoObjectMap function toString


```haxe
function toString():String
```





[\(view code\)](<./GoMap.hx#L165>)


## class GoStringTools





### GoStringTools function indexOf


```haxe
function indexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int
```





[\(view code\)](<./GoString.hx#L253>)


### GoStringTools function lastIndexOf


```haxe
function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int
```





[\(view code\)](<./GoString.hx#L250>)


### GoStringTools function substr


```haxe
function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString
```





[\(view code\)](<./GoString.hx#L256>)


### GoStringTools function toString


```haxe
function toString(str:stdgo.GoString):String
```





[\(view code\)](<./GoString.hx#L259>)


## class PointerData





```haxe
var hasSet:Bool
```


```haxe
var previous:stdgo.Pointer<Any>
```


```haxe
var ref:stdgo.PointerData.T
```


```haxe
var underlying:Any
```


```haxe
var underlyingIndex:Any
```


### PointerData function assign


```haxe
function assign():stdgo.PointerData.T
```





### PointerData function convert


```haxe
function convert()
```





### PointerData function get


```haxe
function get():stdgo.PointerData.T
```





### PointerData function new


```haxe
function new(?get:():Null<stdgo.PointerData.T>, ?set:(value:stdgo.PointerData.T):stdgo.PointerData.T, ?hasSet:Bool, ?previous:stdgo.Pointer<Any>, ?underlying:Any, ?underlyingIndex:Any):Void
```





[\(view code\)](<./Pointer.hx#L86>)


### PointerData function set


```haxe
function set()
```





### PointerData function toString


```haxe
function toString():String
```





[\(view code\)](<./Pointer.hx#L101>)


## class SliceData





```haxe
var capacity:Int
```


```haxe
var length:Int
```


```haxe
var offset:Int
```


```haxe
var vector:haxe.ds.Vector<stdgo.SliceData.T>
```


### SliceData function get


```haxe
function get(index:Int):stdgo.SliceData.T
```





[\(view code\)](<./Slice.hx#L248>)


### SliceData function grow


```haxe
function grow():Void
```





[\(view code\)](<./Slice.hx#L274>)


### SliceData function new


```haxe
function new(length:Int, capacity:Int, args:haxe.Rest<stdgo.SliceData.T>):Void
```





[\(view code\)](<./Slice.hx#L225>)


### SliceData function set


```haxe
function set(index:Int, value:stdgo.SliceData.T):stdgo.SliceData.T
```





[\(view code\)](<./Slice.hx#L253>)


### SliceData function toArray


```haxe
function toArray():Array<stdgo.SliceData.T>
```





[\(view code\)](<./Slice.hx#L258>)


### SliceData function toString


```haxe
function toString():String
```





[\(view code\)](<./Slice.hx#L266>)


### SliceData function toVector


```haxe
function toVector():haxe.ds.Vector<stdgo.SliceData.T>
```





[\(view code\)](<./Slice.hx#L262>)


## class VectorData





```haxe
var capacity:Int
```


```haxe
var length:Int
```


```haxe
var vector:haxe.ds.Vector<stdgo.VectorData.T>
```


### VectorData function get


```haxe
function get(i:Int):stdgo.VectorData.T
```





[\(view code\)](<./GoArray.hx#L29>)


### VectorData function new


```haxe
function new(length:Int):Void
```





[\(view code\)](<./GoArray.hx#L24>)


### VectorData function set


```haxe
function set(i:Int, value:stdgo.VectorData.T):stdgo.VectorData.T
```





[\(view code\)](<./GoArray.hx#L32>)


### VectorData function toString


```haxe
function toString():String
```





[\(view code\)](<./GoArray.hx#L35>)


# Typedefs


```haxe
import stdgo.*
```


## typedef Complex128


```haxe
typedef Complex128 = stdgo.Complex<stdgo._StdGoTypes.Float64>;
```





## typedef Complex64


```haxe
typedef Complex64 = stdgo.Complex<stdgo._StdGoTypes.Float32>;
```





## typedef Error


```haxe
typedef Error = {
	public function error():stdgo.GoString;
};
```





## typedef GoByte


```haxe
typedef GoByte = stdgo.GoUInt8;
```





## typedef GoFloat


```haxe
typedef GoFloat = stdgo.GoFloat64;
```





## typedef GoInt


```haxe
typedef GoInt = stdgo.GoInt32;
```





## typedef GoRune


```haxe
typedef GoRune = stdgo.GoInt32;
```





## typedef GoUInt


```haxe
typedef GoUInt = stdgo.GoUInt32;
```





## typedef InvalidType


```haxe
typedef InvalidType = Dynamic;
```





## typedef MapAccess


```haxe
typedef MapAccess = {
	public function set(k:stdgo.MapAccess.K, v:stdgo.MapAccess.V):Void;
	public function get(k:stdgo.MapAccess.K):Null<stdgo.MapAccess.V>;
};
```





## typedef Ref


```haxe
typedef Ref = stdgo.Ref.T;
```





## typedef StructType


```haxe
typedef StructType = {
};
```





# Abstracts


## abstract Chan


[\(view file containing code\)](<./Chan.hx>)


## abstract GoArray


[\(view file containing code\)](<./GoArray.hx>)


## abstract GoMap


[\(view file containing code\)](<./GoMap.hx>)


## abstract GoString


[\(view file containing code\)](<./GoString.hx>)


## abstract Pointer


[\(view file containing code\)](<./Pointer.hx>)


## abstract Slice


[\(view file containing code\)](<./Slice.hx>)


## abstract GoUIntptr


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoFloat64


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoFloat32


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoComplex64


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoComplex128


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoInt32


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoUInt32


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoInt8


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoInt16


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoInt64


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoUInt8


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoUInt16


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract GoUInt64


[\(view file containing code\)](<./StdGoTypes.hx>)


## abstract AnyInterface


[\(view file containing code\)](<./StdGoTypes.hx>)


