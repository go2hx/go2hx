# Module: `stdgo.Go`

[(view library index)](./stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function clampInt16(x:Int):Int`](<#function-clampint16>)

- [`function clampInt8(x:Int):Int`](<#function-clampint8>)

- [`function clampUInt(x:Int):stdgo.UInt32`](<#function-clampuint>)

- [`function clampUInt16(x:Int):Int`](<#function-clampuint16>)

- [`function clampUInt8(x:Int):Int`](<#function-clampuint8>)

- [`function copyInt64(x:stdgo.Int64):stdgo.Int64`](<#function-copyint64>)

- [`function copyUInt64(x:stdgo.UInt64):stdgo.UInt64`](<#function-copyuint64>)

- [`function ofFloatInt64(x:stdgo.Float):stdgo.Int64`](<#function-offloatint64>)

- [`function ofFloatUInt64(x:stdgo.Float):stdgo.UInt64`](<#function-offloatuint64>)

- [`function ofIntInt64(x:Int):stdgo.Int64`](<#function-ofintint64>)

- [`function ofIntUInt(x:Int):stdgo.UInt32`](<#function-ofintuint>)

- [`function ofIntUInt64(x:Int):stdgo.UInt64`](<#function-ofintuint64>)

- [`function ofUIntUInt64(x:UInt):stdgo.UInt64`](<#function-ofuintuint64>)

- [`function oneInt64():stdgo.Int64`](<#function-oneint64>)

- [`function oneUInt32():stdgo.UInt32`](<#function-oneuint32>)

- [`function oneUInt64():stdgo.UInt64`](<#function-oneuint64>)

- [`function shiftGuard(x:Int):Bool`](<#function-shiftguard>)

- [`function toFloatInt64(x:stdgo.Int64):stdgo.Float`](<#function-tofloatint64>)

- [`function toFloatUInt64(x:stdgo.UInt64):stdgo.Float`](<#function-tofloatuint64>)

- [`function toInt64UInt64(x:stdgo.UInt64):stdgo.Int64`](<#function-toint64uint64>)

- [`function toIntInt64(x:stdgo.Int64):Int`](<#function-tointint64>)

- [`function toIntUInt64(x:stdgo.UInt64):Int`](<#function-tointuint64>)

- [`function toStringInt64(x:stdgo.Int64):String`](<#function-tostringint64>)

- [`function toStringUInt64(x:stdgo.UInt64):String`](<#function-tostringuint64>)

- [`function toUInt64Int64(x:stdgo.Int64):stdgo.UInt64`](<#function-touint64int64>)

- [`function zeroInt64():stdgo.Int64`](<#function-zeroint64>)

- [`function zeroUInt32():stdgo.UInt32`](<#function-zerouint32>)

- [`function zeroUInt64():stdgo.UInt64`](<#function-zerouint64>)

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

  - [`function defaultValue(e:Dynamic):Dynamic`](<#go-function-defaultvalue>)

  - [`function expectedValue(value:Dynamic):Dynamic`](<#go-function-expectedvalue>)

  - [`function map(exprs:Dynamic):Dynamic`](<#go-function-map>)

  - [`function multireturn(expr:Dynamic):Dynamic`](<#go-function-multireturn>)

  - [`function pointer(expr:Dynamic, hasSet:Dynamic):Dynamic`](<#go-function-pointer>)

  - [`function print(args:haxe.Rest<Dynamic>):Void`](<#go-function-print>)

  - [`function println(args:haxe.Rest<Dynamic>):Void`](<#go-function-println>)

  - [`function refPointer(expr:Dynamic):Dynamic`](<#go-function-refpointer>)

  - [`function routine(func:():Void):Void`](<#go-function-routine>)

  - [`function select(expr:Dynamic):Dynamic`](<#go-function-select>)

  - [`function setKeys(expr:Dynamic):Dynamic`](<#go-function-setkeys>)

  - [`function setRef(expr:Dynamic):Dynamic`](<#go-function-setref>)

  - [`function str(expr:Dynamic):Dynamic`](<#go-function-str>)

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

- [class GoArrayData](<#class-goarraydata>)

  - [`function get(index:Int):stdgo.GoArrayData.T`](<#goarraydata-function-get>)

  - [`function grow():Void`](<#goarraydata-function-grow>)

  - [`function new(length:Int, capacity:Int, args:haxe.Rest<stdgo.GoArrayData.T>):Void`](<#goarraydata-function-new>)

  - [`function set(index:Int, value:stdgo.GoArrayData.T):stdgo.GoArrayData.T`](<#goarraydata-function-set>)

  - [`function toArray():Array<stdgo.GoArrayData.T>`](<#goarraydata-function-toarray>)

  - [`function toVector():haxe.ds.Vector<stdgo.GoArrayData.T>`](<#goarraydata-function-tovector>)

- [class GoArrayDataIterator](<#class-goarraydataiterator>)

  - [`function hasNext():Bool`](<#goarraydataiterator-function-hasnext>)

  - [`function new(slice:stdgo.GoArrayData<stdgo.GoArrayDataIterator.T>):Void`](<#goarraydataiterator-function-new>)

  - [`function next():stdgo.GoArrayDataIterator.T`](<#goarraydataiterator-function-next>)

- [class GoArrayDataKeyValueIterator](<#class-goarraydatakeyvalueiterator>)

  - [`function hasNext():Bool`](<#goarraydatakeyvalueiterator-function-hasnext>)

  - [`function new(slice:stdgo.GoArrayData<stdgo.GoArrayDataKeyValueIterator.T>):Void`](<#goarraydatakeyvalueiterator-function-new>)

  - [`function next():{ value:stdgo.GoArrayDataKeyValueIterator.T; key:stdgo.GoInt;}`](<#goarraydatakeyvalueiterator-function-next>)

- [class GoArrayMap](<#class-goarraymap>)

  - [`function new():Void`](<#goarraymap-function-new>)

- [class GoBoolMap](<#class-goboolmap>)

  - [`function get(key:Bool):stdgo.GoBoolMap.T`](<#goboolmap-function-get>)

  - [`function new():Void`](<#goboolmap-function-new>)

- [class GoChanMap](<#class-gochanmap>)

  - [`function get(key:stdgo.Chan<stdgo.GoChanMap.K>):stdgo.GoChanMap.V`](<#gochanmap-function-get>)

  - [`function new():Void`](<#gochanmap-function-new>)

- [class GoComplex128Map](<#class-gocomplex128map>)

  - [`function get(key:stdgo.GoComplex128):stdgo.GoComplex128Map.T`](<#gocomplex128map-function-get>)

  - [`function new():Void`](<#gocomplex128map-function-new>)

- [class GoFloat64Map](<#class-gofloat64map>)

  - [`function get(key:stdgo.GoFloat64):stdgo.GoFloat64Map.T`](<#gofloat64map-function-get>)

  - [`function new():Void`](<#gofloat64map-function-new>)

- [class GoInt64Map](<#class-goint64map>)

  - [`function get(key:stdgo.GoInt64):stdgo.GoInt64Map.T`](<#goint64map-function-get>)

  - [`function new():Void`](<#goint64map-function-new>)

- [class GoObjectMap](<#class-goobjectmap>)

  - [`function get(key:Dynamic):stdgo.GoObjectMap.V`](<#goobjectmap-function-get>)

  - [`function new():Void`](<#goobjectmap-function-new>)

  - [`function set(key:Dynamic, value:stdgo.GoObjectMap.V):Void`](<#goobjectmap-function-set>)

- [class GoPointerMap](<#class-gopointermap>)

  - [`function get(key:stdgo.Pointer<stdgo.GoPointerMap.K>):stdgo.GoPointerMap.V`](<#gopointermap-function-get>)

  - [`function new():Void`](<#gopointermap-function-new>)

- [class GoRefMap](<#class-gorefmap>)

  - [`function get(key:stdgo.Ref<stdgo.GoRefMap.K>):stdgo.GoRefMap.V`](<#gorefmap-function-get>)

  - [`function new():Void`](<#gorefmap-function-new>)

- [class GoStringMap](<#class-gostringmap>)

  - [`function get(key:stdgo.GoString):stdgo.GoStringMap.T`](<#gostringmap-function-get>)

  - [`function new():Void`](<#gostringmap-function-new>)

  - [`function remove(key:stdgo.GoString):Bool`](<#gostringmap-function-remove>)

- [class GoStringTools](<#class-gostringtools>)

  - [`function indexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-indexof>)

  - [`function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int`](<#gostringtools-function-lastindexof>)

  - [`function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString`](<#gostringtools-function-substr>)

- [class GoUInt64Map](<#class-gouint64map>)

  - [`function get(key:stdgo.GoUInt64):stdgo.GoUInt64Map.T`](<#gouint64map-function-get>)

  - [`function new():Void`](<#gouint64map-function-new>)

- [class PointerData](<#class-pointerdata>)

  - [`function assign():stdgo.PointerData.T`](<#pointerdata-function-assign>)

  - [`function convert()`](<#pointerdata-function-convert>)

  - [`function get():stdgo.PointerData.T`](<#pointerdata-function-get>)

  - [`function new(?get:():stdgo.PointerData.T, ?set:(), ?hasSet:Bool, ?previous:stdgo.Pointer<Any>, ?underlying:Any, ?underlyingIndex:Any):Void`](<#pointerdata-function-new>)

  - [`function set()`](<#pointerdata-function-set>)

  - [`function toString():String`](<#pointerdata-function-tostring>)

- [typedef Complex128](<#typedef-complex128>)

- [typedef Complex64](<#typedef-complex64>)

- [typedef Error](<#typedef-error>)

- [typedef Float](<#typedef-float>)

- [typedef Float32](<#typedef-float32>)

- [typedef Float64](<#typedef-float64>)

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

- [typedef Int16](<#typedef-int16>)

- [typedef Int32](<#typedef-int32>)

- [typedef Int64](<#typedef-int64>)

- [typedef Int8](<#typedef-int8>)

- [typedef Ref](<#typedef-ref>)

- [typedef StructType](<#typedef-structtype>)

- [typedef UInt16](<#typedef-uint16>)

- [typedef UInt32](<#typedef-uint32>)

- [typedef UInt64](<#typedef-uint64>)

- [typedef UInt8](<#typedef-uint8>)

- [abstract AnyInterface](<#abstract-anyinterface>)

- [abstract Chan](<#abstract-chan>)

- [abstract GoArray](<#abstract-goarray>)

- [abstract GoComplex128](<#abstract-gocomplex128>)

- [abstract GoComplex64](<#abstract-gocomplex64>)

- [abstract GoFloat32](<#abstract-gofloat32>)

- [abstract GoFloat64](<#abstract-gofloat64>)

- [abstract GoInt16](<#abstract-goint16>)

- [abstract GoInt32](<#abstract-goint32>)

- [abstract GoInt64](<#abstract-goint64>)

- [abstract GoInt8](<#abstract-goint8>)

- [abstract GoMap](<#abstract-gomap>)

- [abstract GoString](<#abstract-gostring>)

- [abstract GoUInt16](<#abstract-gouint16>)

- [abstract GoUInt32](<#abstract-gouint32>)

- [abstract GoUInt64](<#abstract-gouint64>)

- [abstract GoUInt8](<#abstract-gouint8>)

- [abstract GoUIntptr](<#abstract-gouintptr>)

- [abstract Pointer](<#abstract-pointer>)

- [abstract Slice](<#abstract-slice>)

# Constants


```haxe
import stdgo.GoNumber
```


```haxe
final globalAddressMutex:sys.thread.Mutex = new sys.thread.Mutex()
```


# Variables


```haxe
import stdgo.GoNumber
```


```haxe
var globalAddress:Int
```


# Functions


```haxe
import stdgo.GoNumber
```


## function clampInt16


```haxe
function clampInt16(x:Int):Int
```


[\(view code\)](<./GoNumber.hx#L171>)


## function clampInt8


```haxe
function clampInt8(x:Int):Int
```


[\(view code\)](<./GoNumber.hx#L191>)


## function clampUInt


```haxe
function clampUInt(x:Int):stdgo.UInt32
```


[\(view code\)](<./GoNumber.hx#L185>)


## function clampUInt16


```haxe
function clampUInt16(x:Int):Int
```


[\(view code\)](<./GoNumber.hx#L182>)


## function clampUInt8


```haxe
function clampUInt8(x:Int):Int
```


[\(view code\)](<./GoNumber.hx#L179>)


## function copyInt64


```haxe
function copyInt64(x:stdgo.Int64):stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L20>)


## function copyUInt64


```haxe
function copyUInt64(x:stdgo.UInt64):stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L23>)


## function ofFloatInt64


```haxe
function ofFloatInt64(x:stdgo.Float):stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L63>)


## function ofFloatUInt64


```haxe
function ofFloatUInt64(x:stdgo.Float):stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L77>)


## function ofIntInt64


```haxe
function ofIntInt64(x:Int):stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L198>)


## function ofIntUInt


```haxe
function ofIntUInt(x:Int):stdgo.UInt32
```


[\(view code\)](<./GoNumber.hx#L58>)


## function ofIntUInt64


```haxe
function ofIntUInt64(x:Int):stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L25>)


## function ofUIntUInt64


```haxe
function ofUIntUInt64(x:UInt):stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L29>)


## function oneInt64


```haxe
function oneInt64():stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L50>)


## function oneUInt32


```haxe
function oneUInt32():stdgo.UInt32
```


[\(view code\)](<./GoNumber.hx#L44>)


## function oneUInt64


```haxe
function oneUInt64():stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L56>)


## function shiftGuard


```haxe
function shiftGuard(x:Int):Bool
```


[\(view code\)](<./GoNumber.hx#L189>)


## function toFloatInt64


```haxe
function toFloatInt64(x:stdgo.Int64):stdgo.Float
```


[\(view code\)](<./GoNumber.hx#L101>)


## function toFloatUInt64


```haxe
function toFloatUInt64(x:stdgo.UInt64):stdgo.Float
```


[\(view code\)](<./GoNumber.hx#L106>)


## function toInt64UInt64


```haxe
function toInt64UInt64(x:stdgo.UInt64):stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L146>)


## function toIntInt64


```haxe
function toIntInt64(x:stdgo.Int64):Int
```


[\(view code\)](<./GoNumber.hx#L142>)


## function toIntUInt64


```haxe
function toIntUInt64(x:stdgo.UInt64):Int
```


[\(view code\)](<./GoNumber.hx#L138>)


## function toStringInt64


```haxe
function toStringInt64(x:stdgo.Int64):String
```


```
Converts an `Int64` to `Float`;
	Implementation by Elliott Stoneham.
```
[\(view code\)](<./GoNumber.hx#L133>)


## function toStringUInt64


```haxe
function toStringUInt64(x:stdgo.UInt64):String
```


[\(view code\)](<./GoNumber.hx#L136>)


## function toUInt64Int64


```haxe
function toUInt64Int64(x:stdgo.Int64):stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L150>)


## function zeroInt64


```haxe
function zeroInt64():stdgo.Int64
```


[\(view code\)](<./GoNumber.hx#L47>)


## function zeroUInt32


```haxe
function zeroUInt32():stdgo.UInt32
```


[\(view code\)](<./GoNumber.hx#L41>)


## function zeroUInt64


```haxe
function zeroUInt64():stdgo.UInt64
```


[\(view code\)](<./GoNumber.hx#L53>)


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


[\(view code\)](<./AnyInterface.hx#L9>)


### AnyInterfaceData function toString


```haxe
function toString():String
```


[\(view code\)](<./AnyInterface.hx#L15>)


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


[\(view code\)](<./Chan.hx#L141>)


### ChanData function keyValueIterator


```haxe
function keyValueIterator():stdgo._Chan.ChanKeyValueIterator<stdgo.ChanData.T>
```


[\(view code\)](<./Chan.hx#L138>)


### ChanData function new


```haxe
function new(length:stdgo.GoInt, defaultValue:():stdgo.ChanData.T):Void
```


[\(view code\)](<./Chan.hx#L49>)


### ChanData function toString


```haxe
function toString():String
```


[\(view code\)](<./Chan.hx#L143>)


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


[\(view code\)](<./GoNumber.hx#L162>)


### Complex function toString


```haxe
function toString():String
```


[\(view code\)](<./GoNumber.hx#L168>)


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


### Go function defaultValue


```haxe
function defaultValue(e:Dynamic):Dynamic
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


### Go function print


```haxe
function print(args:haxe.Rest<Dynamic>):Void
```


[\(view code\)](<./Go.hx#L20>)


### Go function println


```haxe
function println(args:haxe.Rest<Dynamic>):Void
```


[\(view code\)](<./Go.hx#L26>)


### Go function refPointer


```haxe
function refPointer(expr:Dynamic):Dynamic
```


### Go function routine


```haxe
function routine(func:():Void):Void
```


[\(view code\)](<./Go.hx#L8>)


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


[\(view code\)](<./GoMap.hx#L606>)


### GoAnyInterfaceMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L582>)


### GoAnyInterfaceMap function set


```haxe
function set(key:Dynamic, value:stdgo.GoAnyInterfaceMap.V):Void
```


[\(view code\)](<./GoMap.hx#L601>)


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


[\(view code\)](<./GoMap.hx#L572>)


## class GoArrayData


```haxe
var bytes:haxe.io.Bytes
```


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
var vector:haxe.ds.Vector<stdgo.GoArrayData.T>
```


### GoArrayData function get


```haxe
function get(index:Int):stdgo.GoArrayData.T
```


[\(view code\)](<./GoArray.hx#L124>)


### GoArrayData function grow


```haxe
function grow():Void
```


[\(view code\)](<./GoArray.hx#L170>)


### GoArrayData function new


```haxe
function new(length:Int, capacity:Int, args:haxe.Rest<stdgo.GoArrayData.T>):Void
```


[\(view code\)](<./GoArray.hx#L25>)


### GoArrayData function set


```haxe
function set(index:Int, value:stdgo.GoArrayData.T):stdgo.GoArrayData.T
```


[\(view code\)](<./GoArray.hx#L143>)


### GoArrayData function toArray


```haxe
function toArray():Array<stdgo.GoArrayData.T>
```


[\(view code\)](<./GoArray.hx#L152>)


### GoArrayData function toVector


```haxe
function toVector():haxe.ds.Vector<stdgo.GoArrayData.T>
```


[\(view code\)](<./GoArray.hx#L158>)


## class GoArrayDataIterator


### GoArrayDataIterator function hasNext


```haxe
function hasNext():Bool
```


[\(view code\)](<./GoArray.hx#L229>)


### GoArrayDataIterator function new


```haxe
function new(slice:stdgo.GoArrayData<stdgo.GoArrayDataIterator.T>):Void
```


[\(view code\)](<./GoArray.hx#L225>)


### GoArrayDataIterator function next


```haxe
function next():stdgo.GoArrayDataIterator.T
```


[\(view code\)](<./GoArray.hx#L233>)


## class GoArrayDataKeyValueIterator


### GoArrayDataKeyValueIterator function hasNext


```haxe
function hasNext():Bool
```


[\(view code\)](<./GoArray.hx#L212>)


### GoArrayDataKeyValueIterator function new


```haxe
function new(slice:stdgo.GoArrayData<stdgo.GoArrayDataKeyValueIterator.T>):Void
```


[\(view code\)](<./GoArray.hx#L208>)


### GoArrayDataKeyValueIterator function next


```haxe
function next():{
	value:stdgo.GoArrayDataKeyValueIterator.T;
	key:stdgo.GoInt;
}
```


[\(view code\)](<./GoArray.hx#L216>)


## class GoArrayMap


### GoArrayMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L513>)


## class GoBoolMap


### GoBoolMap function get


```haxe
function get(key:Bool):stdgo.GoBoolMap.T
```


[\(view code\)](<./GoMap.hx#L498>)


### GoBoolMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L493>)


## class GoChanMap


### GoChanMap function get


```haxe
function get(key:stdgo.Chan<stdgo.GoChanMap.K>):stdgo.GoChanMap.V
```


[\(view code\)](<./GoMap.hx#L452>)


### GoChanMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L447>)


## class GoComplex128Map


### GoComplex128Map function get


```haxe
function get(key:stdgo.GoComplex128):stdgo.GoComplex128Map.T
```


[\(view code\)](<./GoMap.hx#L478>)


### GoComplex128Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L467>)


## class GoFloat64Map


### GoFloat64Map function get


```haxe
function get(key:stdgo.GoFloat64):stdgo.GoFloat64Map.T
```


[\(view code\)](<./GoMap.hx#L377>)


### GoFloat64Map function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L366>)


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


## class GoObjectMap


```haxe
var t:stdgo.internal.reflect._Type
```


### GoObjectMap function get


```haxe
function get(key:Dynamic):stdgo.GoObjectMap.V
```


[\(view code\)](<./GoMap.hx#L544>)


### GoObjectMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L519>)


### GoObjectMap function set


```haxe
function set(key:Dynamic, value:stdgo.GoObjectMap.V):Void
```


[\(view code\)](<./GoMap.hx#L539>)


## class GoPointerMap


### GoPointerMap function get


```haxe
function get(key:stdgo.Pointer<stdgo.GoPointerMap.K>):stdgo.GoPointerMap.V
```


[\(view code\)](<./GoMap.hx#L432>)


### GoPointerMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L427>)


## class GoRefMap


### GoRefMap function get


```haxe
function get(key:stdgo.Ref<stdgo.GoRefMap.K>):stdgo.GoRefMap.V
```


[\(view code\)](<./GoMap.hx#L412>)


### GoRefMap function new


```haxe
function new():Void
```


[\(view code\)](<./GoMap.hx#L407>)


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


[\(view code\)](<./GoString.hx#L307>)


### GoStringTools function lastIndexOf


```haxe
function lastIndexOf(s:stdgo.GoString, str:stdgo.GoString, ?startIndex:Int):Int
```


[\(view code\)](<./GoString.hx#L304>)


### GoStringTools function substr


```haxe
function substr(str:stdgo.GoString, pos:Int, ?len:Int):stdgo.GoString
```


[\(view code\)](<./GoString.hx#L310>)


## class GoUInt64Map


### GoUInt64Map function get


```haxe
function get(key:stdgo.GoUInt64):stdgo.GoUInt64Map.T
```


[\(view code\)](<./GoMap.hx#L351>)


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
function new(?get:():stdgo.PointerData.T, ?set:(), ?hasSet:Bool, ?previous:stdgo.Pointer<Any>, ?underlying:Any, ?underlyingIndex:Any):Void
```


[\(view code\)](<./Pointer.hx#L80>)


### PointerData function set


```haxe
function set()
```


### PointerData function toString


```haxe
function toString():String
```


[\(view code\)](<./Pointer.hx#L98>)


# Typedefs


```haxe
import stdgo.*
```


## typedef Complex128


```haxe
typedef Complex128 = stdgo.Complex<stdgo.Float64>;
```


## typedef Complex64


```haxe
typedef Complex64 = stdgo.Complex<stdgo.Float32>;
```


## typedef Error


```haxe
typedef Error = {
	public function error():stdgo.GoString;
};
```


## typedef Float


```haxe
typedef Float = stdgo.Float64;
```


## typedef Float32


```haxe
typedef Float32 = stdgo.Float64;
```


## typedef Float64


```haxe
typedef Float64 = Float;
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


## typedef Int16


```haxe
typedef Int16 = Int;
```


## typedef Int32


```haxe
typedef Int32 = haxe.Int32;
```


## typedef Int64


```haxe
typedef Int64 = haxe.Int64;
```


## typedef Int8


```haxe
typedef Int8 = Int;
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


## typedef UInt16


```haxe
typedef UInt16 = Int;
```


## typedef UInt32


```haxe
typedef UInt32 = UInt;
```


## typedef UInt64


```haxe
typedef UInt64 = haxe.UInt64;
```


## typedef UInt8


```haxe
typedef UInt8 = Int;
```


# Abstracts


## abstract AnyInterface


[\(view file containing code\)](<./AnyInterface.hx>)


## abstract Chan


[\(view file containing code\)](<./Chan.hx>)


## abstract GoArray


[\(view file containing code\)](<./GoArray.hx>)


## abstract GoComplex128


[\(view file containing code\)](<./GoComplex128.hx>)


## abstract GoComplex64


[\(view file containing code\)](<./GoComplex64.hx>)


## abstract GoFloat32


[\(view file containing code\)](<./GoFloat32.hx>)


## abstract GoFloat64


[\(view file containing code\)](<./GoFloat64.hx>)


## abstract GoInt16


[\(view file containing code\)](<./GoInt16.hx>)


## abstract GoInt32


[\(view file containing code\)](<./GoInt32.hx>)


## abstract GoInt64


[\(view file containing code\)](<./GoInt64.hx>)


## abstract GoInt8


[\(view file containing code\)](<./GoInt8.hx>)


## abstract GoMap


[\(view file containing code\)](<./GoMap.hx>)


## abstract GoString


[\(view file containing code\)](<./GoString.hx>)


## abstract GoUInt16


[\(view file containing code\)](<./GoUInt16.hx>)


## abstract GoUInt32


[\(view file containing code\)](<./GoUInt32.hx>)


## abstract GoUInt64


[\(view file containing code\)](<./GoUInt64.hx>)


## abstract GoUInt8


[\(view file containing code\)](<./GoUInt8.hx>)


## abstract GoUIntptr


[\(view file containing code\)](<./GoUIntptr.hx>)


## abstract Pointer


[\(view file containing code\)](<./Pointer.hx>)


## abstract Slice


[\(view file containing code\)](<./Slice.hx>)


