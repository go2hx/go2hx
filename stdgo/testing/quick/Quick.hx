package stdgo.testing.quick;
class Generator_static_extension {
    static public function generate(t:stdgo._internal.testing.quick.Quick_Generator.Generator, _rand:stdgo._internal.math.rand.Rand_Rand.Rand, _size:StdTypes.Int):stdgo._internal.reflect.Reflect_Value.Value {
        return stdgo._internal.testing.quick.Quick_Generator_static_extension.Generator_static_extension.generate(t, _rand, _size);
    }
}
typedef Generator = stdgo._internal.testing.quick.Quick_Generator.Generator;
@:structInit @:using(stdgo.testing.quick.Quick.Config_static_extension) abstract Config(stdgo._internal.testing.quick.Quick_Config.Config) from stdgo._internal.testing.quick.Quick_Config.Config to stdgo._internal.testing.quick.Quick_Config.Config {
    public var maxCount(get, set) : StdTypes.Int;
    function get_maxCount():StdTypes.Int return this.maxCount;
    function set_maxCount(v:StdTypes.Int):StdTypes.Int {
        this.maxCount = v;
        return v;
    }
    public var maxCountScale(get, set) : StdTypes.Float;
    function get_maxCountScale():StdTypes.Float return this.maxCountScale;
    function set_maxCountScale(v:StdTypes.Float):StdTypes.Float {
        this.maxCountScale = v;
        return v;
    }
    public var rand(get, set) : stdgo._internal.math.rand.Rand_Rand.Rand;
    function get_rand():stdgo._internal.math.rand.Rand_Rand.Rand return this.rand;
    function set_rand(v:stdgo._internal.math.rand.Rand_Rand.Rand):stdgo._internal.math.rand.Rand_Rand.Rand {
        this.rand = v;
        return v;
    }
    public var values(get, set) : (stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void;
    function get_values():(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void return (_0, _1) -> this.values([for (i in _0) i], _1);
    function set_values(v:(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void):(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void {
        this.values = v;
        return v;
    }
    public function new(?maxCount:StdTypes.Int, ?maxCountScale:StdTypes.Float, ?rand:stdgo._internal.math.rand.Rand_Rand.Rand, ?values:(stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>) -> Void) this = new stdgo._internal.testing.quick.Quick_Config.Config(maxCount, maxCountScale, rand, values);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.CheckError_static_extension) abstract CheckError(stdgo._internal.testing.quick.Quick_CheckError.CheckError) from stdgo._internal.testing.quick.Quick_CheckError.CheckError to stdgo._internal.testing.quick.Quick_CheckError.CheckError {
    public var count(get, set) : StdTypes.Int;
    function get_count():StdTypes.Int return this.count;
    function set_count(v:StdTypes.Int):StdTypes.Int {
        this.count = v;
        return v;
    }
    public var in_(get, set) : Array<stdgo.AnyInterface>;
    function get_in_():Array<stdgo.AnyInterface> return [for (i in this.in_) i];
    function set_in_(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.in_ = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?count:StdTypes.Int, ?in_:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_CheckError.CheckError(count, ([for (i in in_) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.CheckEqualError_static_extension) abstract CheckEqualError(stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError) from stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError to stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError {
    public var checkError(get, set) : CheckError;
    function get_checkError():CheckError return this.checkError;
    function set_checkError(v:CheckError):CheckError {
        this.checkError = v;
        return v;
    }
    public var out1(get, set) : Array<stdgo.AnyInterface>;
    function get_out1():Array<stdgo.AnyInterface> return [for (i in this.out1) i];
    function set_out1(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out1 = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var out2(get, set) : Array<stdgo.AnyInterface>;
    function get_out2():Array<stdgo.AnyInterface> return [for (i in this.out2) i];
    function set_out2(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out2 = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?checkError:CheckError, ?out1:Array<stdgo.AnyInterface>, ?out2:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError(checkError, ([for (i in out1) i] : stdgo.Slice<stdgo.AnyInterface>), ([for (i in out2) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract TestStruct(stdgo._internal.testing.quick.Quick_TestStruct.TestStruct) from stdgo._internal.testing.quick.Quick_TestStruct.TestStruct to stdgo._internal.testing.quick.Quick_TestStruct.TestStruct {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.testing.quick.Quick_TestStruct.TestStruct(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.T_myStruct_static_extension) abstract T_myStruct(stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct) from stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct to stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract A(stdgo._internal.testing.quick.Quick_A.A) from stdgo._internal.testing.quick.Quick_A.A to stdgo._internal.testing.quick.Quick_A.A {
    public var b(get, set) : B;
    function get_b():B return this.b;
    function set_b(v:B):B {
        this.b = v;
        return v;
    }
    public function new(?b:B) this = new stdgo._internal.testing.quick.Quick_A.A(b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract B(stdgo._internal.testing.quick.Quick_B.B) from stdgo._internal.testing.quick.Quick_B.B to stdgo._internal.testing.quick.Quick_B.B {
    public var a(get, set) : A;
    function get_a():A return this.a;
    function set_a(v:A):A {
        this.a = v;
        return v;
    }
    public function new(?a:A) this = new stdgo._internal.testing.quick.Quick_B.B(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.testing.quick.Quick_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.testing.quick.Quick_T__struct_0.T__struct_0;
typedef SetupError = stdgo._internal.testing.quick.Quick_SetupError.SetupError;
typedef TestArrayAlias = stdgo._internal.testing.quick.Quick_TestArrayAlias.TestArrayAlias;
typedef TestBoolAlias = stdgo._internal.testing.quick.Quick_TestBoolAlias.TestBoolAlias;
typedef TestFloat32Alias = stdgo._internal.testing.quick.Quick_TestFloat32Alias.TestFloat32Alias;
typedef TestFloat64Alias = stdgo._internal.testing.quick.Quick_TestFloat64Alias.TestFloat64Alias;
typedef TestComplex64Alias = stdgo._internal.testing.quick.Quick_TestComplex64Alias.TestComplex64Alias;
typedef TestComplex128Alias = stdgo._internal.testing.quick.Quick_TestComplex128Alias.TestComplex128Alias;
typedef TestInt16Alias = stdgo._internal.testing.quick.Quick_TestInt16Alias.TestInt16Alias;
typedef TestInt32Alias = stdgo._internal.testing.quick.Quick_TestInt32Alias.TestInt32Alias;
typedef TestInt64Alias = stdgo._internal.testing.quick.Quick_TestInt64Alias.TestInt64Alias;
typedef TestInt8Alias = stdgo._internal.testing.quick.Quick_TestInt8Alias.TestInt8Alias;
typedef TestIntAlias = stdgo._internal.testing.quick.Quick_TestIntAlias.TestIntAlias;
typedef TestMapAlias = stdgo._internal.testing.quick.Quick_TestMapAlias.TestMapAlias;
typedef TestPtrAlias = stdgo._internal.testing.quick.Quick_TestPtrAlias.TestPtrAlias;
typedef TestSliceAlias = stdgo._internal.testing.quick.Quick_TestSliceAlias.TestSliceAlias;
typedef TestStringAlias = stdgo._internal.testing.quick.Quick_TestStringAlias.TestStringAlias;
typedef TestStructAlias = stdgo._internal.testing.quick.Quick_TestStructAlias.TestStructAlias;
typedef TestUint16Alias = stdgo._internal.testing.quick.Quick_TestUint16Alias.TestUint16Alias;
typedef TestUint32Alias = stdgo._internal.testing.quick.Quick_TestUint32Alias.TestUint32Alias;
typedef TestUint64Alias = stdgo._internal.testing.quick.Quick_TestUint64Alias.TestUint64Alias;
typedef TestUint8Alias = stdgo._internal.testing.quick.Quick_TestUint8Alias.TestUint8Alias;
typedef TestUintAlias = stdgo._internal.testing.quick.Quick_TestUintAlias.TestUintAlias;
typedef TestUintptrAlias = stdgo._internal.testing.quick.Quick_TestUintptrAlias.TestUintptrAlias;
@:structInit abstract T_testRecursive___localname___R_8108(stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108) from stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108 to stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108 {
    public var ptr(get, set) : T_testRecursive___localname___R_8108;
    function get_ptr():T_testRecursive___localname___R_8108 return this.ptr;
    function set_ptr(v:T_testRecursive___localname___R_8108):T_testRecursive___localname___R_8108 {
        this.ptr = v;
        return v;
    }
    public var sliceP(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_sliceP():Array<T_testRecursive___localname___R_8108> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.sliceP = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public var slice(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_slice():Array<T_testRecursive___localname___R_8108> return [for (i in this.slice) i];
    function set_slice(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>;
    function get_map_():stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>):stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108> {
        this.map_ = v;
        return v;
    }
    public var mapP(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_mapP():stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return this.mapP;
    function set_mapP(v:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.mapP = v;
        return v;
    }
    public var mapR(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_mapR():stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return this.mapR;
    function set_mapR(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.mapR = v;
        return v;
    }
    public var sliceMap(get, set) : Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_sliceMap():Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return [for (i in this.sliceMap) i];
    function set_sliceMap(v:Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.sliceMap = ([for (i in v) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public function new(?ptr:T_testRecursive___localname___R_8108, ?sliceP:Array<T_testRecursive___localname___R_8108>, ?slice:Array<T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>, ?sliceMap:Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>) this = new stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108(ptr, ([for (i in sliceP) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>), ([for (i in slice) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>), map_, mapP, mapR, ([for (i in sliceMap) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testNonZeroSliceAndMap___localname___Q_8763(stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763) from stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 to stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 {
    public var m(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this.m = v;
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:Array<StdTypes.Int>) this = new stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763(m, ([for (i in s) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ConfigPointer = stdgo._internal.testing.quick.Quick_ConfigPointer.ConfigPointer;
class Config_static_extension {
    static public function _getMaxCount(_c:Config):StdTypes.Int {
        return stdgo._internal.testing.quick.Quick_Config_static_extension.Config_static_extension._getMaxCount(_c);
    }
    static public function _getRand(_c:Config):stdgo._internal.math.rand.Rand_Rand.Rand {
        return stdgo._internal.testing.quick.Quick_Config_static_extension.Config_static_extension._getRand(_c);
    }
}
typedef CheckErrorPointer = stdgo._internal.testing.quick.Quick_CheckErrorPointer.CheckErrorPointer;
class CheckError_static_extension {
    static public function error(_s:CheckError):String {
        return stdgo._internal.testing.quick.Quick_CheckError_static_extension.CheckError_static_extension.error(_s);
    }
}
typedef CheckEqualErrorPointer = stdgo._internal.testing.quick.Quick_CheckEqualErrorPointer.CheckEqualErrorPointer;
class CheckEqualError_static_extension {
    static public function error(_s:CheckEqualError):String {
        return stdgo._internal.testing.quick.Quick_CheckEqualError_static_extension.CheckEqualError_static_extension.error(_s);
    }
}
typedef T_myStructPointer = stdgo._internal.testing.quick.Quick_T_myStructPointer.T_myStructPointer;
class T_myStruct_static_extension {
    static public function generate(_m:T_myStruct, _r:stdgo._internal.math.rand.Rand_Rand.Rand, __0:StdTypes.Int):stdgo._internal.reflect.Reflect_Value.Value {
        return stdgo._internal.testing.quick.Quick_T_myStruct_static_extension.T_myStruct_static_extension.generate(_m, _r, __0);
    }
}
typedef SetupErrorPointer = stdgo._internal.testing.quick.Quick_SetupErrorPointer.SetupErrorPointer;
class SetupError_static_extension {
    static public function error(_s:SetupError):String {
        return stdgo._internal.testing.quick.Quick_SetupError_static_extension.SetupError_static_extension.error(_s);
    }
}
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
    static public function value(_t:stdgo._internal.reflect.Reflect_Type_.Type_, _rand:stdgo._internal.math.rand.Rand_Rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Reflect_Value.Value, Bool> {
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
    static public function check(_f:stdgo.AnyInterface, _config:Config):stdgo.Error {
        return stdgo._internal.testing.quick.Quick_check.check(_f, _config);
    }
    /**
        CheckEqual looks for an input on which f and g return different results.
        It calls f and g repeatedly with arbitrary values for each argument.
        If f and g return different answers, CheckEqual returns a *CheckEqualError
        describing the input and the outputs.
    **/
    static public function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:Config):stdgo.Error {
        return stdgo._internal.testing.quick.Quick_checkEqual.checkEqual(_f, _g, _config);
    }
    static public function testCheckEqual(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testCheckEqual.testCheckEqual(_t);
    }
    static public function testCheckProperty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testCheckProperty.testCheckProperty(_t);
    }
    static public function testFailure(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testFailure.testFailure(_t);
    }
    /**
        Recursive data structures didn't terminate.
        Issues 8818 and 11148.
    **/
    static public function testRecursive(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testRecursive.testRecursive(_t);
    }
    static public function testEmptyStruct(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testEmptyStruct.testEmptyStruct(_t);
    }
    static public function testMutuallyRecursive(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testMutuallyRecursive.testMutuallyRecursive(_t);
    }
    /**
        Some serialization formats (e.g. encoding/pem) cannot distinguish
        between a nil and an empty map or slice, so avoid generating the
        zero value for these.
    **/
    static public function testNonZeroSliceAndMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testNonZeroSliceAndMap.testNonZeroSliceAndMap(_t);
    }
    static public function testInt64(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.quick.Quick_testInt64.testInt64(_t);
    }
}
