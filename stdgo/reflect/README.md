# Module: `stdgo.reflect`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Constants](<#constants>)

- [`function appendSlice(dst:stdgo.reflect.Value, src:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-appendslice>)

- [`function deepEqual(x:stdgo.AnyInterface, y:stdgo.AnyInterface):Bool`](<#function-deepequal>)

- [`function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool`](<#function-deepvalueequal>)

- [`function defaultValue(typ:stdgo.reflect.Type):Any`](<#function-defaultvalue>)

- [`function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool`](<#function-directlyassignable>)

- [`function getElem(type:stdgo.reflect.GoType):stdgo.reflect.GoType`](<#function-getelem>)

- [`function getSignature(type:stdgo.reflect.GoType):stdgo.reflect.GoType`](<#function-getsignature>)

- [`function getUnderlying(gt:stdgo.reflect.GoType, ?once:Bool):stdgo.reflect.GoType`](<#function-getunderlying>)

- [`function getVar(type:stdgo.reflect.GoType):stdgo.reflect.GoType`](<#function-getvar>)

- [`function implementsMethod(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool`](<#function-implementsmethod>)

- [`function indirect(v:stdgo.reflect.Value):stdgo.reflect.Value`](<#function-indirect>)

- [`function isAnyInterface(type:stdgo.reflect.GoType):Bool`](<#function-isanyinterface>)

- [`function isInterface(type:stdgo.reflect.GoType):Bool`](<#function-isinterface>)

- [`function isInvalid(type:stdgo.reflect.GoType):Bool`](<#function-isinvalid>)

- [`function isNamed(type:stdgo.reflect.GoType):Bool`](<#function-isnamed>)

- [`function isPointer(type:stdgo.reflect.GoType):Bool`](<#function-ispointer>)

- [`function isPointerStruct(type:stdgo.reflect.GoType):Bool`](<#function-ispointerstruct>)

- [`function isRef(type:stdgo.reflect.GoType):Bool`](<#function-isref>)

- [`function isRefValue(type:stdgo.reflect.GoType):Bool`](<#function-isrefvalue>)

- [`function isReflectTypeRef(type:stdgo.reflect.Type):Bool`](<#function-isreflecttyperef>)

- [`function isSignature(type:stdgo.reflect.GoType, ?underlyingBool:Bool):Bool`](<#function-issignature>)

- [`function isStruct(type:stdgo.reflect.GoType):Bool`](<#function-isstruct>)

- [`function isTitle(string:String):Bool`](<#function-istitle>)

- [`function isUnsafePointer(type:stdgo.reflect.GoType):Bool`](<#function-isunsafepointer>)

- [`function new_(typ:stdgo.reflect.Type):stdgo.reflect.Value`](<#function-new_>)

- [`function pointerUnwrap(type:stdgo.reflect.GoType):stdgo.reflect.GoType`](<#function-pointerunwrap>)

- [`function ptrTo(t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-ptrto>)

- [`function sliceOf(t:stdgo.reflect.Type):stdgo.reflect.Type`](<#function-sliceof>)

- [`function typeOf(iface:stdgo.AnyInterface):stdgo.reflect.Type`](<#function-typeof>)

- [`function valueOf(iface:stdgo.AnyInterface):stdgo.reflect.Value`](<#function-valueof>)

- [`function zero(typ:stdgo.reflect.Type):stdgo.reflect.Value`](<#function-zero>)

- [class ChanDir](<#class-chandir>)

  - [`function new(?t:Null<stdgo.GoInt>):Void`](<#chandir-function-new>)

  - [`function string():stdgo.GoString`](<#chandir-function-string>)

- [class FieldType](<#class-fieldtype>)

  - [`function new(name:String, type:stdgo.reflect.GoType, tag:String, embedded:Bool):Void`](<#fieldtype-function-new>)

- [class Kind\_extension](<#class-kind_extension>)

  - [`function string():stdgo.GoString`](<#kind_extension-function-string>)

- [class Method](<#class-method>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo.reflect.Type, ?func:stdgo.reflect.Value, ?index:stdgo.GoInt):Void`](<#method-function-new>)

  - [`function string():String`](<#method-function-string>)

- [class MethodType](<#class-methodtype>)

  - [`function new(name:String, type:stdgo.reflect.Ref<stdgo.reflect.GoType>, recv:stdgo.reflect.Ref<stdgo.reflect.GoType>):Void`](<#methodtype-function-new>)

  - [`function toString():String`](<#methodtype-function-tostring>)

- [class SliceHeader](<#class-sliceheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void`](<#sliceheader-function-new>)

  - [`function string():stdgo.GoString`](<#sliceheader-function-string>)

- [class StringHeader](<#class-stringheader>)

  - [`function new(?data:stdgo.GoUIntptr, ?len:Null<stdgo.GoInt>):Void`](<#stringheader-function-new>)

  - [`function string():stdgo.GoString`](<#stringheader-function-string>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo.reflect.Type, ?tag:stdgo.GoString, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void`](<#structfield-function-new>)

  - [`function string():stdgo.GoString`](<#structfield-function-string>)

- [class StructTag](<#class-structtag>)

  - [`function get(key:stdgo.GoString):stdgo.GoString`](<#structtag-function-get>)

  - [`function lookup(key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}`](<#structtag-function-lookup>)

  - [`function new(str:stdgo.GoString):Void`](<#structtag-function-new>)

  - [`function string():stdgo.GoString`](<#structtag-function-string>)

- [class Value](<#class-value>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function canAddr():Bool`](<#value-function-canaddr>)

  - [`function canInterface():Bool`](<#value-function-caninterface>)

  - [`function canSet():Bool`](<#value-function-canset>)

  - [`function cap():stdgo.GoInt`](<#value-function-cap>)

  - [`function complex():stdgo.GoComplex128`](<#value-function-complex>)

  - [`function elem():stdgo.reflect.Value`](<#value-function-elem>)

  - [`function field(i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-field>)

  - [`function float():stdgo.GoFloat64`](<#value-function-float>)

  - [`function index(i:stdgo.GoInt):stdgo.reflect.Value`](<#value-function-index>)

  - [`function int():stdgo.GoInt64`](<#value-function-int>)

  - [`function interface_(?val:Dynamic):stdgo.AnyInterface`](<#value-function-interface_>)

  - [`function isNil():Bool`](<#value-function-isnil>)

  - [`function isValid():Bool`](<#value-function-isvalid>)

  - [`function kind():stdgo.reflect.Kind`](<#value-function-kind>)

  - [`function len():stdgo.GoInt`](<#value-function-len>)

  - [`function mapIndex(key:stdgo.reflect.Value):stdgo.reflect.Value`](<#value-function-mapindex>)

  - [`function mapKeys():stdgo.Slice<stdgo.reflect.Value>`](<#value-function-mapkeys>)

  - [`function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic):Void`](<#value-function-new>)

  - [`function numField():stdgo.GoInt`](<#value-function-numfield>)

  - [`function pointer():stdgo.GoUIntptr`](<#value-function-pointer>)

  - [`function set(x:stdgo.reflect.Value):Void`](<#value-function-set>)

  - [`function setBool(x:Bool):Void`](<#value-function-setbool>)

  - [`function setBytes(x:stdgo.Slice<stdgo.GoByte>):Void`](<#value-function-setbytes>)

  - [`function setComplex(x:stdgo.GoComplex128):Void`](<#value-function-setcomplex>)

  - [`function setFloat(x:stdgo.GoFloat64):Void`](<#value-function-setfloat>)

  - [`function setInt(x:stdgo.GoInt64):Void`](<#value-function-setint>)

  - [`function setString(x:stdgo.GoString):Void`](<#value-function-setstring>)

  - [`function setUint(x:stdgo.GoUInt64):Void`](<#value-function-setuint>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function type():stdgo.reflect.Type`](<#value-function-type>)

  - [`function uint():stdgo.GoUInt64`](<#value-function-uint>)

- [class ValueError](<#class-valueerror>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

  - [`function new(m:stdgo.GoString, k:stdgo.reflect.Kind):Void`](<#valueerror-function-new>)

  - [`function string():stdgo.GoString`](<#valueerror-function-string>)

- [class \_Type](<#class-_type>)

  - [`function align():stdgo.GoInt`](<#_type-function-align>)

  - [`function assignableTo(ot:stdgo.reflect.Type):Bool`](<#_type-function-assignableto>)

  - [`function bits():stdgo.GoInt`](<#_type-function-bits>)

  - [`function chanDir():stdgo.reflect.ChanDir`](<#_type-function-chandir>)

  - [`function common():stdgo.Pointer<Dynamic>`](<#_type-function-common>)

  - [`function comparable():Bool`](<#_type-function-comparable>)

  - [`function convertibleTo(u:stdgo.reflect.Type):Bool`](<#_type-function-convertibleto>)

  - [`function elem():stdgo.reflect.Type`](<#_type-function-elem>)

  - [`function field(index:stdgo.GoInt):stdgo.reflect.StructField`](<#_type-function-field>)

  - [`function fieldAlign():stdgo.GoInt`](<#_type-function-fieldalign>)

  - [`function fieldByIndex(index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField`](<#_type-function-fieldbyindex>)

  - [`function fieldByName(name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type-function-fieldbyname>)

  - [`function fieldByNameFunc(match:()):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type-function-fieldbynamefunc>)

  - [`function hasName():Bool`](<#_type-function-hasname>)

  - [`function implements_(ot:stdgo.reflect.Type):Bool`](<#type-function-implements>)

  - [`function in_(i:stdgo.GoInt):stdgo.reflect.Type`](<#type-function-in>)

  - [`function isExported(name:String):Bool`](<#_type-function-isexported>)

  - [`function isVariadic():Bool`](<#_type-function-isvariadic>)

  - [`function key():stdgo.reflect.Type`](<#_type-function-key>)

  - [`function kind():stdgo.reflect.Kind`](<#_type-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type-function-len>)

  - [`function method(index:stdgo.GoInt):stdgo.reflect.Method`](<#_type-function-method>)

  - [`function methodByName(name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}`](<#_type-function-methodbyname>)

  - [`function name():stdgo.GoString`](<#_type-function-name>)

  - [`function new(?t:stdgo.reflect.GoType):Void`](<#_type-function-new>)

  - [`function numField():stdgo.GoInt`](<#_type-function-numfield>)

  - [`function numIn():stdgo.GoInt`](<#_type-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#_type-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#_type-function-numout>)

  - [`function out(i:stdgo.GoInt):stdgo.reflect.Type`](<#_type-function-out>)

  - [`function pkgPath():stdgo.GoString`](<#_type-function-pkgpath>)

  - [`function size():stdgo.GoUIntptr`](<#_type-function-size>)

  - [`function string():stdgo.GoString`](<#_type-function-string>)

  - [`function uncommon():stdgo.Pointer<Dynamic>`](<#_type-function-uncommon>)

- [typedef Kind](<#typedef-kind>)

  - [`function string():stdgo.GoString`](<#kind-function-string>)

- [typedef Ref](<#typedef-ref>)

- [typedef Type](<#typedef-type>)

# Constants


```haxe
import stdgo.reflect.Reflect
```


```haxe
final __string:stdgo.reflect.Kind = toString
```


```haxe
final _array:Int = 17
```


```haxe
final _bool:Int = 1
```


```haxe
final _chan:Int = 18
```


```haxe
final _complex128:Int = 16
```


```haxe
final _complex64:Int = 15
```


```haxe
final _float32:Int = 13
```


```haxe
final _float64:Int = 14
```


```haxe
final _func:Int = 19
```


```haxe
final _int:Int = 2
```


```haxe
final _int16:Int = 4
```


```haxe
final _int32:Int = 5
```


```haxe
final _int64:Int = 6
```


```haxe
final _int8:Int = 3
```


```haxe
final _interface:Int = 20
```


```haxe
final _invalid:Int = 0
```


```haxe
final _map:Int = 21
```


```haxe
final _ptr:Int = 22
```


```haxe
final _slice:Int = 23
```


```haxe
final _string:Int = 24
```


```haxe
final _struct:Int = 25
```


```haxe
final _uint:Int = 7
```


```haxe
final _uint16:Int = 9
```


```haxe
final _uint32:Int = 10
```


```haxe
final _uint64:Int = 11
```


```haxe
final _uint8:Int = 8
```


```haxe
final _uintptr:Int = 12
```


```haxe
final _unsafePointer:Int = 26
```


```haxe
final array:stdgo.reflect.Kind = new Kind(_array)
```


```haxe
final bool_:stdgo.reflect.Kind = new Kind(_bool)
```


```haxe
final chan:stdgo.reflect.Kind = new Kind(_chan)
```


```haxe
final complex128:stdgo.reflect.Kind = new Kind(_complex128)
```


```haxe
final complex64:stdgo.reflect.Kind = new Kind(_complex64)
```


```haxe
final float32:stdgo.reflect.Kind = new Kind(_float32)
```


```haxe
final float64:stdgo.reflect.Kind = new Kind(_float64)
```


```haxe
final func:stdgo.reflect.Kind = new Kind(_func)
```


```haxe
final int16:stdgo.reflect.Kind = new Kind(_int16)
```


```haxe
final int32:stdgo.reflect.Kind = new Kind(_int32)
```


```haxe
final int64:stdgo.reflect.Kind = new Kind(_int64)
```


```haxe
final int8:stdgo.reflect.Kind = new Kind(_int8)
```


```haxe
final int_:stdgo.reflect.Kind = new Kind(_int)
```


```haxe
final interface_:stdgo.reflect.Kind = new Kind(_interface)
```


```haxe
final invalid:stdgo.reflect.Kind = new Kind(_invalid)
```


```haxe
final map:stdgo.reflect.Kind = new Kind(_map)
```


```haxe
final ptr:stdgo.reflect.Kind = new Kind(_ptr)
```


```haxe
final slice:stdgo.reflect.Kind = new Kind(_slice)
```


```haxe
final struct_:stdgo.reflect.Kind = new Kind(_struct)
```


```haxe
final toString:stdgo.reflect.Kind = new Kind(_string)
```


```haxe
final uint:stdgo.reflect.Kind = new Kind(_uint)
```


```haxe
final uint16:stdgo.reflect.Kind = new Kind(_uint16)
```


```haxe
final uint32:stdgo.reflect.Kind = new Kind(_uint32)
```


```haxe
final uint64:stdgo.reflect.Kind = new Kind(_uint64)
```


```haxe
final uint8:stdgo.reflect.Kind = new Kind(_uint8)
```


```haxe
final uintptr:stdgo.reflect.Kind = new Kind(_uintptr)
```


```haxe
final unsafePointer:stdgo.reflect.Kind = new Kind(_unsafePointer)
```


# Functions


```haxe
import stdgo.reflect.Reflect
```


## function appendSlice


```haxe
function appendSlice(dst:stdgo.reflect.Value, src:stdgo.reflect.Value):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L904>)


## function deepEqual


```haxe
function deepEqual(x:stdgo.AnyInterface, y:stdgo.AnyInterface):Bool
```


 


[\(view code\)](<./Reflect.hx#L2018>)


## function deepValueEqual


```haxe
function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Reflect.hx#L1946>)


## function defaultValue


```haxe
function defaultValue(typ:stdgo.reflect.Type):Any
```


 


[\(view code\)](<./Reflect.hx#L927>)


## function directlyAssignable


```haxe
function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L1677>)


## function getElem


```haxe
function getElem(type:stdgo.reflect.GoType):stdgo.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L212>)


## function getSignature


```haxe
function getSignature(type:stdgo.reflect.GoType):stdgo.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L238>)


## function getUnderlying


```haxe
function getUnderlying(gt:stdgo.reflect.GoType, ?once:Bool):stdgo.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L1664>)


## function getVar


```haxe
function getVar(type:stdgo.reflect.GoType):stdgo.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L227>)


## function implementsMethod


```haxe
function implementsMethod(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L1792>)


## function indirect


```haxe
function indirect(v:stdgo.reflect.Value):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L2030>)


## function isAnyInterface


```haxe
function isAnyInterface(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L101>)


## function isInterface


```haxe
function isInterface(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L114>)


## function isInvalid


```haxe
function isInvalid(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L192>)


## function isNamed


```haxe
function isNamed(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L147>)


## function isPointer


```haxe
function isPointer(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L267>)


## function isPointerStruct


```haxe
function isPointerStruct(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L183>)


## function isRef


```haxe
function isRef(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L284>)


## function isRefValue


```haxe
function isRefValue(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L297>)


## function isReflectTypeRef


```haxe
function isReflectTypeRef(type:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L293>)


## function isSignature


```haxe
function isSignature(type:stdgo.reflect.GoType, ?underlyingBool:Bool):Bool
```


 


[\(view code\)](<./Reflect.hx#L129>)


## function isStruct


```haxe
function isStruct(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L169>)


## function isTitle


```haxe
function isTitle(string:String):Bool
```


 


[\(view code\)](<./Reflect.hx#L165>)


## function isUnsafePointer


```haxe
function isUnsafePointer(type:stdgo.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L251>)


## function new\_


```haxe
function new_(typ:stdgo.reflect.Type):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L921>)


## function pointerUnwrap


```haxe
function pointerUnwrap(type:stdgo.reflect.GoType):stdgo.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L308>)


## function ptrTo


```haxe
function ptrTo(t:stdgo.reflect.Type):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L909>)


## function sliceOf


```haxe
function sliceOf(t:stdgo.reflect.Type):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L913>)


## function typeOf


```haxe
function typeOf(iface:stdgo.AnyInterface):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L898>)


## function valueOf


```haxe
function valueOf(iface:stdgo.AnyInterface):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L956>)


## function zero


```haxe
function zero(typ:stdgo.reflect.Type):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L917>)


# Classes


```haxe
import stdgo.reflect.*
```


## class ChanDir


 


### ChanDir function new


```haxe
function new(?t:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Reflect.hx#L965>)


### ChanDir function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L973>)


## class FieldType


 


```haxe
var embedded:Bool
```


```haxe
var name:String
```


```haxe
var tag:String
```


```haxe
var type:stdgo.reflect.GoType
```


### FieldType function new


```haxe
function new(name:String, type:stdgo.reflect.GoType, tag:String, embedded:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L60>)


## class Kind\_extension


 


### Kind\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1849>)


## class Method


 


```haxe
var func:stdgo.reflect.Value
```


```haxe
var index:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var pkgPath:stdgo.GoString
```


```haxe
var type:stdgo.reflect.Type
```


### Method function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo.reflect.Type, ?func:stdgo.reflect.Value, ?index:stdgo.GoInt):Void
```


 


[\(view code\)](<./Reflect.hx#L1522>)


### Method function string


```haxe
function string():String
```


 


[\(view code\)](<./Reflect.hx#L1535>)


## class MethodType


 


```haxe
var name:String
```


```haxe
var recv:stdgo.reflect.Ref<stdgo.reflect.GoType>
```


```haxe
var type:stdgo.reflect.Ref<stdgo.reflect.GoType>
```


### MethodType function new


```haxe
function new(name:String, type:stdgo.reflect.Ref<stdgo.reflect.GoType>, recv:stdgo.reflect.Ref<stdgo.reflect.GoType>):Void
```


 


[\(view code\)](<./Reflect.hx#L40>)


### MethodType function toString


```haxe
function toString():String
```


 


[\(view code\)](<./Reflect.hx#L50>)


## class SliceHeader


 


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


 


[\(view code\)](<./Reflect.hx#L1013>)


### SliceHeader function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1022>)


## class StringHeader


 


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


 


[\(view code\)](<./Reflect.hx#L983>)


### StringHeader function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L990>)


## class StructField


 


```haxe
var anonymous:Bool
```


```haxe
var index:stdgo.Slice<stdgo.GoInt>
```


```haxe
var name:stdgo.GoString
```


```haxe
var offset:stdgo.GoUIntptr
```


```haxe
var pkgPath:stdgo.GoString
```


```haxe
var tag:stdgo.reflect.StructTag
```


```haxe
var type:stdgo.reflect.Type
```


### StructField function new


```haxe
function new(?name:stdgo.GoString, ?pkgPath:stdgo.GoString, ?type:stdgo.reflect.Type, ?tag:stdgo.GoString, ?offset:stdgo.GoUIntptr, ?index:stdgo.Slice<stdgo.GoInt>, ?anonymous:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L1628>)


### StructField function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1645>)


## class StructTag


 


### StructTag function get


```haxe
function get(key:stdgo.GoString):stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1559>)


### StructTag function lookup


```haxe
function lookup(key:stdgo.GoString):{_1:Bool, _0:stdgo.GoString}
```


 


[\(view code\)](<./Reflect.hx#L1565>)


### StructTag function new


```haxe
function new(str:stdgo.GoString):Void
```


 


[\(view code\)](<./Reflect.hx#L1556>)


### StructTag function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1551>)


## class Value


 


### Value function bool\_


```haxe
function bool_():Bool
```


 


[\(view code\)](<./Reflect.hx#L577>)


### Value function canAddr


```haxe
function canAddr():Bool
```


 


[\(view code\)](<./Reflect.hx#L361>)


### Value function canInterface


```haxe
function canInterface():Bool
```


 


[\(view code\)](<./Reflect.hx#L516>)


### Value function canSet


```haxe
function canSet():Bool
```


 


[\(view code\)](<./Reflect.hx#L348>)


### Value function cap


```haxe
function cap():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L365>)


### Value function complex


```haxe
function complex():stdgo.GoComplex128
```


 


[\(view code\)](<./Reflect.hx#L665>)


### Value function elem


```haxe
function elem():stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L786>)


### Value function field


```haxe
function field(i:stdgo.GoInt):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L736>)


### Value function float


```haxe
function float():stdgo.GoFloat64
```


 


[\(view code\)](<./Reflect.hx#L642>)


### Value function index


```haxe
function index(i:stdgo.GoInt):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L699>)


### Value function int


```haxe
function int():stdgo.GoInt64
```


 


[\(view code\)](<./Reflect.hx#L595>)


### Value function interface\_


```haxe
function interface_(?val:Dynamic):stdgo.AnyInterface
```


 


[\(view code\)](<./Reflect.hx#L540>)


### Value function isNil


```haxe
function isNil():Bool
```


 


[\(view code\)](<./Reflect.hx#L542>)


### Value function isValid


```haxe
function isValid():Bool
```


 


[\(view code\)](<./Reflect.hx#L573>)


### Value function kind


```haxe
function kind():stdgo.reflect.Kind
```


 


[\(view code\)](<./Reflect.hx#L537>)


### Value function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L810>)


### Value function mapIndex


```haxe
function mapIndex(key:stdgo.reflect.Value):stdgo.reflect.Value
```


 


[\(view code\)](<./Reflect.hx#L759>)


### Value function mapKeys


```haxe
function mapKeys():stdgo.Slice<stdgo.reflect.Value>
```


 


[\(view code\)](<./Reflect.hx#L769>)


### Value function new


```haxe
function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.GoInt, ?underlyingKey:Dynamic):Void
```


 


[\(view code\)](<./Reflect.hx#L334>)


### Value function numField


```haxe
function numField():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L725>)


### Value function pointer


```haxe
function pointer():stdgo.GoUIntptr
```


 


[\(view code\)](<./Reflect.hx#L752>)


### Value function set


```haxe
function set(x:stdgo.reflect.Value):Void
```


 


[\(view code\)](<./Reflect.hx#L383>)


### Value function setBool


```haxe
function setBool(x:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L511>)


### Value function setBytes


```haxe
function setBytes(x:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Reflect.hx#L506>)


### Value function setComplex


```haxe
function setComplex(x:stdgo.GoComplex128):Void
```


 


[\(view code\)](<./Reflect.hx#L491>)


### Value function setFloat


```haxe
function setFloat(x:stdgo.GoFloat64):Void
```


 


[\(view code\)](<./Reflect.hx#L501>)


### Value function setInt


```haxe
function setInt(x:stdgo.GoInt64):Void
```


 


[\(view code\)](<./Reflect.hx#L446>)


### Value function setString


```haxe
function setString(x:stdgo.GoString):Void
```


 


[\(view code\)](<./Reflect.hx#L466>)


### Value function setUint


```haxe
function setUint(x:stdgo.GoUInt64):Void
```


 


[\(view code\)](<./Reflect.hx#L471>)


### Value function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L683>)


### Value function type


```haxe
function type():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L534>)


### Value function uint


```haxe
function uint():stdgo.GoUInt64
```


 


[\(view code\)](<./Reflect.hx#L618>)


## class ValueError


 


### ValueError function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L852>)


### ValueError function new


```haxe
function new(m:stdgo.GoString, k:stdgo.reflect.Kind):Void
```


 


[\(view code\)](<./Reflect.hx#L840>)


### ValueError function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L848>)


## class \_Type


 


```haxe
var gt:stdgo.reflect.GoType
```


### \_Type function align


```haxe
function align():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1103>)


### \_Type function assignableTo


```haxe
function assignableTo(ot:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L1477>)


### \_Type function bits


```haxe
function bits():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1146>)


### \_Type function chanDir


```haxe
function chanDir():stdgo.reflect.ChanDir
```


 


[\(view code\)](<./Reflect.hx#L1112>)


### \_Type function common


```haxe
function common():stdgo.Pointer<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L1132>)


### \_Type function comparable


```haxe
function comparable():Bool
```


 


[\(view code\)](<./Reflect.hx#L1492>)


### \_Type function convertibleTo


```haxe
function convertibleTo(u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L1109>)


### \_Type function elem


```haxe
function elem():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L1330>)


### \_Type function field


```haxe
function field(index:stdgo.GoInt):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L1441>)


### \_Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1106>)


### \_Type function fieldByIndex


```haxe
function fieldByIndex(index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L1115>)


### \_Type function fieldByName


```haxe
function fieldByName(name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L1117>)


### \_Type function fieldByNameFunc


```haxe
function fieldByNameFunc(match:()):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L1121>)


### \_Type function hasName


```haxe
function hasName():Bool
```


 


[\(view code\)](<./Reflect.hx#L1370>)


### \_Type function implements\_


```haxe
function implements_(ot:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L1484>)


### \_Type function in\_


```haxe
function in_(i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L1088>)


### \_Type function isExported


```haxe
function isExported(name:String):Bool
```


 


[\(view code\)](<./Reflect.hx#L1401>)


### \_Type function isVariadic


```haxe
function isVariadic():Bool
```


 


[\(view code\)](<./Reflect.hx#L1405>)


### \_Type function key


```haxe
function key():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L1100>)


### \_Type function kind


```haxe
function kind():stdgo.reflect.Kind
```


 


[\(view code\)](<./Reflect.hx#L1165>)


### \_Type function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1343>)


### \_Type function method


```haxe
function method(index:stdgo.GoInt):stdgo.reflect.Method
```


 


[\(view code\)](<./Reflect.hx#L1413>)


### \_Type function methodByName


```haxe
function methodByName(name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}
```


 


[\(view code\)](<./Reflect.hx#L1125>)


### \_Type function name


```haxe
function name():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1379>)


### \_Type function new


```haxe
function new(?t:stdgo.reflect.GoType):Void
```


 


[\(view code\)](<./Reflect.hx#L1136>)


### \_Type function numField


```haxe
function numField():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1463>)


### \_Type function numIn


```haxe
function numIn():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1097>)


### \_Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1352>)


### \_Type function numOut


```haxe
function numOut():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1094>)


### \_Type function out


```haxe
function out(i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L1091>)


### \_Type function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1389>)


### \_Type function size


```haxe
function size():stdgo.GoUIntptr
```


 


[\(view code\)](<./Reflect.hx#L1214>)


### \_Type function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1248>)


### \_Type function uncommon


```haxe
function uncommon():stdgo.Pointer<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L1130>)


# Typedefs


```haxe
import stdgo.reflect.*
```


## typedef Kind


```haxe
typedef Kind = var t:{<>}
```


 


### Kind function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L1849>)


## typedef Ref


```haxe
typedef Ref = var a:get:():stdgo.reflect.Ref.T
```


 


## typedef Type


```haxe
typedef Type = var a:{<__underlying__> | ():stdgo.Pointer<Dynamic> | ():stdgo.GoString | ():stdgo.GoUIntptr | ():stdgo.GoString | (i:stdgo.GoInt):stdgo.reflect.Type | ():stdgo.GoInt | ():stdgo.GoInt | ():stdgo.GoInt | ():stdgo.GoInt | ():stdgo.GoString | (_0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method} | (_0:stdgo.GoInt):stdgo.reflect.Method | ():stdgo.GoInt | ():stdgo.reflect.Kind | ():stdgo.reflect.Type | ():Bool | (i:stdgo.GoInt):stdgo.reflect.Type | (u:stdgo.reflect.Type):Bool | (match:()):{_1:Bool, _0:stdgo.reflect.StructField} | (name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField} | (index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField | ():stdgo.GoInt | (i:stdgo.GoInt):stdgo.reflect.StructField | ():stdgo.reflect.Type | (u:stdgo.reflect.Type):Bool | ():Bool | ():stdgo.Pointer<Dynamic> | ():stdgo.reflect.ChanDir | ():stdgo.GoInt | (u:stdgo.reflect.Type):Bool | ():stdgo.GoInt | ():stdgo.AnyInterface}
```


 


