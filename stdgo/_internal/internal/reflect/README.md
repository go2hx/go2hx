# Module: `stdgo._internal.internal.reflect`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _set(value:stdgo._internal.reflect.Value):Void`](<#function-_set>)

- [`function asInterfaceValue(value:Dynamic, gt:stdgo._internal.internal.reflect.GoType):Dynamic`](<#function-asinterfacevalue>)

- [`function deepValueEqual(v1:stdgo._internal.reflect.Value, v2:stdgo._internal.reflect.Value, visited:stdgo.GoMap<stdgo._internal.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool`](<#function-deepvalueequal>)

- [`function defaultValue(typ:stdgo._internal.internal.reflect._Reflect.Type):Any`](<#function-defaultvalue>)

- [`function defaultValueInternal(typ:stdgo._internal.internal.reflect._Type):Any`](<#function-defaultvalueinternal>)

- [`function directlyAssignable(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#function-directlyassignable>)

- [`function formatGoFieldName(name:String):String`](<#function-formatgofieldname>)

- [`function getElem(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType`](<#function-getelem>)

- [`function getSignature(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType`](<#function-getsignature>)

- [`function getUnderlying(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):Null<Null<stdgo._internal.internal.reflect.GoType>>`](<#function-getunderlying>)

- [`function getUnderlyingRefNamed(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):stdgo._internal.internal.reflect.GoType`](<#function-getunderlyingrefnamed>)

- [`function getVar(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType`](<#function-getvar>)

- [`function implementsMethod(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#function-implementsmethod>)

- [`function isAnyInterface(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isanyinterface>)

- [`function isExported(name:String):Bool`](<#function-isexported>)

- [`function isInterface(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isinterface>)

- [`function isInvalid(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isinvalid>)

- [`function isNamed(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isnamed>)

- [`function isPointer(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-ispointer>)

- [`function isPointerStruct(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-ispointerstruct>)

- [`function isRef(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isref>)

- [`function isRefValue(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isrefvalue>)

- [`function isReflectTypeRef(type:stdgo._internal.internal.reflect._Type):Bool`](<#function-isreflecttyperef>)

- [`function isSignature(type:stdgo._internal.internal.reflect.GoType, ?underlyingBool:Bool):Bool`](<#function-issignature>)

- [`function isStruct(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isstruct>)

- [`function isTitle(string:String):Bool`](<#function-istitle>)

- [`function isUnsafePointer(type:stdgo._internal.internal.reflect.GoType):Bool`](<#function-isunsafepointer>)

- [`function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface`](<#function-namedunderlying>)

- [`function pointerUnwrap(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType`](<#function-pointerunwrap>)

- [class FieldType](<#class-fieldtype>)

  - [`function new(name:String, type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>, tag:String, embedded:Bool, optional:Bool):Void`](<#fieldtype-function-new>)

  - [`function toString():String`](<#fieldtype-function-tostring>)

- [class MethodType](<#class-methodtype>)

  - [`function new(name:String, type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>, recv:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>):Void`](<#methodtype-function-new>)

  - [`function toString():String`](<#methodtype-function-tostring>)

- [class \_Type](<#class-_type>)

  - [`function _common():stdgo._internal.internal.reflect.GoType`](<#_type-function-_common>)

  - [`function new(gt:stdgo._internal.internal.reflect.GoType):Void`](<#_type-function-new>)

  - [`function _common():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>`](<#_type-function-_common>)

  - [`function _uncommon():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>`](<#_type-function-_uncommon>)

  - [`function align():stdgo.GoInt`](<#_type-function-align>)

  - [`function assignableTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#_type-function-assignableto>)

  - [`function bits():stdgo.GoInt`](<#_type-function-bits>)

  - [`function chanDir():stdgo._internal.reflect.ChanDir`](<#_type-function-chandir>)

  - [`function comparable():Bool`](<#_type-function-comparable>)

  - [`function convertibleTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#_type-function-convertibleto>)

  - [`function elem():stdgo._internal.internal.reflect._Reflect.Type`](<#_type-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo._internal.reflect.StructField`](<#_type-function-field>)

  - [`function fieldAlign():stdgo.GoInt`](<#_type-function-fieldalign>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.StructField`](<#_type-function-fieldbyindex>)

  - [`function fieldByName( _name:stdgo.GoString):{ _1:Bool; _0:stdgo._internal.reflect.StructField;}`](<#_type-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):{ _1:Bool; _0:stdgo._internal.reflect.StructField;}`](<#_type-function-fieldbynamefunc>)

  - [`function formatGoPath():String`](<#_type-function-formatgopath>)

  - [`function implements_( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#type-function-implements>)

  - [`function in_( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type`](<#type-function-in>)

  - [`function isVariadic():Bool`](<#_type-function-isvariadic>)

  - [`function key():stdgo._internal.internal.reflect._Reflect.Type`](<#_type-function-key>)

  - [`function kind():stdgo._internal.reflect.Kind`](<#_type-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type-function-len>)

  - [`function method( _0:stdgo.GoInt):stdgo._internal.reflect.Method`](<#_type-function-method>)

  - [`function name():stdgo.GoString`](<#_type-function-name>)

  - [`function numField():stdgo.GoInt`](<#_type-function-numfield>)

  - [`function numIn():stdgo.GoInt`](<#_type-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#_type-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#_type-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type`](<#_type-function-out>)

  - [`function pkgPath():stdgo.GoString`](<#_type-function-pkgpath>)

  - [`function size():stdgo.GoUIntptr`](<#_type-function-size>)

  - [`function string():stdgo.GoString`](<#_type-function-string>)

- [abstract KindType](<#abstract-kindtype>)

- [abstract BasicKind](<#abstract-basickind>)

# Variables


```haxe
import stdgo._internal.internal.reflect.Reflect
```


```haxe
var useHaxePath:Bool
```


# Functions


```haxe
import stdgo._internal.internal.reflect.Reflect
```


## function \_set


```haxe
function _set(value:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L828>)


## function asInterfaceValue


```haxe
function asInterfaceValue(value:Dynamic, gt:stdgo._internal.internal.reflect.GoType):Dynamic
```


[\(view code\)](<./Reflect.hx#L647>)


## function deepValueEqual


```haxe
function deepValueEqual(v1:stdgo._internal.reflect.Value, v2:stdgo._internal.reflect.Value, visited:stdgo.GoMap<stdgo._internal.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool
```


[\(view code\)](<./Reflect.hx#L70>)


## function defaultValue


```haxe
function defaultValue(typ:stdgo._internal.internal.reflect._Reflect.Type):Any
```


[\(view code\)](<./Reflect.hx#L794>)


## function defaultValueInternal


```haxe
function defaultValueInternal(typ:stdgo._internal.internal.reflect._Type):Any
```


[\(view code\)](<./Reflect.hx#L843>)


## function directlyAssignable


```haxe
function directlyAssignable(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L158>)


## function formatGoFieldName


```haxe
function formatGoFieldName(name:String):String
```


[\(view code\)](<./Reflect.hx#L46>)


## function getElem


```haxe
function getElem(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L544>)


## function getSignature


```haxe
function getSignature(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L570>)


## function getUnderlying


```haxe
function getUnderlying(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):Null<Null<stdgo._internal.internal.reflect.GoType>>
```


[\(view code\)](<./Reflect.hx#L749>)


## function getUnderlyingRefNamed


```haxe
function getUnderlyingRefNamed(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L736>)


## function getVar


```haxe
function getVar(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L559>)


## function implementsMethod


```haxe
function implementsMethod(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L362>)


## function isAnyInterface


```haxe
function isAnyInterface(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L671>)


## function isExported


```haxe
function isExported(name:String):Bool
```


[\(view code\)](<./Reflect.hx#L42>)


## function isInterface


```haxe
function isInterface(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L682>)


## function isInvalid


```haxe
function isInvalid(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L524>)


## function isNamed


```haxe
function isNamed(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L481>)


## function isPointer


```haxe
function isPointer(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L597>)


## function isPointerStruct


```haxe
function isPointerStruct(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L517>)


## function isRef


```haxe
function isRef(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L612>)


## function isRefValue


```haxe
function isRefValue(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L625>)


## function isReflectTypeRef


```haxe
function isReflectTypeRef(type:stdgo._internal.internal.reflect._Type):Bool
```


[\(view code\)](<./Reflect.hx#L621>)


## function isSignature


```haxe
function isSignature(type:stdgo._internal.internal.reflect.GoType, ?underlyingBool:Bool):Bool
```


[\(view code\)](<./Reflect.hx#L463>)


## function isStruct


```haxe
function isStruct(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L505>)


## function isTitle


```haxe
function isTitle(string:String):Bool
```


[\(view code\)](<./Reflect.hx#L501>)


## function isUnsafePointer


```haxe
function isUnsafePointer(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L583>)


## function namedUnderlying


```haxe
function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Reflect.hx#L50>)


## function pointerUnwrap


```haxe
function pointerUnwrap(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L636>)


# Classes


```haxe
import stdgo._internal.internal.reflect.*
```


## class FieldType


```haxe
var embedded:Bool
```


```haxe
var name:String
```


```haxe
var optional:Bool
```


```haxe
var tag:String
```


```haxe
var type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>
```


### FieldType function new


```haxe
function new(name:String, type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>, tag:String, embedded:Bool, optional:Bool):Void
```


[\(view code\)](<./Reflect.hx#L432>)


### FieldType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L439>)


## class MethodType


```haxe
var name:String
```


```haxe
var recv:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>
```


```haxe
var type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>
```


### MethodType function new


```haxe
function new(name:String, type:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>, recv:stdgo._internal.internal.reflect._Reflect.Ref<stdgo._internal.internal.reflect.GoType>):Void
```


[\(view code\)](<./Reflect.hx#L411>)


### MethodType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L421>)


## class \_Type


### \_Type function \_common


```haxe
function _common():stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L892>)


### \_Type function new


```haxe
function new(gt:stdgo._internal.internal.reflect.GoType):Void
```


[\(view code\)](<./Reflect.hx#L886>)


### \_Type function \_common


```haxe
function _common():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L900>)


### \_Type function \_uncommon


```haxe
function _uncommon():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L897>)


### \_Type function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1326>)


### \_Type function assignableTo


```haxe
function assignableTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1042>)


### \_Type function bits


```haxe
function bits():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1009>)


### \_Type function chanDir


```haxe
function chanDir():stdgo._internal.reflect.ChanDir
```


[\(view code\)](<./Reflect.hx#L1007>)


### \_Type function comparable


```haxe
function comparable():Bool
```


[\(view code\)](<./Reflect.hx#L1020>)


### \_Type function convertibleTo


```haxe
function convertibleTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1040>)


### \_Type function elem


```haxe
function elem():stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L988>)


### \_Type function field


```haxe
function field( _i:stdgo.GoInt):stdgo._internal.reflect.StructField
```


[\(view code\)](<./Reflect.hx#L964>)


### \_Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1323>)


### \_Type function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.StructField
```


[\(view code\)](<./Reflect.hx#L962>)


### \_Type function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.reflect.StructField;
}
```


[\(view code\)](<./Reflect.hx#L959>)


### \_Type function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):{
	_1:Bool;
	_0:stdgo._internal.reflect.StructField;
}
```


[\(view code\)](<./Reflect.hx#L956>)


### \_Type function formatGoPath


```haxe
function formatGoPath():String
```


[\(view code\)](<./Reflect.hx#L1104>)


### \_Type function implements\_


```haxe
function implements_( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1050>)


### \_Type function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L944>)


### \_Type function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Reflect.hx#L1004>)


### \_Type function key


```haxe
function key():stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L942>)


### \_Type function kind


```haxe
function kind():stdgo._internal.reflect.Kind
```


[\(view code\)](<./Reflect.hx#L1060>)


### \_Type function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L929>)


### \_Type function method


```haxe
function method( _0:stdgo.GoInt):stdgo._internal.reflect.Method
```


[\(view code\)](<./Reflect.hx#L1320>)


### \_Type function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1296>)


### \_Type function numField


```haxe
function numField():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L918>)


### \_Type function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L908>)


### \_Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1298>)


### \_Type function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L906>)


### \_Type function out


```haxe
function out( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L903>)


### \_Type function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1293>)


### \_Type function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Reflect.hx#L1257>)


### \_Type function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1125>)


# Abstracts


## abstract KindType


[\(view file containing code\)](<./Reflect.hx>)


## abstract BasicKind


[\(view file containing code\)](<./Reflect.hx>)


