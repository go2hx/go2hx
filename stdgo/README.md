# Module: `stdgo.Go`

[(view library index)](./stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

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

  - [`function setRef(expr:Dynamic):Dynamic`](<#go-function-setref>)

  - [`function str(expr:Dynamic):Dynamic`](<#go-function-str>)

  - [`function string(s:Dynamic):String`](<#go-function-string>)

  - [`function toInterface(expr:Dynamic):Dynamic`](<#go-function-tointerface>)

  - [`function typeAssert(expr:Dynamic):Dynamic`](<#go-function-typeassert>)

  - [`function typeEquals(expr:Dynamic):Dynamic`](<#go-function-typeequals>)

  - [`function typeFunction(e:Dynamic):Dynamic`](<#go-function-typefunction>)

  - [`function unquote(qvalue:Dynamic):Dynamic`](<#go-function-unquote>)

- [class GoAnyInterfaceMap](<#class-goanyinterfacemap>)

  - [`function get(key:Dynamic):stdgo.GoAnyInterfaceMap.V`](<#goanyinterfacemap-function-get>)

  - [`function new():Void`](<#goanyinterfacemap-function-new>)

  - [`function set(key:Dynamic, value:stdgo.GoAnyInterfaceMap.V):Void`](<#goanyinterfacemap-function-set>)

- [class GoAnyInterfaceMapKey](<#class-goanyinterfacemapkey>)

  - [`function new(k:stdgo.AnyInterface):Void`](<#goanyinterfacemapkey-function-new>)

- [class GoArrayMap](<#class-goarraymap>)

  - [`function new():Void`](<#goarraymap-function-new>)

- [class GoBoolMap](<#class-goboolmap>)

  - [`function get(key:Bool):stdgo.GoBoolMap.T`](<#goboolmap-function-get>)

  - [`function new():Void`](<#goboolmap-function-new>)

- [class GoChanMap](<#class-gochanmap>)

  - [`function new():Void`](<#gochanmap-function-new>)

- [class GoComplex128Map](<#class-gocomplex128map>)

  - [`function new():Void`](<#gocomplex128map-function-new>)

- [class GoFloat64Map](<#class-gofloat64map>)

  - [`function new():Void`](<#gofloat64map-function-new>)

- [class GoInt64Map](<#class-goint64map>)

  - [`function get(key:stdgo.GoInt64):stdgo.GoInt64Map.T`](<#goint64map-function-get>)

  - [`function new():Void`](<#goint64map-function-new>)

- [class GoIntIterator](<#class-gointiterator>)

  - [`function hasNext():Bool`](<#gointiterator-function-hasnext>)

  - [`function new(min:stdgo.GoInt, max:stdgo.GoInt):Void`](<#gointiterator-function-new>)

  - [`function next():stdgo.GoInt`](<#gointiterator-function-next>)

- [class GoObjectMap](<#class-goobjectmap>)

  - [`function get(key:Dynamic):stdgo.GoObjectMap.V`](<#goobjectmap-function-get>)

  - [`function new():Void`](<#goobjectmap-function-new>)

  - [`function set(key:Dynamic, value:stdgo.GoObjectMap.V):Void`](<#goobjectmap-function-set>)

- [class GoPointerMap](<#class-gopointermap>)

  - [`function new():Void`](<#gopointermap-function-new>)

- [class GoRefMap](<#class-gorefmap>)

  - [`function new():Void`](<#gorefmap-function-new>)

- [class GoStringMap](<#class-gostringmap>)

  - [`function get(key:stdgo.GoString):stdgo.GoStringMap.T`](<#gostringmap-function-get>)

  - [`function new():Void`](<#gostringmap-function-new>)

  - [`function remove(key:stdgo.GoString):Bool`](<#gostringmap-function-remove>)

- [class GoStringTools](<#class-gostringtools>)

  - [`function indexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-indexof>)

  - [`function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-lastindexof>)

  - [`function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString`](<#gostringtools-function-substr>)

  - [`function toString(str:stdgo.GoString):String`](<#gostringtools-function-tostring>)

- [class GoUInt64Map](<#class-gouint64map>)

  - [`function new():Void`](<#gouint64map-function-new>)

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

- [typedef GoComplex64Map](<#typedef-gocomplex64map>)

- [typedef GoFloat](<#typedef-gofloat>)

- [typedef GoFloat32Map](<#typedef-gofloat32map>)

- [typedef GoFloatMap](<#typedef-gofloatmap>)

- [typedef GoInt](<#typedef-goint>)

- [typedef GoInt16Map](<#typedef-goint16map>)

- [typedef GoInt32Map](<#typedef-goint32map>)

- [typedef GoInt8Map](<#typedef-goint8map>)

- [typedef GoIntMap](<#typedef-gointmap>)

- [typedef GoRune](<#typedef-gorune>)

- [typedef GoUInt](<#typedef-gouint>)

- [typedef GoUInt16Map](<#typedef-gouint16map>)

- [typedef GoUInt32Map](<#typedef-gouint32map>)

- [typedef GoUInt8Map](<#typedef-gouint8map>)

- [typedef GoUIntMap](<#typedef-gouintmap>)

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

# Constants


```haxe
import stdgo.StdGoTypes
```


```haxe
final globalAddressMutex:sys.thread.Mutex = new sys.thread.Mutex()
```


# Variables


```haxe
import stdgo.StdGoTypes
```


```haxe
var globalAddress:Int
```


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


[\(view code\)](<./StdGoTypes.hx#L1726>)


### AnyInterfaceData function toString


```haxe
function toString():String
```


[\(view code\)](<./StdGoTypes.hx#L1732>)


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


[\(view code\)](<./StdGoTypes.hx#L200>)


### Complex function toString


```haxe
function toString():String
```


[\(view code\)](<./StdGoTypes.hx#L206>)


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


[\(view code\)](<./Go.hx#L24>)


### Go function select


```haxe
function select(expr:Dynamic):Dynamic
```


### Go function setKeys


```haxe
function setKeys(expr:Dynamic):Dynamic
```


### Go function setRef


```haxe
function setRef(expr:Dynamic):Dynamic
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


## class GoAnyInterfaceMap


### GoAnyInterfaceMap function get


```haxe
function get(key:Dynamic):stdgo.GoAnyInterfaceMap.V
```


[\(view code\)](<./GoMap.hx#L522>)


### GoAnyInterfaceMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L498>)


### GoAnyInterfaceMap function set


```haxe
function set(key:Dynamic, value:stdgo.GoAnyInterfaceMap.V):Void
```


[\(view code\)](<./GoMap.hx#L517>)


## class GoAnyInterfaceMapKey


```haxe
var ai:stdgo.AnyInterface
```


```haxe
var ais:String
```


### GoAnyInterfaceMapKey function new


```haxe
function new(k:stdgo.AnyInterface):Void
```


[\(view code\)](<./GoMap.hx#L488>)


## class GoArrayMap


### GoArrayMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L429>)


## class GoBoolMap


### GoBoolMap function get


```haxe
function get(key:Bool):stdgo.GoBoolMap.T
```


[\(view code\)](<./GoMap.hx#L414>)


### GoBoolMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L409>)


## class GoChanMap


### GoChanMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L391>)


## class GoComplex128Map


### GoComplex128Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L397>)


## class GoFloat64Map


### GoFloat64Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L352>)


## class GoInt64Map


### GoInt64Map function get


```haxe
function get(key:stdgo.GoInt64):stdgo.GoInt64Map.T
```


[\(view code\)](<./GoMap.hx#L325>)


### GoInt64Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L314>)


## class GoIntIterator


### GoIntIterator function hasNext


```haxe
function hasNext():Bool
```


[\(view code\)](<./StdGoTypes.hx#L1897>)


### GoIntIterator function new


```haxe
function new(min:stdgo.GoInt, max:stdgo.GoInt):Void
```


[\(view code\)](<./StdGoTypes.hx#L1892>)


### GoIntIterator function next


```haxe
function next():stdgo.GoInt
```


[\(view code\)](<./StdGoTypes.hx#L1901>)


## class GoObjectMap


```haxe
var t:stdgo.internal.reflect._Type
```


### GoObjectMap function get


```haxe
function get(key:Dynamic):stdgo.GoObjectMap.V
```


[\(view code\)](<./GoMap.hx#L460>)


### GoObjectMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L435>)


### GoObjectMap function set


```haxe
function set(key:Dynamic, value:stdgo.GoObjectMap.V):Void
```


[\(view code\)](<./GoMap.hx#L455>)


## class GoPointerMap


### GoPointerMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L385>)


## class GoRefMap


### GoRefMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L379>)


## class GoStringMap


### GoStringMap function get


```haxe
function get(key:stdgo.GoString):stdgo.GoStringMap.T
```


[\(view code\)](<./GoMap.hx#L299>)


### GoStringMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L283>)


### GoStringMap function remove


```haxe
function remove(key:stdgo.GoString):Bool
```


[\(view code\)](<./GoMap.hx#L295>)


## class GoStringTools


### GoStringTools function indexOf


```haxe
function indexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int
```


[\(view code\)](<./GoString.hx#L262>)


### GoStringTools function lastIndexOf


```haxe
function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int
```


[\(view code\)](<./GoString.hx#L259>)


### GoStringTools function substr


```haxe
function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString
```


[\(view code\)](<./GoString.hx#L265>)


### GoStringTools function toString


```haxe
function toString(str:stdgo.GoString):String
```


[\(view code\)](<./GoString.hx#L268>)


## class GoUInt64Map


### GoUInt64Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L340>)


## class PointerData


```haxe
var address:Int
```


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


[\(view code\)](<./Pointer.hx#L89>)


### PointerData function set


```haxe
function set()
```


### PointerData function toString


```haxe
function toString():String
```


[\(view code\)](<./Pointer.hx#L107>)


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


[\(view code\)](<./Slice.hx#L303>)


### SliceData function grow


```haxe
function grow():Void
```


[\(view code\)](<./Slice.hx#L342>)


### SliceData function new


```haxe
function new(length:Int, capacity:Int, args:haxe.Rest<stdgo.SliceData.T>):Void
```


[\(view code\)](<./Slice.hx#L218>)


### SliceData function set


```haxe
function set(index:Int, value:stdgo.SliceData.T):stdgo.SliceData.T
```


[\(view code\)](<./Slice.hx#L319>)


### SliceData function toArray


```haxe
function toArray():Array<stdgo.SliceData.T>
```


[\(view code\)](<./Slice.hx#L324>)


### SliceData function toString


```haxe
function toString():String
```


[\(view code\)](<./Slice.hx#L334>)


### SliceData function toVector


```haxe
function toVector():haxe.ds.Vector<stdgo.SliceData.T>
```


[\(view code\)](<./Slice.hx#L328>)


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


## typedef GoComplex64Map


```haxe
typedef GoComplex64Map = stdgo.GoComplex128Map<stdgo.GoComplex64Map.T>;
```


## typedef GoFloat


```haxe
typedef GoFloat = stdgo.GoFloat64;
```


## typedef GoFloat32Map


```haxe
typedef GoFloat32Map = stdgo.GoFloat64Map<stdgo.GoFloat32Map.T>;
```


## typedef GoFloatMap


```haxe
typedef GoFloatMap = stdgo.GoFloat64Map<stdgo.GoFloatMap.T>;
```


## typedef GoInt


```haxe
typedef GoInt = stdgo.GoInt32;
```


## typedef GoInt16Map


```haxe
typedef GoInt16Map = stdgo._GoMap.IntMap<stdgo.GoInt16Map.T>;
```


## typedef GoInt32Map


```haxe
typedef GoInt32Map = stdgo._GoMap.IntMap<stdgo.GoInt32Map.T>;
```


## typedef GoInt8Map


```haxe
typedef GoInt8Map = stdgo._GoMap.IntMap<stdgo.GoInt8Map.T>;
```


## typedef GoIntMap


```haxe
typedef GoIntMap = stdgo._GoMap.IntMap<stdgo.GoIntMap.T>;
```


## typedef GoRune


```haxe
typedef GoRune = stdgo.GoInt32;
```


## typedef GoUInt


```haxe
typedef GoUInt = stdgo.GoUInt32;
```


## typedef GoUInt16Map


```haxe
typedef GoUInt16Map = stdgo._GoMap.IntMap<stdgo.GoUInt16Map.T>;
```


## typedef GoUInt32Map


```haxe
typedef GoUInt32Map = stdgo._GoMap.IntMap<stdgo.GoUInt32Map.T>;
```


## typedef GoUInt8Map


```haxe
typedef GoUInt8Map = stdgo._GoMap.IntMap<stdgo.GoUInt8Map.T>;
```


## typedef GoUIntMap


```haxe
typedef GoUIntMap = stdgo._GoMap.IntMap<stdgo.GoUIntMap.T>;
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


