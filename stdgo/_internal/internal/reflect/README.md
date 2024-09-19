# Module: `stdgo._internal.internal.reflect`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _set(value:stdgo._internal.internal.reflect._Reflect.ReflectValue):Void`](<#function-_set>)

- [`function asInterfaceValue(value:Dynamic, gt:stdgo._internal.internal.reflect.GoType):Dynamic`](<#function-asinterfacevalue>)

- [`function deepValueEqual(v1:stdgo._internal.internal.reflect._Reflect.ReflectValue, v2:stdgo._internal.internal.reflect._Reflect.ReflectValue, visited:Map<stdgo._internal.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool`](<#function-deepvalueequal>)

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

  - [`function chanDir():stdgo._internal.internal.reflect._Reflect.ReflectChanDir`](<#_type-function-chandir>)

  - [`function comparable():Bool`](<#_type-function-comparable>)

  - [`function convertibleTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#_type-function-convertibleto>)

  - [`function elem():stdgo._internal.internal.reflect._Reflect.Type`](<#_type-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.ReflectStructField`](<#_type-function-field>)

  - [`function fieldAlign():stdgo.GoInt`](<#_type-function-fieldalign>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.internal.reflect._Reflect.ReflectStructField`](<#_type-function-fieldbyindex>)

  - [`function fieldByName( _name:stdgo.GoString):{ _1:Bool; _0:stdgo._internal.internal.reflect._Reflect.ReflectStructField;}`](<#_type-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):{ _1:Bool; _0:stdgo._internal.internal.reflect._Reflect.ReflectStructField;}`](<#_type-function-fieldbynamefunc>)

  - [`function formatGoPath():String`](<#_type-function-formatgopath>)

  - [`function implements_( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool`](<#type-function-implements>)

  - [`function in_( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type`](<#type-function-in>)

  - [`function isVariadic():Bool`](<#_type-function-isvariadic>)

  - [`function key():stdgo._internal.internal.reflect._Reflect.Type`](<#_type-function-key>)

  - [`function kind():stdgo._internal.internal.reflect._Reflect.ReflectKind`](<#_type-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type-function-len>)

  - [`function method( _0:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.ReflectMethod`](<#_type-function-method>)

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
function _set(value:stdgo._internal.internal.reflect._Reflect.ReflectValue):Void
```


[\(view code\)](<./Reflect.hx#L876>)


## function asInterfaceValue


```haxe
function asInterfaceValue(value:Dynamic, gt:stdgo._internal.internal.reflect.GoType):Dynamic
```


[\(view code\)](<./Reflect.hx#L695>)


## function deepValueEqual


```haxe
function deepValueEqual(v1:stdgo._internal.internal.reflect._Reflect.ReflectValue, v2:stdgo._internal.internal.reflect._Reflect.ReflectValue, visited:Map<stdgo._internal.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool
```


[\(view code\)](<./Reflect.hx#L100>)


## function defaultValue


```haxe
function defaultValue(typ:stdgo._internal.internal.reflect._Reflect.Type):Any
```


[\(view code\)](<./Reflect.hx#L842>)


## function defaultValueInternal


```haxe
function defaultValueInternal(typ:stdgo._internal.internal.reflect._Type):Any
```


[\(view code\)](<./Reflect.hx#L891>)


## function directlyAssignable


```haxe
function directlyAssignable(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L188>)


## function formatGoFieldName


```haxe
function formatGoFieldName(name:String):String
```


[\(view code\)](<./Reflect.hx#L69>)


## function getElem


```haxe
function getElem(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L576>)


## function getSignature


```haxe
function getSignature(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L607>)


## function getUnderlying


```haxe
function getUnderlying(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):Null<Null<stdgo._internal.internal.reflect.GoType>>
```


[\(view code\)](<./Reflect.hx#L797>)


## function getUnderlyingRefNamed


```haxe
function getUnderlyingRefNamed(gt:stdgo._internal.internal.reflect.GoType, ?once:Bool):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L784>)


## function getVar


```haxe
function getVar(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L596>)


## function implementsMethod


```haxe
function implementsMethod(t:stdgo._internal.internal.reflect._Reflect.Type, v:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L392>)


## function isAnyInterface


```haxe
function isAnyInterface(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L719>)


## function isExported


```haxe
function isExported(name:String):Bool
```


[\(view code\)](<./Reflect.hx#L65>)


## function isInterface


```haxe
function isInterface(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L730>)


## function isInvalid


```haxe
function isInvalid(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L556>)


## function isNamed


```haxe
function isNamed(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L513>)


## function isPointer


```haxe
function isPointer(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L634>)


## function isPointerStruct


```haxe
function isPointerStruct(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L549>)


## function isRef


```haxe
function isRef(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L649>)


## function isRefValue


```haxe
function isRefValue(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L662>)


## function isReflectTypeRef


```haxe
function isReflectTypeRef(type:stdgo._internal.internal.reflect._Type):Bool
```


[\(view code\)](<./Reflect.hx#L658>)


## function isSignature


```haxe
function isSignature(type:stdgo._internal.internal.reflect.GoType, ?underlyingBool:Bool):Bool
```


[\(view code\)](<./Reflect.hx#L495>)


## function isStruct


```haxe
function isStruct(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L537>)


## function isTitle


```haxe
function isTitle(string:String):Bool
```


[\(view code\)](<./Reflect.hx#L533>)


## function isUnsafePointer


```haxe
function isUnsafePointer(type:stdgo._internal.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L620>)


## function namedUnderlying


```haxe
function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Reflect.hx#L73>)


## function pointerUnwrap


```haxe
function pointerUnwrap(type:stdgo._internal.internal.reflect.GoType):stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L684>)


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


[\(view code\)](<./Reflect.hx#L464>)


### FieldType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L471>)


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


[\(view code\)](<./Reflect.hx#L443>)


### MethodType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L453>)


## class \_Type


### \_Type function \_common


```haxe
function _common():stdgo._internal.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L940>)


### \_Type function new


```haxe
function new(gt:stdgo._internal.internal.reflect.GoType):Void
```


[\(view code\)](<./Reflect.hx#L934>)


### \_Type function \_common


```haxe
function _common():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L948>)


### \_Type function \_uncommon


```haxe
function _uncommon():stdgo._internal.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L945>)


### \_Type function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1382>)


### \_Type function assignableTo


```haxe
function assignableTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1090>)


### \_Type function bits


```haxe
function bits():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1057>)


### \_Type function chanDir


```haxe
function chanDir():stdgo._internal.internal.reflect._Reflect.ReflectChanDir
```


[\(view code\)](<./Reflect.hx#L1055>)


### \_Type function comparable


```haxe
function comparable():Bool
```


[\(view code\)](<./Reflect.hx#L1068>)


### \_Type function convertibleTo


```haxe
function convertibleTo( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1088>)


### \_Type function elem


```haxe
function elem():stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L1036>)


### \_Type function field


```haxe
function field( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.ReflectStructField
```


[\(view code\)](<./Reflect.hx#L1012>)


### \_Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1379>)


### \_Type function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.internal.reflect._Reflect.ReflectStructField
```


[\(view code\)](<./Reflect.hx#L1010>)


### \_Type function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.internal.reflect._Reflect.ReflectStructField;
}
```


[\(view code\)](<./Reflect.hx#L1007>)


### \_Type function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):{
	_1:Bool;
	_0:stdgo._internal.internal.reflect._Reflect.ReflectStructField;
}
```


[\(view code\)](<./Reflect.hx#L1004>)


### \_Type function formatGoPath


```haxe
function formatGoPath():String
```


[\(view code\)](<./Reflect.hx#L1160>)


### \_Type function implements\_


```haxe
function implements_( _u:stdgo._internal.internal.reflect._Reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1106>)


### \_Type function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L992>)


### \_Type function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Reflect.hx#L1052>)


### \_Type function key


```haxe
function key():stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L990>)


### \_Type function kind


```haxe
function kind():stdgo._internal.internal.reflect._Reflect.ReflectKind
```


[\(view code\)](<./Reflect.hx#L1116>)


### \_Type function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L977>)


### \_Type function method


```haxe
function method( _0:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.ReflectMethod
```


[\(view code\)](<./Reflect.hx#L1376>)


### \_Type function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1352>)


### \_Type function numField


```haxe
function numField():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L966>)


### \_Type function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L956>)


### \_Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1354>)


### \_Type function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L954>)


### \_Type function out


```haxe
function out( _i:stdgo.GoInt):stdgo._internal.internal.reflect._Reflect.Type
```


[\(view code\)](<./Reflect.hx#L951>)


### \_Type function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1349>)


### \_Type function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Reflect.hx#L1313>)


### \_Type function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1181>)


# Abstracts


## abstract KindType


[\(view file containing code\)](<./Reflect.hx>)


## abstract BasicKind


[\(view file containing code\)](<./Reflect.hx>)


