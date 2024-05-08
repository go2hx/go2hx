package stdgo.testing;
/**
    Package quick implements utility functions to help with black box testing.
    
    The testing/quick package is frozen and is not accepting new features.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract Generator_static_extension(stdgo._internal.testing.quick.Quick.Generator_static_extension) from stdgo._internal.testing.quick.Quick.Generator_static_extension to stdgo._internal.testing.quick.Quick.Generator_static_extension {

}
typedef Generator = stdgo._internal.testing.quick.Quick.Generator;
@:forward @:forward.new abstract Config(stdgo._internal.testing.quick.Quick.Config) from stdgo._internal.testing.quick.Quick.Config to stdgo._internal.testing.quick.Quick.Config {

}
@:forward @:forward.new abstract CheckError(stdgo._internal.testing.quick.Quick.CheckError) from stdgo._internal.testing.quick.Quick.CheckError to stdgo._internal.testing.quick.Quick.CheckError {

}
@:forward @:forward.new abstract CheckEqualError(stdgo._internal.testing.quick.Quick.CheckEqualError) from stdgo._internal.testing.quick.Quick.CheckEqualError to stdgo._internal.testing.quick.Quick.CheckEqualError {

}
@:forward @:forward.new abstract TestStruct(stdgo._internal.testing.quick.Quick.TestStruct) from stdgo._internal.testing.quick.Quick.TestStruct to stdgo._internal.testing.quick.Quick.TestStruct {

}
@:forward @:forward.new abstract T_myStruct(stdgo._internal.testing.quick.Quick.T_myStruct) from stdgo._internal.testing.quick.Quick.T_myStruct to stdgo._internal.testing.quick.Quick.T_myStruct {

}
@:forward @:forward.new abstract A(stdgo._internal.testing.quick.Quick.A) from stdgo._internal.testing.quick.Quick.A to stdgo._internal.testing.quick.Quick.A {

}
@:forward @:forward.new abstract B(stdgo._internal.testing.quick.Quick.B) from stdgo._internal.testing.quick.Quick.B to stdgo._internal.testing.quick.Quick.B {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.testing.quick.Quick.T__struct_0_asInterface) from stdgo._internal.testing.quick.Quick.T__struct_0_asInterface to stdgo._internal.testing.quick.Quick.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.testing.quick.Quick.T__struct_0_static_extension) from stdgo._internal.testing.quick.Quick.T__struct_0_static_extension to stdgo._internal.testing.quick.Quick.T__struct_0_static_extension {

}
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
    Value returns an arbitrary value of the given type.
    If the type implements the Generator interface, that will be used.
    Note: To create arbitrary values for structs, all the fields must be exported.
**/
function value(t:stdgo._internal.reflect.Reflect.Type_, rand:stdgo._internal.math.rand.Rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Reflect.Value, Bool> {
        return {
            final obj = stdgo._internal.testing.quick.Quick.value(t, rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Check looks for an input to f, any function that returns bool,
    such that f returns false. It calls f repeatedly, with arbitrary
    values for each argument. If f returns false on a given input,
    Check returns that input as a *CheckError.
    For example:
    
    	func TestOddMultipleOfThree(t *testing.T) {
    		f := func(x int) bool {
    			y := OddMultipleOfThree(x)
    			return y%2 == 1 && y%3 == 0
    		}
    		if err := quick.Check(f, nil); err != nil {
    			t.Error(err)
    		}
    	}
**/
function check(f:stdgo.AnyInterface, config:Config):stdgo.Error {
        return stdgo._internal.testing.quick.Quick.check(f, config);
    }
/**
    CheckEqual looks for an input on which f and g return different results.
    It calls f and g repeatedly with arbitrary values for each argument.
    If f and g return different answers, CheckEqual returns a *CheckEqualError
    describing the input and the outputs.
**/
function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:Config):stdgo.Error {
        return stdgo._internal.testing.quick.Quick.checkEqual(f, g, config);
    }
function testCheckEqual(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testCheckEqual(t);
    }
function testCheckProperty(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testCheckProperty(t);
    }
function testFailure(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testFailure(t);
    }
@:forward @:forward.new abstract T_testRecursive_35___localname___R(stdgo._internal.testing.quick.Quick.T_testRecursive_35___localname___R) from stdgo._internal.testing.quick.Quick.T_testRecursive_35___localname___R to stdgo._internal.testing.quick.Quick.T_testRecursive_35___localname___R {

}
/**
    Recursive data structures didn't terminate.
    Issues 8818 and 11148.
**/
function testRecursive(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testRecursive(t);
    }
function testEmptyStruct(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testEmptyStruct(t);
    }
function testMutuallyRecursive(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testMutuallyRecursive(t);
    }
@:forward @:forward.new abstract T_testNonZeroSliceAndMap_36___localname___Q(stdgo._internal.testing.quick.Quick.T_testNonZeroSliceAndMap_36___localname___Q) from stdgo._internal.testing.quick.Quick.T_testNonZeroSliceAndMap_36___localname___Q to stdgo._internal.testing.quick.Quick.T_testNonZeroSliceAndMap_36___localname___Q {

}
/**
    Some serialization formats (e.g. encoding/pem) cannot distinguish
    between a nil and an empty map or slice, so avoid generating the
    zero value for these.
**/
function testNonZeroSliceAndMap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testNonZeroSliceAndMap(t);
    }
function testInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.quick.Quick.testInt64(t);
    }
@:forward @:forward.new abstract Config_asInterface(stdgo._internal.testing.quick.Quick.Config_asInterface) from stdgo._internal.testing.quick.Quick.Config_asInterface to stdgo._internal.testing.quick.Quick.Config_asInterface {

}
@:forward @:forward.new abstract Config_static_extension(stdgo._internal.testing.quick.Quick.Config_static_extension) from stdgo._internal.testing.quick.Quick.Config_static_extension to stdgo._internal.testing.quick.Quick.Config_static_extension {

}
@:forward @:forward.new abstract CheckError_asInterface(stdgo._internal.testing.quick.Quick.CheckError_asInterface) from stdgo._internal.testing.quick.Quick.CheckError_asInterface to stdgo._internal.testing.quick.Quick.CheckError_asInterface {

}
@:forward @:forward.new abstract CheckError_static_extension(stdgo._internal.testing.quick.Quick.CheckError_static_extension) from stdgo._internal.testing.quick.Quick.CheckError_static_extension to stdgo._internal.testing.quick.Quick.CheckError_static_extension {

}
@:forward @:forward.new abstract CheckEqualError_asInterface(stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface) from stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface to stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface {

}
@:forward @:forward.new abstract CheckEqualError_static_extension(stdgo._internal.testing.quick.Quick.CheckEqualError_static_extension) from stdgo._internal.testing.quick.Quick.CheckEqualError_static_extension to stdgo._internal.testing.quick.Quick.CheckEqualError_static_extension {

}
@:forward @:forward.new abstract T_myStruct_asInterface(stdgo._internal.testing.quick.Quick.T_myStruct_asInterface) from stdgo._internal.testing.quick.Quick.T_myStruct_asInterface to stdgo._internal.testing.quick.Quick.T_myStruct_asInterface {

}
@:forward @:forward.new abstract T_myStruct_static_extension(stdgo._internal.testing.quick.Quick.T_myStruct_static_extension) from stdgo._internal.testing.quick.Quick.T_myStruct_static_extension to stdgo._internal.testing.quick.Quick.T_myStruct_static_extension {

}
@:forward @:forward.new abstract SetupError_asInterface(stdgo._internal.testing.quick.Quick.SetupError_asInterface) from stdgo._internal.testing.quick.Quick.SetupError_asInterface to stdgo._internal.testing.quick.Quick.SetupError_asInterface {

}
@:forward @:forward.new abstract SetupError_static_extension(stdgo._internal.testing.quick.Quick.SetupError_static_extension) from stdgo._internal.testing.quick.Quick.SetupError_static_extension to stdgo._internal.testing.quick.Quick.SetupError_static_extension {

}
