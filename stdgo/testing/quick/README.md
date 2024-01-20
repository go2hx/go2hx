# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview



Package quick implements utility functions to help with black box testing.  


The testing/quick package is frozen and is not accepting new features.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _arbitraryValues(_args:stdgo.Slice<stdgo.reflect.Value>, _f:stdgo.reflect.Type_, _config:stdgo.Ref<stdgo.testing.quick.Config>, _rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.Error`](<#function-_arbitraryvalues>)

- [`function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte>`](<#function-_farray>)

- [`function _fArrayAlias(_a:stdgo.testing.quick.TestArrayAlias):stdgo.testing.quick.TestArrayAlias`](<#function-_farrayalias>)

- [`function _fBool(_a:Bool):Bool`](<#function-_fbool>)

- [`function _fBoolAlias(_a:stdgo.testing.quick.TestBoolAlias):stdgo.testing.quick.TestBoolAlias`](<#function-_fboolalias>)

- [`function _fComplex128(_a:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-_fcomplex128>)

- [`function _fComplex128Alias(_a:stdgo.testing.quick.TestComplex128Alias):stdgo.testing.quick.TestComplex128Alias`](<#function-_fcomplex128alias>)

- [`function _fComplex64(_a:stdgo.GoComplex64):stdgo.GoComplex64`](<#function-_fcomplex64>)

- [`function _fComplex64Alias(_a:stdgo.testing.quick.TestComplex64Alias):stdgo.testing.quick.TestComplex64Alias`](<#function-_fcomplex64alias>)

- [`function _fFloat32(_a:stdgo.GoFloat32):stdgo.GoFloat32`](<#function-_ffloat32>)

- [`function _fFloat32Alias(_a:stdgo.testing.quick.TestFloat32Alias):stdgo.testing.quick.TestFloat32Alias`](<#function-_ffloat32alias>)

- [`function _fFloat64(_a:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_ffloat64>)

- [`function _fFloat64Alias(_a:stdgo.testing.quick.TestFloat64Alias):stdgo.testing.quick.TestFloat64Alias`](<#function-_ffloat64alias>)

- [`function _fInt(_a:stdgo.GoInt):stdgo.GoInt`](<#function-_fint>)

- [`function _fInt16(_a:stdgo.GoInt16):stdgo.GoInt16`](<#function-_fint16>)

- [`function _fInt16Alias(_a:stdgo.testing.quick.TestInt16Alias):stdgo.testing.quick.TestInt16Alias`](<#function-_fint16alias>)

- [`function _fInt32(_a:stdgo.GoInt32):stdgo.GoInt32`](<#function-_fint32>)

- [`function _fInt32Alias(_a:stdgo.testing.quick.TestInt32Alias):stdgo.testing.quick.TestInt32Alias`](<#function-_fint32alias>)

- [`function _fInt64(_a:stdgo.GoInt64):stdgo.GoInt64`](<#function-_fint64>)

- [`function _fInt64Alias(_a:stdgo.testing.quick.TestInt64Alias):stdgo.testing.quick.TestInt64Alias`](<#function-_fint64alias>)

- [`function _fInt8(_a:stdgo.GoInt8):stdgo.GoInt8`](<#function-_fint8>)

- [`function _fInt8Alias(_a:stdgo.testing.quick.TestInt8Alias):stdgo.testing.quick.TestInt8Alias`](<#function-_fint8alias>)

- [`function _fIntAlias(_a:stdgo.testing.quick.TestIntAlias):stdgo.testing.quick.TestIntAlias`](<#function-_fintalias>)

- [`function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>`](<#function-_fmap>)

- [`function _fMapAlias(_a:stdgo.testing.quick.TestMapAlias):stdgo.testing.quick.TestMapAlias`](<#function-_fmapalias>)

- [`function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt>`](<#function-_fptr>)

- [`function _fPtrAlias(_a:stdgo.testing.quick.TestPtrAlias):stdgo.testing.quick.TestPtrAlias`](<#function-_fptralias>)

- [`function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-_fslice>)

- [`function _fSliceAlias(_a:stdgo.testing.quick.TestSliceAlias):stdgo.testing.quick.TestSliceAlias`](<#function-_fslicealias>)

- [`function _fString(_a:stdgo.GoString):stdgo.GoString`](<#function-_fstring>)

- [`function _fStringAlias(_a:stdgo.testing.quick.TestStringAlias):stdgo.testing.quick.TestStringAlias`](<#function-_fstringalias>)

- [`function _fStruct(_a:stdgo.testing.quick.TestStruct):stdgo.testing.quick.TestStruct`](<#function-_fstruct>)

- [`function _fStructAlias(_a:stdgo.testing.quick.TestStructAlias):stdgo.testing.quick.TestStructAlias`](<#function-_fstructalias>)

- [`function _fUint(_a:stdgo.GoUInt):stdgo.GoUInt`](<#function-_fuint>)

- [`function _fUint16(_a:stdgo.GoUInt16):stdgo.GoUInt16`](<#function-_fuint16>)

- [`function _fUint16Alias(_a:stdgo.testing.quick.TestUint16Alias):stdgo.testing.quick.TestUint16Alias`](<#function-_fuint16alias>)

- [`function _fUint32(_a:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_fuint32>)

- [`function _fUint32Alias(_a:stdgo.testing.quick.TestUint32Alias):stdgo.testing.quick.TestUint32Alias`](<#function-_fuint32alias>)

- [`function _fUint64(_a:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_fuint64>)

- [`function _fUint64Alias(_a:stdgo.testing.quick.TestUint64Alias):stdgo.testing.quick.TestUint64Alias`](<#function-_fuint64alias>)

- [`function _fUint8(_a:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_fuint8>)

- [`function _fUint8Alias(_a:stdgo.testing.quick.TestUint8Alias):stdgo.testing.quick.TestUint8Alias`](<#function-_fuint8alias>)

- [`function _fUintAlias(_a:stdgo.testing.quick.TestUintAlias):stdgo.testing.quick.TestUintAlias`](<#function-_fuintalias>)

- [`function _fUintptr(_a:stdgo.GoUIntptr):stdgo.GoUIntptr`](<#function-_fuintptr>)

- [`function _fUintptrAlias(_a:stdgo.testing.quick.TestUintptrAlias):stdgo.testing.quick.TestUintptrAlias`](<#function-_fuintptralias>)

- [`function _functionAndType(_f:stdgo.AnyInterface):{
	_2:Bool;
	_1:stdgo.reflect.Type_;
	_0:stdgo.reflect.Value;
}`](<#function-_functionandtype>)

- [`function _myStructProperty(_in:stdgo.testing.quick.T_myStruct):Bool`](<#function-_mystructproperty>)

- [`function _randFloat32(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoFloat32`](<#function-_randfloat32>)

- [`function _randFloat64(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoFloat64`](<#function-_randfloat64>)

- [`function _randInt64(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoInt64`](<#function-_randint64>)

- [`function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_reporterror>)

- [`function _sizedValue(_t:stdgo.reflect.Type_, _rand:stdgo.Ref<stdgo.math.rand.Rand>, _size:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}`](<#function-_sizedvalue>)

- [`function _toInterfaces(_values:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.AnyInterface>`](<#function-_tointerfaces>)

- [`function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString`](<#function-_tostring>)

- [`function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error`](<#function-check>)

- [`function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error`](<#function-checkequal>)

- [`function testCheckEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcheckequal>)

- [`function testCheckProperty(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcheckproperty>)

- [`function testEmptyStruct(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testemptystruct>)

- [`function testFailure(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfailure>)

- [`function testInt64(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testint64>)

- [`function testMutuallyRecursive(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmutuallyrecursive>)

- [`function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnonzerosliceandmap>)

- [`function testRecursive(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrecursive>)

- [`function value(_t:stdgo.reflect.Type_, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}`](<#function-value>)

- [class A](<#class-a>)

  - [`function new(?b:stdgo.Ref<stdgo.testing.quick.B>):Void`](<#a-function-new>)

- [class B](<#class-b>)

  - [`function new(?a:stdgo.Ref<stdgo.testing.quick.A>):Void`](<#b-function-new>)

- [class CheckEqualError](<#class-checkequalerror>)

  - [`function new(?checkError:stdgo.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkequalerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkequalerror-function-error>)

- [class CheckError](<#class-checkerror>)

  - [`function new(?count:stdgo.GoInt, ?in_:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkerror-function-error>)

- [class Config](<#class-config>)

  - [`function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void):Void`](<#config-function-new>)

  - [`function values(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void`](<#config-function-values>)

  - [`function _getMaxCount():stdgo.GoInt`](<#config-function-_getmaxcount>)

  - [`function _getRand():stdgo.Ref<stdgo.math.rand.Rand>`](<#config-function-_getrand>)

- [class T\_testNonZeroSliceAndMap\_36\_\_\_localname\_\_\_Q](<#class-t_testnonzerosliceandmap_36localnameq>)

  - [`function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void`](<#t_testnonzerosliceandmap_36localnameq-function-new>)

- [class T\_testRecursive\_35\_\_\_localname\_\_\_R](<#class-t_testrecursive_35localnamer>)

  - [`function new(?ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_35___localname___R>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>>):Void`](<#t_testrecursive_35localnamer-function-new>)

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
import stdgo.testing.quick.Quick
```


```haxe
final _complexSize:stdgo.GoUInt64 = ((50i64 : stdgo.GoUInt64))
```



complexSize is the maximum length of arbitrary values that contain other
values.  

# Variables


```haxe
import stdgo.testing.quick.Quick
```


```haxe
var _defaultConfig:stdgo.testing.quick.Config
```


```haxe
var _defaultMaxCount:stdgo.Pointer<stdgo.GoInt>
```


# Functions


```haxe
import stdgo.testing.quick.Quick
```


## function \_arbitraryValues


```haxe
function _arbitraryValues(_args:stdgo.Slice<stdgo.reflect.Value>, _f:stdgo.reflect.Type_, _config:stdgo.Ref<stdgo.testing.quick.Config>, _rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.Error
```



arbitraryValues writes Values to args such that args contains Values
suitable for calling f.  

[\(view code\)](<./Quick.hx#L488>)


## function \_fArray


```haxe
function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte>
```


[\(view code\)](<./Quick.hx#L535>)


## function \_fArrayAlias


```haxe
function _fArrayAlias(_a:stdgo.testing.quick.TestArrayAlias):stdgo.testing.quick.TestArrayAlias
```


[\(view code\)](<./Quick.hx#L538>)


## function \_fBool


```haxe
function _fBool(_a:Bool):Bool
```


[\(view code\)](<./Quick.hx#L541>)


## function \_fBoolAlias


```haxe
function _fBoolAlias(_a:stdgo.testing.quick.TestBoolAlias):stdgo.testing.quick.TestBoolAlias
```


[\(view code\)](<./Quick.hx#L544>)


## function \_fComplex128


```haxe
function _fComplex128(_a:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Quick.hx#L565>)


## function \_fComplex128Alias


```haxe
function _fComplex128Alias(_a:stdgo.testing.quick.TestComplex128Alias):stdgo.testing.quick.TestComplex128Alias
```


[\(view code\)](<./Quick.hx#L568>)


## function \_fComplex64


```haxe
function _fComplex64(_a:stdgo.GoComplex64):stdgo.GoComplex64
```


[\(view code\)](<./Quick.hx#L559>)


## function \_fComplex64Alias


```haxe
function _fComplex64Alias(_a:stdgo.testing.quick.TestComplex64Alias):stdgo.testing.quick.TestComplex64Alias
```


[\(view code\)](<./Quick.hx#L562>)


## function \_fFloat32


```haxe
function _fFloat32(_a:stdgo.GoFloat32):stdgo.GoFloat32
```


[\(view code\)](<./Quick.hx#L547>)


## function \_fFloat32Alias


```haxe
function _fFloat32Alias(_a:stdgo.testing.quick.TestFloat32Alias):stdgo.testing.quick.TestFloat32Alias
```


[\(view code\)](<./Quick.hx#L550>)


## function \_fFloat64


```haxe
function _fFloat64(_a:stdgo.GoFloat64):stdgo.GoFloat64
```


[\(view code\)](<./Quick.hx#L553>)


## function \_fFloat64Alias


```haxe
function _fFloat64Alias(_a:stdgo.testing.quick.TestFloat64Alias):stdgo.testing.quick.TestFloat64Alias
```


[\(view code\)](<./Quick.hx#L556>)


## function \_fInt


```haxe
function _fInt(_a:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Quick.hx#L595>)


## function \_fInt16


```haxe
function _fInt16(_a:stdgo.GoInt16):stdgo.GoInt16
```


[\(view code\)](<./Quick.hx#L571>)


## function \_fInt16Alias


```haxe
function _fInt16Alias(_a:stdgo.testing.quick.TestInt16Alias):stdgo.testing.quick.TestInt16Alias
```


[\(view code\)](<./Quick.hx#L574>)


## function \_fInt32


```haxe
function _fInt32(_a:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Quick.hx#L577>)


## function \_fInt32Alias


```haxe
function _fInt32Alias(_a:stdgo.testing.quick.TestInt32Alias):stdgo.testing.quick.TestInt32Alias
```


[\(view code\)](<./Quick.hx#L580>)


## function \_fInt64


```haxe
function _fInt64(_a:stdgo.GoInt64):stdgo.GoInt64
```


[\(view code\)](<./Quick.hx#L583>)


## function \_fInt64Alias


```haxe
function _fInt64Alias(_a:stdgo.testing.quick.TestInt64Alias):stdgo.testing.quick.TestInt64Alias
```


[\(view code\)](<./Quick.hx#L586>)


## function \_fInt8


```haxe
function _fInt8(_a:stdgo.GoInt8):stdgo.GoInt8
```


[\(view code\)](<./Quick.hx#L589>)


## function \_fInt8Alias


```haxe
function _fInt8Alias(_a:stdgo.testing.quick.TestInt8Alias):stdgo.testing.quick.TestInt8Alias
```


[\(view code\)](<./Quick.hx#L592>)


## function \_fIntAlias


```haxe
function _fIntAlias(_a:stdgo.testing.quick.TestIntAlias):stdgo.testing.quick.TestIntAlias
```


[\(view code\)](<./Quick.hx#L598>)


## function \_fMap


```haxe
function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


[\(view code\)](<./Quick.hx#L601>)


## function \_fMapAlias


```haxe
function _fMapAlias(_a:stdgo.testing.quick.TestMapAlias):stdgo.testing.quick.TestMapAlias
```


[\(view code\)](<./Quick.hx#L604>)


## function \_fPtr


```haxe
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt>
```


[\(view code\)](<./Quick.hx#L607>)


## function \_fPtrAlias


```haxe
function _fPtrAlias(_a:stdgo.testing.quick.TestPtrAlias):stdgo.testing.quick.TestPtrAlias
```


[\(view code\)](<./Quick.hx#L614>)


## function \_fSlice


```haxe
function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Quick.hx#L617>)


## function \_fSliceAlias


```haxe
function _fSliceAlias(_a:stdgo.testing.quick.TestSliceAlias):stdgo.testing.quick.TestSliceAlias
```


[\(view code\)](<./Quick.hx#L620>)


## function \_fString


```haxe
function _fString(_a:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Quick.hx#L623>)


## function \_fStringAlias


```haxe
function _fStringAlias(_a:stdgo.testing.quick.TestStringAlias):stdgo.testing.quick.TestStringAlias
```


[\(view code\)](<./Quick.hx#L626>)


## function \_fStruct


```haxe
function _fStruct(_a:stdgo.testing.quick.TestStruct):stdgo.testing.quick.TestStruct
```


[\(view code\)](<./Quick.hx#L629>)


## function \_fStructAlias


```haxe
function _fStructAlias(_a:stdgo.testing.quick.TestStructAlias):stdgo.testing.quick.TestStructAlias
```


[\(view code\)](<./Quick.hx#L632>)


## function \_fUint


```haxe
function _fUint(_a:stdgo.GoUInt):stdgo.GoUInt
```


[\(view code\)](<./Quick.hx#L659>)


## function \_fUint16


```haxe
function _fUint16(_a:stdgo.GoUInt16):stdgo.GoUInt16
```


[\(view code\)](<./Quick.hx#L635>)


## function \_fUint16Alias


```haxe
function _fUint16Alias(_a:stdgo.testing.quick.TestUint16Alias):stdgo.testing.quick.TestUint16Alias
```


[\(view code\)](<./Quick.hx#L638>)


## function \_fUint32


```haxe
function _fUint32(_a:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Quick.hx#L641>)


## function \_fUint32Alias


```haxe
function _fUint32Alias(_a:stdgo.testing.quick.TestUint32Alias):stdgo.testing.quick.TestUint32Alias
```


[\(view code\)](<./Quick.hx#L644>)


## function \_fUint64


```haxe
function _fUint64(_a:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Quick.hx#L647>)


## function \_fUint64Alias


```haxe
function _fUint64Alias(_a:stdgo.testing.quick.TestUint64Alias):stdgo.testing.quick.TestUint64Alias
```


[\(view code\)](<./Quick.hx#L650>)


## function \_fUint8


```haxe
function _fUint8(_a:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Quick.hx#L653>)


## function \_fUint8Alias


```haxe
function _fUint8Alias(_a:stdgo.testing.quick.TestUint8Alias):stdgo.testing.quick.TestUint8Alias
```


[\(view code\)](<./Quick.hx#L656>)


## function \_fUintAlias


```haxe
function _fUintAlias(_a:stdgo.testing.quick.TestUintAlias):stdgo.testing.quick.TestUintAlias
```


[\(view code\)](<./Quick.hx#L662>)


## function \_fUintptr


```haxe
function _fUintptr(_a:stdgo.GoUIntptr):stdgo.GoUIntptr
```


[\(view code\)](<./Quick.hx#L665>)


## function \_fUintptrAlias


```haxe
function _fUintptrAlias(_a:stdgo.testing.quick.TestUintptrAlias):stdgo.testing.quick.TestUintptrAlias
```


[\(view code\)](<./Quick.hx#L668>)


## function \_functionAndType


```haxe
function _functionAndType(_f:stdgo.AnyInterface):{
	_2:Bool;
	_1:stdgo.reflect.Type_;
	_0:stdgo.reflect.Value;
}
```


[\(view code\)](<./Quick.hx#L511>)


## function \_myStructProperty


```haxe
function _myStructProperty(_in:stdgo.testing.quick.T_myStruct):Bool
```


[\(view code\)](<./Quick.hx#L724>)


## function \_randFloat32


```haxe
function _randFloat32(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoFloat32
```



randFloat32 generates a random float taking the full range of a float32.  

[\(view code\)](<./Quick.hx#L225>)


## function \_randFloat64


```haxe
function _randFloat64(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoFloat64
```



randFloat64 generates a random float taking the full range of a float64.  

[\(view code\)](<./Quick.hx#L235>)


## function \_randInt64


```haxe
function _randInt64(_rand:stdgo.Ref<stdgo.math.rand.Rand>):stdgo.GoInt64
```



randInt64 returns a random int64.  

[\(view code\)](<./Quick.hx#L245>)


## function \_reportError


```haxe
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L671>)


## function \_sizedValue


```haxe
function _sizedValue(_t:stdgo.reflect.Type_, _rand:stdgo.Ref<stdgo.math.rand.Rand>, _size:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}
```



sizedValue returns an arbitrary value of the given type. The size
hint is used for shrinking as a function of indirection level so
that recursive data structures will terminate.  

[\(view code\)](<./Quick.hx#L262>)


## function \_toInterfaces


```haxe
function _toInterfaces(_values:stdgo.Slice<stdgo.reflect.Value>):stdgo.Slice<stdgo.AnyInterface>
```


[\(view code\)](<./Quick.hx#L521>)


## function \_toString


```haxe
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString
```


[\(view code\)](<./Quick.hx#L528>)


## function check


```haxe
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error
```



Check looks for an input to f, any function that returns bool,
such that f returns false. It calls f repeatedly, with arbitrary
values for each argument. If f returns false on a given input,
Check returns that input as a \*CheckError.
For example:  

```
	func TestOddMultipleOfThree(t *testing.T) {
		f := func(x int) bool {
			y := OddMultipleOfThree(x)
			return y%2 == 1 && y%3 == 0
		}
		if err := quick.Check(f, nil); err != nil {
			t.Error(err)
		}
	}
```
[\(view code\)](<./Quick.hx#L413>)


## function checkEqual


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error
```



CheckEqual looks for an input on which f and g return different results.
It calls f and g repeatedly with arbitrary values for each argument.
If f and g return different answers, CheckEqual returns a \*CheckEqualError
describing the input and the outputs.  

[\(view code\)](<./Quick.hx#L450>)


## function testCheckEqual


```haxe
function testCheckEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L676>)


## function testCheckProperty


```haxe
function testCheckProperty(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L727>)


## function testEmptyStruct


```haxe
function testEmptyStruct(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L833>)


## function testFailure


```haxe
function testFailure(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L730>)


## function testInt64


```haxe
function testInt64(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L877>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L839>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Some serialization formats \(e.g. encoding/pem\) cannot distinguish
between a nil and an empty map or slice, so avoid generating the
zero value for these.  

[\(view code\)](<./Quick.hx#L867>)


## function testRecursive


```haxe
function testRecursive(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Recursive data structures didn't terminate.
Issues 8818 and 11148.  

[\(view code\)](<./Quick.hx#L826>)


## function value


```haxe
function value(_t:stdgo.reflect.Type_, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}
```



Value returns an arbitrary value of the given type.
If the type implements the Generator interface, that will be used.
Note: To create arbitrary values for structs, all the fields must be exported.  

[\(view code\)](<./Quick.hx#L253>)


# Classes


```haxe
import stdgo.testing.quick.*
```


## class A


```haxe
var b:stdgo.Ref<stdgo.testing.quick.B>
```


### A function new


```haxe
function new(?b:stdgo.Ref<stdgo.testing.quick.B>):Void
```


[\(view code\)](<./Quick.hx#L159>)


## class B


```haxe
var a:stdgo.Ref<stdgo.testing.quick.A>
```


### B function new


```haxe
function new(?a:stdgo.Ref<stdgo.testing.quick.A>):Void
```


[\(view code\)](<./Quick.hx#L174>)


## class CheckEqualError



A CheckEqualError is the result CheckEqual finding an error.  

```haxe
var checkError:stdgo.testing.quick.CheckError
```


```haxe
var out1:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var out2:stdgo.Slice<stdgo.AnyInterface>
```


### CheckEqualError function new


```haxe
function new(?checkError:stdgo.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Quick.hx#L109>)


### CheckEqualError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Quick.hx#L976>)


## class CheckError



A CheckError is the result of Check finding an error.  

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


[\(view code\)](<./Quick.hx#L90>)


### CheckError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Quick.hx#L958>)


## class Config



A Config structure contains options for running a test.  

```haxe
var maxCount:stdgo.GoInt
```



MaxCount sets the maximum number of iterations.
If zero, MaxCountScale is used.  

```haxe
var maxCountScale:stdgo.GoFloat64
```



MaxCountScale is a non\-negative scale factor applied to the
default maximum.
A count of zero implies the default, which is usually 100
but can be set by the \-quickchecks flag.  

```haxe
var rand:stdgo.Ref<stdgo.math.rand.Rand>
```



Rand specifies a source of random numbers.
If nil, a default pseudo\-random source will be used.  

### Config function new


```haxe
function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void):Void
```


[\(view code\)](<./Quick.hx#L71>)


### Config function values


```haxe
function values(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void
```



Values specifies a function to generate a slice of
arbitrary reflect.Values that are congruent with the
arguments to the function being tested.
If nil, the top\-level Value function is used to generate them.  

### Config function \_getMaxCount


```haxe
function _getMaxCount():stdgo.GoInt
```



getMaxCount returns the maximum number of iterations to run for a given
Config.  

[\(view code\)](<./Quick.hx#L920>)


### Config function \_getRand


```haxe
function _getRand():stdgo.Ref<stdgo.math.rand.Rand>
```



getRand returns the \*rand.Rand to use for a given Config.  

[\(view code\)](<./Quick.hx#L937>)


## class T\_testNonZeroSliceAndMap\_36\_\_\_localname\_\_\_Q


```haxe
var m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


```haxe
var s:stdgo.Slice<stdgo.GoInt>
```


### T\_testNonZeroSliceAndMap\_36\_\_\_localname\_\_\_Q function new


```haxe
function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Quick.hx#L853>)


## class T\_testRecursive\_35\_\_\_localname\_\_\_R


```haxe
var mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>
```


```haxe
var mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>
```


```haxe
var map_:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>
```


```haxe
var ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>
```


```haxe
var slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_35___localname___R>
```


```haxe
var sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>>
```


```haxe
var sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>
```


### T\_testRecursive\_35\_\_\_localname\_\_\_R function new


```haxe
function new(?ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_35___localname___R>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_35___localname___R>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_35___localname___R>>):Void
```


[\(view code\)](<./Quick.hx#L808>)


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


[\(view code\)](<./Quick.hx#L127>)


# Typedefs


```haxe
import stdgo.testing.quick.*
```


## typedef Generator


```haxe
typedef Generator = {
	public function generate(_rand:stdgo.Ref<stdgo.math.rand.Rand>, _size:stdgo.GoInt):stdgo.reflect.Value;	//  Generate returns a random instance of the type on which it is a method using the size as a size hint.
};
```



A Generator can generate random values of its own type.  

## typedef SetupError


```haxe
typedef SetupError = stdgo.GoString;
```



A SetupError is the result of an error in the way that check is being
used, independent of the functions being tested.  

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
typedef TestStructAlias = stdgo.testing.quick.TestStruct;
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


