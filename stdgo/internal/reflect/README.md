# Module: `stdgo.internal.reflect`

[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [`function _set(value:stdgo.reflect.Value):Void`](<#function-_set>)

- [`function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool`](<#function-deepvalueequal>)

- [`function defaultValue(typ:stdgo.reflect.Type):Any`](<#function-defaultvalue>)

- [`function defaultValueInternal(typ:stdgo.internal.reflect._Type):Any`](<#function-defaultvalueinternal>)

- [`function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool`](<#function-directlyassignable>)

- [`function formatGoFieldName(name:String):String`](<#function-formatgofieldname>)

- [`function getElem(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-getelem>)

- [`function getSignature(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType`](<#function-getsignature>)

- [`function getUnderlying(gt:stdgo.internal.reflect.GoType, ?once:Bool):stdgo.internal.reflect.GoType`](<#function-getunderlying>)

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

  - [`function new(name:String, type:stdgo.internal.reflect.GoType, tag:String, embedded:Bool):Void`](<#fieldtype-function-new>)

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

  - [`function fieldByName( _name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type-function-fieldbynamefunc>)

  - [`function implements_( _u:stdgo.reflect.Type):Bool`](<#type-function-implements>)

  - [`function in_( _i:stdgo.GoInt):stdgo.reflect.Type`](<#type-function-in>)

  - [`function isVariadic():Bool`](<#_type-function-isvariadic>)

  - [`function key():stdgo.reflect.Type`](<#_type-function-key>)

  - [`function kind():stdgo.reflect.Kind`](<#_type-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type-function-len>)

  - [`function method( _0:stdgo.GoInt):stdgo.reflect.Method`](<#_type-function-method>)

  - [`function methodByName( _0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}`](<#_type-function-methodbyname>)

  - [`function name():stdgo.GoString`](<#_type-function-name>)

  - [`function numField():stdgo.GoInt`](<#_type-function-numfield>)

  - [`function numIn():stdgo.GoInt`](<#_type-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#_type-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#_type-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo.reflect.Type`](<#_type-function-out>)

  - [`function pkgPath():stdgo.GoString`](<#_type-function-pkgpath>)

  - [`function size():stdgo.GoUIntptr`](<#_type-function-size>)

  - [`function string():stdgo.GoString`](<#_type-function-string>)

- [class \_Type\_static\_extension](<#class-_type_static_extension>)

  - [`function _common():stdgo.internal.reflect._Reflect.Ref<Dynamic>`](<#_type_static_extension-function-_common>)

  - [`function _uncommon():stdgo.internal.reflect._Reflect.Ref<Dynamic>`](<#_type_static_extension-function-_uncommon>)

  - [`function align():stdgo.GoInt`](<#_type_static_extension-function-align>)

  - [`function assignableTo( _u:stdgo.reflect.Type):Bool`](<#_type_static_extension-function-assignableto>)

  - [`function bits():stdgo.GoInt`](<#_type_static_extension-function-bits>)

  - [`function chanDir():stdgo.reflect.ChanDir`](<#_type_static_extension-function-chandir>)

  - [`function comparable():Bool`](<#_type_static_extension-function-comparable>)

  - [`function convertibleTo( _u:stdgo.reflect.Type):Bool`](<#_type_static_extension-function-convertibleto>)

  - [`function elem():stdgo.reflect.Type`](<#_type_static_extension-function-elem>)

  - [`function field( _i:stdgo.GoInt):stdgo.reflect.StructField`](<#_type_static_extension-function-field>)

  - [`function fieldAlign():stdgo.GoInt`](<#_type_static_extension-function-fieldalign>)

  - [`function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField`](<#_type_static_extension-function-fieldbyindex>)

  - [`function fieldByName( _name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type_static_extension-function-fieldbyname>)

  - [`function fieldByNameFunc( _match:()):{_1:Bool, _0:stdgo.reflect.StructField}`](<#_type_static_extension-function-fieldbynamefunc>)

  - [`function implements_( _u:stdgo.reflect.Type):Bool`](<#_type_staticextension-function-implements>)

  - [`function in_( _i:stdgo.GoInt):stdgo.reflect.Type`](<#_type_staticextension-function-in>)

  - [`function isVariadic():Bool`](<#_type_static_extension-function-isvariadic>)

  - [`function key():stdgo.reflect.Type`](<#_type_static_extension-function-key>)

  - [`function kind():stdgo.reflect.Kind`](<#_type_static_extension-function-kind>)

  - [`function len():stdgo.GoInt`](<#_type_static_extension-function-len>)

  - [`function method( _0:stdgo.GoInt):stdgo.reflect.Method`](<#_type_static_extension-function-method>)

  - [`function methodByName( _0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}`](<#_type_static_extension-function-methodbyname>)

  - [`function name():stdgo.GoString`](<#_type_static_extension-function-name>)

  - [`function numField():stdgo.GoInt`](<#_type_static_extension-function-numfield>)

  - [`function numIn():stdgo.GoInt`](<#_type_static_extension-function-numin>)

  - [`function numMethod():stdgo.GoInt`](<#_type_static_extension-function-nummethod>)

  - [`function numOut():stdgo.GoInt`](<#_type_static_extension-function-numout>)

  - [`function out( _i:stdgo.GoInt):stdgo.reflect.Type`](<#_type_static_extension-function-out>)

  - [`function pkgPath():stdgo.GoString`](<#_type_static_extension-function-pkgpath>)

  - [`function size():stdgo.GoUIntptr`](<#_type_static_extension-function-size>)

  - [`function string():stdgo.GoString`](<#_type_static_extension-function-string>)

# Functions


```haxe
import stdgo.internal.reflect.Reflect
```


## function \_set


```haxe
function _set(value:stdgo.reflect.Value):Void
```


 


[\(view code\)](<./Reflect.hx#L691>)


## function deepValueEqual


```haxe
function deepValueEqual(v1:stdgo.reflect.Value, v2:stdgo.reflect.Value, visited:stdgo.GoMap<stdgo.internal.reflect._Reflect.Visit, Bool>, depth:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Reflect.hx#L60>)


## function defaultValue


```haxe
function defaultValue(typ:stdgo.reflect.Type):Any
```


 


[\(view code\)](<./Reflect.hx#L659>)


## function defaultValueInternal


```haxe
function defaultValueInternal(typ:stdgo.internal.reflect._Type):Any
```


 


[\(view code\)](<./Reflect.hx#L706>)


## function directlyAssignable


```haxe
function directlyAssignable(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L133>)


## function formatGoFieldName


```haxe
function formatGoFieldName(name:String):String
```


 


[\(view code\)](<./Reflect.hx#L41>)


## function getElem


```haxe
function getElem(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L440>)


## function getSignature


```haxe
function getSignature(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L466>)


## function getUnderlying


```haxe
function getUnderlying(gt:stdgo.internal.reflect.GoType, ?once:Bool):stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L613>)


## function getVar


```haxe
function getVar(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L455>)


## function implementsMethod


```haxe
function implementsMethod(t:stdgo.reflect.Type, v:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L257>)


## function isAnyInterface


```haxe
function isAnyInterface(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L547>)


## function isExported


```haxe
function isExported(name:String):Bool
```


 


[\(view code\)](<./Reflect.hx#L37>)


## function isInterface


```haxe
function isInterface(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L560>)


## function isInvalid


```haxe
function isInvalid(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L420>)


## function isNamed


```haxe
function isNamed(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L371>)


## function isPointer


```haxe
function isPointer(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L495>)


## function isPointerStruct


```haxe
function isPointerStruct(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L411>)


## function isRef


```haxe
function isRef(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L512>)


## function isRefValue


```haxe
function isRefValue(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L525>)


## function isReflectTypeRef


```haxe
function isReflectTypeRef(type:stdgo.internal.reflect._Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L521>)


## function isSignature


```haxe
function isSignature(type:stdgo.internal.reflect.GoType, ?underlyingBool:Bool):Bool
```


 


[\(view code\)](<./Reflect.hx#L353>)


## function isStruct


```haxe
function isStruct(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L397>)


## function isTitle


```haxe
function isTitle(string:String):Bool
```


 


[\(view code\)](<./Reflect.hx#L393>)


## function isUnsafePointer


```haxe
function isUnsafePointer(type:stdgo.internal.reflect.GoType):Bool
```


 


[\(view code\)](<./Reflect.hx#L479>)


## function namedUnderlying


```haxe
function namedUnderlying(obj:stdgo.AnyInterface):stdgo.AnyInterface
```


 


[\(view code\)](<./Reflect.hx#L45>)


## function pointerUnwrap


```haxe
function pointerUnwrap(type:stdgo.internal.reflect.GoType):stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L536>)


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
var tag:String
```


```haxe
var type:stdgo.internal.reflect.GoType
```


### FieldType function new


```haxe
function new(name:String, type:stdgo.internal.reflect.GoType, tag:String, embedded:Bool):Void
```


 


[\(view code\)](<./Reflect.hx#L326>)


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


 


[\(view code\)](<./Reflect.hx#L306>)


### MethodType function toString


```haxe
function toString():String
```


 


[\(view code\)](<./Reflect.hx#L316>)


## class \_Type


 


### \_Type function \_common


```haxe
function _common():stdgo.internal.reflect.GoType
```


 


[\(view code\)](<./Reflect.hx#L753>)


### \_Type function new


```haxe
function new(gt:stdgo.internal.reflect.GoType):Void
```


 


[\(view code\)](<./Reflect.hx#L747>)


### \_Type function \_common


```haxe
function _common():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L761>)


### \_Type function \_uncommon


```haxe
function _uncommon():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L758>)


### \_Type function align


```haxe
function align():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1006>)


### \_Type function assignableTo


```haxe
function assignableTo( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L826>)


### \_Type function bits


```haxe
function bits():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L818>)


### \_Type function chanDir


```haxe
function chanDir():stdgo.reflect.ChanDir
```


 


[\(view code\)](<./Reflect.hx#L815>)


### \_Type function comparable


```haxe
function comparable():Bool
```


 


[\(view code\)](<./Reflect.hx#L821>)


### \_Type function convertibleTo


```haxe
function convertibleTo( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L824>)


### \_Type function elem


```haxe
function elem():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L796>)


### \_Type function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L794>)


### \_Type function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1003>)


### \_Type function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L791>)


### \_Type function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L788>)


### \_Type function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L785>)


### \_Type function implements\_


```haxe
function implements_( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L834>)


### \_Type function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L782>)


### \_Type function isVariadic


```haxe
function isVariadic():Bool
```


 


[\(view code\)](<./Reflect.hx#L812>)


### \_Type function key


```haxe
function key():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L779>)


### \_Type function kind


```haxe
function kind():stdgo.reflect.Kind
```


 


[\(view code\)](<./Reflect.hx#L844>)


### \_Type function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L776>)


### \_Type function method


```haxe
function method( _0:stdgo.GoInt):stdgo.reflect.Method
```


 


[\(view code\)](<./Reflect.hx#L1000>)


### \_Type function methodByName


```haxe
function methodByName( _0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}
```


 


[\(view code\)](<./Reflect.hx#L997>)


### \_Type function name


```haxe
function name():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L976>)


### \_Type function numField


```haxe
function numField():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L773>)


### \_Type function numIn


```haxe
function numIn():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L770>)


### \_Type function numMethod


```haxe
function numMethod():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L978>)


### \_Type function numOut


```haxe
function numOut():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L767>)


### \_Type function out


```haxe
function out( _i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L764>)


### \_Type function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L973>)


### \_Type function size


```haxe
function size():stdgo.GoUIntptr
```


 


[\(view code\)](<./Reflect.hx#L970>)


### \_Type function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L886>)


## class \_Type\_static\_extension


 


### \_Type\_static\_extension function \_common


```haxe
function _common():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L761>)


### \_Type\_static\_extension function \_uncommon


```haxe
function _uncommon():stdgo.internal.reflect._Reflect.Ref<Dynamic>
```


 


[\(view code\)](<./Reflect.hx#L758>)


### \_Type\_static\_extension function align


```haxe
function align():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1006>)


### \_Type\_static\_extension function assignableTo


```haxe
function assignableTo( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L826>)


### \_Type\_static\_extension function bits


```haxe
function bits():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L818>)


### \_Type\_static\_extension function chanDir


```haxe
function chanDir():stdgo.reflect.ChanDir
```


 


[\(view code\)](<./Reflect.hx#L815>)


### \_Type\_static\_extension function comparable


```haxe
function comparable():Bool
```


 


[\(view code\)](<./Reflect.hx#L821>)


### \_Type\_static\_extension function convertibleTo


```haxe
function convertibleTo( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L824>)


### \_Type\_static\_extension function elem


```haxe
function elem():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L796>)


### \_Type\_static\_extension function field


```haxe
function field( _i:stdgo.GoInt):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L794>)


### \_Type\_static\_extension function fieldAlign


```haxe
function fieldAlign():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L1003>)


### \_Type\_static\_extension function fieldByIndex


```haxe
function fieldByIndex( _index:stdgo.Slice<stdgo.GoInt>):stdgo.reflect.StructField
```


 


[\(view code\)](<./Reflect.hx#L791>)


### \_Type\_static\_extension function fieldByName


```haxe
function fieldByName( _name:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L788>)


### \_Type\_static\_extension function fieldByNameFunc


```haxe
function fieldByNameFunc( _match:()):{_1:Bool, _0:stdgo.reflect.StructField}
```


 


[\(view code\)](<./Reflect.hx#L785>)


### \_Type\_static\_extension function implements\_


```haxe
function implements_( _u:stdgo.reflect.Type):Bool
```


 


[\(view code\)](<./Reflect.hx#L834>)


### \_Type\_static\_extension function in\_


```haxe
function in_( _i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L782>)


### \_Type\_static\_extension function isVariadic


```haxe
function isVariadic():Bool
```


 


[\(view code\)](<./Reflect.hx#L812>)


### \_Type\_static\_extension function key


```haxe
function key():stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L779>)


### \_Type\_static\_extension function kind


```haxe
function kind():stdgo.reflect.Kind
```


 


[\(view code\)](<./Reflect.hx#L844>)


### \_Type\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L776>)


### \_Type\_static\_extension function method


```haxe
function method( _0:stdgo.GoInt):stdgo.reflect.Method
```


 


[\(view code\)](<./Reflect.hx#L1000>)


### \_Type\_static\_extension function methodByName


```haxe
function methodByName( _0:stdgo.GoString):{_1:Bool, _0:stdgo.reflect.Method}
```


 


[\(view code\)](<./Reflect.hx#L997>)


### \_Type\_static\_extension function name


```haxe
function name():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L976>)


### \_Type\_static\_extension function numField


```haxe
function numField():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L773>)


### \_Type\_static\_extension function numIn


```haxe
function numIn():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L770>)


### \_Type\_static\_extension function numMethod


```haxe
function numMethod():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L978>)


### \_Type\_static\_extension function numOut


```haxe
function numOut():stdgo.GoInt
```


 


[\(view code\)](<./Reflect.hx#L767>)


### \_Type\_static\_extension function out


```haxe
function out( _i:stdgo.GoInt):stdgo.reflect.Type
```


 


[\(view code\)](<./Reflect.hx#L764>)


### \_Type\_static\_extension function pkgPath


```haxe
function pkgPath():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L973>)


### \_Type\_static\_extension function size


```haxe
function size():stdgo.GoUIntptr
```


 


[\(view code\)](<./Reflect.hx#L970>)


### \_Type\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Reflect.hx#L886>)


