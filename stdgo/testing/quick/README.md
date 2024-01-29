# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Value>, _f:stdgo._internal.reflect.Type_, _config:stdgo.Ref<stdgo.testing.quick.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#function-_arbitraryvalues>)

- [`function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):Void`](<#function-_farray>)

- [`function _fArrayAlias(_a:stdgo.testing.quick.TestArrayAlias):Void`](<#function-_farrayalias>)

- [`function _fBool(_a:Bool):Void`](<#function-_fbool>)

- [`function _fBoolAlias(_a:stdgo.testing.quick.TestBoolAlias):Void`](<#function-_fboolalias>)

- [`function _fComplex128(_a:stdgo.GoComplex128):Void`](<#function-_fcomplex128>)

- [`function _fComplex128Alias(_a:stdgo.testing.quick.TestComplex128Alias):Void`](<#function-_fcomplex128alias>)

- [`function _fComplex64(_a:stdgo.GoComplex64):Void`](<#function-_fcomplex64>)

- [`function _fComplex64Alias(_a:stdgo.testing.quick.TestComplex64Alias):Void`](<#function-_fcomplex64alias>)

- [`function _fFloat32(_a:stdgo.GoFloat32):Void`](<#function-_ffloat32>)

- [`function _fFloat32Alias(_a:stdgo.testing.quick.TestFloat32Alias):Void`](<#function-_ffloat32alias>)

- [`function _fFloat64(_a:stdgo.GoFloat64):Void`](<#function-_ffloat64>)

- [`function _fFloat64Alias(_a:stdgo.testing.quick.TestFloat64Alias):Void`](<#function-_ffloat64alias>)

- [`function _fInt(_a:stdgo.GoInt):Void`](<#function-_fint>)

- [`function _fInt16(_a:stdgo.GoInt16):Void`](<#function-_fint16>)

- [`function _fInt16Alias(_a:stdgo.testing.quick.TestInt16Alias):Void`](<#function-_fint16alias>)

- [`function _fInt32(_a:stdgo.GoInt32):Void`](<#function-_fint32>)

- [`function _fInt32Alias(_a:stdgo.testing.quick.TestInt32Alias):Void`](<#function-_fint32alias>)

- [`function _fInt64(_a:stdgo.GoInt64):Void`](<#function-_fint64>)

- [`function _fInt64Alias(_a:stdgo.testing.quick.TestInt64Alias):Void`](<#function-_fint64alias>)

- [`function _fInt8(_a:stdgo.GoInt8):Void`](<#function-_fint8>)

- [`function _fInt8Alias(_a:stdgo.testing.quick.TestInt8Alias):Void`](<#function-_fint8alias>)

- [`function _fIntAlias(_a:stdgo.testing.quick.TestIntAlias):Void`](<#function-_fintalias>)

- [`function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Void`](<#function-_fmap>)

- [`function _fMapAlias(_a:stdgo.testing.quick.TestMapAlias):Void`](<#function-_fmapalias>)

- [`function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_fptr>)

- [`function _fPtrAlias(_a:stdgo.testing.quick.TestPtrAlias):Void`](<#function-_fptralias>)

- [`function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_fslice>)

- [`function _fSliceAlias(_a:stdgo.testing.quick.TestSliceAlias):Void`](<#function-_fslicealias>)

- [`function _fString(_a:stdgo.GoString):Void`](<#function-_fstring>)

- [`function _fStringAlias(_a:stdgo.testing.quick.TestStringAlias):Void`](<#function-_fstringalias>)

- [`function _fStruct(_a:stdgo.testing.quick.TestStruct):Void`](<#function-_fstruct>)

- [`function _fStructAlias(_a:stdgo.testing.quick.TestStructAlias):Void`](<#function-_fstructalias>)

- [`function _fUint(_a:stdgo.GoUInt):Void`](<#function-_fuint>)

- [`function _fUint16(_a:stdgo.GoUInt16):Void`](<#function-_fuint16>)

- [`function _fUint16Alias(_a:stdgo.testing.quick.TestUint16Alias):Void`](<#function-_fuint16alias>)

- [`function _fUint32(_a:stdgo.GoUInt32):Void`](<#function-_fuint32>)

- [`function _fUint32Alias(_a:stdgo.testing.quick.TestUint32Alias):Void`](<#function-_fuint32alias>)

- [`function _fUint64(_a:stdgo.GoUInt64):Void`](<#function-_fuint64>)

- [`function _fUint64Alias(_a:stdgo.testing.quick.TestUint64Alias):Void`](<#function-_fuint64alias>)

- [`function _fUint8(_a:stdgo.GoUInt8):Void`](<#function-_fuint8>)

- [`function _fUint8Alias(_a:stdgo.testing.quick.TestUint8Alias):Void`](<#function-_fuint8alias>)

- [`function _fUintAlias(_a:stdgo.testing.quick.TestUintAlias):Void`](<#function-_fuintalias>)

- [`function _fUintptr(_a:stdgo.GoUIntptr):Void`](<#function-_fuintptr>)

- [`function _fUintptrAlias(_a:stdgo.testing.quick.TestUintptrAlias):Void`](<#function-_fuintptralias>)

- [`function _functionAndType(_f:stdgo.AnyInterface):Void`](<#function-_functionandtype>)

- [`function _myStructProperty(_in:stdgo.testing.quick.T_myStruct):Void`](<#function-_mystructproperty>)

- [`function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#function-_randfloat32>)

- [`function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#function-_randfloat64>)

- [`function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#function-_randint64>)

- [`function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_reporterror>)

- [`function _sizedValue(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, _size:stdgo.GoInt):Void`](<#function-_sizedvalue>)

- [`function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Value>):Void`](<#function-_tointerfaces>)

- [`function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):Void`](<#function-_tostring>)

- [`function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):Void`](<#function-check>)

- [`function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):Void`](<#function-checkequal>)

- [`function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcheckequal>)

- [`function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcheckproperty>)

- [`function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testemptystruct>)

- [`function testFailure(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfailure>)

- [`function testInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testint64>)

- [`function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmutuallyrecursive>)

- [`function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnonzerosliceandmap>)

- [`function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrecursive>)

- [`function value(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void`](<#function-value>)

- [typedef A](<#typedef-a>)

- [typedef B](<#typedef-b>)

- [typedef CheckEqualError](<#typedef-checkequalerror>)

- [typedef CheckEqualError\_asInterface](<#typedef-checkequalerror_asinterface>)

- [typedef CheckEqualError\_static\_extension](<#typedef-checkequalerror_static_extension>)

- [typedef CheckError](<#typedef-checkerror>)

- [typedef CheckError\_asInterface](<#typedef-checkerror_asinterface>)

- [typedef CheckError\_static\_extension](<#typedef-checkerror_static_extension>)

- [typedef Config](<#typedef-config>)

- [typedef Config\_asInterface](<#typedef-config_asinterface>)

- [typedef Config\_static\_extension](<#typedef-config_static_extension>)

- [typedef Generator](<#typedef-generator>)

- [typedef SetupError](<#typedef-setuperror>)

- [typedef SetupError\_asInterface](<#typedef-setuperror_asinterface>)

- [typedef SetupError\_static\_extension](<#typedef-setuperror_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_myStruct](<#typedef-t_mystruct>)

- [typedef T\_myStruct\_asInterface](<#typedef-t_mystruct_asinterface>)

- [typedef T\_myStruct\_static\_extension](<#typedef-t_mystruct_static_extension>)

- [typedef T\_testNonZeroSliceAndMap\_35\_\_\_localname\_\_\_Q](<#typedef-t_testnonzerosliceandmap_35localnameq>)

- [typedef T\_testRecursive\_34\_\_\_localname\_\_\_R](<#typedef-t_testrecursive_34localnamer>)

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

- [typedef TestStruct](<#typedef-teststruct>)

- [typedef TestStructAlias](<#typedef-teststructalias>)

- [typedef TestUint16Alias](<#typedef-testuint16alias>)

- [typedef TestUint32Alias](<#typedef-testuint32alias>)

- [typedef TestUint64Alias](<#typedef-testuint64alias>)

- [typedef TestUint8Alias](<#typedef-testuint8alias>)

- [typedef TestUintAlias](<#typedef-testuintalias>)

- [typedef TestUintptrAlias](<#typedef-testuintptralias>)

# Variables


```haxe
import stdgo.testing.quick.Quick
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _complexSize:Dynamic
```


```haxe
var _defaultConfig:Dynamic
```


```haxe
var _defaultMaxCount:Dynamic
```


# Functions


```haxe
import stdgo.testing.quick.Quick
```


## function \_arbitraryValues


```haxe
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Value>, _f:stdgo._internal.reflect.Type_, _config:stdgo.Ref<stdgo.testing.quick.Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


[\(view code\)](<./Quick.hx#L47>)


## function \_fArray


```haxe
function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):Void
```


[\(view code\)](<./Quick.hx#L51>)


## function \_fArrayAlias


```haxe
function _fArrayAlias(_a:stdgo.testing.quick.TestArrayAlias):Void
```


[\(view code\)](<./Quick.hx#L52>)


## function \_fBool


```haxe
function _fBool(_a:Bool):Void
```


[\(view code\)](<./Quick.hx#L53>)


## function \_fBoolAlias


```haxe
function _fBoolAlias(_a:stdgo.testing.quick.TestBoolAlias):Void
```


[\(view code\)](<./Quick.hx#L54>)


## function \_fComplex128


```haxe
function _fComplex128(_a:stdgo.GoComplex128):Void
```


[\(view code\)](<./Quick.hx#L61>)


## function \_fComplex128Alias


```haxe
function _fComplex128Alias(_a:stdgo.testing.quick.TestComplex128Alias):Void
```


[\(view code\)](<./Quick.hx#L62>)


## function \_fComplex64


```haxe
function _fComplex64(_a:stdgo.GoComplex64):Void
```


[\(view code\)](<./Quick.hx#L59>)


## function \_fComplex64Alias


```haxe
function _fComplex64Alias(_a:stdgo.testing.quick.TestComplex64Alias):Void
```


[\(view code\)](<./Quick.hx#L60>)


## function \_fFloat32


```haxe
function _fFloat32(_a:stdgo.GoFloat32):Void
```


[\(view code\)](<./Quick.hx#L55>)


## function \_fFloat32Alias


```haxe
function _fFloat32Alias(_a:stdgo.testing.quick.TestFloat32Alias):Void
```


[\(view code\)](<./Quick.hx#L56>)


## function \_fFloat64


```haxe
function _fFloat64(_a:stdgo.GoFloat64):Void
```


[\(view code\)](<./Quick.hx#L57>)


## function \_fFloat64Alias


```haxe
function _fFloat64Alias(_a:stdgo.testing.quick.TestFloat64Alias):Void
```


[\(view code\)](<./Quick.hx#L58>)


## function \_fInt


```haxe
function _fInt(_a:stdgo.GoInt):Void
```


[\(view code\)](<./Quick.hx#L71>)


## function \_fInt16


```haxe
function _fInt16(_a:stdgo.GoInt16):Void
```


[\(view code\)](<./Quick.hx#L63>)


## function \_fInt16Alias


```haxe
function _fInt16Alias(_a:stdgo.testing.quick.TestInt16Alias):Void
```


[\(view code\)](<./Quick.hx#L64>)


## function \_fInt32


```haxe
function _fInt32(_a:stdgo.GoInt32):Void
```


[\(view code\)](<./Quick.hx#L65>)


## function \_fInt32Alias


```haxe
function _fInt32Alias(_a:stdgo.testing.quick.TestInt32Alias):Void
```


[\(view code\)](<./Quick.hx#L66>)


## function \_fInt64


```haxe
function _fInt64(_a:stdgo.GoInt64):Void
```


[\(view code\)](<./Quick.hx#L67>)


## function \_fInt64Alias


```haxe
function _fInt64Alias(_a:stdgo.testing.quick.TestInt64Alias):Void
```


[\(view code\)](<./Quick.hx#L68>)


## function \_fInt8


```haxe
function _fInt8(_a:stdgo.GoInt8):Void
```


[\(view code\)](<./Quick.hx#L69>)


## function \_fInt8Alias


```haxe
function _fInt8Alias(_a:stdgo.testing.quick.TestInt8Alias):Void
```


[\(view code\)](<./Quick.hx#L70>)


## function \_fIntAlias


```haxe
function _fIntAlias(_a:stdgo.testing.quick.TestIntAlias):Void
```


[\(view code\)](<./Quick.hx#L72>)


## function \_fMap


```haxe
function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Void
```


[\(view code\)](<./Quick.hx#L73>)


## function \_fMapAlias


```haxe
function _fMapAlias(_a:stdgo.testing.quick.TestMapAlias):Void
```


[\(view code\)](<./Quick.hx#L74>)


## function \_fPtr


```haxe
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Quick.hx#L75>)


## function \_fPtrAlias


```haxe
function _fPtrAlias(_a:stdgo.testing.quick.TestPtrAlias):Void
```


[\(view code\)](<./Quick.hx#L76>)


## function \_fSlice


```haxe
function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Quick.hx#L77>)


## function \_fSliceAlias


```haxe
function _fSliceAlias(_a:stdgo.testing.quick.TestSliceAlias):Void
```


[\(view code\)](<./Quick.hx#L78>)


## function \_fString


```haxe
function _fString(_a:stdgo.GoString):Void
```


[\(view code\)](<./Quick.hx#L79>)


## function \_fStringAlias


```haxe
function _fStringAlias(_a:stdgo.testing.quick.TestStringAlias):Void
```


[\(view code\)](<./Quick.hx#L80>)


## function \_fStruct


```haxe
function _fStruct(_a:stdgo.testing.quick.TestStruct):Void
```


[\(view code\)](<./Quick.hx#L81>)


## function \_fStructAlias


```haxe
function _fStructAlias(_a:stdgo.testing.quick.TestStructAlias):Void
```


[\(view code\)](<./Quick.hx#L82>)


## function \_fUint


```haxe
function _fUint(_a:stdgo.GoUInt):Void
```


[\(view code\)](<./Quick.hx#L91>)


## function \_fUint16


```haxe
function _fUint16(_a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Quick.hx#L83>)


## function \_fUint16Alias


```haxe
function _fUint16Alias(_a:stdgo.testing.quick.TestUint16Alias):Void
```


[\(view code\)](<./Quick.hx#L84>)


## function \_fUint32


```haxe
function _fUint32(_a:stdgo.GoUInt32):Void
```


[\(view code\)](<./Quick.hx#L85>)


## function \_fUint32Alias


```haxe
function _fUint32Alias(_a:stdgo.testing.quick.TestUint32Alias):Void
```


[\(view code\)](<./Quick.hx#L86>)


## function \_fUint64


```haxe
function _fUint64(_a:stdgo.GoUInt64):Void
```


[\(view code\)](<./Quick.hx#L87>)


## function \_fUint64Alias


```haxe
function _fUint64Alias(_a:stdgo.testing.quick.TestUint64Alias):Void
```


[\(view code\)](<./Quick.hx#L88>)


## function \_fUint8


```haxe
function _fUint8(_a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Quick.hx#L89>)


## function \_fUint8Alias


```haxe
function _fUint8Alias(_a:stdgo.testing.quick.TestUint8Alias):Void
```


[\(view code\)](<./Quick.hx#L90>)


## function \_fUintAlias


```haxe
function _fUintAlias(_a:stdgo.testing.quick.TestUintAlias):Void
```


[\(view code\)](<./Quick.hx#L92>)


## function \_fUintptr


```haxe
function _fUintptr(_a:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Quick.hx#L93>)


## function \_fUintptrAlias


```haxe
function _fUintptrAlias(_a:stdgo.testing.quick.TestUintptrAlias):Void
```


[\(view code\)](<./Quick.hx#L94>)


## function \_functionAndType


```haxe
function _functionAndType(_f:stdgo.AnyInterface):Void
```


[\(view code\)](<./Quick.hx#L48>)


## function \_myStructProperty


```haxe
function _myStructProperty(_in:stdgo.testing.quick.T_myStruct):Void
```


[\(view code\)](<./Quick.hx#L97>)


## function \_randFloat32


```haxe
function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


[\(view code\)](<./Quick.hx#L40>)


## function \_randFloat64


```haxe
function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


[\(view code\)](<./Quick.hx#L41>)


## function \_randInt64


```haxe
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


[\(view code\)](<./Quick.hx#L42>)


## function \_reportError


```haxe
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L95>)


## function \_sizedValue


```haxe
function _sizedValue(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>, _size:stdgo.GoInt):Void
```


[\(view code\)](<./Quick.hx#L44>)


## function \_toInterfaces


```haxe
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Value>):Void
```


[\(view code\)](<./Quick.hx#L49>)


## function \_toString


```haxe
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Quick.hx#L50>)


## function check


```haxe
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):Void
```


[\(view code\)](<./Quick.hx#L45>)


## function checkEqual


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):Void
```


[\(view code\)](<./Quick.hx#L46>)


## function testCheckEqual


```haxe
function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L96>)


## function testCheckProperty


```haxe
function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L98>)


## function testEmptyStruct


```haxe
function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L102>)


## function testFailure


```haxe
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L99>)


## function testInt64


```haxe
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L106>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L103>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L105>)


## function testRecursive


```haxe
function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Quick.hx#L101>)


## function value


```haxe
function value(_t:stdgo._internal.reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand>):Void
```


[\(view code\)](<./Quick.hx#L43>)


# Typedefs


```haxe
import stdgo.testing.quick.*
```


## typedef A


```haxe
typedef A = Dynamic;
```


## typedef B


```haxe
typedef B = Dynamic;
```


## typedef CheckEqualError


```haxe
typedef CheckEqualError = Dynamic;
```


## typedef CheckEqualError\_asInterface


```haxe
typedef CheckEqualError_asInterface = Dynamic;
```


## typedef CheckEqualError\_static\_extension


```haxe
typedef CheckEqualError_static_extension = Dynamic;
```


## typedef CheckError


```haxe
typedef CheckError = Dynamic;
```


## typedef CheckError\_asInterface


```haxe
typedef CheckError_asInterface = Dynamic;
```


## typedef CheckError\_static\_extension


```haxe
typedef CheckError_static_extension = Dynamic;
```


## typedef Config


```haxe
typedef Config = Dynamic;
```


## typedef Config\_asInterface


```haxe
typedef Config_asInterface = Dynamic;
```


## typedef Config\_static\_extension


```haxe
typedef Config_static_extension = Dynamic;
```


## typedef Generator


```haxe
typedef Generator = stdgo._internal.testing.quick.Generator;
```


## typedef SetupError


```haxe
typedef SetupError = stdgo._internal.testing.quick.SetupError;
```


## typedef SetupError\_asInterface


```haxe
typedef SetupError_asInterface = Dynamic;
```


## typedef SetupError\_static\_extension


```haxe
typedef SetupError_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.testing.quick.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_myStruct


```haxe
typedef T_myStruct = Dynamic;
```


## typedef T\_myStruct\_asInterface


```haxe
typedef T_myStruct_asInterface = Dynamic;
```


## typedef T\_myStruct\_static\_extension


```haxe
typedef T_myStruct_static_extension = Dynamic;
```


## typedef T\_testNonZeroSliceAndMap\_35\_\_\_localname\_\_\_Q


```haxe
typedef T_testNonZeroSliceAndMap_35___localname___Q = Dynamic;
```


## typedef T\_testRecursive\_34\_\_\_localname\_\_\_R


```haxe
typedef T_testRecursive_34___localname___R = Dynamic;
```


## typedef TestArrayAlias


```haxe
typedef TestArrayAlias = stdgo._internal.testing.quick.TestArrayAlias;
```


## typedef TestBoolAlias


```haxe
typedef TestBoolAlias = stdgo._internal.testing.quick.TestBoolAlias;
```


## typedef TestComplex128Alias


```haxe
typedef TestComplex128Alias = stdgo._internal.testing.quick.TestComplex128Alias;
```


## typedef TestComplex64Alias


```haxe
typedef TestComplex64Alias = stdgo._internal.testing.quick.TestComplex64Alias;
```


## typedef TestFloat32Alias


```haxe
typedef TestFloat32Alias = stdgo._internal.testing.quick.TestFloat32Alias;
```


## typedef TestFloat64Alias


```haxe
typedef TestFloat64Alias = stdgo._internal.testing.quick.TestFloat64Alias;
```


## typedef TestInt16Alias


```haxe
typedef TestInt16Alias = stdgo._internal.testing.quick.TestInt16Alias;
```


## typedef TestInt32Alias


```haxe
typedef TestInt32Alias = stdgo._internal.testing.quick.TestInt32Alias;
```


## typedef TestInt64Alias


```haxe
typedef TestInt64Alias = stdgo._internal.testing.quick.TestInt64Alias;
```


## typedef TestInt8Alias


```haxe
typedef TestInt8Alias = stdgo._internal.testing.quick.TestInt8Alias;
```


## typedef TestIntAlias


```haxe
typedef TestIntAlias = stdgo._internal.testing.quick.TestIntAlias;
```


## typedef TestMapAlias


```haxe
typedef TestMapAlias = stdgo._internal.testing.quick.TestMapAlias;
```


## typedef TestPtrAlias


```haxe
typedef TestPtrAlias = stdgo._internal.testing.quick.TestPtrAlias;
```


## typedef TestSliceAlias


```haxe
typedef TestSliceAlias = stdgo._internal.testing.quick.TestSliceAlias;
```


## typedef TestStringAlias


```haxe
typedef TestStringAlias = stdgo._internal.testing.quick.TestStringAlias;
```


## typedef TestStruct


```haxe
typedef TestStruct = Dynamic;
```


## typedef TestStructAlias


```haxe
typedef TestStructAlias = stdgo._internal.testing.quick.TestStructAlias;
```


## typedef TestUint16Alias


```haxe
typedef TestUint16Alias = stdgo._internal.testing.quick.TestUint16Alias;
```


## typedef TestUint32Alias


```haxe
typedef TestUint32Alias = stdgo._internal.testing.quick.TestUint32Alias;
```


## typedef TestUint64Alias


```haxe
typedef TestUint64Alias = stdgo._internal.testing.quick.TestUint64Alias;
```


## typedef TestUint8Alias


```haxe
typedef TestUint8Alias = stdgo._internal.testing.quick.TestUint8Alias;
```


## typedef TestUintAlias


```haxe
typedef TestUintAlias = stdgo._internal.testing.quick.TestUintAlias;
```


## typedef TestUintptrAlias


```haxe
typedef TestUintptrAlias = stdgo._internal.testing.quick.TestUintptrAlias;
```


