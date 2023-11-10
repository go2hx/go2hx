# Module: `stdgo.internal.reflect`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _set(value:stdgo.reflect.Value):Void`](<#function-_set>)

- [`function asInterfaceValue(value:Dynamic, gt:stdgo.internal.reflect.GoType):Dynamic`](<#function-asinterfacevalue>)

- [`function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool`](<#function-deepvalueequal>)

- [`function defaultValue(typ:stdgo.reflect.Type):Any`](<#function-defaultvalue>)

- [`function defaultValueInternal(typ:stdgo.internal.reflect._Type):Any`](<#function-defaultvalueinternal>)

- [`function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool`](<#function-directlyassignable>)

- [`function formatGoFieldName(name:String):String`](<#function-formatgofieldname>)

- [`function getElem(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-getelem>)

- [`function getSignature(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-getsignature>)

- [`function getUnderlying(gt:stdgo.internal.reflect.GoType, ?once:Bool):Null<Null<stdgo.internal.reflect.GoType>>`](<#function-getunderlying>)

- [`function getUnderlyingRefNamed(gt:stdgo.internal.reflect.GoType, ?once:Bool):stdgo.internal.reflect.GoType`](<#function-getunderlyingrefnamed>)

- [`function getVar(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-getvar>)

- [`function implementsMethod(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool`](<#function-implementsmethod>)

- [`function isAnyInterface(type:stdgo.internal.reflect.GoType):Bool`](<#function-isanyinterface>)

- [`function isExported(name:String):Bool`](<#function-isexported>)

- [`function isInterface(type:stdgo.internal.reflect.GoType):Bool`](<#function-isinterface>)

- [`function isInvalid(type:stdgo.internal.reflect.GoType):Bool`](<#function-isinvalid>)

- [`function isNamed(type:stdgo.internal.reflect.GoType):Bool`](<#function-isnamed>)

- [`function isPointer(type:stdgo.internal.reflect.GoType):Bool`](<#function-ispointer>)

- [`function isPointerStruct(type:stdgo.internal.reflect.GoType):Bool`](<#function-ispointerstruct>)

- [`function isRef(type:stdgo.internal.reflect.GoType):Bool`](<#function-isref>)

- [`function isRefValue(type:stdgo.internal.reflect.GoType):Bool`](<#function-isrefvalue>)

- [`function isReflectTypeRef(type:stdgo.internal.reflect._Type):Bool`](<#function-isreflecttyperef>)

- [`function isSignature(type:stdgo.internal.reflect.GoType, ?underlyingBool:Bool):Bool`](<#function-issignature>)

- [`function isStruct(type:stdgo.internal.reflect.GoType):Bool`](<#function-isstruct>)

- [`function isTitle(string:String):Bool`](<#function-istitle>)

- [`function isUnsafePointer(type:stdgo.internal.reflect.GoType):Bool`](<#function-isunsafepointer>)

- [`function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface`](<#function-namedunderlying>)

- [`function pointerUnwrap(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-pointerunwrap>)

- [class FieldType](<#class-fieldtype>)

  - [`function new(name:String, type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>, tag:String, embedded:Bool, optional:Bool):Void`](<#fieldtype-function-new>)

  - [`function toString():String`](<#fieldtype-function-tostring>)

- [class MethodType](<#class-methodtype>)

  - [`function new(name:String, type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>, recv:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>):Void`](<#methodtype-function-new>)

  - [`function toString():String`](<#methodtype-function-tostring>)

- [class \_Type](<#class-_type>)

  - [`function _common():stdgo.internal.reflect.GoType`](<#_type-function-_common>)

  - [`function new(gt:stdgo.internal.reflect.GoType):Void`](<#_type-function-new>)

  - [`function _common():stdgo.internal.reflect._Reflect.Ref<Dynamic>`](<#_type-function-_common>)

  - [`function _uncommon():stdgo.internal.reflect._Reflect.Ref<Dynamic>`](<#_type-function-_uncommon>)

  - [`function align():stdgo.GoInt`](<#_type-function-align>)

  - [`function assignableTo( _u:stdgo.reflect.Type):Bool`](<#_type-function-assignableto>)

  - [`function bits():stdgo.GoInt`](<#_type-function-bits>)

  - [`function chanDir():stdgo.reflect.ChanDir`](<#_type-function-chandir>)

  - [`function comparable():Bool`](<#_type-function-comparable>)

  - [`function convertibleTo( _u:stdgo.reflect.Type):Bool`](<#_type-function-convertibleto>)

  - [`function elem():stdgo.reflect.Type`](<#_type-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo.reflect.StructField`](<#_type-function-field>)

  - [`function fieldAlign():stdgo.GoInt`](<#_type-function-fieldalign>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField`](<#_type-function-fieldbyindex>)

  - [`function fieldByName( _name:stdgo.GoString):{ _1:Bool; _0:stdgo.reflect.StructField;}`](<#_type-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):{ _1:Bool; _0:stdgo.reflect.StructField;}`](<#_type-function-fieldbynamefunc>)

  - [`function formatGoPath():String`](<#_type-function-formatgopath>)

  - [`function implements_( _u:stdgo.reflect.Type):Bool`](<#type-function-implements>)

  - [`function in_( _i:stdgo.GoInt):stdgo.reflect.Type`](<#type-function-in>)

  - [`function isVariadic():Bool`](<#_type-function-isvariadic>)

  - [`function key():stdgo.reflect.Type`](<#_type-function-key>)

  - [`function kind():stdgo.reflect.Kind`](<#_type-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type-function-len>)

  - [`function method( _0:stdgo.GoInt):stdgo.reflect.Method`](<#_type-function-method>)

  - [`function name():stdgo.GoString`](<#_type-function-name>)

  - [`function numField():stdgo.GoInt`](<#_type-function-numfield>)

  - [`function numIn():stdgo.GoInt`](<#_type-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#_type-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#_type-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo.reflect.Type`](<#_type-function-out>)

  - [`function pkgPath():stdgo.GoString`](<#_type-function-pkgpath>)

  - [`function size():stdgo.GoUIntptr`](<#_type-function-size>)

  - [`function string():stdgo.GoString`](<#_type-function-string>)

- [abstract KindType](<#abstract-kindtype>)

- [abstract BasicKind](<#abstract-basickind>)

# Variables


```haxe
import stdgo.internal.reflect.Reflect
```


```haxe
var useHaxePath:Bool
```


# Functions


```haxe
import stdgo.internal.reflect.Reflect
```


## function \_set


```haxe
function _set(value:stdgo.reflect.Value):Void
```


[\(view code\)](<./Reflect.hx#L824>)


## function asInterfaceValue


```haxe
function asInterfaceValue(value:Dynamic, gt:stdgo.internal.reflect.GoType):Dynamic
```


[\(view code\)](<./Reflect.hx#L643>)


## function deepValueEqual


```haxe
function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool
```


[\(view code\)](<./Reflect.hx#L68>)


## function defaultValue


```haxe
function defaultValue(typ:stdgo.reflect.Type):Any
```


[\(view code\)](<./Reflect.hx#L790>)


## function defaultValueInternal


```haxe
function defaultValueInternal(typ:stdgo.internal.reflect._Type):Any
```


[\(view code\)](<./Reflect.hx#L839>)


## function directlyAssignable


```haxe
function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L156>)


## function formatGoFieldName


```haxe
function formatGoFieldName(name:String):String
```


[\(view code\)](<./Reflect.hx#L44>)


## function getElem


```haxe
function getElem(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L540>)


## function getSignature


```haxe
function getSignature(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L566>)


## function getUnderlying


```haxe
function getUnderlying(gt:stdgo.internal.reflect.GoType, ?once:Bool):Null<Null<stdgo.internal.reflect.GoType>>
```


[\(view code\)](<./Reflect.hx#L745>)


## function getUnderlyingRefNamed


```haxe
function getUnderlyingRefNamed(gt:stdgo.internal.reflect.GoType, ?once:Bool):stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L732>)


## function getVar


```haxe
function getVar(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L555>)


## function implementsMethod


```haxe
function implementsMethod(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L358>)


## function isAnyInterface


```haxe
function isAnyInterface(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L667>)


## function isExported


```haxe
function isExported(name:String):Bool
```


[\(view code\)](<./Reflect.hx#L40>)


## function isInterface


```haxe
function isInterface(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L678>)


## function isInvalid


```haxe
function isInvalid(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L520>)


## function isNamed


```haxe
function isNamed(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L477>)


## function isPointer


```haxe
function isPointer(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L593>)


## function isPointerStruct


```haxe
function isPointerStruct(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L513>)


## function isRef


```haxe
function isRef(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L608>)


## function isRefValue


```haxe
function isRefValue(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L621>)


## function isReflectTypeRef


```haxe
function isReflectTypeRef(type:stdgo.internal.reflect._Type):Bool
```


[\(view code\)](<./Reflect.hx#L617>)


## function isSignature


```haxe
function isSignature(type:stdgo.internal.reflect.GoType, ?underlyingBool:Bool):Bool
```


[\(view code\)](<./Reflect.hx#L459>)


## function isStruct


```haxe
function isStruct(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L501>)


## function isTitle


```haxe
function isTitle(string:String):Bool
```


[\(view code\)](<./Reflect.hx#L497>)


## function isUnsafePointer


```haxe
function isUnsafePointer(type:stdgo.internal.reflect.GoType):Bool
```


[\(view code\)](<./Reflect.hx#L579>)


## function namedUnderlying


```haxe
function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Reflect.hx#L48>)


## function pointerUnwrap


```haxe
function pointerUnwrap(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L632>)


# Classes


```haxe
import stdgo.internal.reflect.*
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
var type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>
```


### FieldType function new


```haxe
function new(name:String, type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>, tag:String, embedded:Bool, optional:Bool):Void
```


[\(view code\)](<./Reflect.hx#L428>)


### FieldType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L435>)


## class MethodType


```haxe
var name:String
```


```haxe
var recv:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>
```


```haxe
var type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>
```


### MethodType function new


```haxe
function new(name:String, type:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>, recv:stdgo.internal.reflect._Reflect.Ref<stdgo.internal.reflect.GoType>):Void
```


[\(view code\)](<./Reflect.hx#L407>)


### MethodType function toString


```haxe
function toString():String
```


[\(view code\)](<./Reflect.hx#L417>)


## class \_Type


### \_Type function \_common


```haxe
function _common():stdgo.internal.reflect.GoType
```


[\(view code\)](<./Reflect.hx#L888>)


### \_Type function new


```haxe
function new(gt:stdgo.internal.reflect.GoType):Void
```


[\(view code\)](<./Reflect.hx#L882>)


### \_Type function \_common


```haxe
function _common():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L896>)


### \_Type function \_uncommon


```haxe
function _uncommon():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


[\(view code\)](<./Reflect.hx#L893>)


### \_Type function align


```haxe
function align():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1310>)


### \_Type function assignableTo


```haxe
function assignableTo( _u:stdgo.reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1029>)


### \_Type function bits


```haxe
function bits():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L996>)


### \_Type function chanDir


```haxe
function chanDir():stdgo.reflect.ChanDir
```


[\(view code\)](<./Reflect.hx#L994>)


### \_Type function comparable


```haxe
function comparable():Bool
```


[\(view code\)](<./Reflect.hx#L1007>)


### \_Type function convertibleTo


```haxe
function convertibleTo( _u:stdgo.reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1027>)


### \_Type function elem


```haxe
function elem():stdgo.reflect.Type
```


[\(view code\)](<./Reflect.hx#L975>)


### \_Type function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.StructField
```


[\(view code\)](<./Reflect.hx#L951>)


### \_Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1307>)


### \_Type function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField
```


[\(view code\)](<./Reflect.hx#L949>)


### \_Type function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.reflect.StructField;
}
```


[\(view code\)](<./Reflect.hx#L946>)


### \_Type function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):{
	_1:Bool;
	_0:stdgo.reflect.StructField;
}
```


[\(view code\)](<./Reflect.hx#L943>)


### \_Type function formatGoPath


```haxe
function formatGoPath():String
```


[\(view code\)](<./Reflect.hx#L1091>)


### \_Type function implements\_


```haxe
function implements_( _u:stdgo.reflect.Type):Bool
```


[\(view code\)](<./Reflect.hx#L1037>)


### \_Type function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo.reflect.Type
```


[\(view code\)](<./Reflect.hx#L931>)


### \_Type function isVariadic


```haxe
function isVariadic():Bool
```


[\(view code\)](<./Reflect.hx#L991>)


### \_Type function key


```haxe
function key():stdgo.reflect.Type
```


[\(view code\)](<./Reflect.hx#L929>)


### \_Type function kind


```haxe
function kind():stdgo.reflect.Kind
```


[\(view code\)](<./Reflect.hx#L1047>)


### \_Type function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L926>)


### \_Type function method


```haxe
function method( _0:stdgo.GoInt):stdgo.reflect.Method
```


[\(view code\)](<./Reflect.hx#L1304>)


### \_Type function name


```haxe
function name():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1280>)


### \_Type function numField


```haxe
function numField():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L914>)


### \_Type function numIn


```haxe
function numIn():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L904>)


### \_Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L1282>)


### \_Type function numOut


```haxe
function numOut():stdgo.GoInt
```


[\(view code\)](<./Reflect.hx#L902>)


### \_Type function out


```haxe
function out( _i:stdgo.GoInt):stdgo.reflect.Type
```


[\(view code\)](<./Reflect.hx#L899>)


### \_Type function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1277>)


### \_Type function size


```haxe
function size():stdgo.GoUIntptr
```


[\(view code\)](<./Reflect.hx#L1241>)


### \_Type function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Reflect.hx#L1112>)


# Abstracts


## abstract KindType


[\(view file containing code\)](<./Reflect.hx>)


## abstract BasicKind


[\(view file containing code\)](<./Reflect.hx>)


