package stdgo.testing.quick;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _defaultMaxCount : Dynamic;
@:invalid var _complexSize : Dynamic;
@:invalid var _defaultConfig : Dynamic;
typedef Generator = stdgo._internal.testing.quick.Quick.Generator;
@:invalid typedef Config = Dynamic;
@:invalid typedef CheckError = Dynamic;
@:invalid typedef CheckEqualError = Dynamic;
@:invalid typedef TestStruct = Dynamic;
@:invalid typedef T_myStruct = Dynamic;
@:invalid typedef A = Dynamic;
@:invalid typedef B = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.testing.quick.Quick.T__struct_0;
typedef SetupError = stdgo._internal.testing.quick.Quick.SetupError;
typedef TestArrayAlias = stdgo._internal.testing.quick.Quick.TestArrayAlias;
typedef TestBoolAlias = stdgo._internal.testing.quick.Quick.TestBoolAlias;
typedef TestFloat32Alias = stdgo._internal.testing.quick.Quick.TestFloat32Alias;
typedef TestFloat64Alias = stdgo._internal.testing.quick.Quick.TestFloat64Alias;
typedef TestComplex64Alias = stdgo._internal.testing.quick.Quick.TestComplex64Alias;
typedef TestComplex128Alias = stdgo._internal.testing.quick.Quick.TestComplex128Alias;
typedef TestInt16Alias = stdgo._internal.testing.quick.Quick.TestInt16Alias;
typedef TestInt32Alias = stdgo._internal.testing.quick.Quick.TestInt32Alias;
typedef TestInt64Alias = stdgo._internal.testing.quick.Quick.TestInt64Alias;
typedef TestInt8Alias = stdgo._internal.testing.quick.Quick.TestInt8Alias;
typedef TestIntAlias = stdgo._internal.testing.quick.Quick.TestIntAlias;
typedef TestMapAlias = stdgo._internal.testing.quick.Quick.TestMapAlias;
typedef TestPtrAlias = stdgo._internal.testing.quick.Quick.TestPtrAlias;
typedef TestSliceAlias = stdgo._internal.testing.quick.Quick.TestSliceAlias;
typedef TestStringAlias = stdgo._internal.testing.quick.Quick.TestStringAlias;
typedef TestStructAlias = stdgo._internal.testing.quick.Quick.TestStructAlias;
typedef TestUint16Alias = stdgo._internal.testing.quick.Quick.TestUint16Alias;
typedef TestUint32Alias = stdgo._internal.testing.quick.Quick.TestUint32Alias;
typedef TestUint64Alias = stdgo._internal.testing.quick.Quick.TestUint64Alias;
typedef TestUint8Alias = stdgo._internal.testing.quick.Quick.TestUint8Alias;
typedef TestUintAlias = stdgo._internal.testing.quick.Quick.TestUintAlias;
typedef TestUintptrAlias = stdgo._internal.testing.quick.Quick.TestUintptrAlias;
function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):Void {}
function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):Void {}
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):Void {}
function value(_t:stdgo._internal.reflect.Reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):Void {}
function _sizedValue(_t:stdgo._internal.reflect.Reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):Void {}
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<Config>):Void {}
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<Config>):Void {}
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>, _f:stdgo._internal.reflect.Reflect.Type_, _config:stdgo.Ref<Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):Void {}
function _functionAndType(_f:stdgo.AnyInterface):Void {}
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>):Void {}
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):Void {}
function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):Void {}
function _fArrayAlias(_a:TestArrayAlias):Void {}
function _fBool(_a:Bool):Void {}
function _fBoolAlias(_a:TestBoolAlias):Void {}
function _fFloat32(_a:stdgo.GoFloat32):Void {}
function _fFloat32Alias(_a:TestFloat32Alias):Void {}
function _fFloat64(_a:stdgo.GoFloat64):Void {}
function _fFloat64Alias(_a:TestFloat64Alias):Void {}
function _fComplex64(_a:stdgo.GoComplex64):Void {}
function _fComplex64Alias(_a:TestComplex64Alias):Void {}
function _fComplex128(_a:stdgo.GoComplex128):Void {}
function _fComplex128Alias(_a:TestComplex128Alias):Void {}
function _fInt16(_a:stdgo.GoInt16):Void {}
function _fInt16Alias(_a:TestInt16Alias):Void {}
function _fInt32(_a:stdgo.GoInt32):Void {}
function _fInt32Alias(_a:TestInt32Alias):Void {}
function _fInt64(_a:stdgo.GoInt64):Void {}
function _fInt64Alias(_a:TestInt64Alias):Void {}
function _fInt8(_a:stdgo.GoInt8):Void {}
function _fInt8Alias(_a:TestInt8Alias):Void {}
function _fInt(_a:stdgo.GoInt):Void {}
function _fIntAlias(_a:TestIntAlias):Void {}
function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):Void {}
function _fMapAlias(_a:TestMapAlias):Void {}
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):Void {}
function _fPtrAlias(_a:TestPtrAlias):Void {}
function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):Void {}
function _fSliceAlias(_a:TestSliceAlias):Void {}
function _fString(_a:stdgo.GoString):Void {}
function _fStringAlias(_a:TestStringAlias):Void {}
function _fStruct(_a:TestStruct):Void {}
function _fStructAlias(_a:TestStructAlias):Void {}
function _fUint16(_a:stdgo.GoUInt16):Void {}
function _fUint16Alias(_a:TestUint16Alias):Void {}
function _fUint32(_a:stdgo.GoUInt32):Void {}
function _fUint32Alias(_a:TestUint32Alias):Void {}
function _fUint64(_a:stdgo.GoUInt64):Void {}
function _fUint64Alias(_a:TestUint64Alias):Void {}
function _fUint8(_a:stdgo.GoUInt8):Void {}
function _fUint8Alias(_a:TestUint8Alias):Void {}
function _fUint(_a:stdgo.GoUInt):Void {}
function _fUintAlias(_a:TestUintAlias):Void {}
function _fUintptr(_a:stdgo.GoUIntptr):Void {}
function _fUintptrAlias(_a:TestUintptrAlias):Void {}
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _myStructProperty(_in:T_myStruct):Void {}
function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testRecursive_35___localname___R = Dynamic;
function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testNonZeroSliceAndMap_36___localname___Q = Dynamic;
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef Config_asInterface = Dynamic;
@:invalid typedef Config_static_extension = Dynamic;
@:invalid typedef CheckError_asInterface = Dynamic;
@:invalid typedef CheckError_static_extension = Dynamic;
@:invalid typedef CheckEqualError_asInterface = Dynamic;
@:invalid typedef CheckEqualError_static_extension = Dynamic;
@:invalid typedef T_myStruct_asInterface = Dynamic;
@:invalid typedef T_myStruct_static_extension = Dynamic;
@:invalid typedef SetupError_asInterface = Dynamic;
@:invalid typedef SetupError_static_extension = Dynamic;
