package stdgo.testing.quick;
typedef Generator = stdgo._internal.testing.quick.Quick_generator.Generator;
typedef Config = stdgo._internal.testing.quick.Quick_config.Config;
typedef CheckError = stdgo._internal.testing.quick.Quick_checkerror.CheckError;
typedef CheckEqualError = stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError;
typedef TestStruct = stdgo._internal.testing.quick.Quick_teststruct.TestStruct;
typedef A = stdgo._internal.testing.quick.Quick_a.A;
typedef B = stdgo._internal.testing.quick.Quick_b.B;
typedef SetupError = stdgo._internal.testing.quick.Quick_setuperror.SetupError;
typedef TestArrayAlias = stdgo._internal.testing.quick.Quick_testarrayalias.TestArrayAlias;
typedef TestBoolAlias = stdgo._internal.testing.quick.Quick_testboolalias.TestBoolAlias;
typedef TestFloat32Alias = stdgo._internal.testing.quick.Quick_testfloat32alias.TestFloat32Alias;
typedef TestFloat64Alias = stdgo._internal.testing.quick.Quick_testfloat64alias.TestFloat64Alias;
typedef TestComplex64Alias = stdgo._internal.testing.quick.Quick_testcomplex64alias.TestComplex64Alias;
typedef TestComplex128Alias = stdgo._internal.testing.quick.Quick_testcomplex128alias.TestComplex128Alias;
typedef TestInt16Alias = stdgo._internal.testing.quick.Quick_testint16alias.TestInt16Alias;
typedef TestInt32Alias = stdgo._internal.testing.quick.Quick_testint32alias.TestInt32Alias;
typedef TestInt64Alias = stdgo._internal.testing.quick.Quick_testint64alias.TestInt64Alias;
typedef TestInt8Alias = stdgo._internal.testing.quick.Quick_testint8alias.TestInt8Alias;
typedef TestIntAlias = stdgo._internal.testing.quick.Quick_testintalias.TestIntAlias;
typedef TestMapAlias = stdgo._internal.testing.quick.Quick_testmapalias.TestMapAlias;
typedef TestPtrAlias = stdgo._internal.testing.quick.Quick_testptralias.TestPtrAlias;
typedef TestSliceAlias = stdgo._internal.testing.quick.Quick_testslicealias.TestSliceAlias;
typedef TestStringAlias = stdgo._internal.testing.quick.Quick_teststringalias.TestStringAlias;
typedef TestStructAlias = stdgo._internal.testing.quick.Quick_teststructalias.TestStructAlias;
typedef TestUint16Alias = stdgo._internal.testing.quick.Quick_testuint16alias.TestUint16Alias;
typedef TestUint32Alias = stdgo._internal.testing.quick.Quick_testuint32alias.TestUint32Alias;
typedef TestUint64Alias = stdgo._internal.testing.quick.Quick_testuint64alias.TestUint64Alias;
typedef TestUint8Alias = stdgo._internal.testing.quick.Quick_testuint8alias.TestUint8Alias;
typedef TestUintAlias = stdgo._internal.testing.quick.Quick_testuintalias.TestUintAlias;
typedef TestUintptrAlias = stdgo._internal.testing.quick.Quick_testuintptralias.TestUintptrAlias;
typedef ConfigPointer = stdgo._internal.testing.quick.Quick_configpointer.ConfigPointer;
typedef CheckErrorPointer = stdgo._internal.testing.quick.Quick_checkerrorpointer.CheckErrorPointer;
typedef CheckEqualErrorPointer = stdgo._internal.testing.quick.Quick_checkequalerrorpointer.CheckEqualErrorPointer;
typedef TestStructPointer = stdgo._internal.testing.quick.Quick_teststructpointer.TestStructPointer;
typedef APointer = stdgo._internal.testing.quick.Quick_apointer.APointer;
typedef BPointer = stdgo._internal.testing.quick.Quick_bpointer.BPointer;
typedef SetupErrorPointer = stdgo._internal.testing.quick.Quick_setuperrorpointer.SetupErrorPointer;
typedef TestArrayAliasPointer = stdgo._internal.testing.quick.Quick_testarrayaliaspointer.TestArrayAliasPointer;
typedef TestBoolAliasPointer = stdgo._internal.testing.quick.Quick_testboolaliaspointer.TestBoolAliasPointer;
typedef TestFloat32AliasPointer = stdgo._internal.testing.quick.Quick_testfloat32aliaspointer.TestFloat32AliasPointer;
typedef TestFloat64AliasPointer = stdgo._internal.testing.quick.Quick_testfloat64aliaspointer.TestFloat64AliasPointer;
typedef TestComplex64AliasPointer = stdgo._internal.testing.quick.Quick_testcomplex64aliaspointer.TestComplex64AliasPointer;
typedef TestComplex128AliasPointer = stdgo._internal.testing.quick.Quick_testcomplex128aliaspointer.TestComplex128AliasPointer;
typedef TestInt16AliasPointer = stdgo._internal.testing.quick.Quick_testint16aliaspointer.TestInt16AliasPointer;
typedef TestInt32AliasPointer = stdgo._internal.testing.quick.Quick_testint32aliaspointer.TestInt32AliasPointer;
typedef TestInt64AliasPointer = stdgo._internal.testing.quick.Quick_testint64aliaspointer.TestInt64AliasPointer;
typedef TestInt8AliasPointer = stdgo._internal.testing.quick.Quick_testint8aliaspointer.TestInt8AliasPointer;
typedef TestIntAliasPointer = stdgo._internal.testing.quick.Quick_testintaliaspointer.TestIntAliasPointer;
typedef TestMapAliasPointer = stdgo._internal.testing.quick.Quick_testmapaliaspointer.TestMapAliasPointer;
typedef TestPtrAliasPointer = stdgo._internal.testing.quick.Quick_testptraliaspointer.TestPtrAliasPointer;
typedef TestSliceAliasPointer = stdgo._internal.testing.quick.Quick_testslicealiaspointer.TestSliceAliasPointer;
typedef TestStringAliasPointer = stdgo._internal.testing.quick.Quick_teststringaliaspointer.TestStringAliasPointer;
typedef TestStructAliasPointer = stdgo._internal.testing.quick.Quick_teststructaliaspointer.TestStructAliasPointer;
typedef TestUint16AliasPointer = stdgo._internal.testing.quick.Quick_testuint16aliaspointer.TestUint16AliasPointer;
typedef TestUint32AliasPointer = stdgo._internal.testing.quick.Quick_testuint32aliaspointer.TestUint32AliasPointer;
typedef TestUint64AliasPointer = stdgo._internal.testing.quick.Quick_testuint64aliaspointer.TestUint64AliasPointer;
typedef TestUint8AliasPointer = stdgo._internal.testing.quick.Quick_testuint8aliaspointer.TestUint8AliasPointer;
typedef TestUintAliasPointer = stdgo._internal.testing.quick.Quick_testuintaliaspointer.TestUintAliasPointer;
typedef TestUintptrAliasPointer = stdgo._internal.testing.quick.Quick_testuintptraliaspointer.TestUintptrAliasPointer;
/**
    * Package quick implements utility functions to help with black box testing.
    * 
    * The testing/quick package is frozen and is not accepting new features.
**/
class Quick {
    /**
        * Value returns an arbitrary value of the given type.
        * If the type implements the Generator interface, that will be used.
        * Note: To create arbitrary values for structs, all the fields must be exported.
    **/
    static public inline function value(_t:stdgo._internal.reflect.Reflect_type_.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } return stdgo._internal.testing.quick.Quick_value.value(_t, _rand);
    /**
        * Check looks for an input to f, any function that returns bool,
        * such that f returns false. It calls f repeatedly, with arbitrary
        * values for each argument. If f returns false on a given input,
        * Check returns that input as a *CheckError.
        * For example:
        * 
        * 	func TestOddMultipleOfThree(t *testing.T) {
        * 		f := func(x int) bool {
        * 			y := OddMultipleOfThree(x)
        * 			return y%2 == 1 && y%3 == 0
        * 		}
        * 		if err := quick.Check(f, nil); err != nil {
        * 			t.Error(err)
        * 		}
        * 	}
    **/
    static public inline function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.Error return stdgo._internal.testing.quick.Quick_check.check(_f, _config);
    /**
        * CheckEqual looks for an input on which f and g return different results.
        * It calls f and g repeatedly with arbitrary values for each argument.
        * If f and g return different answers, CheckEqual returns a *CheckEqualError
        * describing the input and the outputs.
    **/
    static public inline function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>):stdgo.Error return stdgo._internal.testing.quick.Quick_checkequal.checkEqual(_f, _g, _config);
    static public inline function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testcheckequal.testCheckEqual(_t);
    static public inline function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testcheckproperty.testCheckProperty(_t);
    static public inline function testFailure(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testfailure.testFailure(_t);
    /**
        * Recursive data structures didn't terminate.
        * Issues 8818 and 11148.
    **/
    static public inline function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testrecursive.testRecursive(_t);
    static public inline function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testemptystruct.testEmptyStruct(_t);
    static public inline function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testmutuallyrecursive.testMutuallyRecursive(_t);
    /**
        * Some serialization formats (e.g. encoding/pem) cannot distinguish
        * between a nil and an empty map or slice, so avoid generating the
        * zero value for these.
    **/
    static public inline function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testnonzerosliceandmap.testNonZeroSliceAndMap(_t);
    static public inline function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.testing.quick.Quick_testint64.testInt64(_t);
}
