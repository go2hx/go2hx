package stdgo;
class Generator_static_extension {
    static public function generate(t:stdgo._internal.testing.quick.Quick_generator.Generator, _rand:stdgo._internal.math.rand.Rand_rand.Rand, _size:StdTypes.Int):stdgo._internal.reflect.Reflect_value.Value {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.testing.quick.Quick_generator_static_extension.Generator_static_extension.generate(t, _rand, _size);
    }
}
@:forward abstract Generator(stdgo._internal.testing.quick.Quick_generator.Generator) from stdgo._internal.testing.quick.Quick_generator.Generator to stdgo._internal.testing.quick.Quick_generator.Generator {
    @:from
    static function fromHaxeInterface(x:{ function generate(_rand:stdgo._internal.math.rand.Rand_rand.Rand, _size:StdTypes.Int):stdgo._internal.reflect.Reflect_value.Value; }):Generator {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Generator = { generate : (_0, _1) -> x.generate(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.testing.quick.Quick.Config_static_extension) abstract Config(stdgo._internal.testing.quick.Quick_config.Config) from stdgo._internal.testing.quick.Quick_config.Config to stdgo._internal.testing.quick.Quick_config.Config {
    public var maxCount(get, set) : StdTypes.Int;
    function get_maxCount():StdTypes.Int return this.maxCount;
    function set_maxCount(v:StdTypes.Int):StdTypes.Int {
        this.maxCount = (v : stdgo.GoInt);
        return v;
    }
    public var maxCountScale(get, set) : StdTypes.Float;
    function get_maxCountScale():StdTypes.Float return this.maxCountScale;
    function set_maxCountScale(v:StdTypes.Float):StdTypes.Float {
        this.maxCountScale = (v : stdgo.GoFloat64);
        return v;
    }
    public var rand(get, set) : stdgo._internal.math.rand.Rand_rand.Rand;
    function get_rand():stdgo._internal.math.rand.Rand_rand.Rand return this.rand;
    function set_rand(v:stdgo._internal.math.rand.Rand_rand.Rand):stdgo._internal.math.rand.Rand_rand.Rand {
        this.rand = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return v;
    }
    public var values(get, set) : (Array<stdgo._internal.reflect.Reflect_value.Value>, stdgo._internal.math.rand.Rand_rand.Rand) -> Void;
    function get_values():(Array<stdgo._internal.reflect.Reflect_value.Value>, stdgo._internal.math.rand.Rand_rand.Rand) -> Void return (_0, _1) -> this.values([for (i in _0) i], _1);
    function set_values(v:(Array<stdgo._internal.reflect.Reflect_value.Value>, stdgo._internal.math.rand.Rand_rand.Rand) -> Void):(Array<stdgo._internal.reflect.Reflect_value.Value>, stdgo._internal.math.rand.Rand_rand.Rand) -> Void {
        this.values = v;
        return v;
    }
    public function new(?maxCount:StdTypes.Int, ?maxCountScale:StdTypes.Float, ?rand:stdgo._internal.math.rand.Rand_rand.Rand, ?values:(Array<stdgo._internal.reflect.Reflect_value.Value>, stdgo._internal.math.rand.Rand_rand.Rand) -> Void) this = new stdgo._internal.testing.quick.Quick_config.Config((maxCount : stdgo.GoInt), (maxCountScale : stdgo.GoFloat64), (rand : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>), values);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.CheckError_static_extension) abstract CheckError(stdgo._internal.testing.quick.Quick_checkerror.CheckError) from stdgo._internal.testing.quick.Quick_checkerror.CheckError to stdgo._internal.testing.quick.Quick_checkerror.CheckError {
    public var count(get, set) : StdTypes.Int;
    function get_count():StdTypes.Int return this.count;
    function set_count(v:StdTypes.Int):StdTypes.Int {
        this.count = (v : stdgo.GoInt);
        return v;
    }
    public var in_(get, set) : Array<stdgo.AnyInterface>;
    function get_in_():Array<stdgo.AnyInterface> return [for (i in this.in_) i];
    function set_in_(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.in_ = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?count:StdTypes.Int, ?in_:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_checkerror.CheckError((count : stdgo.GoInt), ([for (i in in_) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.CheckEqualError_static_extension) abstract CheckEqualError(stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError) from stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError to stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError {
    public var checkError(get, set) : CheckError;
    function get_checkError():CheckError return this.checkError;
    function set_checkError(v:CheckError):CheckError {
        this.checkError = v;
        return v;
    }
    public var out1(get, set) : Array<stdgo.AnyInterface>;
    function get_out1():Array<stdgo.AnyInterface> return [for (i in this.out1) i];
    function set_out1(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out1 = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var out2(get, set) : Array<stdgo.AnyInterface>;
    function get_out2():Array<stdgo.AnyInterface> return [for (i in this.out2) i];
    function set_out2(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out2 = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?checkError:CheckError, ?out1:Array<stdgo.AnyInterface>, ?out2:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError(checkError, ([for (i in out1) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), ([for (i in out2) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.TestStruct_static_extension) abstract TestStruct(stdgo._internal.testing.quick.Quick_teststruct.TestStruct) from stdgo._internal.testing.quick.Quick_teststruct.TestStruct to stdgo._internal.testing.quick.Quick_teststruct.TestStruct {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.testing.quick.Quick_teststruct.TestStruct((a : stdgo.GoInt), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.T_myStruct_static_extension) @:dox(hide) abstract T_myStruct(stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct) from stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct to stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct((_x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.A_static_extension) abstract A(stdgo._internal.testing.quick.Quick_a.A) from stdgo._internal.testing.quick.Quick_a.A to stdgo._internal.testing.quick.Quick_a.A {
    public var b(get, set) : B;
    function get_b():B return this.b;
    function set_b(v:B):B {
        this.b = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_b.B>);
        return v;
    }
    public function new(?b:B) this = new stdgo._internal.testing.quick.Quick_a.A((b : stdgo.Ref<stdgo._internal.testing.quick.Quick_b.B>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.B_static_extension) abstract B(stdgo._internal.testing.quick.Quick_b.B) from stdgo._internal.testing.quick.Quick_b.B to stdgo._internal.testing.quick.Quick_b.B {
    public var a(get, set) : A;
    function get_a():A return this.a;
    function set_a(v:A):A {
        this.a = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_a.A>);
        return v;
    }
    public function new(?a:A) this = new stdgo._internal.testing.quick.Quick_b.B((a : stdgo.Ref<stdgo._internal.testing.quick.Quick_a.A>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.testing.quick.Quick_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.testing.quick.Quick_t__struct_0.T__struct_0;
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
@:structInit @:using(stdgo.testing.quick.Quick.T_testRecursive___localname___R_8108_static_extension) @:dox(hide) abstract T_testRecursive___localname___R_8108(stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108) from stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108 to stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108 {
    public var ptr(get, set) : T_testRecursive___localname___R_8108;
    function get_ptr():T_testRecursive___localname___R_8108 return this.ptr;
    function set_ptr(v:T_testRecursive___localname___R_8108):T_testRecursive___localname___R_8108 {
        this.ptr = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var sliceP(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_sliceP():Array<T_testRecursive___localname___R_8108> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.sliceP = ([for (i in v) (i : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public var slice(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_slice():Array<T_testRecursive___localname___R_8108> return [for (i in this.slice) i];
    function set_slice(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var map_(get, set) : Map<StdTypes.Int, T_testRecursive___localname___R_8108>;
    function get_map_():Map<StdTypes.Int, T_testRecursive___localname___R_8108> return {
        final __obj__:Map<StdTypes.Int, T_testRecursive___localname___R_8108> = [];
        for (key => value in this.map_) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_map_(v:Map<StdTypes.Int, T_testRecursive___localname___R_8108>):Map<StdTypes.Int, T_testRecursive___localname___R_8108> {
        this.map_ = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var mapP(get, set) : Map<StdTypes.Int, T_testRecursive___localname___R_8108>;
    function get_mapP():Map<StdTypes.Int, T_testRecursive___localname___R_8108> return {
        final __obj__:Map<StdTypes.Int, T_testRecursive___localname___R_8108> = [];
        for (key => value in this.mapP) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mapP(v:Map<StdTypes.Int, T_testRecursive___localname___R_8108>):Map<StdTypes.Int, T_testRecursive___localname___R_8108> {
        this.mapP = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
            };
            __obj__;
        };
        return v;
    }
    public var mapR(get, set) : Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108>;
    function get_mapR():Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108> return {
        final __obj__:Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108> = [];
        for (key => value in this.mapR) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mapR(v:Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108>):Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108> {
        this.mapR = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>)] = (value : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
            };
            __obj__;
        };
        return v;
    }
    public var sliceMap(get, set) : Array<Map<StdTypes.Int, T_testRecursive___localname___R_8108>>;
    function get_sliceMap():Array<Map<StdTypes.Int, T_testRecursive___localname___R_8108>> return [for (i in this.sliceMap) {
        final __obj__:Map<StdTypes.Int, T_testRecursive___localname___R_8108> = [];
        for (key => value in i) {
            __obj__[key] = value;
        };
        __obj__;
    }];
    function set_sliceMap(v:Array<Map<StdTypes.Int, T_testRecursive___localname___R_8108>>):Array<Map<StdTypes.Int, T_testRecursive___localname___R_8108>> {
        this.sliceMap = ([for (i in v) {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>();
            for (key => value in i) {
                __obj__[(key : stdgo.GoInt)] = value;
            };
            __obj__;
        }] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public function new(?ptr:T_testRecursive___localname___R_8108, ?sliceP:Array<T_testRecursive___localname___R_8108>, ?slice:Array<T_testRecursive___localname___R_8108>, ?map_:Map<StdTypes.Int, T_testRecursive___localname___R_8108>, ?mapP:Map<StdTypes.Int, T_testRecursive___localname___R_8108>, ?mapR:Map<T_testRecursive___localname___R_8108, T_testRecursive___localname___R_8108>, ?sliceMap:Array<Map<StdTypes.Int, T_testRecursive___localname___R_8108>>) this = new stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108((ptr : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>), ([for (i in sliceP) (i : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>), ([for (i in slice) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>();
        for (key => value in map_) {
            __obj__[(key : stdgo.GoInt)] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>();
        for (key => value in mapP) {
            __obj__[(key : stdgo.GoInt)] = (value : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>();
        for (key => value in mapR) {
            __obj__[(key : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>)] = (value : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
        };
        __obj__;
    }, ([for (i in sliceMap) {
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>();
        for (key => value in i) {
            __obj__[(key : stdgo.GoInt)] = value;
        };
        __obj__;
    }] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.quick.Quick.T_testNonZeroSliceAndMap___localname___Q_8763_static_extension) @:dox(hide) abstract T_testNonZeroSliceAndMap___localname___Q_8763(stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763) from stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 to stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 {
    public var m(get, set) : Map<StdTypes.Int, StdTypes.Int>;
    function get_m():Map<StdTypes.Int, StdTypes.Int> return {
        final __obj__:Map<StdTypes.Int, StdTypes.Int> = [];
        for (key => value in this.m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_m(v:Map<StdTypes.Int, StdTypes.Int>):Map<StdTypes.Int, StdTypes.Int> {
        this.m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?m:Map<StdTypes.Int, StdTypes.Int>, ?s:Array<StdTypes.Int>) this = new stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763({
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>();
        for (key => value in m) {
            __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoInt);
        };
        __obj__;
    }, ([for (i in s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ConfigPointer = stdgo._internal.testing.quick.Quick_configpointer.ConfigPointer;
class Config_static_extension {
    static public function _getMaxCount(_c:Config):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        return stdgo._internal.testing.quick.Quick_config_static_extension.Config_static_extension._getMaxCount(_c);
    }
    static public function _getRand(_c:Config):stdgo._internal.math.rand.Rand_rand.Rand {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        return stdgo._internal.testing.quick.Quick_config_static_extension.Config_static_extension._getRand(_c);
    }
}
typedef CheckErrorPointer = stdgo._internal.testing.quick.Quick_checkerrorpointer.CheckErrorPointer;
class CheckError_static_extension {
    static public function error(_s:CheckError):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>);
        return stdgo._internal.testing.quick.Quick_checkerror_static_extension.CheckError_static_extension.error(_s);
    }
}
typedef CheckEqualErrorPointer = stdgo._internal.testing.quick.Quick_checkequalerrorpointer.CheckEqualErrorPointer;
class CheckEqualError_static_extension {
    static public function error(_s:CheckEqualError):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.testing.quick.Quick_checkequalerror.CheckEqualError>);
        return stdgo._internal.testing.quick.Quick_checkequalerror_static_extension.CheckEqualError_static_extension.error(_s);
    }
}
typedef TestStructPointer = stdgo._internal.testing.quick.Quick_teststructpointer.TestStructPointer;
class TestStruct_static_extension {

}
@:dox(hide) typedef T_myStructPointer = stdgo._internal.testing.quick.Quick_t_mystructpointer.T_myStructPointer;
@:dox(hide) class T_myStruct_static_extension {
    static public function generate(_m:T_myStruct, _r:stdgo._internal.math.rand.Rand_rand.Rand, __0:StdTypes.Int):stdgo._internal.reflect.Reflect_value.Value {
        final _r = (_r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final __0 = (__0 : stdgo.GoInt);
        return stdgo._internal.testing.quick.Quick_t_mystruct_static_extension.T_myStruct_static_extension.generate(_m, _r, __0);
    }
}
typedef APointer = stdgo._internal.testing.quick.Quick_apointer.APointer;
class A_static_extension {

}
typedef BPointer = stdgo._internal.testing.quick.Quick_bpointer.BPointer;
class B_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.testing.quick.Quick_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef SetupErrorPointer = stdgo._internal.testing.quick.Quick_setuperrorpointer.SetupErrorPointer;
class SetupError_static_extension {
    static public function error(_s:SetupError):String {
        return stdgo._internal.testing.quick.Quick_setuperror_static_extension.SetupError_static_extension.error(_s);
    }
}
typedef TestArrayAliasPointer = stdgo._internal.testing.quick.Quick_testarrayaliaspointer.TestArrayAliasPointer;
class TestArrayAlias_static_extension {

}
typedef TestBoolAliasPointer = stdgo._internal.testing.quick.Quick_testboolaliaspointer.TestBoolAliasPointer;
class TestBoolAlias_static_extension {

}
typedef TestFloat32AliasPointer = stdgo._internal.testing.quick.Quick_testfloat32aliaspointer.TestFloat32AliasPointer;
class TestFloat32Alias_static_extension {

}
typedef TestFloat64AliasPointer = stdgo._internal.testing.quick.Quick_testfloat64aliaspointer.TestFloat64AliasPointer;
class TestFloat64Alias_static_extension {

}
typedef TestComplex64AliasPointer = stdgo._internal.testing.quick.Quick_testcomplex64aliaspointer.TestComplex64AliasPointer;
class TestComplex64Alias_static_extension {

}
typedef TestComplex128AliasPointer = stdgo._internal.testing.quick.Quick_testcomplex128aliaspointer.TestComplex128AliasPointer;
class TestComplex128Alias_static_extension {

}
typedef TestInt16AliasPointer = stdgo._internal.testing.quick.Quick_testint16aliaspointer.TestInt16AliasPointer;
class TestInt16Alias_static_extension {

}
typedef TestInt32AliasPointer = stdgo._internal.testing.quick.Quick_testint32aliaspointer.TestInt32AliasPointer;
class TestInt32Alias_static_extension {

}
typedef TestInt64AliasPointer = stdgo._internal.testing.quick.Quick_testint64aliaspointer.TestInt64AliasPointer;
class TestInt64Alias_static_extension {

}
typedef TestInt8AliasPointer = stdgo._internal.testing.quick.Quick_testint8aliaspointer.TestInt8AliasPointer;
class TestInt8Alias_static_extension {

}
typedef TestIntAliasPointer = stdgo._internal.testing.quick.Quick_testintaliaspointer.TestIntAliasPointer;
class TestIntAlias_static_extension {

}
typedef TestMapAliasPointer = stdgo._internal.testing.quick.Quick_testmapaliaspointer.TestMapAliasPointer;
class TestMapAlias_static_extension {

}
typedef TestPtrAliasPointer = stdgo._internal.testing.quick.Quick_testptraliaspointer.TestPtrAliasPointer;
class TestPtrAlias_static_extension {

}
typedef TestSliceAliasPointer = stdgo._internal.testing.quick.Quick_testslicealiaspointer.TestSliceAliasPointer;
class TestSliceAlias_static_extension {

}
typedef TestStringAliasPointer = stdgo._internal.testing.quick.Quick_teststringaliaspointer.TestStringAliasPointer;
class TestStringAlias_static_extension {

}
typedef TestStructAliasPointer = stdgo._internal.testing.quick.Quick_teststructaliaspointer.TestStructAliasPointer;
class TestStructAlias_static_extension {

}
typedef TestUint16AliasPointer = stdgo._internal.testing.quick.Quick_testuint16aliaspointer.TestUint16AliasPointer;
class TestUint16Alias_static_extension {

}
typedef TestUint32AliasPointer = stdgo._internal.testing.quick.Quick_testuint32aliaspointer.TestUint32AliasPointer;
class TestUint32Alias_static_extension {

}
typedef TestUint64AliasPointer = stdgo._internal.testing.quick.Quick_testuint64aliaspointer.TestUint64AliasPointer;
class TestUint64Alias_static_extension {

}
typedef TestUint8AliasPointer = stdgo._internal.testing.quick.Quick_testuint8aliaspointer.TestUint8AliasPointer;
class TestUint8Alias_static_extension {

}
typedef TestUintAliasPointer = stdgo._internal.testing.quick.Quick_testuintaliaspointer.TestUintAliasPointer;
class TestUintAlias_static_extension {

}
typedef TestUintptrAliasPointer = stdgo._internal.testing.quick.Quick_testuintptraliaspointer.TestUintptrAliasPointer;
class TestUintptrAlias_static_extension {

}
@:dox(hide) typedef T_testRecursive___localname___R_8108Pointer = stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108pointer.T_testRecursive___localname___R_8108Pointer;
@:dox(hide) class T_testRecursive___localname___R_8108_static_extension {

}
@:dox(hide) typedef T_testNonZeroSliceAndMap___localname___Q_8763Pointer = stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763pointer.T_testNonZeroSliceAndMap___localname___Q_8763Pointer;
@:dox(hide) class T_testNonZeroSliceAndMap___localname___Q_8763_static_extension {

}
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
    static public inline function value(_t:stdgo._internal.reflect.Reflect_type_.Type_, _rand:stdgo._internal.math.rand.Rand_rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Reflect_value.Value, Bool> {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        return {
            final obj = stdgo._internal.testing.quick.Quick_value.value(_t, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function check(_f:stdgo.AnyInterface, _config:Config):stdgo.Error {
        final _f = (_f : stdgo.AnyInterface);
        final _config = (_config : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        return stdgo._internal.testing.quick.Quick_check.check(_f, _config);
    }
    /**
        * CheckEqual looks for an input on which f and g return different results.
        * It calls f and g repeatedly with arbitrary values for each argument.
        * If f and g return different answers, CheckEqual returns a *CheckEqualError
        * describing the input and the outputs.
    **/
    static public inline function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:Config):stdgo.Error {
        final _f = (_f : stdgo.AnyInterface);
        final _g = (_g : stdgo.AnyInterface);
        final _config = (_config : stdgo.Ref<stdgo._internal.testing.quick.Quick_config.Config>);
        return stdgo._internal.testing.quick.Quick_checkequal.checkEqual(_f, _g, _config);
    }
    static public inline function testCheckEqual(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testcheckequal.testCheckEqual(_t);
    }
    static public inline function testCheckProperty(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testcheckproperty.testCheckProperty(_t);
    }
    static public inline function testFailure(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testfailure.testFailure(_t);
    }
    /**
        * Recursive data structures didn't terminate.
        * Issues 8818 and 11148.
    **/
    static public inline function testRecursive(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testrecursive.testRecursive(_t);
    }
    static public inline function testEmptyStruct(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testemptystruct.testEmptyStruct(_t);
    }
    static public inline function testMutuallyRecursive(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testmutuallyrecursive.testMutuallyRecursive(_t);
    }
    /**
        * Some serialization formats (e.g. encoding/pem) cannot distinguish
        * between a nil and an empty map or slice, so avoid generating the
        * zero value for these.
    **/
    static public inline function testNonZeroSliceAndMap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testnonzerosliceandmap.testNonZeroSliceAndMap(_t);
    }
    static public inline function testInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.quick.Quick_testint64.testInt64(_t);
    }
}
