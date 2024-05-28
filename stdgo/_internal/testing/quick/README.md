# Module: `stdgo._internal.testing.quick`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Value>, _f:stdgo._internal.reflect.Type_, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.Error`](<#function-_arbitraryvalues>)

- [`function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte>`](<#function-_farray>)

- [`function _fArrayAlias(_a:stdgo._internal.testing.quick.TestArrayAlias):stdgo._internal.testing.quick.TestArrayAlias`](<#function-_farrayalias>)

- [`function _fBool(_a:Bool):Bool`](<#function-_fbool>)

- [`function _fBoolAlias(_a:stdgo._internal.testing.quick.TestBoolAlias):stdgo._internal.testing.quick.TestBoolAlias`](<#function-_fboolalias>)

- [`function _fComplex128(_a:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-_fcomplex128>)

- [`function _fComplex128Alias(_a:stdgo._internal.testing.quick.TestComplex128Alias):stdgo._internal.testing.quick.TestComplex128Alias`](<#function-_fcomplex128alias>)

- [`function _fComplex64(_a:stdgo.GoComplex64):stdgo.GoComplex64`](<#function-_fcomplex64>)

- [`function _fComplex64Alias(_a:stdgo._internal.testing.quick.TestComplex64Alias):stdgo._internal.testing.quick.TestComplex64Alias`](<#function-_fcomplex64alias>)

- [`function _fFloat32(_a:stdgo.GoFloat32):stdgo.GoFloat32`](<#function-_ffloat32>)

- [`function _fFloat32Alias(_a:stdgo._internal.testing.quick.TestFloat32Alias):stdgo._internal.testing.quick.TestFloat32Alias`](<#function-_ffloat32alias>)

- [`function _fFloat64(_a:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_ffloat64>)

- [`function _fFloat64Alias(_a:stdgo._internal.testing.quick.TestFloat64Alias):stdgo._internal.testing.quick.TestFloat64Alias`](<#function-_ffloat64alias>)

- [`function _fInt(_a:stdgo.GoInt):stdgo.GoInt`](<#function-_fint>)

- [`function _fInt16(_a:stdgo.GoInt16):stdgo.GoInt16`](<#function-_fint16>)

- [`function _fInt16Alias(_a:stdgo._internal.testing.quick.TestInt16Alias):stdgo._internal.testing.quick.TestInt16Alias`](<#function-_fint16alias>)

- [`function _fInt32(_a:stdgo.GoInt32):stdgo.GoInt32`](<#function-_fint32>)

- [`function _fInt32Alias(_a:stdgo._internal.testing.quick.TestInt32Alias):stdgo._internal.testing.quick.TestInt32Alias`](<#function-_fint32alias>)

- [`function _fInt64(_a:stdgo.GoInt64):stdgo.GoInt64`](<#function-_fint64>)

- [`function _fInt64Alias(_a:stdgo._internal.testing.quick.TestInt64Alias):stdgo._internal.testing.quick.TestInt64Alias`](<#function-_fint64alias>)

- [`function _fInt8(_a:stdgo.GoInt8):stdgo.GoInt8`](<#function-_fint8>)

- [`function _fInt8Alias(_a:stdgo._internal.testing.quick.TestInt8Alias):stdgo._internal.testing.quick.TestInt8Alias`](<#function-_fint8alias>)

- [`function _fIntAlias(_a:stdgo._internal.testing.quick.TestIntAlias):stdgo._internal.testing.quick.TestIntAlias`](<#function-_fintalias>)

- [`function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>`](<#function-_fmap>)

- [`function _fMapAlias(_a:stdgo._internal.testing.quick.TestMapAlias):stdgo._internal.testing.quick.TestMapAlias`](<#function-_fmapalias>)

- [`function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt>`](<#function-_fptr>)

- [`function _fPtrAlias(_a:stdgo._internal.testing.quick.TestPtrAlias):stdgo._internal.testing.quick.TestPtrAlias`](<#function-_fptralias>)

- [`function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-_fslice>)

- [`function _fSliceAlias(_a:stdgo._internal.testing.quick.TestSliceAlias):stdgo._internal.testing.quick.TestSliceAlias`](<#function-_fslicealias>)

- [`function _fString(_a:stdgo.GoString):stdgo.GoString`](<#function-_fstring>)

- [`function _fStringAlias(_a:stdgo._internal.testing.quick.TestStringAlias):stdgo._internal.testing.quick.TestStringAlias`](<#function-_fstringalias>)

- [`function _fStruct(_a:stdgo._internal.testing.quick.TestStruct):stdgo._internal.testing.quick.TestStruct`](<#function-_fstruct>)

- [`function _fStructAlias(_a:stdgo._internal.testing.quick.TestStructAlias):stdgo._internal.testing.quick.TestStructAlias`](<#function-_fstructalias>)

- [`function _fUint(_a:stdgo.GoUInt):stdgo.GoUInt`](<#function-_fuint>)

- [`function _fUint16(_a:stdgo.GoUInt16):stdgo.GoUInt16`](<#function-_fuint16>)

- [`function _fUint16Alias(_a:stdgo._internal.testing.quick.TestUint16Alias):stdgo._internal.testing.quick.TestUint16Alias`](<#function-_fuint16alias>)

- [`function _fUint32(_a:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_fuint32>)

- [`function _fUint32Alias(_a:stdgo._internal.testing.quick.TestUint32Alias):stdgo._internal.testing.quick.TestUint32Alias`](<#function-_fuint32alias>)

- [`function _fUint64(_a:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_fuint64>)

- [`function _fUint64Alias(_a:stdgo._internal.testing.quick.TestUint64Alias):stdgo._internal.testing.quick.TestUint64Alias`](<#function-_fuint64alias>)

- [`function _fUint8(_a:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_fuint8>)

- [`function _fUint8Alias(_a:stdgo._internal.testing.quick.TestUint8Alias):stdgo._internal.testing.quick.TestUint8Alias`](<#function-_fuint8alias>)

- [`function _fUintAlias(_a:stdgo._internal.testing.quick.TestUintAlias):stdgo._internal.testing.quick.TestUintAlias`](<#function-_fuintalias>)

- [`function _fUintptr(_a:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-_fuintptr>)

- [`function _fUintptrAlias(_a:stdgo._internal.testing.quick.TestUintptrAlias):stdgo._internal.testing.quick.TestUintptrAlias`](<#function-_fuintptralias>)

- [`function _functionAndType(_f:stdgo.AnyInterface):{
	_2:Bool;
	_1:stdgo._internal.reflect.Type_;
	_0:stdgo._internal.reflect.Value;
}`](<#function-_functionandtype>)

- [`function _myStructProperty(_in:stdgo._internal.testing.quick.T_myStruct):Bool`](<#function-_mystructproperty>)

- [`function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoFloat32`](<#function-_randfloat32>)

- [`function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoFloat64`](<#function-_randfloat64>)

- [`function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoInt64`](<#function-_randint64>)

- [`function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_reporterror>)

- [`function _sizedValue(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, _size:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}`](<#function-_sizedvalue>)

- [`function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo.AnyInterface>`](<#function-_tointerfaces>)

- [`function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString`](<#function-_tostring>)

- [`function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>):stdgo.Error`](<#function-check>)

- [`function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>):stdgo.Error`](<#function-checkequal>)

- [`function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcheckequal>)

- [`function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcheckproperty>)

- [`function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testemptystruct>)

- [`function testFailure(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfailure>)

- [`function testInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testint64>)

- [`function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmutuallyrecursive>)

- [`function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnonzerosliceandmap>)

- [`function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrecursive>)

- [`function value(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}`](<#function-value>)

- [class A](<#class-a>)

  - [`function new(?b:stdgo.Ref<stdgo._internal.testing.quick.B>):Void`](<#a-function-new>)

- [class B](<#class-b>)

  - [`function new(?a:stdgo.Ref<stdgo._internal.testing.quick.A>):Void`](<#b-function-new>)

- [class CheckEqualError](<#class-checkequalerror>)

  - [`function new(?checkError:stdgo._internal.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkequalerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkequalerror-function-error>)

- [class CheckError](<#class-checkerror>)

  - [`function new(?count:stdgo.GoInt, ?in_:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkerror-function-error>)

- [class Config](<#class-config>)

  - [`function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo._internal.reflect.Value>, :stdgo.Ref<stdgo._internal.math.rand.Rand>):Void):Void`](<#config-function-new>)

  - [`function values(:stdgo.Slice<stdgo._internal.reflect.Value>, :stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#config-function-values>)

  - [`function _getMaxCount():stdgo.GoInt`](<#config-function-_getmaxcount>)

  - [`function _getRand():stdgo.Ref<stdgo._internal.math.rand.Rand>`](<#config-function-_getrand>)

- [class T\_testNonZeroSliceAndMap\_\_\_localname\_\_\_Q\_8763](<#class-t_testnonzerosliceandmaplocalnameq_8763>)

  - [`function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void`](<#t_testnonzerosliceandmaplocalnameq_8763-function-new>)

- [class T\_testRecursive\_\_\_localname\_\_\_R\_8108](<#class-t_testrecursivelocalnamer_8108>)

  - [`function new(?ptr:stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?slice:stdgo.Slice<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>):Void`](<#t_testrecursivelocalnamer_8108-function-new>)

- [class TestStruct](<#class-teststruct>)

  - [`function new(?a:stdgo.GoInt, ?b:stdgo.GoString):Void`](<#teststruct-function-new>)

- [typedef Generator](<#typedef-generator>)

- [typedef SetupError](<#typedef-setuperror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef TestArrayAlias](<#typedef-testarrayalias>)

- [typedef TestBoolAlias](<#typedef-testboolalias>)

- [typedef TestComplex128Alias](<#typedef-testcomplex128alias>)

- [typedef TestComplex64Alias](<#typedef-testcomplex64alias>)

- [typedef TestFloat32Alias](<#typedef-testfloat32alias>)

- [typedef TestFloat64Alias](<#typedef-testfloat64alias>)

- [typedef TestInt16Alias](<#typedef-testint16alias>)

- [typedef TestInt32Alias](<#typedef-testint32alias>)

- [typedef TestInt64Alias](<#typedef-testint64alias>)

- [typedef TestInt8Alias](<#typedef-testint8alias>)

- [typedef TestIntAlias](<#typedef-testintalias>)

- [typedef TestMapAlias](<#typedef-testmapalias>)

- [typedef TestPtrAlias](<#typedef-testptralias>)

- [typedef TestSliceAlias](<#typedef-testslicealias>)

- [typedef TestStringAlias](<#typedef-teststringalias>)

- [typedef TestStructAlias](<#typedef-teststructalias>)

- [typedef TestUint16Alias](<#typedef-testuint16alias>)

- [typedef TestUint32Alias](<#typedef-testuint32alias>)

- [typedef TestUint64Alias](<#typedef-testuint64alias>)

- [typedef TestUint8Alias](<#typedef-testuint8alias>)

- [typedef TestUintAlias](<#typedef-testuintalias>)

- [typedef TestUintptrAlias](<#typedef-testuintptralias>)

# Constants


```haxe
import stdgo._internal.testing.quick.Quick
```


```haxe
final _complexSize:stdgo.GoUInt64 = ((50i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.testing.quick.Quick
```


```haxe
var _defaultConfig:stdgo._internal.testing.quick.Config
```


```haxe
var _defaultMaxCount:stdgo.Pointer<stdgo.GoInt>
```


# Functions


```haxe
import stdgo._internal.testing.quick.Quick
```


## function \_arbitraryValues


```haxe
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Value>, _f:stdgo._internal.reflect.Type_, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.Error
```


[\(view code\)](<./Quick.hx#L359>)


## function \_fArray


```haxe
function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte>
```


[\(view code\)](<./Quick.hx#L406>)


## function \_fArrayAlias


```haxe
function _fArrayAlias(_a:stdgo._internal.testing.quick.TestArrayAlias):stdgo._internal.testing.quick.TestArrayAlias
```


[\(view code\)](<./Quick.hx#L409>)


## function \_fBool


```haxe
function _fBool(_a:Bool):Bool
```


[\(view code\)](<./Quick.hx#L412>)


## function \_fBoolAlias


```haxe
function _fBoolAlias(_a:stdgo._internal.testing.quick.TestBoolAlias):stdgo._internal.testing.quick.TestBoolAlias
```


[\(view code\)](<./Quick.hx#L415>)


## function \_fComplex128


```haxe
function _fComplex128(_a:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Quick.hx#L436>)


## function \_fComplex128Alias


```haxe
function _fComplex128Alias(_a:stdgo._internal.testing.quick.TestComplex128Alias):stdgo._internal.testing.quick.TestComplex128Alias
```


[\(view code\)](<./Quick.hx#L439>)


## function \_fComplex64


```haxe
function _fComplex64(_a:stdgo.GoComplex64):stdgo.GoComplex64
```


[\(view code\)](<./Quick.hx#L430>)


## function \_fComplex64Alias


```haxe
function _fComplex64Alias(_a:stdgo._internal.testing.quick.TestComplex64Alias):stdgo._internal.testing.quick.TestComplex64Alias
```


[\(view code\)](<./Quick.hx#L433>)


## function \_fFloat32


```haxe
function _fFloat32(_a:stdgo.GoFloat32):stdgo.GoFloat32
```


[\(view code\)](<./Quick.hx#L418>)


## function \_fFloat32Alias


```haxe
function _fFloat32Alias(_a:stdgo._internal.testing.quick.TestFloat32Alias):stdgo._internal.testing.quick.TestFloat32Alias
```


[\(view code\)](<./Quick.hx#L421>)


## function \_fFloat64


```haxe
function _fFloat64(_a:stdgo.GoFloat64):stdgo.GoFloat64
```


[\(view code\)](<./Quick.hx#L424>)


## function \_fFloat64Alias


```haxe
function _fFloat64Alias(_a:stdgo._internal.testing.quick.TestFloat64Alias):stdgo._internal.testing.quick.TestFloat64Alias
```


[\(view code\)](<./Quick.hx#L427>)


## function \_fInt


```haxe
function _fInt(_a:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Quick.hx#L466>)


## function \_fInt16


```haxe
function _fInt16(_a:stdgo.GoInt16):stdgo.GoInt16
```


[\(view code\)](<./Quick.hx#L442>)


## function \_fInt16Alias


```haxe
function _fInt16Alias(_a:stdgo._internal.testing.quick.TestInt16Alias):stdgo._internal.testing.quick.TestInt16Alias
```


[\(view code\)](<./Quick.hx#L445>)


## function \_fInt32


```haxe
function _fInt32(_a:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Quick.hx#L448>)


## function \_fInt32Alias


```haxe
function _fInt32Alias(_a:stdgo._internal.testing.quick.TestInt32Alias):stdgo._internal.testing.quick.TestInt32Alias
```


[\(view code\)](<./Quick.hx#L451>)


## function \_fInt64


```haxe
function _fInt64(_a:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Quick.hx#L454>)


## function \_fInt64Alias


```haxe
function _fInt64Alias(_a:stdgo._internal.testing.quick.TestInt64Alias):stdgo._internal.testing.quick.TestInt64Alias
```


[\(view code\)](<./Quick.hx#L457>)


## function \_fInt8


```haxe
function _fInt8(_a:stdgo.GoInt8):stdgo.GoInt8
```


[\(view code\)](<./Quick.hx#L460>)


## function \_fInt8Alias


```haxe
function _fInt8Alias(_a:stdgo._internal.testing.quick.TestInt8Alias):stdgo._internal.testing.quick.TestInt8Alias
```


[\(view code\)](<./Quick.hx#L463>)


## function \_fIntAlias


```haxe
function _fIntAlias(_a:stdgo._internal.testing.quick.TestIntAlias):stdgo._internal.testing.quick.TestIntAlias
```


[\(view code\)](<./Quick.hx#L469>)


## function \_fMap


```haxe
function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


[\(view code\)](<./Quick.hx#L472>)


## function \_fMapAlias


```haxe
function _fMapAlias(_a:stdgo._internal.testing.quick.TestMapAlias):stdgo._internal.testing.quick.TestMapAlias
```


[\(view code\)](<./Quick.hx#L475>)


## function \_fPtr


```haxe
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt>
```


[\(view code\)](<./Quick.hx#L478>)


## function \_fPtrAlias


```haxe
function _fPtrAlias(_a:stdgo._internal.testing.quick.TestPtrAlias):stdgo._internal.testing.quick.TestPtrAlias
```


[\(view code\)](<./Quick.hx#L485>)


## function \_fSlice


```haxe
function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Quick.hx#L488>)


## function \_fSliceAlias


```haxe
function _fSliceAlias(_a:stdgo._internal.testing.quick.TestSliceAlias):stdgo._internal.testing.quick.TestSliceAlias
```


[\(view code\)](<./Quick.hx#L491>)


## function \_fString


```haxe
function _fString(_a:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Quick.hx#L494>)


## function \_fStringAlias


```haxe
function _fStringAlias(_a:stdgo._internal.testing.quick.TestStringAlias):stdgo._internal.testing.quick.TestStringAlias
```


[\(view code\)](<./Quick.hx#L497>)


## function \_fStruct


```haxe
function _fStruct(_a:stdgo._internal.testing.quick.TestStruct):stdgo._internal.testing.quick.TestStruct
```


[\(view code\)](<./Quick.hx#L500>)


## function \_fStructAlias


```haxe
function _fStructAlias(_a:stdgo._internal.testing.quick.TestStructAlias):stdgo._internal.testing.quick.TestStructAlias
```


[\(view code\)](<./Quick.hx#L503>)


## function \_fUint


```haxe
function _fUint(_a:stdgo.GoUInt):stdgo.GoUInt
```


[\(view code\)](<./Quick.hx#L530>)


## function \_fUint16


```haxe
function _fUint16(_a:stdgo.GoUInt16):stdgo.GoUInt16
```


[\(view code\)](<./Quick.hx#L506>)


## function \_fUint16Alias


```haxe
function _fUint16Alias(_a:stdgo._internal.testing.quick.TestUint16Alias):stdgo._internal.testing.quick.TestUint16Alias
```


[\(view code\)](<./Quick.hx#L509>)


## function \_fUint32


```haxe
function _fUint32(_a:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Quick.hx#L512>)


## function \_fUint32Alias


```haxe
function _fUint32Alias(_a:stdgo._internal.testing.quick.TestUint32Alias):stdgo._internal.testing.quick.TestUint32Alias
```


[\(view code\)](<./Quick.hx#L515>)


## function \_fUint64


```haxe
function _fUint64(_a:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Quick.hx#L518>)


## function \_fUint64Alias


```haxe
function _fUint64Alias(_a:stdgo._internal.testing.quick.TestUint64Alias):stdgo._internal.testing.quick.TestUint64Alias
```


[\(view code\)](<./Quick.hx#L521>)


## function \_fUint8


```haxe
function _fUint8(_a:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Quick.hx#L524>)


## function \_fUint8Alias


```haxe
function _fUint8Alias(_a:stdgo._internal.testing.quick.TestUint8Alias):stdgo._internal.testing.quick.TestUint8Alias
```


[\(view code\)](<./Quick.hx#L527>)


## function \_fUintAlias


```haxe
function _fUintAlias(_a:stdgo._internal.testing.quick.TestUintAlias):stdgo._internal.testing.quick.TestUintAlias
```


[\(view code\)](<./Quick.hx#L533>)


## function \_fUintptr


```haxe
function _fUintptr(_a:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Quick.hx#L536>)


## function \_fUintptrAlias


```haxe
function _fUintptrAlias(_a:stdgo._internal.testing.quick.TestUintptrAlias):stdgo._internal.testing.quick.TestUintptrAlias
```


[\(view code\)](<./Quick.hx#L539>)


## function \_functionAndType


```haxe
function _functionAndType(_f:stdgo.AnyInterface):{
	_2:Bool;
	_1:stdgo._internal.reflect.Type_;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Quick.hx#L382>)


## function \_myStructProperty


```haxe
function _myStructProperty(_in:stdgo._internal.testing.quick.T_myStruct):Bool
```


[\(view code\)](<./Quick.hx#L595>)


## function \_randFloat32


```haxe
function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoFloat32
```


[\(view code\)](<./Quick.hx#L139>)


## function \_randFloat64


```haxe
function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoFloat64
```


[\(view code\)](<./Quick.hx#L146>)


## function \_randInt64


```haxe
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):stdgo.GoInt64
```


[\(view code\)](<./Quick.hx#L153>)


## function \_reportError


```haxe
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L542>)


## function \_sizedValue


```haxe
function _sizedValue(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, _size:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Quick.hx#L160>)


## function \_toInterfaces


```haxe
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Value>):stdgo.Slice<stdgo.AnyInterface>
```


[\(view code\)](<./Quick.hx#L392>)


## function \_toString


```haxe
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString
```


[\(view code\)](<./Quick.hx#L399>)


## function check


```haxe
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>):stdgo.Error
```


[\(view code\)](<./Quick.hx#L294>)


## function checkEqual


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Config>):stdgo.Error
```


[\(view code\)](<./Quick.hx#L325>)


## function testCheckEqual


```haxe
function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L547>)


## function testCheckProperty


```haxe
function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L598>)


## function testEmptyStruct


```haxe
function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L695>)


## function testFailure


```haxe
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L601>)


## function testInt64


```haxe
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L729>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L701>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L719>)


## function testRecursive


```haxe
function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L688>)


## function value


```haxe
function value(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo._internal.reflect.Value;
}
```


[\(view code\)](<./Quick.hx#L156>)


# Classes


```haxe
import stdgo._internal.testing.quick.*
```


## class A


```haxe
var b:stdgo.Ref<stdgo._internal.testing.quick.B>
```


### A function new


```haxe
function new(?b:stdgo.Ref<stdgo._internal.testing.quick.B>):Void
```


[\(view code\)](<./Quick.hx#L85>)


## class B


```haxe
var a:stdgo.Ref<stdgo._internal.testing.quick.A>
```


### B function new


```haxe
function new(?a:stdgo.Ref<stdgo._internal.testing.quick.A>):Void
```


[\(view code\)](<./Quick.hx#L95>)


## class CheckEqualError


```haxe
var checkError:stdgo._internal.testing.quick.CheckError
```


```haxe
var out1:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var out2:stdgo.Slice<stdgo.AnyInterface>
```


### CheckEqualError function new


```haxe
function new(?checkError:stdgo._internal.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Quick.hx#L51>)


### CheckEqualError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Quick.hx#L814>)


## class CheckError


```haxe
var count:stdgo.GoInt
```


```haxe
var in_:stdgo.Slice<stdgo.AnyInterface>
```


### CheckError function new


```haxe
function new(?count:stdgo.GoInt, ?in_:stdgo.Slice<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Quick.hx#L37>)


### CheckError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Quick.hx#L796>)


## class Config


```haxe
var maxCount:stdgo.GoInt
```


```haxe
var maxCountScale:stdgo.GoFloat64
```


```haxe
var rand:stdgo.Ref<stdgo._internal.math.rand.Rand>
```


### Config function new


```haxe
function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo._internal.reflect.Value>, :stdgo.Ref<stdgo._internal.math.rand.Rand>):Void):Void
```


[\(view code\)](<./Quick.hx#L23>)


### Config function values


```haxe
function values(:stdgo.Slice<stdgo._internal.reflect.Value>, :stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


### Config function \_getMaxCount


```haxe
function _getMaxCount():stdgo.GoInt
```


[\(view code\)](<./Quick.hx#L761>)


### Config function \_getRand


```haxe
function _getRand():stdgo.Ref<stdgo._internal.math.rand.Rand>
```


[\(view code\)](<./Quick.hx#L775>)


## class T\_testNonZeroSliceAndMap\_\_\_localname\_\_\_Q\_8763


```haxe
var m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


```haxe
var s:stdgo.Slice<stdgo.GoInt>
```


### T\_testNonZeroSliceAndMap\_\_\_localname\_\_\_Q\_8763 function new


```haxe
function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Quick.hx#L710>)


## class T\_testRecursive\_\_\_localname\_\_\_R\_8108


```haxe
var mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>
```


```haxe
var mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>
```


```haxe
var map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>
```


```haxe
var ptr:stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>
```


```haxe
var slice:stdgo.Slice<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>
```


```haxe
var sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>
```


```haxe
var sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>
```


### T\_testRecursive\_\_\_localname\_\_\_R\_8108 function new


```haxe
function new(?ptr:stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?slice:stdgo.Slice<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.T_testRecursive___localname___R_8108>>):Void
```


[\(view code\)](<./Quick.hx#L674>)


## class TestStruct


```haxe
var a:stdgo.GoInt
```


```haxe
var b:stdgo.GoString
```


### TestStruct function new


```haxe
function new(?a:stdgo.GoInt, ?b:stdgo.GoString):Void
```


[\(view code\)](<./Quick.hx#L64>)


# Typedefs


```haxe
import stdgo._internal.testing.quick.*
```


## typedef Generator


```haxe
typedef Generator = {
	public function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Value;	// Generate returns a random instance of the type on which it is a method using the size as a size hint.
};
```


## typedef SetupError


```haxe
typedef SetupError = stdgo.GoString;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


## typedef TestArrayAlias


```haxe
typedef TestArrayAlias = stdgo.GoArray<stdgo.GoUInt8>;
```


## typedef TestBoolAlias


```haxe
typedef TestBoolAlias = Bool;
```


## typedef TestComplex128Alias


```haxe
typedef TestComplex128Alias = stdgo.GoComplex128;
```


## typedef TestComplex64Alias


```haxe
typedef TestComplex64Alias = stdgo.GoComplex64;
```


## typedef TestFloat32Alias


```haxe
typedef TestFloat32Alias = stdgo.GoFloat32;
```


## typedef TestFloat64Alias


```haxe
typedef TestFloat64Alias = stdgo.GoFloat64;
```


## typedef TestInt16Alias


```haxe
typedef TestInt16Alias = stdgo.GoInt16;
```


## typedef TestInt32Alias


```haxe
typedef TestInt32Alias = stdgo.GoInt32;
```


## typedef TestInt64Alias


```haxe
typedef TestInt64Alias = stdgo.GoInt64;
```


## typedef TestInt8Alias


```haxe
typedef TestInt8Alias = stdgo.GoInt8;
```


## typedef TestIntAlias


```haxe
typedef TestIntAlias = stdgo.GoInt;
```


## typedef TestMapAlias


```haxe
typedef TestMapAlias = stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
```


## typedef TestPtrAlias


```haxe
typedef TestPtrAlias = stdgo.Pointer<stdgo.GoInt>;
```


## typedef TestSliceAlias


```haxe
typedef TestSliceAlias = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef TestStringAlias


```haxe
typedef TestStringAlias = stdgo.GoString;
```


## typedef TestStructAlias


```haxe
typedef TestStructAlias = stdgo._internal.testing.quick.TestStruct;
```


## typedef TestUint16Alias


```haxe
typedef TestUint16Alias = stdgo.GoUInt16;
```


## typedef TestUint32Alias


```haxe
typedef TestUint32Alias = stdgo.GoUInt32;
```


## typedef TestUint64Alias


```haxe
typedef TestUint64Alias = stdgo.GoUInt64;
```


## typedef TestUint8Alias


```haxe
typedef TestUint8Alias = stdgo.GoUInt8;
```


## typedef TestUintAlias


```haxe
typedef TestUintAlias = stdgo.GoUInt;
```


## typedef TestUintptrAlias


```haxe
typedef TestUintptrAlias = stdgo.GoUIntptr;
```


