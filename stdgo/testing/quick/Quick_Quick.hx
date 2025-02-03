package stdgo.testing.quick;
/**
    Package quick implements utility functions to help with black box testing.
    
    The testing/quick package is frozen and is not accepting new features.
**/
class Quick {
    /**
        Value returns an arbitrary value of the given type.
        If the type implements the Generator interface, that will be used.
        Note: To create arbitrary values for structs, all the fields must be exported.
    **/
    static public inline function value(_t:stdgo._internal.reflect.Reflect_Type_.Type_, _rand:stdgo._internal.math.rand.Rand_Rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Reflect_Value.Value, Bool> {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return {
            final obj = stdgo._internal.testing.quick.Quick_value.value(_t, _rand);
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
    static public inline function check(_f:stdgo.AnyInterface, _config:Config):stdgo.Error {
        final _f = (_f : stdgo.AnyInterface);
        final _config = (_config : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>);
        return stdgo._internal.testing.quick.Quick_check.check(_f, _config);
    }
    /**
        CheckEqual looks for an input on which f and g return different results.
        It calls f and g repeatedly with arbitrary values for each argument.
        If f and g return different answers, CheckEqual returns a *CheckEqualError
        describing the input and the outputs.
    **/
    static public inline function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:Config):stdgo.Error {
        final _f = (_f : stdgo.AnyInterface);
        final _g = (_g : stdgo.AnyInterface);
        final _config = (_config : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>);
        return stdgo._internal.testing.quick.Quick_checkEqual.checkEqual(_f, _g, _config);
    }
    static public inline function testCheckEqual(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testCheckEqual.testCheckEqual(_t);
    }
    static public inline function testCheckProperty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testCheckProperty.testCheckProperty(_t);
    }
    static public inline function testFailure(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testFailure.testFailure(_t);
    }
    /**
        Recursive data structures didn't terminate.
        Issues 8818 and 11148.
    **/
    static public inline function testRecursive(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testRecursive.testRecursive(_t);
    }
    static public inline function testEmptyStruct(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testEmptyStruct.testEmptyStruct(_t);
    }
    static public inline function testMutuallyRecursive(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testMutuallyRecursive.testMutuallyRecursive(_t);
    }
    /**
        Some serialization formats (e.g. encoding/pem) cannot distinguish
        between a nil and an empty map or slice, so avoid generating the
        zero value for these.
    **/
    static public inline function testNonZeroSliceAndMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testNonZeroSliceAndMap.testNonZeroSliceAndMap(_t);
    }
    static public inline function testInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.quick.Quick_testInt64.testInt64(_t);
    }
}
