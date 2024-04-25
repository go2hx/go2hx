package stdgo.testing.quick;
/**
    // Package quick implements utility functions to help with black box testing.
    //
    // The testing/quick package is frozen and is not accepting new features.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef Generator_static_extension = Dynamic;
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
/**
    // Value returns an arbitrary value of the given type.
    // If the type implements the Generator interface, that will be used.
    // Note: To create arbitrary values for structs, all the fields must be exported.
**/
inline function value(t:stdgo._internal.reflect.Reflect.Type_, rand:stdgo._internal.math.rand.Rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Reflect.Value, Bool> throw "not implemented";
/**
    // Check looks for an input to f, any function that returns bool,
    // such that f returns false. It calls f repeatedly, with arbitrary
    // values for each argument. If f returns false on a given input,
    // Check returns that input as a *CheckError.
    // For example:
    //
    //	func TestOddMultipleOfThree(t *testing.T) {
    //		f := func(x int) bool {
    //			y := OddMultipleOfThree(x)
    //			return y%2 == 1 && y%3 == 0
    //		}
    //		if err := quick.Check(f, nil); err != nil {
    //			t.Error(err)
    //		}
    //	}
**/
inline function check(f:stdgo.AnyInterface, config:Config):stdgo.Error throw "not implemented";
/**
    // CheckEqual looks for an input on which f and g return different results.
    // It calls f and g repeatedly with arbitrary values for each argument.
    // If f and g return different answers, CheckEqual returns a *CheckEqualError
    // describing the input and the outputs.
**/
inline function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:Config):stdgo.Error throw "not implemented";
inline function testCheckEqual(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCheckProperty(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFailure(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testRecursive_34___localname___R = Dynamic;
/**
    // Recursive data structures didn't terminate.
    // Issues 8818 and 11148.
**/
inline function testRecursive(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEmptyStruct(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMutuallyRecursive(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testNonZeroSliceAndMap_35___localname___Q = Dynamic;
/**
    // Some serialization formats (e.g. encoding/pem) cannot distinguish
    // between a nil and an empty map or slice, so avoid generating the
    // zero value for these.
**/
inline function testNonZeroSliceAndMap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInt64(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
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
