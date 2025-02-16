package stdgo;
class Squarer_static_extension {
    static public function square(t:stdgo._internal.encoding.gob.Gob_squarer.Squarer):StdTypes.Int {
        return stdgo._internal.encoding.gob.Gob_squarer_static_extension.Squarer_static_extension.square(t);
    }
}
@:forward abstract Squarer(stdgo._internal.encoding.gob.Gob_squarer.Squarer) from stdgo._internal.encoding.gob.Gob_squarer.Squarer to stdgo._internal.encoding.gob.Gob_squarer.Squarer {
    @:from
    static function fromHaxeInterface(x:{ function square():StdTypes.Int; }):Squarer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Squarer = { square : () -> x.square(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_interfaceIndirectTestI_static_extension {
    static public function f(t:stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI):Bool {
        return stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti_static_extension.T_interfaceIndirectTestI_static_extension.f(t);
    }
}
@:dox(hide) @:forward abstract T_interfaceIndirectTestI(stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI) from stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI to stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI {
    @:from
    static function fromHaxeInterface(x:{ function f():Bool; }):T_interfaceIndirectTestI {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_interfaceIndirectTestI = { f : () -> x.f(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_gobType_static_extension {
    static public function _safeString(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _seen:Map<T_typeId, Bool>):String {
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_gobtype_static_extension.T_gobType_static_extension._safeString(t, _seen);
    }
    static public function _string(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):String {
        return stdgo._internal.encoding.gob.Gob_t_gobtype_static_extension.T_gobType_static_extension._string(t);
    }
    static public function _name(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):String {
        return stdgo._internal.encoding.gob.Gob_t_gobtype_static_extension.T_gobType_static_extension._name(t);
    }
    static public function _setId(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _id:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_gobtype_static_extension.T_gobType_static_extension._setId(t, _id);
    }
    static public function _id(t:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_gobtype_static_extension.T_gobType_static_extension._id(t);
    }
}
@:dox(hide) @:forward abstract T_gobType(stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType) from stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType to stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType {
    @:from
    static function fromHaxeInterface(x:{ function _id():T_typeId; function _setId(_id:T_typeId):Void; function _name():String; function _string():String; function _safeString(_seen:Map<T_typeId, Bool>):String; }):T_gobType {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_gobType = { _id : () -> x._id(), _setId : _0 -> x._setId(_0), _name : () -> x._name(), _string : () -> x._string(), _safeString : _0 -> x._safeString({
            final __obj__:Map<T_typeId, Bool> = [];
            for (key => value in _0) {
                __obj__[key] = value;
            };
            __obj__;
        }), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class GobEncoder_static_extension {
    static public function gobEncode(t:stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_gobencoder_static_extension.GobEncoder_static_extension.gobEncode(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract GobEncoder(stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder) from stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder to stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder {
    @:from
    static function fromHaxeInterface(x:{ function gobEncode():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):GobEncoder {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:GobEncoder = { gobEncode : () -> x.gobEncode(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class GobDecoder_static_extension {
    static public function gobDecode(t:stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_gobdecoder_static_extension.GobDecoder_static_extension.gobDecode(t, _0);
    }
}
@:forward abstract GobDecoder(stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder) from stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder to stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder {
    @:from
    static function fromHaxeInterface(x:{ function gobDecode(_0:Array<std.UInt>):stdgo.Error; }):GobDecoder {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:GobDecoder = { gobDecode : _0 -> x.gobDecode([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.EncodeT_static_extension) abstract EncodeT(stdgo._internal.encoding.gob.Gob_encodet.EncodeT) from stdgo._internal.encoding.gob.Gob_encodet.EncodeT to stdgo._internal.encoding.gob.Gob_encodet.EncodeT {
    public var _x(get, set) : haxe.UInt64;
    function get__x():haxe.UInt64 return this._x;
    function set__x(v:haxe.UInt64):haxe.UInt64 {
        this._x = (v : stdgo.GoUInt64);
        return v;
    }
    public var _b(get, set) : Array<std.UInt>;
    function get__b():Array<std.UInt> return [for (i in this._b) i];
    function set__b(v:Array<std.UInt>):Array<std.UInt> {
        this._b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_x:haxe.UInt64, ?_b:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_encodet.EncodeT((_x : stdgo.GoUInt64), ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T0_static_extension) abstract T0(stdgo._internal.encoding.gob.Gob_t0.T0) from stdgo._internal.encoding.gob.Gob_t0.T0 to stdgo._internal.encoding.gob.Gob_t0.T0 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : StdTypes.Int;
    function get_c():StdTypes.Int return this.c;
    function set_c(v:StdTypes.Int):StdTypes.Int {
        this.c = (v : stdgo.GoInt);
        return v;
    }
    public var d(get, set) : StdTypes.Int;
    function get_d():StdTypes.Int return this.d;
    function set_d(v:StdTypes.Int):StdTypes.Int {
        this.d = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t0.T0((a : stdgo.GoInt), (b : stdgo.GoInt), (c : stdgo.GoInt), (d : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T1_static_extension) abstract T1(stdgo._internal.encoding.gob.Gob_t1.T1) from stdgo._internal.encoding.gob.Gob_t1.T1 to stdgo._internal.encoding.gob.Gob_t1.T1 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_b():stdgo.Pointer<StdTypes.Int> return this.b;
    function set_b(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_c():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.c;
    function set_c(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.c = v;
        return v;
    }
    public var d(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>;
    function get_d():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>> return this.d;
    function set_d(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>> {
        this.d = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:stdgo.Pointer<StdTypes.Int>, ?c:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?d:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>) this = new stdgo._internal.encoding.gob.Gob_t1.T1((a : stdgo.GoInt), b, c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T2_static_extension) abstract T2(stdgo._internal.encoding.gob.Gob_t2.T2) from stdgo._internal.encoding.gob.Gob_t2.T2 to stdgo._internal.encoding.gob.Gob_t2.T2 {
    public var a(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>;
    function get_a():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>> return this.a;
    function set_a(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>> {
        this.a = v;
        return v;
    }
    public var b(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_b():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.b;
    function set_b(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public var d(get, set) : StdTypes.Int;
    function get_d():StdTypes.Int return this.d;
    function set_d(v:StdTypes.Int):StdTypes.Int {
        this.d = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>, ?b:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?c:stdgo.Pointer<StdTypes.Int>, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t2.T2(a, b, c, (d : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.RT0_static_extension) abstract RT0(stdgo._internal.encoding.gob.Gob_rt0.RT0) from stdgo._internal.encoding.gob.Gob_rt0.RT0 to stdgo._internal.encoding.gob.Gob_rt0.RT0 {
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
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_rt0.RT0((a : stdgo.GoInt), (b : stdgo.GoString), (c : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.RT1_static_extension) abstract RT1(stdgo._internal.encoding.gob.Gob_rt1.RT1) from stdgo._internal.encoding.gob.Gob_rt1.RT1 to stdgo._internal.encoding.gob.Gob_rt1.RT1 {
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var notSet(get, set) : String;
    function get_notSet():String return this.notSet;
    function set_notSet(v:String):String {
        this.notSet = (v : stdgo.GoString);
        return v;
    }
    public function new(?c:StdTypes.Float, ?b:String, ?a:StdTypes.Int, ?notSet:String) this = new stdgo._internal.encoding.gob.Gob_rt1.RT1((c : stdgo.GoFloat64), (b : stdgo.GoString), (a : stdgo.GoInt), (notSet : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.IT0_static_extension) abstract IT0(stdgo._internal.encoding.gob.Gob_it0.IT0) from stdgo._internal.encoding.gob.Gob_it0.IT0 to stdgo._internal.encoding.gob.Gob_it0.IT0 {
    public var a(get, set) : haxe.Int64;
    function get_a():haxe.Int64 return this.a;
    function set_a(v:haxe.Int64):haxe.Int64 {
        this.a = (v : stdgo.GoInt64);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public var ignore_d(get, set) : Array<StdTypes.Int>;
    function get_ignore_d():Array<StdTypes.Int> return [for (i in this.ignore_d) i];
    function set_ignore_d(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.ignore_d = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var ignore_e(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get_ignore_e():haxe.ds.Vector<StdTypes.Float> return haxe.ds.Vector.fromArrayCopy([for (i in this.ignore_e) i]);
    function set_ignore_e(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this.ignore_e = ([for (i in v) (i : stdgo.GoFloat64)] : stdgo.GoArray<stdgo.GoFloat64>);
        return v;
    }
    public var ignore_f(get, set) : Bool;
    function get_ignore_f():Bool return this.ignore_f;
    function set_ignore_f(v:Bool):Bool {
        this.ignore_f = v;
        return v;
    }
    public var ignore_g(get, set) : String;
    function get_ignore_g():String return this.ignore_g;
    function set_ignore_g(v:String):String {
        this.ignore_g = (v : stdgo.GoString);
        return v;
    }
    public var ignore_h(get, set) : Array<std.UInt>;
    function get_ignore_h():Array<std.UInt> return [for (i in this.ignore_h) i];
    function set_ignore_h(v:Array<std.UInt>):Array<std.UInt> {
        this.ignore_h = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var ignore_i(get, set) : RT1;
    function get_ignore_i():RT1 return this.ignore_i;
    function set_ignore_i(v:RT1):RT1 {
        this.ignore_i = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_rt1.RT1>);
        return v;
    }
    public var ignore_m(get, set) : Map<String, StdTypes.Int>;
    function get_ignore_m():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.ignore_m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_ignore_m(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.ignore_m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?a:haxe.Int64, ?b:String, ?ignore_d:Array<StdTypes.Int>, ?ignore_e:haxe.ds.Vector<StdTypes.Float>, ?ignore_f:Bool, ?ignore_g:String, ?ignore_h:Array<std.UInt>, ?ignore_i:RT1, ?ignore_m:Map<String, StdTypes.Int>, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_it0.IT0((a : stdgo.GoInt64), (b : stdgo.GoString), ([for (i in ignore_d) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in ignore_e) (i : stdgo.GoFloat64)] : stdgo.GoArray<stdgo.GoFloat64>), ignore_f, (ignore_g : stdgo.GoString), ([for (i in ignore_h) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (ignore_i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_rt1.RT1>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in ignore_m) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    }, (c : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Indirect_static_extension) abstract Indirect(stdgo._internal.encoding.gob.Gob_indirect.Indirect) from stdgo._internal.encoding.gob.Gob_indirect.Indirect to stdgo._internal.encoding.gob.Gob_indirect.Indirect {
    public var a(get, set) : stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>;
    function get_a():stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> return this.a;
    function set_a(v:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>):stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> {
        this.a = v;
        return v;
    }
    public var s(get, set) : stdgo.Pointer<Array<StdTypes.Int>>;
    function get_s():stdgo.Pointer<Array<StdTypes.Int>> return this.s;
    function set_s(v:stdgo.Pointer<Array<StdTypes.Int>>):stdgo.Pointer<Array<StdTypes.Int>> {
        this.s = v;
        return v;
    }
    public var m(get, set) : stdgo.Pointer<stdgo.Pointer<Map<String, StdTypes.Int>>>;
    function get_m():stdgo.Pointer<stdgo.Pointer<Map<String, StdTypes.Int>>> return this.m;
    function set_m(v:stdgo.Pointer<stdgo.Pointer<Map<String, StdTypes.Int>>>):stdgo.Pointer<stdgo.Pointer<Map<String, StdTypes.Int>>> {
        this.m = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>, ?s:stdgo.Pointer<Array<StdTypes.Int>>, ?m:stdgo.Pointer<stdgo.Pointer<Map<String, StdTypes.Int>>>) this = new stdgo._internal.encoding.gob.Gob_indirect.Indirect(a, s, m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Direct_static_extension) abstract Direct(stdgo._internal.encoding.gob.Gob_direct.Direct) from stdgo._internal.encoding.gob.Gob_direct.Direct to stdgo._internal.encoding.gob.Gob_direct.Direct {
    public var a(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_a():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.a = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var m(get, set) : Map<String, StdTypes.Int>;
    function get_m():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_m(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public function new(?a:haxe.ds.Vector<StdTypes.Int>, ?s:Array<StdTypes.Int>, ?m:Map<String, StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob_direct.Direct(([for (i in a) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in m) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Point_static_extension) abstract Point(stdgo._internal.encoding.gob.Gob_point.Point) from stdgo._internal.encoding.gob.Gob_point.Point to stdgo._internal.encoding.gob.Gob_point.Point {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_point.Point((x : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.InterfaceItem_static_extension) abstract InterfaceItem(stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem) from stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem to stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var sq1(get, set) : Squarer;
    function get_sq1():Squarer return this.sq1;
    function set_sq1(v:Squarer):Squarer {
        this.sq1 = v;
        return v;
    }
    public var sq2(get, set) : Squarer;
    function get_sq2():Squarer return this.sq2;
    function set_sq2(v:Squarer):Squarer {
        this.sq2 = v;
        return v;
    }
    public var sq3(get, set) : Squarer;
    function get_sq3():Squarer return this.sq3;
    function set_sq3(v:Squarer):Squarer {
        this.sq3 = v;
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = (v : stdgo.GoFloat64);
        return v;
    }
    public var sq(get, set) : Array<Squarer>;
    function get_sq():Array<Squarer> return [for (i in this.sq) i];
    function set_sq(v:Array<Squarer>):Array<Squarer> {
        this.sq = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>);
        return v;
    }
    public function new(?i:StdTypes.Int, ?sq1:Squarer, ?sq2:Squarer, ?sq3:Squarer, ?f:StdTypes.Float, ?sq:Array<Squarer>) this = new stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem((i : stdgo.GoInt), sq1, sq2, sq3, (f : stdgo.GoFloat64), ([for (i in sq) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.NoInterfaceItem_static_extension) abstract NoInterfaceItem(stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem) from stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem to stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?i:StdTypes.Int, ?f:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem((i : stdgo.GoInt), (f : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.BasicInterfaceItem_static_extension) abstract BasicInterfaceItem(stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem) from stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem to stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem {
    public var int_(get, set) : stdgo.AnyInterface;
    function get_int_():stdgo.AnyInterface return this.int_;
    function set_int_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var int8(get, set) : stdgo.AnyInterface;
    function get_int8():stdgo.AnyInterface return this.int8;
    function set_int8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int8 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int16(get, set) : stdgo.AnyInterface;
    function get_int16():stdgo.AnyInterface return this.int16;
    function set_int16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int16 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int32(get, set) : stdgo.AnyInterface;
    function get_int32():stdgo.AnyInterface return this.int32;
    function set_int32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int64(get, set) : stdgo.AnyInterface;
    function get_int64():stdgo.AnyInterface return this.int64;
    function set_int64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint(get, set) : stdgo.AnyInterface;
    function get_uint():stdgo.AnyInterface return this.uint;
    function set_uint(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint8(get, set) : stdgo.AnyInterface;
    function get_uint8():stdgo.AnyInterface return this.uint8;
    function set_uint8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint8 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint16(get, set) : stdgo.AnyInterface;
    function get_uint16():stdgo.AnyInterface return this.uint16;
    function set_uint16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint16 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint32(get, set) : stdgo.AnyInterface;
    function get_uint32():stdgo.AnyInterface return this.uint32;
    function set_uint32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint64(get, set) : stdgo.AnyInterface;
    function get_uint64():stdgo.AnyInterface return this.uint64;
    function set_uint64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var float32(get, set) : stdgo.AnyInterface;
    function get_float32():stdgo.AnyInterface return this.float32;
    function set_float32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var float64(get, set) : stdgo.AnyInterface;
    function get_float64():stdgo.AnyInterface return this.float64;
    function set_float64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var complex64(get, set) : stdgo.AnyInterface;
    function get_complex64():stdgo.AnyInterface return this.complex64;
    function set_complex64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var complex128(get, set) : stdgo.AnyInterface;
    function get_complex128():stdgo.AnyInterface return this.complex128;
    function set_complex128(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex128 = (v : stdgo.AnyInterface);
        return v;
    }
    public var bool_(get, set) : stdgo.AnyInterface;
    function get_bool_():stdgo.AnyInterface return this.bool_;
    function set_bool_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bool_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var string(get, set) : stdgo.AnyInterface;
    function get_string():stdgo.AnyInterface return this.string;
    function set_string(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.string = (v : stdgo.AnyInterface);
        return v;
    }
    public var bytes(get, set) : stdgo.AnyInterface;
    function get_bytes():stdgo.AnyInterface return this.bytes;
    function set_bytes(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bytes = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?int_:stdgo.AnyInterface, ?int8:stdgo.AnyInterface, ?int16:stdgo.AnyInterface, ?int32:stdgo.AnyInterface, ?int64:stdgo.AnyInterface, ?uint:stdgo.AnyInterface, ?uint8:stdgo.AnyInterface, ?uint16:stdgo.AnyInterface, ?uint32:stdgo.AnyInterface, ?uint64:stdgo.AnyInterface, ?float32:stdgo.AnyInterface, ?float64:stdgo.AnyInterface, ?complex64:stdgo.AnyInterface, ?complex128:stdgo.AnyInterface, ?bool_:stdgo.AnyInterface, ?string:stdgo.AnyInterface, ?bytes:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem(
(int_ : stdgo.AnyInterface),
(int8 : stdgo.AnyInterface),
(int16 : stdgo.AnyInterface),
(int32 : stdgo.AnyInterface),
(int64 : stdgo.AnyInterface),
(uint : stdgo.AnyInterface),
(uint8 : stdgo.AnyInterface),
(uint16 : stdgo.AnyInterface),
(uint32 : stdgo.AnyInterface),
(uint64 : stdgo.AnyInterface),
(float32 : stdgo.AnyInterface),
(float64 : stdgo.AnyInterface),
(complex64 : stdgo.AnyInterface),
(complex128 : stdgo.AnyInterface),
(bool_ : stdgo.AnyInterface),
(string : stdgo.AnyInterface),
(bytes : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.PtrInterfaceItem_static_extension) abstract PtrInterfaceItem(stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem) from stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem to stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem {
    public var str1(get, set) : stdgo.AnyInterface;
    function get_str1():stdgo.AnyInterface return this.str1;
    function set_str1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var str2(get, set) : stdgo.AnyInterface;
    function get_str2():stdgo.AnyInterface return this.str2;
    function set_str2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str2 = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?str1:stdgo.AnyInterface, ?str2:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem((str1 : stdgo.AnyInterface), (str2 : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.U_static_extension) abstract U(stdgo._internal.encoding.gob.Gob_u.U) from stdgo._internal.encoding.gob.Gob_u.U to stdgo._internal.encoding.gob.Gob_u.U {
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
    public var _c(get, set) : StdTypes.Float;
    function get__c():StdTypes.Float return this._c;
    function set__c(v:StdTypes.Float):StdTypes.Float {
        this._c = (v : stdgo.GoFloat64);
        return v;
    }
    public var d(get, set) : std.UInt;
    function get_d():std.UInt return this.d;
    function set_d(v:std.UInt):std.UInt {
        this.d = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?_c:StdTypes.Float, ?d:std.UInt) this = new stdgo._internal.encoding.gob.Gob_u.U((a : stdgo.GoInt), (b : stdgo.GoString), (_c : stdgo.GoFloat64), (d : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.OnTheFly_static_extension) abstract OnTheFly(stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly) from stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly to stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.DT_static_extension) abstract DT(stdgo._internal.encoding.gob.Gob_dt.DT) from stdgo._internal.encoding.gob.Gob_dt.DT to stdgo._internal.encoding.gob.Gob_dt.DT {
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
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public var j(get, set) : stdgo.AnyInterface;
    function get_j():stdgo.AnyInterface return this.j;
    function set_j(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.j = (v : stdgo.AnyInterface);
        return v;
    }
    public var i_nil(get, set) : stdgo.AnyInterface;
    function get_i_nil():stdgo.AnyInterface return this.i_nil;
    function set_i_nil(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i_nil = (v : stdgo.AnyInterface);
        return v;
    }
    public var m(get, set) : Map<String, StdTypes.Int>;
    function get_m():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_m(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var t(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_t():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.t) i]);
    function set_t(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.t = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float, ?i:stdgo.AnyInterface, ?j:stdgo.AnyInterface, ?i_nil:stdgo.AnyInterface, ?m:Map<String, StdTypes.Int>, ?t:haxe.ds.Vector<StdTypes.Int>, ?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob_dt.DT((a : stdgo.GoInt), (b : stdgo.GoString), (c : stdgo.GoFloat64), (i : stdgo.AnyInterface), (j : stdgo.AnyInterface), (i_nil : stdgo.AnyInterface), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in m) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    }, ([for (i in t) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceByte_static_extension) abstract LargeSliceByte(stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte) from stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte to stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte {
    public var s(get, set) : Array<std.UInt>;
    function get_s():Array<std.UInt> return [for (i in this.s) i];
    function set_s(v:Array<std.UInt>):Array<std.UInt> {
        this.s = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?s:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte(([for (i in s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceInt8_static_extension) abstract LargeSliceInt8(stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8) from stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8 to stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8 {
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt8)] : stdgo.Slice<stdgo.GoInt8>);
        return v;
    }
    public function new(?s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8(([for (i in s) (i : stdgo.GoInt8)] : stdgo.Slice<stdgo.GoInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.StringPair_static_extension) abstract StringPair(stdgo._internal.encoding.gob.Gob_stringpair.StringPair) from stdgo._internal.encoding.gob.Gob_stringpair.StringPair to stdgo._internal.encoding.gob.Gob_stringpair.StringPair {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.gob.Gob_stringpair.StringPair((a : stdgo.GoString), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceStruct_static_extension) abstract LargeSliceStruct(stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct) from stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct to stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct {
    public var s(get, set) : Array<StringPair>;
    function get_s():Array<StringPair> return [for (i in this.s) i];
    function set_s(v:Array<StringPair>):Array<StringPair> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>);
        return v;
    }
    public function new(?s:Array<StringPair>) this = new stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct(([for (i in s) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceString_static_extension) abstract LargeSliceString(stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString) from stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString to stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString {
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString(([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decoderState_static_extension) @:dox(hide) abstract T_decoderState(stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState) from stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState to stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState {
    public var _dec(get, set) : Decoder;
    function get__dec():Decoder return this._dec;
    function set__dec(v:Decoder):Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return v;
    }
    public var _b(get, set) : T_decBuffer;
    function get__b():T_decBuffer return this._b;
    function set__b(v:T_decBuffer):T_decBuffer {
        this._b = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = (v : stdgo.GoInt);
        return v;
    }
    public var _next(get, set) : T_decoderState;
    function get__next():T_decoderState return this._next;
    function set__next(v:T_decoderState):T_decoderState {
        this._next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        return v;
    }
    public function new(?_dec:Decoder, ?_b:T_decBuffer, ?_fieldnum:StdTypes.Int, ?_next:T_decoderState) this = new stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState((_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>), (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>), (_fieldnum : stdgo.GoInt), (_next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decBuffer_static_extension) @:dox(hide) abstract T_decBuffer(stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer) from stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer to stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decInstr_static_extension) @:dox(hide) abstract T_decInstr(stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr) from stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr to stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr {
    public var _op(get, set) : T_decOp;
    function get__op():T_decOp return this._op;
    function set__op(v:T_decOp):T_decOp {
        this._op = v;
        return v;
    }
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = (v : stdgo.GoInt);
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _ovfl(get, set) : stdgo.Error;
    function get__ovfl():stdgo.Error return this._ovfl;
    function set__ovfl(v:stdgo.Error):stdgo.Error {
        this._ovfl = (v : stdgo.Error);
        return v;
    }
    public function new(?_op:T_decOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_ovfl:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_op, (_field : stdgo.GoInt), ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_ovfl : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decEngine_static_extension) @:dox(hide) abstract T_decEngine(stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine) from stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine to stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine {
    public var _instr(get, set) : Array<T_decInstr>;
    function get__instr():Array<T_decInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<T_decInstr>):Array<T_decInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        return v;
    }
    public var _numInstr(get, set) : StdTypes.Int;
    function get__numInstr():StdTypes.Int return this._numInstr;
    function set__numInstr(v:StdTypes.Int):StdTypes.Int {
        this._numInstr = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_instr:Array<T_decInstr>, ?_numInstr:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>), (_numInstr : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_emptyStruct_static_extension) @:dox(hide) abstract T_emptyStruct(stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct) from stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct to stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct {
    public function new() this = new stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.gob.Gob_decoder.Decoder) from stdgo._internal.encoding.gob.Gob_decoder.Decoder to stdgo._internal.encoding.gob.Gob_decoder.Decoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : T_decBuffer;
    function get__buf():T_decBuffer return this._buf;
    function set__buf(v:T_decBuffer):T_decBuffer {
        this._buf = v;
        return v;
    }
    public var _wireType(get, set) : Map<T_typeId, T_wireType>;
    function get__wireType():Map<T_typeId, T_wireType> return {
        final __obj__:Map<T_typeId, T_wireType> = [];
        for (key => value in this._wireType) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__wireType(v:Map<T_typeId, T_wireType>):Map<T_typeId, T_wireType> {
        this._wireType = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>);
            };
            __obj__;
        };
        return v;
    }
    public var _decoderCache(get, set) : Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>>;
    function get__decoderCache():Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>> return {
        final __obj__:Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>> = [];
        for (key => value in this._decoderCache) {
            __obj__[key] = {
                final __obj__:Map<T_typeId, T_decEngine> = [];
                for (key => value in value) {
                    __obj__[key] = value;
                };
                __obj__;
            };
        };
        __obj__;
    };
    function set__decoderCache(v:Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>>):Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>> {
        this._decoderCache = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>>();
            for (key => value in v) {
                __obj__[key] = {
                    final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>();
                    for (key => value in value) {
                        __obj__[key] = (value : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
                    };
                    __obj__;
                };
            };
            __obj__;
        };
        return v;
    }
    public var _ignorerCache(get, set) : Map<T_typeId, T_decEngine>;
    function get__ignorerCache():Map<T_typeId, T_decEngine> return {
        final __obj__:Map<T_typeId, T_decEngine> = [];
        for (key => value in this._ignorerCache) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__ignorerCache(v:Map<T_typeId, T_decEngine>):Map<T_typeId, T_decEngine> {
        this._ignorerCache = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
            };
            __obj__;
        };
        return v;
    }
    public var _freeList(get, set) : T_decoderState;
    function get__freeList():T_decoderState return this._freeList;
    function set__freeList(v:T_decoderState):T_decoderState {
        this._freeList = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        return v;
    }
    public var _countBuf(get, set) : Array<std.UInt>;
    function get__countBuf():Array<std.UInt> return [for (i in this._countBuf) i];
    function set__countBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._countBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:T_decBuffer, ?_wireType:Map<T_typeId, T_wireType>, ?_decoderCache:Map<stdgo._internal.reflect.Reflect_type_.Type_, Map<T_typeId, T_decEngine>>, ?_ignorerCache:Map<T_typeId, T_decEngine>, ?_freeList:T_decoderState, ?_countBuf:Array<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_decoder.Decoder(_mutex, _r, _buf, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>>();
        for (key => value in _wireType) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>>();
        for (key => value in _decoderCache) {
            __obj__[key] = {
                final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>();
                for (key => value in value) {
                    __obj__[key] = (value : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
                };
                __obj__;
            };
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>();
        for (key => value in _ignorerCache) {
            __obj__[key] = (value : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
        };
        __obj__;
    }, (_freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>), ([for (i in _countBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encoderState_static_extension) @:dox(hide) abstract T_encoderState(stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState) from stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState to stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState {
    public var _enc(get, set) : Encoder;
    function get__enc():Encoder return this._enc;
    function set__enc(v:Encoder):Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        return v;
    }
    public var _b(get, set) : T_encBuffer;
    function get__b():T_encBuffer return this._b;
    function set__b(v:T_encBuffer):T_encBuffer {
        this._b = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        return v;
    }
    public var _sendZero(get, set) : Bool;
    function get__sendZero():Bool return this._sendZero;
    function set__sendZero(v:Bool):Bool {
        this._sendZero = v;
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = (v : stdgo.GoInt);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _next(get, set) : T_encoderState;
    function get__next():T_encoderState return this._next;
    function set__next(v:T_encoderState):T_encoderState {
        this._next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        return v;
    }
    public function new(?_enc:Encoder, ?_b:T_encBuffer, ?_sendZero:Bool, ?_fieldnum:StdTypes.Int, ?_buf:haxe.ds.Vector<std.UInt>, ?_next:T_encoderState) this = new stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState((_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>), (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>), _sendZero, (_fieldnum : stdgo.GoInt), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encBuffer_static_extension) @:dox(hide) abstract T_encBuffer(stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer) from stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer to stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_scratch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encInstr_static_extension) @:dox(hide) abstract T_encInstr(stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr) from stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr to stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr {
    public var _op(get, set) : T_encOp;
    function get__op():T_encOp return this._op;
    function set__op(v:T_encOp):T_encOp {
        this._op = v;
        return v;
    }
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = (v : stdgo.GoInt);
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_op:T_encOp, ?_field:StdTypes.Int, ?_index:Array<StdTypes.Int>, ?_indir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(_op, (_field : stdgo.GoInt), ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_indir : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encEngine_static_extension) @:dox(hide) abstract T_encEngine(stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine) from stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine to stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine {
    public var _instr(get, set) : Array<T_encInstr>;
    function get__instr():Array<T_encInstr> return [for (i in this._instr) i];
    function set__instr(v:Array<T_encInstr>):Array<T_encInstr> {
        this._instr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
        return v;
    }
    public function new(?_instr:Array<T_encInstr>) this = new stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine(([for (i in _instr) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.gob.Gob_encoder.Encoder) from stdgo._internal.encoding.gob.Gob_encoder.Encoder to stdgo._internal.encoding.gob.Gob_encoder.Encoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _w(get, set) : Array<stdgo._internal.io.Io_writer.Writer>;
    function get__w():Array<stdgo._internal.io.Io_writer.Writer> return [for (i in this._w) i];
    function set__w(v:Array<stdgo._internal.io.Io_writer.Writer>):Array<stdgo._internal.io.Io_writer.Writer> {
        this._w = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
        return v;
    }
    public var _sent(get, set) : Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId>;
    function get__sent():Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId> return {
        final __obj__:Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId> = [];
        for (key => value in this._sent) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__sent(v:Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId>):Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId> {
        this._sent = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _countState(get, set) : T_encoderState;
    function get__countState():T_encoderState return this._countState;
    function set__countState(v:T_encoderState):T_encoderState {
        this._countState = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        return v;
    }
    public var _freeList(get, set) : T_encoderState;
    function get__freeList():T_encoderState return this._freeList;
    function set__freeList(v:T_encoderState):T_encoderState {
        this._freeList = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        return v;
    }
    public var _byteBuf(get, set) : T_encBuffer;
    function get__byteBuf():T_encBuffer return this._byteBuf;
    function set__byteBuf(v:T_encBuffer):T_encBuffer {
        this._byteBuf = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:Array<stdgo._internal.io.Io_writer.Writer>, ?_sent:Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId>, ?_countState:T_encoderState, ?_freeList:T_encoderState, ?_byteBuf:T_encBuffer, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_encoder.Encoder(_mutex, ([for (i in _w) i] : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>();
        for (key => value in _sent) {
            __obj__[key] = value;
        };
        __obj__;
    }, (_countState : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>), (_freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>), _byteBuf, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ET0_static_extension) abstract ET0(stdgo._internal.encoding.gob.Gob_et0.ET0) from stdgo._internal.encoding.gob.Gob_et0.ET0 to stdgo._internal.encoding.gob.Gob_et0.ET0 {
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
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.encoding.gob.Gob_et0.ET0((a : stdgo.GoInt), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ET2_static_extension) abstract ET2(stdgo._internal.encoding.gob.Gob_et2.ET2) from stdgo._internal.encoding.gob.Gob_et2.ET2 to stdgo._internal.encoding.gob.Gob_et2.ET2 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob_et2.ET2((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ET1_static_extension) abstract ET1(stdgo._internal.encoding.gob.Gob_et1.ET1) from stdgo._internal.encoding.gob.Gob_et1.ET1 to stdgo._internal.encoding.gob.Gob_et1.ET1 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var et2(get, set) : ET2;
    function get_et2():ET2 return this.et2;
    function set_et2(v:ET2):ET2 {
        this.et2 = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
        return v;
    }
    public var next(get, set) : ET1;
    function get_next():ET1 return this.next;
    function set_next(v:ET1):ET1 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:ET2, ?next:ET1) this = new stdgo._internal.encoding.gob.Gob_et1.ET1((a : stdgo.GoInt), (et2 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>), (next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ET3_static_extension) abstract ET3(stdgo._internal.encoding.gob.Gob_et3.ET3) from stdgo._internal.encoding.gob.Gob_et3.ET3 to stdgo._internal.encoding.gob.Gob_et3.ET3 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var et2(get, set) : ET2;
    function get_et2():ET2 return this.et2;
    function set_et2(v:ET2):ET2 {
        this.et2 = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
        return v;
    }
    public var differentNext(get, set) : ET1;
    function get_differentNext():ET1 return this.differentNext;
    function set_differentNext(v:ET1):ET1 {
        this.differentNext = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:ET2, ?differentNext:ET1) this = new stdgo._internal.encoding.gob.Gob_et3.ET3((a : stdgo.GoInt), (et2 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>), (differentNext : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ET4_static_extension) abstract ET4(stdgo._internal.encoding.gob.Gob_et4.ET4) from stdgo._internal.encoding.gob.Gob_et4.ET4 to stdgo._internal.encoding.gob.Gob_et4.ET4 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var et2(get, set) : StdTypes.Float;
    function get_et2():StdTypes.Float return this.et2;
    function set_et2(v:StdTypes.Float):StdTypes.Float {
        this.et2 = (v : stdgo.GoFloat64);
        return v;
    }
    public var next(get, set) : StdTypes.Int;
    function get_next():StdTypes.Int return this.next;
    function set_next(v:StdTypes.Int):StdTypes.Int {
        this.next = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int, ?et2:StdTypes.Float, ?next:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_et4.ET4((a : stdgo.GoInt), (et2 : stdgo.GoFloat64), (next : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.SingleTest_static_extension) abstract SingleTest(stdgo._internal.encoding.gob.Gob_singletest.SingleTest) from stdgo._internal.encoding.gob.Gob_singletest.SingleTest to stdgo._internal.encoding.gob.Gob_singletest.SingleTest {
    public var _in(get, set) : stdgo.AnyInterface;
    function get__in():stdgo.AnyInterface return this._in;
    function set__in(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._in = (v : stdgo.AnyInterface);
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = (v : stdgo.AnyInterface);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:String) this = new stdgo._internal.encoding.gob.Gob_singletest.SingleTest((_in : stdgo.AnyInterface), (_out : stdgo.AnyInterface), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension) @:dox(hide) abstract T_interfaceIndirectTestT(stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT) from stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT to stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT {
    public function new() this = new stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Struct0_static_extension) abstract Struct0(stdgo._internal.encoding.gob.Gob_struct0.Struct0) from stdgo._internal.encoding.gob.Gob_struct0.Struct0 to stdgo._internal.encoding.gob.Gob_struct0.Struct0 {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_struct0.Struct0((i : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.NewType0_static_extension) abstract NewType0(stdgo._internal.encoding.gob.Gob_newtype0.NewType0) from stdgo._internal.encoding.gob.Gob_newtype0.NewType0 to stdgo._internal.encoding.gob.Gob_newtype0.NewType0 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.gob.Gob_newtype0.NewType0((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_ignoreTest_static_extension) @:dox(hide) abstract T_ignoreTest(stdgo._internal.encoding.gob.Gob_t_ignoretest.T_ignoreTest) from stdgo._internal.encoding.gob.Gob_t_ignoretest.T_ignoreTest to stdgo._internal.encoding.gob.Gob_t_ignoretest.T_ignoreTest {
    public var _in(get, set) : stdgo.AnyInterface;
    function get__in():stdgo.AnyInterface return this._in;
    function set__in(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._in = (v : stdgo.AnyInterface);
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_t_ignoretest.T_ignoreTest((_in : stdgo.AnyInterface), (_out : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug0Outer_static_extension) abstract Bug0Outer(stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer) from stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer to stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer {
    public var bug0Field(get, set) : stdgo.AnyInterface;
    function get_bug0Field():stdgo.AnyInterface return this.bug0Field;
    function set_bug0Field(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bug0Field = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?bug0Field:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer((bug0Field : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug0Inner_static_extension) abstract Bug0Inner(stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner) from stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner to stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug1Elem_static_extension) abstract Bug1Elem(stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem) from stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem to stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var id(get, set) : StdTypes.Int;
    function get_id():StdTypes.Int return this.id;
    function set_id(v:StdTypes.Int):StdTypes.Int {
        this.id = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?id:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem((name : stdgo.GoString), (id : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug2_static_extension) abstract Bug2(stdgo._internal.encoding.gob.Gob_bug2.Bug2) from stdgo._internal.encoding.gob.Gob_bug2.Bug2 to stdgo._internal.encoding.gob.Gob_bug2.Bug2 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_c():stdgo.Chan<stdgo.GoInt> return this.c;
    function set_c(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.c = (v : stdgo.Chan<stdgo.GoInt>);
        return v;
    }
    public var cP(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get_cP():stdgo.Chan<stdgo.GoInt> return this.cP;
    function set_cP(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this.cP = (v : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>);
        return v;
    }
    public var f(get, set) : () -> Void;
    function get_f():() -> Void return () -> this.f();
    function set_f(v:() -> Void):() -> Void {
        this.f = v;
        return v;
    }
    public var fPP(get, set) : stdgo.Pointer<stdgo.Pointer<() -> Void>>;
    function get_fPP():stdgo.Pointer<stdgo.Pointer<() -> Void>> return () -> this.fPP();
    function set_fPP(v:stdgo.Pointer<stdgo.Pointer<() -> Void>>):stdgo.Pointer<stdgo.Pointer<() -> Void>> {
        this.fPP = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?c:stdgo.Chan<stdgo.GoInt>, ?cP:stdgo.Chan<stdgo.GoInt>, ?f:() -> Void, ?fPP:stdgo.Pointer<stdgo.Pointer<() -> Void>>) this = new stdgo._internal.encoding.gob.Gob_bug2.Bug2((a : stdgo.GoInt), (c : stdgo.Chan<stdgo.GoInt>), (cP : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>), f, fPP);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug3_static_extension) abstract Bug3(stdgo._internal.encoding.gob.Gob_bug3.Bug3) from stdgo._internal.encoding.gob.Gob_bug3.Bug3 to stdgo._internal.encoding.gob.Gob_bug3.Bug3 {
    public var num(get, set) : StdTypes.Int;
    function get_num():StdTypes.Int return this.num;
    function set_num(v:StdTypes.Int):StdTypes.Int {
        this.num = (v : stdgo.GoInt);
        return v;
    }
    public var children(get, set) : Array<Bug3>;
    function get_children():Array<Bug3> return [for (i in this.children) i];
    function set_children(v:Array<Bug3>):Array<Bug3> {
        this.children = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>);
        return v;
    }
    public function new(?num:StdTypes.Int, ?children:Array<Bug3>) this = new stdgo._internal.encoding.gob.Gob_bug3.Bug3((num : stdgo.GoInt), ([for (i in children) (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug4Public_static_extension) abstract Bug4Public(stdgo._internal.encoding.gob.Gob_bug4public.Bug4Public) from stdgo._internal.encoding.gob.Gob_bug4public.Bug4Public to stdgo._internal.encoding.gob.Gob_bug4public.Bug4Public {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var secret(get, set) : Bug4Secret;
    function get_secret():Bug4Secret return this.secret;
    function set_secret(v:Bug4Secret):Bug4Secret {
        this.secret = v;
        return v;
    }
    public function new(?name:String, ?secret:Bug4Secret) this = new stdgo._internal.encoding.gob.Gob_bug4public.Bug4Public((name : stdgo.GoString), secret);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bug4Secret_static_extension) abstract Bug4Secret(stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret) from stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret to stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret((_a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Z_static_extension) abstract Z(stdgo._internal.encoding.gob.Gob_z.Z) from stdgo._internal.encoding.gob.Gob_z.Z to stdgo._internal.encoding.gob.Gob_z.Z {
    public function new() this = new stdgo._internal.encoding.gob.Gob_z.Z();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_badDataTest_static_extension) @:dox(hide) abstract T_badDataTest(stdgo._internal.encoding.gob.Gob_t_baddatatest.T_badDataTest) from stdgo._internal.encoding.gob.Gob_t_baddatatest.T_badDataTest to stdgo._internal.encoding.gob.Gob_t_baddatatest.T_badDataTest {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _error(get, set) : String;
    function get__error():String return this._error;
    function set__error(v:String):String {
        this._error = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_input:String, ?_error:String, ?_data:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_t_baddatatest.T_badDataTest((_input : stdgo.GoString), (_error : stdgo.GoString), (_data : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobError_static_extension) @:dox(hide) abstract T_gobError(stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError) from stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError to stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ByteStruct_static_extension) abstract ByteStruct(stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct) from stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct to stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct {
    public var _a(get, set) : std.UInt;
    function get__a():std.UInt return this._a;
    function set__a(v:std.UInt):std.UInt {
        this._a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_a:std.UInt) this = new stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct((_a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.StringStruct_static_extension) abstract StringStruct(stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct) from stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct to stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public function new(?_s:String) this = new stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct((_s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.ArrayStruct_static_extension) abstract ArrayStruct(stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct) from stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct to stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct {
    public var _a(get, set) : haxe.ds.Vector<std.UInt>;
    function get__a():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._a) i]);
    function set__a(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._a = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_a:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct(([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest0_static_extension) abstract GobTest0(stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0) from stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0 to stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : ByteStruct;
    function get_g():ByteStruct return this.g;
    function set_g(v:ByteStruct):ByteStruct {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:ByteStruct) this = new stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0((x : stdgo.GoInt), (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest1_static_extension) abstract GobTest1(stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1) from stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1 to stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : StringStruct;
    function get_g():StringStruct return this.g;
    function set_g(v:StringStruct):StringStruct {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:StringStruct) this = new stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1((x : stdgo.GoInt), (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest2_static_extension) abstract GobTest2(stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2) from stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2 to stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : String;
    function get_g():String return this.g;
    function set_g(v:String):String {
        this.g = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:String) this = new stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2((x : stdgo.GoInt), (g : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest3_static_extension) abstract GobTest3(stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3) from stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3 to stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : stdgo.Pointer<Gobber>;
    function get_g():stdgo.Pointer<Gobber> return this.g;
    function set_g(v:stdgo.Pointer<Gobber>):stdgo.Pointer<Gobber> {
        this.g = v;
        return v;
    }
    public var b(get, set) : stdgo.Pointer<BinaryGobber>;
    function get_b():stdgo.Pointer<BinaryGobber> return this.b;
    function set_b(v:stdgo.Pointer<BinaryGobber>):stdgo.Pointer<BinaryGobber> {
        this.b = v;
        return v;
    }
    public var t(get, set) : stdgo.Pointer<TextGobber>;
    function get_t():stdgo.Pointer<TextGobber> return this.t;
    function set_t(v:stdgo.Pointer<TextGobber>):stdgo.Pointer<TextGobber> {
        this.t = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<Gobber>, ?b:stdgo.Pointer<BinaryGobber>, ?t:stdgo.Pointer<TextGobber>) this = new stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3((x : stdgo.GoInt), g, b, t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest4_static_extension) abstract GobTest4(stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4) from stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4 to stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var v(get, set) : ValueGobber;
    function get_v():ValueGobber return this.v;
    function set_v(v:ValueGobber):ValueGobber {
        this.v = v;
        return v;
    }
    public var bV(get, set) : BinaryValueGobber;
    function get_bV():BinaryValueGobber return this.bV;
    function set_bV(v:BinaryValueGobber):BinaryValueGobber {
        this.bV = v;
        return v;
    }
    public var tV(get, set) : TextValueGobber;
    function get_tV():TextValueGobber return this.tV;
    function set_tV(v:TextValueGobber):TextValueGobber {
        this.tV = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:ValueGobber, ?bV:BinaryValueGobber, ?tV:TextValueGobber) this = new stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4((x : stdgo.GoInt), v, bV, tV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest5_static_extension) abstract GobTest5(stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5) from stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5 to stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var v(get, set) : stdgo.Pointer<ValueGobber>;
    function get_v():stdgo.Pointer<ValueGobber> return this.v;
    function set_v(v:stdgo.Pointer<ValueGobber>):stdgo.Pointer<ValueGobber> {
        this.v = v;
        return v;
    }
    public var bV(get, set) : stdgo.Pointer<BinaryValueGobber>;
    function get_bV():stdgo.Pointer<BinaryValueGobber> return this.bV;
    function set_bV(v:stdgo.Pointer<BinaryValueGobber>):stdgo.Pointer<BinaryValueGobber> {
        this.bV = v;
        return v;
    }
    public var tV(get, set) : stdgo.Pointer<TextValueGobber>;
    function get_tV():stdgo.Pointer<TextValueGobber> return this.tV;
    function set_tV(v:stdgo.Pointer<TextValueGobber>):stdgo.Pointer<TextValueGobber> {
        this.tV = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<ValueGobber>, ?bV:stdgo.Pointer<BinaryValueGobber>, ?tV:stdgo.Pointer<TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5((x : stdgo.GoInt), v, bV, tV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest6_static_extension) abstract GobTest6(stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6) from stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6 to stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var v(get, set) : ValueGobber;
    function get_v():ValueGobber return this.v;
    function set_v(v:ValueGobber):ValueGobber {
        this.v = v;
        return v;
    }
    public var w(get, set) : stdgo.Pointer<ValueGobber>;
    function get_w():stdgo.Pointer<ValueGobber> return this.w;
    function set_w(v:stdgo.Pointer<ValueGobber>):stdgo.Pointer<ValueGobber> {
        this.w = v;
        return v;
    }
    public var bV(get, set) : BinaryValueGobber;
    function get_bV():BinaryValueGobber return this.bV;
    function set_bV(v:BinaryValueGobber):BinaryValueGobber {
        this.bV = v;
        return v;
    }
    public var bW(get, set) : stdgo.Pointer<BinaryValueGobber>;
    function get_bW():stdgo.Pointer<BinaryValueGobber> return this.bW;
    function set_bW(v:stdgo.Pointer<BinaryValueGobber>):stdgo.Pointer<BinaryValueGobber> {
        this.bW = v;
        return v;
    }
    public var tV(get, set) : TextValueGobber;
    function get_tV():TextValueGobber return this.tV;
    function set_tV(v:TextValueGobber):TextValueGobber {
        this.tV = v;
        return v;
    }
    public var tW(get, set) : stdgo.Pointer<TextValueGobber>;
    function get_tW():stdgo.Pointer<TextValueGobber> return this.tW;
    function set_tW(v:stdgo.Pointer<TextValueGobber>):stdgo.Pointer<TextValueGobber> {
        this.tW = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:ValueGobber, ?w:stdgo.Pointer<ValueGobber>, ?bV:BinaryValueGobber, ?bW:stdgo.Pointer<BinaryValueGobber>, ?tV:TextValueGobber, ?tW:stdgo.Pointer<TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob_gobtest6.GobTest6((x : stdgo.GoInt), v, w, bV, bW, tV, tW);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest7_static_extension) abstract GobTest7(stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7) from stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7 to stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var v(get, set) : stdgo.Pointer<ValueGobber>;
    function get_v():stdgo.Pointer<ValueGobber> return this.v;
    function set_v(v:stdgo.Pointer<ValueGobber>):stdgo.Pointer<ValueGobber> {
        this.v = v;
        return v;
    }
    public var w(get, set) : ValueGobber;
    function get_w():ValueGobber return this.w;
    function set_w(v:ValueGobber):ValueGobber {
        this.w = v;
        return v;
    }
    public var bV(get, set) : stdgo.Pointer<BinaryValueGobber>;
    function get_bV():stdgo.Pointer<BinaryValueGobber> return this.bV;
    function set_bV(v:stdgo.Pointer<BinaryValueGobber>):stdgo.Pointer<BinaryValueGobber> {
        this.bV = v;
        return v;
    }
    public var bW(get, set) : BinaryValueGobber;
    function get_bW():BinaryValueGobber return this.bW;
    function set_bW(v:BinaryValueGobber):BinaryValueGobber {
        this.bW = v;
        return v;
    }
    public var tV(get, set) : stdgo.Pointer<TextValueGobber>;
    function get_tV():stdgo.Pointer<TextValueGobber> return this.tV;
    function set_tV(v:stdgo.Pointer<TextValueGobber>):stdgo.Pointer<TextValueGobber> {
        this.tV = v;
        return v;
    }
    public var tW(get, set) : TextValueGobber;
    function get_tW():TextValueGobber return this.tW;
    function set_tW(v:TextValueGobber):TextValueGobber {
        this.tW = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<ValueGobber>, ?w:ValueGobber, ?bV:stdgo.Pointer<BinaryValueGobber>, ?bW:BinaryValueGobber, ?tV:stdgo.Pointer<TextValueGobber>, ?tW:TextValueGobber) this = new stdgo._internal.encoding.gob.Gob_gobtest7.GobTest7((x : stdgo.GoInt), v, w, bV, bW, tV, tW);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIgnoreEncoder_static_extension) abstract GobTestIgnoreEncoder(stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder) from stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder to stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder((x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestValueEncDec_static_extension) abstract GobTestValueEncDec(stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec) from stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec to stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : StringStruct;
    function get_g():StringStruct return this.g;
    function set_g(v:StringStruct):StringStruct {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:StringStruct) this = new stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec((x : stdgo.GoInt), g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIndirectEncDec_static_extension) abstract GobTestIndirectEncDec(stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec) from stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec to stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : stdgo.Pointer<StringStruct>;
    function get_g():stdgo.Pointer<StringStruct> return this.g;
    function set_g(v:stdgo.Pointer<StringStruct>):stdgo.Pointer<StringStruct> {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<StringStruct>) this = new stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec((x : stdgo.GoInt), g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestArrayEncDec_static_extension) abstract GobTestArrayEncDec(stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec) from stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec to stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : ArrayStruct;
    function get_a():ArrayStruct return this.a;
    function set_a(v:ArrayStruct):ArrayStruct {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:ArrayStruct) this = new stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec((x : stdgo.GoInt), a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIndirectArrayEncDec_static_extension) abstract GobTestIndirectArrayEncDec(stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec) from stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec to stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : stdgo.Pointer<ArrayStruct>;
    function get_a():stdgo.Pointer<ArrayStruct> return this.a;
    function set_a(v:stdgo.Pointer<ArrayStruct>):stdgo.Pointer<ArrayStruct> {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:stdgo.Pointer<ArrayStruct>) this = new stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec((x : stdgo.GoInt), a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobDecoderBug0_static_extension) @:dox(hide) abstract T_gobDecoderBug0(stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0) from stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0 to stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0 {
    public var _foo(get, set) : String;
    function get__foo():String return this._foo;
    function set__foo(v:String):String {
        this._foo = (v : stdgo.GoString);
        return v;
    }
    public var _bar(get, set) : String;
    function get__bar():String return this._bar;
    function set__bar(v:String):String {
        this._bar = (v : stdgo.GoString);
        return v;
    }
    public function new(?_foo:String, ?_bar:String) this = new stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0((_foo : stdgo.GoString), (_bar : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_isZeroBug_static_extension) @:dox(hide) abstract T_isZeroBug(stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug) from stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug to stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug {
    public var t(get, set) : stdgo._internal.time.Time_time.Time;
    function get_t():stdgo._internal.time.Time_time.Time return this.t;
    function set_t(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.t = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : T_isZeroBugArray;
    function get_a():T_isZeroBugArray return this.a;
    function set_a(v:T_isZeroBugArray):T_isZeroBugArray {
        this.a = v;
        return v;
    }
    public var f(get, set) : T_isZeroBugInterface;
    function get_f():T_isZeroBugInterface return this.f;
    function set_f(v:T_isZeroBugInterface):T_isZeroBugInterface {
        this.f = v;
        return v;
    }
    public function new(?t:stdgo._internal.time.Time_time.Time, ?s:String, ?i:StdTypes.Int, ?a:T_isZeroBugArray, ?f:T_isZeroBugInterface) this = new stdgo._internal.encoding.gob.Gob_t_iszerobug.T_isZeroBug(t, (s : stdgo.GoString), (i : stdgo.GoInt), a, f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_isZeroBugInterface_static_extension) @:dox(hide) abstract T_isZeroBugInterface(stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface) from stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface to stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface((i : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bench_static_extension) abstract Bench(stdgo._internal.encoding.gob.Gob_bench.Bench) from stdgo._internal.encoding.gob.Gob_bench.Bench to stdgo._internal.encoding.gob.Gob_bench.Bench {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = (v : stdgo.GoFloat64);
        return v;
    }
    public var c(get, set) : String;
    function get_c():String return this.c;
    function set_c(v:String):String {
        this.c = (v : stdgo.GoString);
        return v;
    }
    public var d(get, set) : Array<std.UInt>;
    function get_d():Array<std.UInt> return [for (i in this.d) i];
    function set_d(v:Array<std.UInt>):Array<std.UInt> {
        this.d = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Float, ?c:String, ?d:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_bench.Bench((a : stdgo.GoInt), (b : stdgo.GoFloat64), (c : stdgo.GoString), ([for (i in d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_benchmarkBuf_static_extension) @:dox(hide) abstract T_benchmarkBuf(stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf) from stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf to stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf {
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_offset:StdTypes.Int, ?_data:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf((_offset : stdgo.GoInt), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_userTypeInfo_static_extension) @:dox(hide) abstract T_userTypeInfo(stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo) from stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo to stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo {
    public var _user(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get__user():stdgo._internal.reflect.Reflect_type_.Type_ return this._user;
    function set__user(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this._user = v;
        return v;
    }
    public var _base(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get__base():stdgo._internal.reflect.Reflect_type_.Type_ return this._base;
    function set__base(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this._base = v;
        return v;
    }
    public var _indir(get, set) : StdTypes.Int;
    function get__indir():StdTypes.Int return this._indir;
    function set__indir(v:StdTypes.Int):StdTypes.Int {
        this._indir = (v : stdgo.GoInt);
        return v;
    }
    public var _externalEnc(get, set) : StdTypes.Int;
    function get__externalEnc():StdTypes.Int return this._externalEnc;
    function set__externalEnc(v:StdTypes.Int):StdTypes.Int {
        this._externalEnc = (v : stdgo.GoInt);
        return v;
    }
    public var _externalDec(get, set) : StdTypes.Int;
    function get__externalDec():StdTypes.Int return this._externalDec;
    function set__externalDec(v:StdTypes.Int):StdTypes.Int {
        this._externalDec = (v : stdgo.GoInt);
        return v;
    }
    public var _encIndir(get, set) : StdTypes.Int;
    function get__encIndir():StdTypes.Int return this._encIndir;
    function set__encIndir(v:StdTypes.Int):StdTypes.Int {
        this._encIndir = (v : stdgo.GoInt8);
        return v;
    }
    public var _decIndir(get, set) : StdTypes.Int;
    function get__decIndir():StdTypes.Int return this._decIndir;
    function set__decIndir(v:StdTypes.Int):StdTypes.Int {
        this._decIndir = (v : stdgo.GoInt8);
        return v;
    }
    public function new(?_user:stdgo._internal.reflect.Reflect_type_.Type_, ?_base:stdgo._internal.reflect.Reflect_type_.Type_, ?_indir:StdTypes.Int, ?_externalEnc:StdTypes.Int, ?_externalDec:StdTypes.Int, ?_encIndir:StdTypes.Int, ?_decIndir:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo(_user, _base, (_indir : stdgo.GoInt), (_externalEnc : stdgo.GoInt), (_externalDec : stdgo.GoInt), (_encIndir : stdgo.GoInt8), (_decIndir : stdgo.GoInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.CommonType_static_extension) abstract CommonType(stdgo._internal.encoding.gob.Gob_commontype.CommonType) from stdgo._internal.encoding.gob.Gob_commontype.CommonType to stdgo._internal.encoding.gob.Gob_commontype.CommonType {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var id(get, set) : T_typeId;
    function get_id():T_typeId return this.id;
    function set_id(v:T_typeId):T_typeId {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:T_typeId) this = new stdgo._internal.encoding.gob.Gob_commontype.CommonType((name : stdgo.GoString), id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_arrayType_static_extension) @:dox(hide) abstract T_arrayType(stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType) from stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType to stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var elem(get, set) : T_typeId;
    function get_elem():T_typeId return this.elem;
    function set_elem(v:T_typeId):T_typeId {
        this.elem = v;
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?commonType:CommonType, ?elem:T_typeId, ?len:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType(commonType, elem, (len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobEncoderType_static_extension) @:dox(hide) abstract T_gobEncoderType(stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType) from stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType to stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public function new(?commonType:CommonType) this = new stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType(commonType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_mapType_static_extension) @:dox(hide) abstract T_mapType(stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType) from stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType to stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var key(get, set) : T_typeId;
    function get_key():T_typeId return this.key;
    function set_key(v:T_typeId):T_typeId {
        this.key = v;
        return v;
    }
    public var elem(get, set) : T_typeId;
    function get_elem():T_typeId return this.elem;
    function set_elem(v:T_typeId):T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:CommonType, ?key:T_typeId, ?elem:T_typeId) this = new stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType(commonType, key, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_sliceType_static_extension) @:dox(hide) abstract T_sliceType(stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType) from stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType to stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var elem(get, set) : T_typeId;
    function get_elem():T_typeId return this.elem;
    function set_elem(v:T_typeId):T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:CommonType, ?elem:T_typeId) this = new stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType(commonType, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_fieldType_static_extension) @:dox(hide) abstract T_fieldType(stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType) from stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType to stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var id(get, set) : T_typeId;
    function get_id():T_typeId return this.id;
    function set_id(v:T_typeId):T_typeId {
        this.id = v;
        return v;
    }
    public function new(?name:String, ?id:T_typeId) this = new stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType((name : stdgo.GoString), id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_structType_static_extension) @:dox(hide) abstract T_structType(stdgo._internal.encoding.gob.Gob_t_structtype.T_structType) from stdgo._internal.encoding.gob.Gob_t_structtype.T_structType to stdgo._internal.encoding.gob.Gob_t_structtype.T_structType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var field(get, set) : Array<T_fieldType>;
    function get_field():Array<T_fieldType> return [for (i in this.field) i];
    function set_field(v:Array<T_fieldType>):Array<T_fieldType> {
        this.field = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>);
        return v;
    }
    public function new(?commonType:CommonType, ?field:Array<T_fieldType>) this = new stdgo._internal.encoding.gob.Gob_t_structtype.T_structType(commonType, ([for (i in field) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_wireType_static_extension) @:dox(hide) abstract T_wireType(stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType) from stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType to stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType {
    public var arrayT(get, set) : T_arrayType;
    function get_arrayT():T_arrayType return this.arrayT;
    function set_arrayT(v:T_arrayType):T_arrayType {
        this.arrayT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>);
        return v;
    }
    public var sliceT(get, set) : T_sliceType;
    function get_sliceT():T_sliceType return this.sliceT;
    function set_sliceT(v:T_sliceType):T_sliceType {
        this.sliceT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
        return v;
    }
    public var structT(get, set) : T_structType;
    function get_structT():T_structType return this.structT;
    function set_structT(v:T_structType):T_structType {
        this.structT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
        return v;
    }
    public var mapT(get, set) : T_mapType;
    function get_mapT():T_mapType return this.mapT;
    function set_mapT(v:T_mapType):T_mapType {
        this.mapT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>);
        return v;
    }
    public var gobEncoderT(get, set) : T_gobEncoderType;
    function get_gobEncoderT():T_gobEncoderType return this.gobEncoderT;
    function set_gobEncoderT(v:T_gobEncoderType):T_gobEncoderType {
        this.gobEncoderT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        return v;
    }
    public var binaryMarshalerT(get, set) : T_gobEncoderType;
    function get_binaryMarshalerT():T_gobEncoderType return this.binaryMarshalerT;
    function set_binaryMarshalerT(v:T_gobEncoderType):T_gobEncoderType {
        this.binaryMarshalerT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        return v;
    }
    public var textMarshalerT(get, set) : T_gobEncoderType;
    function get_textMarshalerT():T_gobEncoderType return this.textMarshalerT;
    function set_textMarshalerT(v:T_gobEncoderType):T_gobEncoderType {
        this.textMarshalerT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        return v;
    }
    public function new(?arrayT:T_arrayType, ?sliceT:T_sliceType, ?structT:T_structType, ?mapT:T_mapType, ?gobEncoderT:T_gobEncoderType, ?binaryMarshalerT:T_gobEncoderType, ?textMarshalerT:T_gobEncoderType) this = new stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType((arrayT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>), (sliceT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>), (structT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>), (mapT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>), (gobEncoderT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>), (binaryMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>), (textMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_typeInfo_static_extension) @:dox(hide) abstract T_typeInfo(stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo) from stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo to stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo {
    public var _id(get, set) : T_typeId;
    function get__id():T_typeId return this._id;
    function set__id(v:T_typeId):T_typeId {
        this._id = v;
        return v;
    }
    public var _encInit(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__encInit():stdgo._internal.sync.Sync_mutex.Mutex return this._encInit;
    function set__encInit(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._encInit = v;
        return v;
    }
    public var _encoder(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>;
    function get__encoder():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> return this._encoder;
    function set__encoder(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> {
        this._encoder = v;
        return v;
    }
    public var _wire(get, set) : T_wireType;
    function get__wire():T_wireType return this._wire;
    function set__wire(v:T_wireType):T_wireType {
        this._wire = v;
        return v;
    }
    public function new(?_id:T_typeId, ?_encInit:stdgo._internal.sync.Sync_mutex.Mutex, ?_encoder:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, ?_wire:T_wireType) this = new stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo(_id, _encInit, _encoder, _wire);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_typeT_static_extension) @:dox(hide) abstract T_typeT(stdgo._internal.encoding.gob.Gob_t_typet.T_typeT) from stdgo._internal.encoding.gob.Gob_t_typet.T_typeT to stdgo._internal.encoding.gob.Gob_t_typet.T_typeT {
    public var _id(get, set) : T_typeId;
    function get__id():T_typeId return this._id;
    function set__id(v:T_typeId):T_typeId {
        this._id = v;
        return v;
    }
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public function new(?_id:T_typeId, ?_str:String) this = new stdgo._internal.encoding.gob.Gob_t_typet.T_typeT(_id, (_str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Bar_static_extension) abstract Bar(stdgo._internal.encoding.gob.Gob_bar.Bar) from stdgo._internal.encoding.gob.Gob_bar.Bar to stdgo._internal.encoding.gob.Gob_bar.Bar {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob_bar.Bar((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.Foo_static_extension) abstract Foo(stdgo._internal.encoding.gob.Gob_foo.Foo) from stdgo._internal.encoding.gob.Gob_foo.Foo to stdgo._internal.encoding.gob.Gob_foo.Foo {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt32);
        return v;
    }
    public var c(get, set) : String;
    function get_c():String return this.c;
    function set_c(v:String):String {
        this.c = (v : stdgo.GoString);
        return v;
    }
    public var d(get, set) : Array<std.UInt>;
    function get_d():Array<std.UInt> return [for (i in this.d) i];
    function set_d(v:Array<std.UInt>):Array<std.UInt> {
        this.d = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var e(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_e():stdgo.Pointer<StdTypes.Float> return this.e;
    function set_e(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.e = v;
        return v;
    }
    public var f(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>;
    function get_f():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> return this.f;
    function set_f(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> {
        this.f = v;
        return v;
    }
    public var g(get, set) : Bar;
    function get_g():Bar return this.g;
    function set_g(v:Bar):Bar {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>);
        return v;
    }
    public var h(get, set) : Bar;
    function get_h():Bar return this.h;
    function set_h(v:Bar):Bar {
        this.h = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>);
        return v;
    }
    public var i(get, set) : Foo;
    function get_i():Foo return this.i;
    function set_i(v:Foo):Foo {
        this.i = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_foo.Foo>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:String, ?d:Array<std.UInt>, ?e:stdgo.Pointer<StdTypes.Float>, ?f:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>, ?g:Bar, ?h:Bar, ?i:Foo) this = new stdgo._internal.encoding.gob.Gob_foo.Foo((a : stdgo.GoInt), (b : stdgo.GoInt32), (c : stdgo.GoString), ([for (i in d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), e, f, (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>), (h : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>), (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_foo.Foo>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.N1_static_extension) abstract N1(stdgo._internal.encoding.gob.Gob_n1.N1) from stdgo._internal.encoding.gob.Gob_n1.N1 to stdgo._internal.encoding.gob.Gob_n1.N1 {
    public function new() this = new stdgo._internal.encoding.gob.Gob_n1.N1();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.N2_static_extension) abstract N2(stdgo._internal.encoding.gob.Gob_n2.N2) from stdgo._internal.encoding.gob.Gob_n2.N2 to stdgo._internal.encoding.gob.Gob_n2.N2 {
    public function new() this = new stdgo._internal.encoding.gob.Gob_n2.N2();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.encoding.gob.Gob_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.encoding.gob.Gob_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.encoding.gob.Gob_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.encoding.gob.Gob_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.encoding.gob.Gob_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.encoding.gob.Gob_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.encoding.gob.Gob_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.encoding.gob.Gob_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.encoding.gob.Gob_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.encoding.gob.Gob_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.encoding.gob.Gob_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.encoding.gob.Gob_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.encoding.gob.Gob_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.encoding.gob.Gob_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.encoding.gob.Gob_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {

}
@:dox(hide) typedef T__struct_7 = stdgo._internal.encoding.gob.Gob_t__struct_7.T__struct_7;
@:dox(hide) typedef T__struct_8Pointer = stdgo._internal.encoding.gob.Gob_t__struct_8pointer.T__struct_8Pointer;
@:dox(hide) class T__struct_8_static_extension {

}
@:dox(hide) typedef T__struct_8 = stdgo._internal.encoding.gob.Gob_t__struct_8.T__struct_8;
@:dox(hide) typedef T__struct_9Pointer = stdgo._internal.encoding.gob.Gob_t__struct_9pointer.T__struct_9Pointer;
@:dox(hide) class T__struct_9_static_extension {

}
@:dox(hide) typedef T__struct_9 = stdgo._internal.encoding.gob.Gob_t__struct_9.T__struct_9;
@:dox(hide) typedef T__struct_10Pointer = stdgo._internal.encoding.gob.Gob_t__struct_10pointer.T__struct_10Pointer;
@:dox(hide) class T__struct_10_static_extension {

}
@:dox(hide) typedef T__struct_10 = stdgo._internal.encoding.gob.Gob_t__struct_10.T__struct_10;
@:dox(hide) typedef T__struct_11Pointer = stdgo._internal.encoding.gob.Gob_t__struct_11pointer.T__struct_11Pointer;
@:dox(hide) class T__struct_11_static_extension {

}
@:dox(hide) typedef T__struct_11 = stdgo._internal.encoding.gob.Gob_t__struct_11.T__struct_11;
@:dox(hide) typedef T__struct_12Pointer = stdgo._internal.encoding.gob.Gob_t__struct_12pointer.T__struct_12Pointer;
@:dox(hide) class T__struct_12_static_extension {

}
@:dox(hide) typedef T__struct_12 = stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12;
typedef Int_ = stdgo._internal.encoding.gob.Gob_int_.Int_;
typedef Float_ = stdgo._internal.encoding.gob.Gob_float_.Float_;
typedef Vector = stdgo._internal.encoding.gob.Gob_vector.Vector;
typedef String_ = stdgo._internal.encoding.gob.Gob_string_.String_;
@:dox(hide) typedef T_decHelper = stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper;
@:dox(hide) typedef T_decOp = stdgo._internal.encoding.gob.Gob_t_decop.T_decOp;
@:dox(hide) typedef T_encHelper = stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper;
@:dox(hide) typedef T_encOp = stdgo._internal.encoding.gob.Gob_t_encop.T_encOp;
typedef Bug1StructMap = stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap;
typedef Gobber = stdgo._internal.encoding.gob.Gob_gobber.Gobber;
typedef ValueGobber = stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber;
typedef BinaryGobber = stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber;
typedef BinaryValueGobber = stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber;
typedef TextGobber = stdgo._internal.encoding.gob.Gob_textgobber.TextGobber;
typedef TextValueGobber = stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber;
@:dox(hide) typedef T_isZeroBugArray = stdgo._internal.encoding.gob.Gob_t_iszerobugarray.T_isZeroBugArray;
@:dox(hide) typedef T_typeId = stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T2_13762_static_extension) @:dox(hide) abstract T_testEndToEnd___localname___T2_13762(stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762) from stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762 to stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762 {
    public var t(get, set) : String;
    function get_t():String return this.t;
    function set_t(v:String):String {
        this.t = (v : stdgo.GoString);
        return v;
    }
    public function new(?t:String) this = new stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762((t : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T3_13794_static_extension) @:dox(hide) abstract T_testEndToEnd___localname___T3_13794(stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794) from stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794 to stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794 {
    public var x(get, set) : StdTypes.Float;
    function get_x():StdTypes.Float return this.x;
    function set_x(v:StdTypes.Float):StdTypes.Float {
        this.x = (v : stdgo.GoFloat64);
        return v;
    }
    public var z(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_z():stdgo.Pointer<StdTypes.Int> return this.z;
    function set_z(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.z = v;
        return v;
    }
    public function new(?x:StdTypes.Float, ?z:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794((x : stdgo.GoFloat64), z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T1_13836_static_extension) @:dox(hide) abstract T_testEndToEnd___localname___T1_13836(stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836) from stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836 to stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : StdTypes.Int;
    function get_c():StdTypes.Int return this.c;
    function set_c(v:StdTypes.Int):StdTypes.Int {
        this.c = (v : stdgo.GoInt);
        return v;
    }
    public var m(get, set) : Map<String, stdgo.Pointer<StdTypes.Float>>;
    function get_m():Map<String, stdgo.Pointer<StdTypes.Float>> return {
        final __obj__:Map<String, stdgo.Pointer<StdTypes.Float>> = [];
        for (key => value in this.m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_m(v:Map<String, stdgo.Pointer<StdTypes.Float>>):Map<String, stdgo.Pointer<StdTypes.Float>> {
        this.m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var m2(get, set) : Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794>;
    function get_m2():Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794> return {
        final __obj__:Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794> = [];
        for (key => value in this.m2) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_m2(v:Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794>):Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794> {
        this.m2 = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var mstring(get, set) : Map<String, String>;
    function get_mstring():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.mstring) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mstring(v:Map<String, String>):Map<String, String> {
        this.mstring = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var mintptr(get, set) : Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>>;
    function get_mintptr():Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>> return {
        final __obj__:Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>> = [];
        for (key => value in this.mintptr) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mintptr(v:Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>>):Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>> {
        this.mintptr = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var mcomp(get, set) : Map<stdgo.GoComplex128, stdgo.GoComplex128>;
    function get_mcomp():Map<stdgo.GoComplex128, stdgo.GoComplex128> return {
        final __obj__:Map<stdgo.GoComplex128, stdgo.GoComplex128> = [];
        for (key => value in this.mcomp) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mcomp(v:Map<stdgo.GoComplex128, stdgo.GoComplex128>):Map<stdgo.GoComplex128, stdgo.GoComplex128> {
        this.mcomp = {
            final __obj__ = new stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoComplex128)] = (value : stdgo.GoComplex128);
            };
            __obj__;
        };
        return v;
    }
    public var marr(get, set) : Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>>;
    function get_marr():Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>> return {
        final __obj__:Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>> = [];
        for (key => value in this.marr) {
            __obj__[haxe.ds.Vector.fromArrayCopy([for (i in key) i])] = haxe.ds.Vector.fromArrayCopy([for (i in value) i]);
        };
        __obj__;
    };
    function set_marr(v:Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>>):Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>> {
        this.marr = {
            final __obj__ = new stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>();
            for (key => value in v) {
                __obj__[([for (i in key) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>)] = ([for (i in value) i] : stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>);
            };
            __obj__;
        };
        return v;
    }
    public var emptyMap(get, set) : Map<String, StdTypes.Int>;
    function get_emptyMap():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this.emptyMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_emptyMap(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this.emptyMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var n(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get_n():haxe.ds.Vector<StdTypes.Float> return this.n;
    function set_n(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this.n = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        return v;
    }
    public var strs(get, set) : haxe.ds.Vector<String>;
    function get_strs():haxe.ds.Vector<String> return this.strs;
    function set_strs(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.strs = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>);
        return v;
    }
    public var int64s(get, set) : Array<haxe.Int64>;
    function get_int64s():Array<haxe.Int64> return this.int64s;
    function set_int64s(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this.int64s = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>);
        return v;
    }
    public var rI(get, set) : stdgo.GoComplex64;
    function get_rI():stdgo.GoComplex64 return this.rI;
    function set_rI(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.rI = (v : stdgo.GoComplex64);
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var t(get, set) : T_testEndToEnd___localname___T2_13762;
    function get_t():T_testEndToEnd___localname___T2_13762 return this.t;
    function set_t(v:T_testEndToEnd___localname___T2_13762):T_testEndToEnd___localname___T2_13762 {
        this.t = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?m:Map<String, stdgo.Pointer<StdTypes.Float>>, ?m2:Map<StdTypes.Int, T_testEndToEnd___localname___T3_13794>, ?mstring:Map<String, String>, ?mintptr:Map<StdTypes.Int, stdgo.Pointer<StdTypes.Int>>, ?mcomp:Map<stdgo.GoComplex128, stdgo.GoComplex128>, ?marr:Map<haxe.ds.Vector<String>, haxe.ds.Vector<stdgo.Pointer<StdTypes.Float>>>, ?emptyMap:Map<String, StdTypes.Int>, ?n:haxe.ds.Vector<StdTypes.Float>, ?strs:haxe.ds.Vector<String>, ?int64s:Array<haxe.Int64>, ?rI:stdgo.GoComplex64, ?s:String, ?y:Array<std.UInt>, ?t:T_testEndToEnd___localname___T2_13762) this = new stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836.T_testEndToEnd___localname___T1_13836(
(a : stdgo.GoInt),
(b : stdgo.GoInt),
(c : stdgo.GoInt),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>();
        for (key => value in m) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>();
        for (key => value in m2) {
            __obj__[(key : stdgo.GoInt)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in mstring) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>();
        for (key => value in mintptr) {
            __obj__[(key : stdgo.GoInt)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>();
        for (key => value in mcomp) {
            __obj__[(key : stdgo.GoComplex128)] = (value : stdgo.GoComplex128);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>();
        for (key => value in marr) {
            __obj__[([for (i in key) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>)] = ([for (i in value) i] : stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in emptyMap) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
(n : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>),
(strs : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>),
(int64s : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>),
(rI : stdgo.GoComplex64),
(s : stdgo.GoString),
([for (i in y) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___inputT_15885_static_extension) @:dox(hide) abstract T_testOverflow___localname___inputT_15885(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885 {
    public var maxi(get, set) : haxe.Int64;
    function get_maxi():haxe.Int64 return this.maxi;
    function set_maxi(v:haxe.Int64):haxe.Int64 {
        this.maxi = (v : stdgo.GoInt64);
        return v;
    }
    public var mini(get, set) : haxe.Int64;
    function get_mini():haxe.Int64 return this.mini;
    function set_mini(v:haxe.Int64):haxe.Int64 {
        this.mini = (v : stdgo.GoInt64);
        return v;
    }
    public var maxu(get, set) : haxe.UInt64;
    function get_maxu():haxe.UInt64 return this.maxu;
    function set_maxu(v:haxe.UInt64):haxe.UInt64 {
        this.maxu = (v : stdgo.GoUInt64);
        return v;
    }
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = (v : stdgo.GoFloat64);
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = (v : stdgo.GoFloat64);
        return v;
    }
    public var maxc(get, set) : stdgo.GoComplex128;
    function get_maxc():stdgo.GoComplex128 return this.maxc;
    function set_maxc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.maxc = (v : stdgo.GoComplex128);
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex128;
    function get_minc():stdgo.GoComplex128 return this.minc;
    function set_minc(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.minc = (v : stdgo.GoComplex128);
        return v;
    }
    public function new(?maxi:haxe.Int64, ?mini:haxe.Int64, ?maxu:haxe.UInt64, ?maxf:StdTypes.Float, ?minf:StdTypes.Float, ?maxc:stdgo.GoComplex128, ?minc:stdgo.GoComplex128) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885((maxi : stdgo.GoInt64), (mini : stdgo.GoInt64), (maxu : stdgo.GoUInt64), (maxf : stdgo.GoFloat64), (minf : stdgo.GoFloat64), (maxc : stdgo.GoComplex128), (minc : stdgo.GoComplex128));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outi8_16178_static_extension) @:dox(hide) abstract T_testOverflow___localname___outi8_16178(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = (v : stdgo.GoInt8);
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = (v : stdgo.GoInt8);
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178((maxi : stdgo.GoInt8), (mini : stdgo.GoInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outi16_16677_static_extension) @:dox(hide) abstract T_testOverflow___localname___outi16_16677(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = (v : stdgo.GoInt16);
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = (v : stdgo.GoInt16);
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677((maxi : stdgo.GoInt16), (mini : stdgo.GoInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outi32_17183_static_extension) @:dox(hide) abstract T_testOverflow___localname___outi32_17183(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = (v : stdgo.GoInt32);
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183((maxi : stdgo.GoInt32), (mini : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu8_17689_static_extension) @:dox(hide) abstract T_testOverflow___localname___outu8_17689(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689((maxu : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu16_17967_static_extension) @:dox(hide) abstract T_testOverflow___localname___outu16_17967(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967((maxu : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu32_18249_static_extension) @:dox(hide) abstract T_testOverflow___localname___outu32_18249(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249((maxu : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outf32_18533_static_extension) @:dox(hide) abstract T_testOverflow___localname___outf32_18533(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 {
    public var maxf(get, set) : StdTypes.Float;
    function get_maxf():StdTypes.Float return this.maxf;
    function set_maxf(v:StdTypes.Float):StdTypes.Float {
        this.maxf = (v : stdgo.GoFloat32);
        return v;
    }
    public var minf(get, set) : StdTypes.Float;
    function get_minf():StdTypes.Float return this.minf;
    function set_minf(v:StdTypes.Float):StdTypes.Float {
        this.minf = (v : stdgo.GoFloat32);
        return v;
    }
    public function new(?maxf:StdTypes.Float, ?minf:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533((maxf : stdgo.GoFloat32), (minf : stdgo.GoFloat32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outc64_18862_static_extension) @:dox(hide) abstract T_testOverflow___localname___outc64_18862(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862) from stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 to stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 {
    public var maxc(get, set) : stdgo.GoComplex64;
    function get_maxc():stdgo.GoComplex64 return this.maxc;
    function set_maxc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.maxc = (v : stdgo.GoComplex64);
        return v;
    }
    public var minc(get, set) : stdgo.GoComplex64;
    function get_minc():stdgo.GoComplex64 return this.minc;
    function set_minc(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.minc = (v : stdgo.GoComplex64);
        return v;
    }
    public function new(?maxc:stdgo.GoComplex64, ?minc:stdgo.GoComplex64) this = new stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862((maxc : stdgo.GoComplex64), (minc : stdgo.GoComplex64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testNesting___localname___RT_19135_static_extension) @:dox(hide) abstract T_testNesting___localname___RT_19135(stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135) from stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135 to stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testNesting___localname___RT_19135;
    function get_next():T_testNesting___localname___RT_19135 return this.next;
    function set_next(v:T_testNesting___localname___RT_19135):T_testNesting___localname___RT_19135 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
        return v;
    }
    public function new(?a:String, ?next:T_testNesting___localname___RT_19135) this = new stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135((a : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testBadRecursiveType___localname___Rec_23209 = stdgo._internal.encoding.gob.Gob_t_testbadrecursivetype___localname___rec_23209.T_testBadRecursiveType___localname___Rec_23209;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testTypeToPtrType___localname___Type0_6215_static_extension) @:dox(hide) abstract T_testTypeToPtrType___localname___Type0_6215(stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215) from stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215 to stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215.T_testTypeToPtrType___localname___Type0_6215((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testPtrTypeToType___localname___Type1_6414_static_extension) @:dox(hide) abstract T_testPtrTypeToType___localname___Type1_6414(stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414) from stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414 to stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414.T_testPtrTypeToType___localname___Type1_6414((a : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593_static_extension) @:dox(hide) abstract T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593) from stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 to stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 {
    public var a(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>;
    function get_a():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> return this.a;
    function set_a(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> {
        this.a = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>) this = new stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testSlice___localname___Type3_7005_static_extension) @:dox(hide) abstract T_testSlice___localname___Type3_7005(stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005.T_testSlice___localname___Type3_7005) from stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005.T_testSlice___localname___Type3_7005 to stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005.T_testSlice___localname___Type3_7005 {
    public var a(get, set) : Array<String>;
    function get_a():Array<String> return [for (i in this.a) i];
    function set_a(v:Array<String>):Array<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:Array<String>) this = new stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005.T_testSlice___localname___Type3_7005(([for (i in a) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testValueError___localname___Type4_7228_static_extension) @:dox(hide) abstract T_testValueError___localname___Type4_7228(stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228) from stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228 to stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228.T_testValueError___localname___Type4_7228((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testArray___localname___Type5_7494_static_extension) @:dox(hide) abstract T_testArray___localname___Type5_7494(stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494) from stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494 to stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public var b(get, set) : haxe.ds.Vector<std.UInt>;
    function get_b():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.b) i]);
    function set_b(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>, ?b:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494.T_testArray___localname___Type5_7494(([for (i in a) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>), ([for (i in b) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testArray___localname___Type6_7544_static_extension) @:dox(hide) abstract T_testArray___localname___Type6_7544(stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544) from stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544 to stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>) this = new stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544.T_testArray___localname___Type6_7544(([for (i in a) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testRecursiveMapType___localname___recursiveMap_7903 = stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903;
@:dox(hide) typedef T_testRecursiveSliceType___localname___recursiveSlice_8150 = stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDefaultsInArray___localname___Type7_8446_static_extension) @:dox(hide) abstract T_testDefaultsInArray___localname___Type7_8446(stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446.T_testDefaultsInArray___localname___Type7_8446) from stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446.T_testDefaultsInArray___localname___Type7_8446 to stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446.T_testDefaultsInArray___localname___Type7_8446 {
    public var b(get, set) : Array<Bool>;
    function get_b():Array<Bool> return [for (i in this.b) i];
    function set_b(v:Array<Bool>):Array<Bool> {
        this.b = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var i(get, set) : Array<StdTypes.Int>;
    function get_i():Array<StdTypes.Int> return [for (i in this.i) i];
    function set_i(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.i = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var f(get, set) : Array<StdTypes.Float>;
    function get_f():Array<StdTypes.Float> return [for (i in this.f) i];
    function set_f(v:Array<StdTypes.Float>):Array<StdTypes.Float> {
        this.f = ([for (i in v) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return v;
    }
    public function new(?b:Array<Bool>, ?i:Array<StdTypes.Int>, ?s:Array<String>, ?f:Array<StdTypes.Float>) this = new stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446.T_testDefaultsInArray___localname___Type7_8446(([for (i in b) i] : stdgo.Slice<Bool>), ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in f) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testStructNonStruct___localname___Struct_10305_static_extension) @:dox(hide) abstract T_testStructNonStruct___localname___Struct_10305(stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305.T_testStructNonStruct___localname___Struct_10305) from stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305.T_testStructNonStruct___localname___Struct_10305 to stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305.T_testStructNonStruct___localname___Struct_10305 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:String) this = new stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305.T_testStructNonStruct___localname___Struct_10305((a : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testStructNonStruct___localname___NonStruct_10341 = stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___nonstruct_10341.T_testStructNonStruct___localname___NonStruct_10341;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes___localname___Test_26917_static_extension) @:dox(hide) abstract T_testDecodeErrorMultipleTypes___localname___Test_26917(stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917) from stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 to stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:String, ?b:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917((a : stdgo.GoString), (b : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testMarshalFloatMap___localname___mapEntry_27951_static_extension) @:dox(hide) abstract T_testMarshalFloatMap___localname___mapEntry_27951(stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951) from stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951 to stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951 {
    public var _keyBits(get, set) : haxe.UInt64;
    function get__keyBits():haxe.UInt64 return this._keyBits;
    function set__keyBits(v:haxe.UInt64):haxe.UInt64 {
        this._keyBits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_keyBits:haxe.UInt64, ?_value:String) this = new stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951((_keyBits : stdgo.GoUInt64), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDecodePartial___localname___T_28547_static_extension) @:dox(hide) abstract T_testDecodePartial___localname___T_28547(stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547) from stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547 to stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547 {
    public var x(get, set) : Array<StdTypes.Int>;
    function get_x():Array<StdTypes.Int> return [for (i in this.x) i];
    function set_x(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.x = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:Array<StdTypes.Int>, ?y:String) this = new stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547.T_testDecodePartial___localname___T_28547(([for (i in x) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testRegistration___localname___T_4297_static_extension) @:dox(hide) abstract T_testRegistration___localname___T_4297(stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4297.T_testRegistration___localname___T_4297) from stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4297.T_testRegistration___localname___T_4297 to stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4297.T_testRegistration___localname___T_4297 {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4297.T_testRegistration___localname___T_4297((_a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_testStressParallel___localname___T2_5091_static_extension) @:dox(hide) abstract T_testStressParallel___localname___T2_5091(stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091) from stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091 to stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091.T_testStressParallel___localname___T2_5091((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef EncodeTPointer = stdgo._internal.encoding.gob.Gob_encodetpointer.EncodeTPointer;
class EncodeT_static_extension {

}
typedef T0Pointer = stdgo._internal.encoding.gob.Gob_t0pointer.T0Pointer;
class T0_static_extension {

}
typedef T1Pointer = stdgo._internal.encoding.gob.Gob_t1pointer.T1Pointer;
class T1_static_extension {

}
typedef T2Pointer = stdgo._internal.encoding.gob.Gob_t2pointer.T2Pointer;
class T2_static_extension {

}
typedef RT0Pointer = stdgo._internal.encoding.gob.Gob_rt0pointer.RT0Pointer;
class RT0_static_extension {

}
typedef RT1Pointer = stdgo._internal.encoding.gob.Gob_rt1pointer.RT1Pointer;
class RT1_static_extension {

}
typedef IT0Pointer = stdgo._internal.encoding.gob.Gob_it0pointer.IT0Pointer;
class IT0_static_extension {

}
typedef IndirectPointer = stdgo._internal.encoding.gob.Gob_indirectpointer.IndirectPointer;
class Indirect_static_extension {

}
typedef DirectPointer = stdgo._internal.encoding.gob.Gob_directpointer.DirectPointer;
class Direct_static_extension {

}
typedef PointPointer = stdgo._internal.encoding.gob.Gob_pointpointer.PointPointer;
class Point_static_extension {
    static public function square(_p:Point):StdTypes.Int {
        return stdgo._internal.encoding.gob.Gob_point_static_extension.Point_static_extension.square(_p);
    }
}
typedef InterfaceItemPointer = stdgo._internal.encoding.gob.Gob_interfaceitempointer.InterfaceItemPointer;
class InterfaceItem_static_extension {

}
typedef NoInterfaceItemPointer = stdgo._internal.encoding.gob.Gob_nointerfaceitempointer.NoInterfaceItemPointer;
class NoInterfaceItem_static_extension {

}
typedef BasicInterfaceItemPointer = stdgo._internal.encoding.gob.Gob_basicinterfaceitempointer.BasicInterfaceItemPointer;
class BasicInterfaceItem_static_extension {

}
typedef PtrInterfaceItemPointer = stdgo._internal.encoding.gob.Gob_ptrinterfaceitempointer.PtrInterfaceItemPointer;
class PtrInterfaceItem_static_extension {

}
typedef UPointer = stdgo._internal.encoding.gob.Gob_upointer.UPointer;
class U_static_extension {

}
typedef OnTheFlyPointer = stdgo._internal.encoding.gob.Gob_ontheflypointer.OnTheFlyPointer;
class OnTheFly_static_extension {

}
typedef DTPointer = stdgo._internal.encoding.gob.Gob_dtpointer.DTPointer;
class DT_static_extension {

}
typedef LargeSliceBytePointer = stdgo._internal.encoding.gob.Gob_largeslicebytepointer.LargeSliceBytePointer;
class LargeSliceByte_static_extension {

}
typedef LargeSliceInt8Pointer = stdgo._internal.encoding.gob.Gob_largesliceint8pointer.LargeSliceInt8Pointer;
class LargeSliceInt8_static_extension {

}
typedef StringPairPointer = stdgo._internal.encoding.gob.Gob_stringpairpointer.StringPairPointer;
class StringPair_static_extension {

}
typedef LargeSliceStructPointer = stdgo._internal.encoding.gob.Gob_largeslicestructpointer.LargeSliceStructPointer;
class LargeSliceStruct_static_extension {

}
typedef LargeSliceStringPointer = stdgo._internal.encoding.gob.Gob_largeslicestringpointer.LargeSliceStringPointer;
class LargeSliceString_static_extension {

}
@:dox(hide) typedef T_decoderStatePointer = stdgo._internal.encoding.gob.Gob_t_decoderstatepointer.T_decoderStatePointer;
@:dox(hide) class T_decoderState_static_extension {
    static public function _getLength(_state:T_decoderState):stdgo.Tuple<StdTypes.Int, Bool> {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_decoderstate_static_extension.T_decoderState_static_extension._getLength(_state);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeInt(_state:T_decoderState):haxe.Int64 {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        return stdgo._internal.encoding.gob.Gob_t_decoderstate_static_extension.T_decoderState_static_extension._decodeInt(_state);
    }
    static public function _decodeUint(_state:T_decoderState):haxe.UInt64 {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        return stdgo._internal.encoding.gob.Gob_t_decoderstate_static_extension.T_decoderState_static_extension._decodeUint(_state);
    }
}
@:dox(hide) typedef T_decBufferPointer = stdgo._internal.encoding.gob.Gob_t_decbufferpointer.T_decBufferPointer;
@:dox(hide) class T_decBuffer_static_extension {
    static public function reset(_d:T_decBuffer):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.reset(_d);
    }
    static public function setBytes(_d:T_decBuffer, _data:Array<std.UInt>):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.setBytes(_d, _data);
    }
    static public function bytes(_d:T_decBuffer):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        return [for (i in stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.bytes(_d)) i];
    }
    static public function len(_d:T_decBuffer):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        return stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.len(_d);
    }
    static public function readByte(_d:T_decBuffer):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.readByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function drop(_d:T_decBuffer, _n:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.drop(_d, _n);
    }
    static public function read(_d:T_decBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_decbuffer_static_extension.T_decBuffer_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_decInstrPointer = stdgo._internal.encoding.gob.Gob_t_decinstrpointer.T_decInstrPointer;
@:dox(hide) class T_decInstr_static_extension {

}
@:dox(hide) typedef T_decEnginePointer = stdgo._internal.encoding.gob.Gob_t_decenginepointer.T_decEnginePointer;
@:dox(hide) class T_decEngine_static_extension {

}
@:dox(hide) typedef T_emptyStructPointer = stdgo._internal.encoding.gob.Gob_t_emptystructpointer.T_emptyStructPointer;
@:dox(hide) class T_emptyStruct_static_extension {

}
typedef DecoderPointer = stdgo._internal.encoding.gob.Gob_decoderpointer.DecoderPointer;
class Decoder_static_extension {
    static public function decodeValue(_dec:Decoder, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension.decodeValue(_dec, _v);
    }
    static public function decode(_dec:Decoder, _e:stdgo.AnyInterface):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _e = (_e : stdgo.AnyInterface);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension.decode(_dec, _e);
    }
    static public function _decodeTypeSequence(_dec:Decoder, _isInterface:Bool):T_typeId {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeTypeSequence(_dec, _isInterface);
    }
    static public function _nextUint(_dec:Decoder):haxe.UInt64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._nextUint(_dec);
    }
    static public function _nextInt(_dec:Decoder):haxe.Int64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._nextInt(_dec);
    }
    static public function _readMessage(_dec:Decoder, _nbytes:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _nbytes = (_nbytes : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._readMessage(_dec, _nbytes);
    }
    static public function _recvMessage(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._recvMessage(_dec);
    }
    static public function _recvType(_dec:Decoder, _id:T_typeId):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._recvType(_dec, _id);
    }
    static public function _decodeIgnoredValue(_dec:Decoder, _wireId:T_typeId):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeIgnoredValue(_dec, _wireId);
    }
    static public function _decodeValue(_dec:Decoder, _wireId:T_typeId, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeValue(_dec, _wireId, _value);
    }
    static public function _getIgnoreEnginePtr(_dec:Decoder, _wireId:T_typeId):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._getIgnoreEnginePtr(_dec, _wireId);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getDecEnginePtr(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._getDecEnginePtr(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _compileDec(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._compileDec(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _compileIgnoreSingle(_dec:Decoder, _remoteId:T_typeId):T_decEngine {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._compileIgnoreSingle(_dec, _remoteId);
    }
    static public function _compileSingle(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._compileSingle(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _typeString(_dec:Decoder, _remoteId:T_typeId):String {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._typeString(_dec, _remoteId);
    }
    static public function _compatibleType(_dec:Decoder, _fr:stdgo._internal.reflect.Reflect_type_.Type_, _fw:T_typeId, _inProgress:Map<stdgo._internal.reflect.Reflect_type_.Type_, T_typeId>):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _inProgress = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>();
            for (key => value in _inProgress) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._compatibleType(_dec, _fr, _fw, _inProgress);
    }
    static public function _gobDecodeOpFor(_dec:Decoder, _ut:T_userTypeInfo):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._gobDecodeOpFor(_dec, _ut);
    }
    static public function _decIgnoreOpFor(_dec:Decoder, _wireId:T_typeId, _inProgress:Map<T_typeId, stdgo.Pointer<T_decOp>>, _depth:StdTypes.Int):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _inProgress = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
            for (key => value in _inProgress) {
                __obj__[key] = value;
            };
            __obj__;
        };
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decIgnoreOpFor(_dec, _wireId, _inProgress, _depth);
    }
    static public function _decOpFor(_dec:Decoder, _wireId:T_typeId, _rt:stdgo._internal.reflect.Reflect_type_.Type_, _name:String, _inProgress:Map<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<T_decOp>>):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _name = (_name : stdgo.GoString);
        final _inProgress = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
            for (key => value in _inProgress) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decOpFor(_dec, _wireId, _rt, _name, _inProgress);
    }
    static public function _ignoreGobDecoder(_dec:Decoder, _state:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreGobDecoder(_dec, _state);
    }
    static public function _decodeGobDecoder(_dec:Decoder, _ut:T_userTypeInfo, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeGobDecoder(_dec, _ut, _state, _value);
    }
    static public function _ignoreInterface(_dec:Decoder, _state:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreInterface(_dec, _state);
    }
    static public function _decodeInterface(_dec:Decoder, _ityp:stdgo._internal.reflect.Reflect_type_.Type_, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeInterface(_dec, _ityp, _state, _value);
    }
    static public function _ignoreSlice(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreSlice(_dec, _state, _elemOp);
    }
    static public function _decodeSlice(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:T_decOp, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeSlice(_dec, _state, _value, _elemOp, _ovfl, _helper);
    }
    static public function _ignoreMap(_dec:Decoder, _state:T_decoderState, _keyOp:T_decOp, _elemOp:T_decOp):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreMap(_dec, _state, _keyOp, _elemOp);
    }
    static public function _ignoreArray(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp, _length:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreArray(_dec, _state, _elemOp, _length);
    }
    static public function _ignoreArrayHelper(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp, _length:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreArrayHelper(_dec, _state, _elemOp, _length);
    }
    static public function _decodeMap(_dec:Decoder, _mtyp:stdgo._internal.reflect.Reflect_type_.Type_, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:stdgo.Error):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeMap(_dec, _mtyp, _state, _value, _keyOp, _elemOp, _ovfl);
    }
    static public function _decodeArray(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:T_decOp, _length:StdTypes.Int, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeArray(_dec, _state, _value, _elemOp, _length, _ovfl, _helper);
    }
    static public function _decodeArrayHelper(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:T_decOp, _length:StdTypes.Int, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeArrayHelper(_dec, _state, _value, _elemOp, _length, _ovfl, _helper);
    }
    static public function _ignoreSingle(_dec:Decoder, _engine:T_decEngine):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreSingle(_dec, _engine);
    }
    static public function _ignoreStruct(_dec:Decoder, _engine:T_decEngine):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._ignoreStruct(_dec, _engine);
    }
    static public function _decodeStruct(_dec:Decoder, _engine:T_decEngine, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeStruct(_dec, _engine, _value);
    }
    static public function _decodeSingle(_dec:Decoder, _engine:T_decEngine, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._decodeSingle(_dec, _engine, _value);
    }
    static public function _freeDecoderState(_dec:Decoder, _d:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._freeDecoderState(_dec, _d);
    }
    static public function _newDecoderState(_dec:Decoder, _buf:T_decBuffer):T_decoderState {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
        return stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension._newDecoderState(_dec, _buf);
    }
}
@:dox(hide) typedef T_encoderStatePointer = stdgo._internal.encoding.gob.Gob_t_encoderstatepointer.T_encoderStatePointer;
@:dox(hide) class T_encoderState_static_extension {
    static public function _update(_state:T_encoderState, _instr:T_encInstr):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _instr = (_instr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
        stdgo._internal.encoding.gob.Gob_t_encoderstate_static_extension.T_encoderState_static_extension._update(_state, _instr);
    }
    static public function _encodeInt(_state:T_encoderState, _i:haxe.Int64):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _i = (_i : stdgo.GoInt64);
        stdgo._internal.encoding.gob.Gob_t_encoderstate_static_extension.T_encoderState_static_extension._encodeInt(_state, _i);
    }
    static public function _encodeUint(_state:T_encoderState, _x:haxe.UInt64):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.encoding.gob.Gob_t_encoderstate_static_extension.T_encoderState_static_extension._encodeUint(_state, _x);
    }
}
@:dox(hide) typedef T_encBufferPointer = stdgo._internal.encoding.gob.Gob_t_encbufferpointer.T_encBufferPointer;
@:dox(hide) class T_encBuffer_static_extension {
    static public function reset(_e:T_encBuffer):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension.reset(_e);
    }
    static public function bytes(_e:T_encBuffer):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        return [for (i in stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension.bytes(_e)) i];
    }
    static public function len(_e:T_encBuffer):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        return stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension.len(_e);
    }
    static public function writeString(_e:T_encBuffer, _s:String):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension.writeString(_e, _s);
    }
    static public function write(_e:T_encBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeByte(_e:T_encBuffer, _c:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension._writeByte(_e, _c);
    }
}
@:dox(hide) typedef T_encInstrPointer = stdgo._internal.encoding.gob.Gob_t_encinstrpointer.T_encInstrPointer;
@:dox(hide) class T_encInstr_static_extension {

}
@:dox(hide) typedef T_encEnginePointer = stdgo._internal.encoding.gob.Gob_t_encenginepointer.T_encEnginePointer;
@:dox(hide) class T_encEngine_static_extension {

}
typedef EncoderPointer = stdgo._internal.encoding.gob.Gob_encoderpointer.EncoderPointer;
class Encoder_static_extension {
    static public function encodeValue(_enc:Encoder, _value:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension.encodeValue(_enc, _value);
    }
    static public function _sendTypeId(_enc:Encoder, _state:T_encoderState, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._sendTypeId(_enc, _state, _ut);
    }
    static public function _sendTypeDescriptor(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer, _state:T_encoderState, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._sendTypeDescriptor(_enc, _w, _state, _ut);
    }
    static public function encode(_enc:Encoder, _e:stdgo.AnyInterface):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _e = (_e : stdgo.AnyInterface);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension.encode(_enc, _e);
    }
    static public function _sendType(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer, _state:T_encoderState, _origt:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._sendType(_enc, _w, _state, _origt);
    }
    static public function _sendActualType(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer, _state:T_encoderState, _ut:T_userTypeInfo, _actual:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._sendActualType(_enc, _w, _state, _ut, _actual);
    }
    static public function _writeMessage(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer, _b:T_encBuffer):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._writeMessage(_enc, _w, _b);
    }
    static public function _setError(_enc:Encoder, _err:stdgo.Error):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._setError(_enc, _err);
    }
    static public function _popWriter(_enc:Encoder):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._popWriter(_enc);
    }
    static public function _pushWriter(_enc:Encoder, _w:stdgo._internal.io.Io_writer.Writer):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._pushWriter(_enc, _w);
    }
    static public function _writer(_enc:Encoder):stdgo._internal.io.Io_writer.Writer {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._writer(_enc);
    }
    static public function _encode(_enc:Encoder, _b:T_encBuffer, _value:stdgo._internal.reflect.Reflect_value.Value, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encode(_enc, _b, _value, _ut);
    }
    static public function _encodeGobEncoder(_enc:Encoder, _b:T_encBuffer, _ut:T_userTypeInfo, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeGobEncoder(_enc, _b, _ut, _v);
    }
    static public function _encodeInterface(_enc:Encoder, _b:T_encBuffer, _iv:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeInterface(_enc, _b, _iv);
    }
    static public function _encodeMap(_enc:Encoder, _b:T_encBuffer, _mv:stdgo._internal.reflect.Reflect_value.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:StdTypes.Int, _elemIndir:StdTypes.Int):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _keyIndir = (_keyIndir : stdgo.GoInt);
        final _elemIndir = (_elemIndir : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeMap(_enc, _b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    }
    static public function _encodeArray(_enc:Encoder, _b:T_encBuffer, _value:stdgo._internal.reflect.Reflect_value.Value, _op:T_encOp, _elemIndir:StdTypes.Int, _length:StdTypes.Int, _helper:T_encHelper):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _elemIndir = (_elemIndir : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeArray(_enc, _b, _value, _op, _elemIndir, _length, _helper);
    }
    static public function _encodeStruct(_enc:Encoder, _b:T_encBuffer, _engine:T_encEngine, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeStruct(_enc, _b, _engine, _value);
    }
    static public function _encodeSingle(_enc:Encoder, _b:T_encBuffer, _engine:T_encEngine, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._encodeSingle(_enc, _b, _engine, _value);
    }
    static public function _freeEncoderState(_enc:Encoder, _e:T_encoderState):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._freeEncoderState(_enc, _e);
    }
    static public function _newEncoderState(_enc:Encoder, _b:T_encBuffer):T_encoderState {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        return stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension._newEncoderState(_enc, _b);
    }
}
typedef ET0Pointer = stdgo._internal.encoding.gob.Gob_et0pointer.ET0Pointer;
class ET0_static_extension {

}
typedef ET2Pointer = stdgo._internal.encoding.gob.Gob_et2pointer.ET2Pointer;
class ET2_static_extension {

}
typedef ET1Pointer = stdgo._internal.encoding.gob.Gob_et1pointer.ET1Pointer;
class ET1_static_extension {

}
typedef ET3Pointer = stdgo._internal.encoding.gob.Gob_et3pointer.ET3Pointer;
class ET3_static_extension {

}
typedef ET4Pointer = stdgo._internal.encoding.gob.Gob_et4pointer.ET4Pointer;
class ET4_static_extension {

}
typedef SingleTestPointer = stdgo._internal.encoding.gob.Gob_singletestpointer.SingleTestPointer;
class SingleTest_static_extension {

}
@:dox(hide) typedef T_interfaceIndirectTestTPointer = stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesttpointer.T_interfaceIndirectTestTPointer;
@:dox(hide) class T_interfaceIndirectTestT_static_extension {
    static public function f(_this:T_interfaceIndirectTestT):Bool {
        final _this = (_this : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT>);
        return stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt_static_extension.T_interfaceIndirectTestT_static_extension.f(_this);
    }
}
typedef Struct0Pointer = stdgo._internal.encoding.gob.Gob_struct0pointer.Struct0Pointer;
class Struct0_static_extension {

}
typedef NewType0Pointer = stdgo._internal.encoding.gob.Gob_newtype0pointer.NewType0Pointer;
class NewType0_static_extension {

}
@:dox(hide) typedef T_ignoreTestPointer = stdgo._internal.encoding.gob.Gob_t_ignoretestpointer.T_ignoreTestPointer;
@:dox(hide) class T_ignoreTest_static_extension {

}
typedef Bug0OuterPointer = stdgo._internal.encoding.gob.Gob_bug0outerpointer.Bug0OuterPointer;
class Bug0Outer_static_extension {

}
typedef Bug0InnerPointer = stdgo._internal.encoding.gob.Gob_bug0innerpointer.Bug0InnerPointer;
class Bug0Inner_static_extension {

}
typedef Bug1ElemPointer = stdgo._internal.encoding.gob.Gob_bug1elempointer.Bug1ElemPointer;
class Bug1Elem_static_extension {

}
typedef Bug2Pointer = stdgo._internal.encoding.gob.Gob_bug2pointer.Bug2Pointer;
class Bug2_static_extension {

}
typedef Bug3Pointer = stdgo._internal.encoding.gob.Gob_bug3pointer.Bug3Pointer;
class Bug3_static_extension {

}
typedef Bug4PublicPointer = stdgo._internal.encoding.gob.Gob_bug4publicpointer.Bug4PublicPointer;
class Bug4Public_static_extension {

}
typedef Bug4SecretPointer = stdgo._internal.encoding.gob.Gob_bug4secretpointer.Bug4SecretPointer;
class Bug4Secret_static_extension {

}
typedef ZPointer = stdgo._internal.encoding.gob.Gob_zpointer.ZPointer;
class Z_static_extension {

}
@:dox(hide) typedef T_badDataTestPointer = stdgo._internal.encoding.gob.Gob_t_baddatatestpointer.T_badDataTestPointer;
@:dox(hide) class T_badDataTest_static_extension {

}
@:dox(hide) typedef T_gobErrorPointer = stdgo._internal.encoding.gob.Gob_t_goberrorpointer.T_gobErrorPointer;
@:dox(hide) class T_gobError_static_extension {

}
typedef ByteStructPointer = stdgo._internal.encoding.gob.Gob_bytestructpointer.ByteStructPointer;
class ByteStruct_static_extension {
    static public function gobDecode(_g:ByteStruct, _data:Array<std.UInt>):stdgo.Error {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_bytestruct_static_extension.ByteStruct_static_extension.gobDecode(_g, _data);
    }
    static public function gobEncode(_g:ByteStruct):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_bytestruct_static_extension.ByteStruct_static_extension.gobEncode(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef StringStructPointer = stdgo._internal.encoding.gob.Gob_stringstructpointer.StringStructPointer;
class StringStruct_static_extension {
    static public function gobDecode(_g:StringStruct, _data:Array<std.UInt>):stdgo.Error {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_stringstruct_static_extension.StringStruct_static_extension.gobDecode(_g, _data);
    }
    static public function gobEncode(_g:StringStruct):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_stringstruct_static_extension.StringStruct_static_extension.gobEncode(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ArrayStructPointer = stdgo._internal.encoding.gob.Gob_arraystructpointer.ArrayStructPointer;
class ArrayStruct_static_extension {
    static public function gobDecode(_a:ArrayStruct, _data:Array<std.UInt>):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_arraystruct_static_extension.ArrayStruct_static_extension.gobDecode(_a, _data);
    }
    static public function gobEncode(_a:ArrayStruct):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_arraystruct_static_extension.ArrayStruct_static_extension.gobEncode(_a);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef GobTest0Pointer = stdgo._internal.encoding.gob.Gob_gobtest0pointer.GobTest0Pointer;
class GobTest0_static_extension {

}
typedef GobTest1Pointer = stdgo._internal.encoding.gob.Gob_gobtest1pointer.GobTest1Pointer;
class GobTest1_static_extension {

}
typedef GobTest2Pointer = stdgo._internal.encoding.gob.Gob_gobtest2pointer.GobTest2Pointer;
class GobTest2_static_extension {

}
typedef GobTest3Pointer = stdgo._internal.encoding.gob.Gob_gobtest3pointer.GobTest3Pointer;
class GobTest3_static_extension {

}
typedef GobTest4Pointer = stdgo._internal.encoding.gob.Gob_gobtest4pointer.GobTest4Pointer;
class GobTest4_static_extension {

}
typedef GobTest5Pointer = stdgo._internal.encoding.gob.Gob_gobtest5pointer.GobTest5Pointer;
class GobTest5_static_extension {

}
typedef GobTest6Pointer = stdgo._internal.encoding.gob.Gob_gobtest6pointer.GobTest6Pointer;
class GobTest6_static_extension {

}
typedef GobTest7Pointer = stdgo._internal.encoding.gob.Gob_gobtest7pointer.GobTest7Pointer;
class GobTest7_static_extension {

}
typedef GobTestIgnoreEncoderPointer = stdgo._internal.encoding.gob.Gob_gobtestignoreencoderpointer.GobTestIgnoreEncoderPointer;
class GobTestIgnoreEncoder_static_extension {

}
typedef GobTestValueEncDecPointer = stdgo._internal.encoding.gob.Gob_gobtestvalueencdecpointer.GobTestValueEncDecPointer;
class GobTestValueEncDec_static_extension {

}
typedef GobTestIndirectEncDecPointer = stdgo._internal.encoding.gob.Gob_gobtestindirectencdecpointer.GobTestIndirectEncDecPointer;
class GobTestIndirectEncDec_static_extension {

}
typedef GobTestArrayEncDecPointer = stdgo._internal.encoding.gob.Gob_gobtestarrayencdecpointer.GobTestArrayEncDecPointer;
class GobTestArrayEncDec_static_extension {

}
typedef GobTestIndirectArrayEncDecPointer = stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdecpointer.GobTestIndirectArrayEncDecPointer;
class GobTestIndirectArrayEncDec_static_extension {

}
@:dox(hide) typedef T_gobDecoderBug0Pointer = stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0pointer.T_gobDecoderBug0Pointer;
@:dox(hide) class T_gobDecoderBug0_static_extension {
    static public function gobDecode(_br:T_gobDecoderBug0, _b:Array<std.UInt>):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0_static_extension.T_gobDecoderBug0_static_extension.gobDecode(_br, _b);
    }
    static public function gobEncode(_br:T_gobDecoderBug0):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0_static_extension.T_gobDecoderBug0_static_extension.gobEncode(_br);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_br:T_gobDecoderBug0):String {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        return stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0_static_extension.T_gobDecoderBug0_static_extension.string(_br);
    }
}
@:dox(hide) typedef T_isZeroBugPointer = stdgo._internal.encoding.gob.Gob_t_iszerobugpointer.T_isZeroBugPointer;
@:dox(hide) class T_isZeroBug_static_extension {

}
@:dox(hide) typedef T_isZeroBugInterfacePointer = stdgo._internal.encoding.gob.Gob_t_iszerobuginterfacepointer.T_isZeroBugInterfacePointer;
@:dox(hide) class T_isZeroBugInterface_static_extension {
    static public function gobDecode(_i:T_isZeroBugInterface, _data:Array<std.UInt>):stdgo.Error {
        final _i = (_i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_iszerobuginterface.T_isZeroBugInterface>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_t_iszerobuginterface_static_extension.T_isZeroBugInterface_static_extension.gobDecode(_i, _data);
    }
    static public function gobEncode(_i:T_isZeroBugInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_iszerobuginterface_static_extension.T_isZeroBugInterface_static_extension.gobEncode(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef BenchPointer = stdgo._internal.encoding.gob.Gob_benchpointer.BenchPointer;
class Bench_static_extension {

}
@:dox(hide) typedef T_benchmarkBufPointer = stdgo._internal.encoding.gob.Gob_t_benchmarkbufpointer.T_benchmarkBufPointer;
@:dox(hide) class T_benchmarkBuf_static_extension {
    static public function _reset(_b:T_benchmarkBuf):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>);
        stdgo._internal.encoding.gob.Gob_t_benchmarkbuf_static_extension.T_benchmarkBuf_static_extension._reset(_b);
    }
    static public function readByte(_b:T_benchmarkBuf):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_benchmarkbuf_static_extension.T_benchmarkBuf_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_b:T_benchmarkBuf, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_benchmarkbuf_static_extension.T_benchmarkBuf_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_userTypeInfoPointer = stdgo._internal.encoding.gob.Gob_t_usertypeinfopointer.T_userTypeInfoPointer;
@:dox(hide) class T_userTypeInfo_static_extension {

}
typedef CommonTypePointer = stdgo._internal.encoding.gob.Gob_commontypepointer.CommonTypePointer;
class CommonType_static_extension {
    static public function _name(_t:CommonType):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        return stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension._name(_t);
    }
    static public function _safeString(_t:CommonType, _seen:Map<T_typeId, Bool>):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension._safeString(_t, _seen);
    }
    static public function _string(_t:CommonType):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        return stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension._string(_t);
    }
    static public function _setId(_t:CommonType, _id:T_typeId):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension._setId(_t, _id);
    }
    static public function _id(_t:CommonType):T_typeId {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>);
        return stdgo._internal.encoding.gob.Gob_commontype_static_extension.CommonType_static_extension._id(_t);
    }
}
@:dox(hide) typedef T_arrayTypePointer = stdgo._internal.encoding.gob.Gob_t_arraytypepointer.T_arrayTypePointer;
@:dox(hide) class T_arrayType_static_extension {
    static public function _string(_a:T_arrayType):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>);
        return stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._string(_a);
    }
    static public function _safeString(_a:T_arrayType, _seen:Map<T_typeId, Bool>):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._safeString(_a, _seen);
    }
    static public function _init(_a:T_arrayType, _elem:T_gobType, _len:StdTypes.Int):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>);
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._init(_a, _elem, _len);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType):String {
        return stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_arraytype_static_extension.T_arrayType_static_extension._id(__self__);
    }
}
@:dox(hide) typedef T_gobEncoderTypePointer = stdgo._internal.encoding.gob.Gob_t_gobencodertypepointer.T_gobEncoderTypePointer;
@:dox(hide) class T_gobEncoderType_static_extension {
    static public function _string(_g:T_gobEncoderType):String {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        return stdgo._internal.encoding.gob.Gob_t_gobencodertype_static_extension.T_gobEncoderType_static_extension._string(_g);
    }
    static public function _safeString(_g:T_gobEncoderType, _seen:Map<T_typeId, Bool>):String {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_gobencodertype_static_extension.T_gobEncoderType_static_extension._safeString(_g, _seen);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_gobencodertype_static_extension.T_gobEncoderType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType):String {
        return stdgo._internal.encoding.gob.Gob_t_gobencodertype_static_extension.T_gobEncoderType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_gobencodertype_static_extension.T_gobEncoderType_static_extension._id(__self__);
    }
}
@:dox(hide) typedef T_mapTypePointer = stdgo._internal.encoding.gob.Gob_t_maptypepointer.T_mapTypePointer;
@:dox(hide) class T_mapType_static_extension {
    static public function _string(_m:T_mapType):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>);
        return stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._string(_m);
    }
    static public function _safeString(_m:T_mapType, _seen:Map<T_typeId, Bool>):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._safeString(_m, _seen);
    }
    static public function _init(_m:T_mapType, _key:T_gobType, _elem:T_gobType):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>);
        stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._init(_m, _key, _elem);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType):String {
        return stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_maptype_static_extension.T_mapType_static_extension._id(__self__);
    }
}
@:dox(hide) typedef T_sliceTypePointer = stdgo._internal.encoding.gob.Gob_t_slicetypepointer.T_sliceTypePointer;
@:dox(hide) class T_sliceType_static_extension {
    static public function _string(_s:T_sliceType):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
        return stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._string(_s);
    }
    static public function _safeString(_s:T_sliceType, _seen:Map<T_typeId, Bool>):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._safeString(_s, _seen);
    }
    static public function _init(_s:T_sliceType, _elem:T_gobType):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
        stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._init(_s, _elem);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType):String {
        return stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_slicetype_static_extension.T_sliceType_static_extension._id(__self__);
    }
}
@:dox(hide) typedef T_fieldTypePointer = stdgo._internal.encoding.gob.Gob_t_fieldtypepointer.T_fieldTypePointer;
@:dox(hide) class T_fieldType_static_extension {

}
@:dox(hide) typedef T_structTypePointer = stdgo._internal.encoding.gob.Gob_t_structtypepointer.T_structTypePointer;
@:dox(hide) class T_structType_static_extension {
    static public function _string(_s:T_structType):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
        return stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension._string(_s);
    }
    static public function _safeString(_s:T_structType, _seen:Map<T_typeId, Bool>):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
        final _seen = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>();
            for (key => value in _seen) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension._safeString(_s, _seen);
    }
    public static function _setId(__self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType, _0:T_typeId):Void {
        stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension._setId(__self__, _0);
    }
    public static function _name(__self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType):String {
        return stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension._name(__self__);
    }
    public static function _id(__self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType):T_typeId {
        return stdgo._internal.encoding.gob.Gob_t_structtype_static_extension.T_structType_static_extension._id(__self__);
    }
}
@:dox(hide) typedef T_wireTypePointer = stdgo._internal.encoding.gob.Gob_t_wiretypepointer.T_wireTypePointer;
@:dox(hide) class T_wireType_static_extension {
    static public function _string(_w:T_wireType):String {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>);
        return stdgo._internal.encoding.gob.Gob_t_wiretype_static_extension.T_wireType_static_extension._string(_w);
    }
}
@:dox(hide) typedef T_typeInfoPointer = stdgo._internal.encoding.gob.Gob_t_typeinfopointer.T_typeInfoPointer;
@:dox(hide) class T_typeInfo_static_extension {

}
@:dox(hide) typedef T_typeTPointer = stdgo._internal.encoding.gob.Gob_t_typetpointer.T_typeTPointer;
@:dox(hide) class T_typeT_static_extension {

}
typedef BarPointer = stdgo._internal.encoding.gob.Gob_barpointer.BarPointer;
class Bar_static_extension {

}
typedef FooPointer = stdgo._internal.encoding.gob.Gob_foopointer.FooPointer;
class Foo_static_extension {

}
typedef N1Pointer = stdgo._internal.encoding.gob.Gob_n1pointer.N1Pointer;
class N1_static_extension {

}
typedef N2Pointer = stdgo._internal.encoding.gob.Gob_n2pointer.N2Pointer;
class N2_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T__struct_8PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_8pointerpointer.T__struct_8PointerPointer;
@:dox(hide) class T__struct_8Pointer_static_extension {

}
@:dox(hide) typedef T__struct_9PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_9pointerpointer.T__struct_9PointerPointer;
@:dox(hide) class T__struct_9Pointer_static_extension {

}
@:dox(hide) typedef T__struct_10PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_10pointerpointer.T__struct_10PointerPointer;
@:dox(hide) class T__struct_10Pointer_static_extension {

}
@:dox(hide) typedef T__struct_11PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_11pointerpointer.T__struct_11PointerPointer;
@:dox(hide) class T__struct_11Pointer_static_extension {

}
@:dox(hide) typedef T__struct_12PointerPointer = stdgo._internal.encoding.gob.Gob_t__struct_12pointerpointer.T__struct_12PointerPointer;
@:dox(hide) class T__struct_12Pointer_static_extension {

}
typedef Int_Pointer = stdgo._internal.encoding.gob.Gob_int_pointer.Int_Pointer;
class Int__static_extension {
    static public function square(_i:Int_):StdTypes.Int {
        return stdgo._internal.encoding.gob.Gob_int__static_extension.Int__static_extension.square(_i);
    }
}
typedef Float_Pointer = stdgo._internal.encoding.gob.Gob_float_pointer.Float_Pointer;
class Float__static_extension {
    static public function square(_f:Float_):StdTypes.Int {
        return stdgo._internal.encoding.gob.Gob_float__static_extension.Float__static_extension.square(_f);
    }
}
typedef VectorPointer = stdgo._internal.encoding.gob.Gob_vectorpointer.VectorPointer;
class Vector_static_extension {
    static public function square(_v:Vector):StdTypes.Int {
        return stdgo._internal.encoding.gob.Gob_vector_static_extension.Vector_static_extension.square(_v);
    }
}
typedef String_Pointer = stdgo._internal.encoding.gob.Gob_string_pointer.String_Pointer;
class String__static_extension {

}
@:dox(hide) typedef T_decHelperPointer = stdgo._internal.encoding.gob.Gob_t_dechelperpointer.T_decHelperPointer;
@:dox(hide) class T_decHelper_static_extension {

}
@:dox(hide) typedef T_decOpPointer = stdgo._internal.encoding.gob.Gob_t_decoppointer.T_decOpPointer;
@:dox(hide) class T_decOp_static_extension {

}
@:dox(hide) typedef T_encHelperPointer = stdgo._internal.encoding.gob.Gob_t_enchelperpointer.T_encHelperPointer;
@:dox(hide) class T_encHelper_static_extension {

}
@:dox(hide) typedef T_encOpPointer = stdgo._internal.encoding.gob.Gob_t_encoppointer.T_encOpPointer;
@:dox(hide) class T_encOp_static_extension {

}
typedef Bug1StructMapPointer = stdgo._internal.encoding.gob.Gob_bug1structmappointer.Bug1StructMapPointer;
class Bug1StructMap_static_extension {

}
typedef GobberPointer = stdgo._internal.encoding.gob.Gob_gobberpointer.GobberPointer;
class Gobber_static_extension {
    static public function gobDecode(_g:stdgo.Pointer<Gobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_gobber_static_extension.Gobber_static_extension.gobDecode(_g, _data);
    }
    static public function gobEncode(_g:stdgo.Pointer<Gobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_gobber_static_extension.Gobber_static_extension.gobEncode(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ValueGobberPointer = stdgo._internal.encoding.gob.Gob_valuegobberpointer.ValueGobberPointer;
class ValueGobber_static_extension {
    static public function gobDecode(_v:stdgo.Pointer<ValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_valuegobber_static_extension.ValueGobber_static_extension.gobDecode(_v, _data);
    }
    static public function gobEncode(_v:ValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_valuegobber_static_extension.ValueGobber_static_extension.gobEncode(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef BinaryGobberPointer = stdgo._internal.encoding.gob.Gob_binarygobberpointer.BinaryGobberPointer;
class BinaryGobber_static_extension {
    static public function unmarshalBinary(_g:stdgo.Pointer<BinaryGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_binarygobber_static_extension.BinaryGobber_static_extension.unmarshalBinary(_g, _data);
    }
    static public function marshalBinary(_g:stdgo.Pointer<BinaryGobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_binarygobber_static_extension.BinaryGobber_static_extension.marshalBinary(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef BinaryValueGobberPointer = stdgo._internal.encoding.gob.Gob_binaryvaluegobberpointer.BinaryValueGobberPointer;
class BinaryValueGobber_static_extension {
    static public function unmarshalBinary(_v:stdgo.Pointer<BinaryValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_binaryvaluegobber_static_extension.BinaryValueGobber_static_extension.unmarshalBinary(_v, _data);
    }
    static public function marshalBinary(_v:BinaryValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_binaryvaluegobber_static_extension.BinaryValueGobber_static_extension.marshalBinary(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef TextGobberPointer = stdgo._internal.encoding.gob.Gob_textgobberpointer.TextGobberPointer;
class TextGobber_static_extension {
    static public function unmarshalText(_g:stdgo.Pointer<TextGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_textgobber_static_extension.TextGobber_static_extension.unmarshalText(_g, _data);
    }
    static public function marshalText(_g:stdgo.Pointer<TextGobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_textgobber_static_extension.TextGobber_static_extension.marshalText(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef TextValueGobberPointer = stdgo._internal.encoding.gob.Gob_textvaluegobberpointer.TextValueGobberPointer;
class TextValueGobber_static_extension {
    static public function unmarshalText(_v:stdgo.Pointer<TextValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_textvaluegobber_static_extension.TextValueGobber_static_extension.unmarshalText(_v, _data);
    }
    static public function marshalText(_v:TextValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_textvaluegobber_static_extension.TextValueGobber_static_extension.marshalText(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_isZeroBugArrayPointer = stdgo._internal.encoding.gob.Gob_t_iszerobugarraypointer.T_isZeroBugArrayPointer;
@:dox(hide) class T_isZeroBugArray_static_extension {
    static public function gobDecode(_a:T_isZeroBugArray, _data:Array<std.UInt>):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_iszerobugarray.T_isZeroBugArray>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_t_iszerobugarray_static_extension.T_isZeroBugArray_static_extension.gobDecode(_a, _data);
    }
    static public function gobEncode(_a:T_isZeroBugArray):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_t_iszerobugarray_static_extension.T_isZeroBugArray_static_extension.gobEncode(_a);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_typeIdPointer = stdgo._internal.encoding.gob.Gob_t_typeidpointer.T_typeIdPointer;
@:dox(hide) class T_typeId_static_extension {
    static public function _name(_t:T_typeId):String {
        return stdgo._internal.encoding.gob.Gob_t_typeid_static_extension.T_typeId_static_extension._name(_t);
    }
    static public function _string(_t:T_typeId):String {
        return stdgo._internal.encoding.gob.Gob_t_typeid_static_extension.T_typeId_static_extension._string(_t);
    }
    static public function _gobType(_t:T_typeId):T_gobType {
        return stdgo._internal.encoding.gob.Gob_t_typeid_static_extension.T_typeId_static_extension._gobType(_t);
    }
}
@:dox(hide) typedef T_testEndToEnd___localname___T2_13762Pointer = stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762pointer.T_testEndToEnd___localname___T2_13762Pointer;
@:dox(hide) class T_testEndToEnd___localname___T2_13762_static_extension {

}
@:dox(hide) typedef T_testEndToEnd___localname___T3_13794Pointer = stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794pointer.T_testEndToEnd___localname___T3_13794Pointer;
@:dox(hide) class T_testEndToEnd___localname___T3_13794_static_extension {

}
@:dox(hide) typedef T_testEndToEnd___localname___T1_13836Pointer = stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836pointer.T_testEndToEnd___localname___T1_13836Pointer;
@:dox(hide) class T_testEndToEnd___localname___T1_13836_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___inputT_15885Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885pointer.T_testOverflow___localname___inputT_15885Pointer;
@:dox(hide) class T_testOverflow___localname___inputT_15885_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outi8_16178Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178pointer.T_testOverflow___localname___outi8_16178Pointer;
@:dox(hide) class T_testOverflow___localname___outi8_16178_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outi16_16677Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677pointer.T_testOverflow___localname___outi16_16677Pointer;
@:dox(hide) class T_testOverflow___localname___outi16_16677_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outi32_17183Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183pointer.T_testOverflow___localname___outi32_17183Pointer;
@:dox(hide) class T_testOverflow___localname___outi32_17183_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outu8_17689Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689pointer.T_testOverflow___localname___outu8_17689Pointer;
@:dox(hide) class T_testOverflow___localname___outu8_17689_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outu16_17967Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967pointer.T_testOverflow___localname___outu16_17967Pointer;
@:dox(hide) class T_testOverflow___localname___outu16_17967_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outu32_18249Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249pointer.T_testOverflow___localname___outu32_18249Pointer;
@:dox(hide) class T_testOverflow___localname___outu32_18249_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outf32_18533Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533pointer.T_testOverflow___localname___outf32_18533Pointer;
@:dox(hide) class T_testOverflow___localname___outf32_18533_static_extension {

}
@:dox(hide) typedef T_testOverflow___localname___outc64_18862Pointer = stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862pointer.T_testOverflow___localname___outc64_18862Pointer;
@:dox(hide) class T_testOverflow___localname___outc64_18862_static_extension {

}
@:dox(hide) typedef T_testNesting___localname___RT_19135Pointer = stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135pointer.T_testNesting___localname___RT_19135Pointer;
@:dox(hide) class T_testNesting___localname___RT_19135_static_extension {

}
@:dox(hide) typedef T_testBadRecursiveType___localname___Rec_23209Pointer = stdgo._internal.encoding.gob.Gob_t_testbadrecursivetype___localname___rec_23209pointer.T_testBadRecursiveType___localname___Rec_23209Pointer;
@:dox(hide) class T_testBadRecursiveType___localname___Rec_23209_static_extension {

}
@:dox(hide) typedef T_testTypeToPtrType___localname___Type0_6215Pointer = stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6215pointer.T_testTypeToPtrType___localname___Type0_6215Pointer;
@:dox(hide) class T_testTypeToPtrType___localname___Type0_6215_static_extension {

}
@:dox(hide) typedef T_testPtrTypeToType___localname___Type1_6414Pointer = stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414pointer.T_testPtrTypeToType___localname___Type1_6414Pointer;
@:dox(hide) class T_testPtrTypeToType___localname___Type1_6414_static_extension {

}
@:dox(hide) typedef T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593Pointer = stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593pointer.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593Pointer;
@:dox(hide) class T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593_static_extension {

}
@:dox(hide) typedef T_testSlice___localname___Type3_7005Pointer = stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005pointer.T_testSlice___localname___Type3_7005Pointer;
@:dox(hide) class T_testSlice___localname___Type3_7005_static_extension {

}
@:dox(hide) typedef T_testValueError___localname___Type4_7228Pointer = stdgo._internal.encoding.gob.Gob_t_testvalueerror___localname___type4_7228pointer.T_testValueError___localname___Type4_7228Pointer;
@:dox(hide) class T_testValueError___localname___Type4_7228_static_extension {

}
@:dox(hide) typedef T_testArray___localname___Type5_7494Pointer = stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494pointer.T_testArray___localname___Type5_7494Pointer;
@:dox(hide) class T_testArray___localname___Type5_7494_static_extension {

}
@:dox(hide) typedef T_testArray___localname___Type6_7544Pointer = stdgo._internal.encoding.gob.Gob_t_testarray___localname___type6_7544pointer.T_testArray___localname___Type6_7544Pointer;
@:dox(hide) class T_testArray___localname___Type6_7544_static_extension {

}
@:dox(hide) typedef T_testRecursiveMapType___localname___recursiveMap_7903Pointer = stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903pointer.T_testRecursiveMapType___localname___recursiveMap_7903Pointer;
@:dox(hide) class T_testRecursiveMapType___localname___recursiveMap_7903_static_extension {

}
@:dox(hide) typedef T_testRecursiveSliceType___localname___recursiveSlice_8150Pointer = stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150pointer.T_testRecursiveSliceType___localname___recursiveSlice_8150Pointer;
@:dox(hide) class T_testRecursiveSliceType___localname___recursiveSlice_8150_static_extension {

}
@:dox(hide) typedef T_testDefaultsInArray___localname___Type7_8446Pointer = stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446pointer.T_testDefaultsInArray___localname___Type7_8446Pointer;
@:dox(hide) class T_testDefaultsInArray___localname___Type7_8446_static_extension {

}
@:dox(hide) typedef T_testStructNonStruct___localname___Struct_10305Pointer = stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305pointer.T_testStructNonStruct___localname___Struct_10305Pointer;
@:dox(hide) class T_testStructNonStruct___localname___Struct_10305_static_extension {

}
@:dox(hide) typedef T_testStructNonStruct___localname___NonStruct_10341Pointer = stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___nonstruct_10341pointer.T_testStructNonStruct___localname___NonStruct_10341Pointer;
@:dox(hide) class T_testStructNonStruct___localname___NonStruct_10341_static_extension {

}
@:dox(hide) typedef T_testDecodeErrorMultipleTypes___localname___Test_26917Pointer = stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917pointer.T_testDecodeErrorMultipleTypes___localname___Test_26917Pointer;
@:dox(hide) class T_testDecodeErrorMultipleTypes___localname___Test_26917_static_extension {

}
@:dox(hide) typedef T_testMarshalFloatMap___localname___mapEntry_27951Pointer = stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951pointer.T_testMarshalFloatMap___localname___mapEntry_27951Pointer;
@:dox(hide) class T_testMarshalFloatMap___localname___mapEntry_27951_static_extension {

}
@:dox(hide) typedef T_testDecodePartial___localname___T_28547Pointer = stdgo._internal.encoding.gob.Gob_t_testdecodepartial___localname___t_28547pointer.T_testDecodePartial___localname___T_28547Pointer;
@:dox(hide) class T_testDecodePartial___localname___T_28547_static_extension {

}
@:dox(hide) typedef T_testRegistration___localname___T_4297Pointer = stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4297pointer.T_testRegistration___localname___T_4297Pointer;
@:dox(hide) class T_testRegistration___localname___T_4297_static_extension {

}
@:dox(hide) typedef T_testStressParallel___localname___T2_5091Pointer = stdgo._internal.encoding.gob.Gob_t_teststressparallel___localname___t2_5091pointer.T_testStressParallel___localname___T2_5091Pointer;
@:dox(hide) class T_testStressParallel___localname___T2_5091_static_extension {

}
/**
    * 
    * Package gob manages streams of gobs - binary values exchanged between an
    * Encoder (transmitter) and a Decoder (receiver). A typical use is transporting
    * arguments and results of remote procedure calls (RPCs) such as those provided by
    * [net/rpc].
    * 
    * The implementation compiles a custom codec for each data type in the stream and
    * is most efficient when a single Encoder is used to transmit a stream of values,
    * amortizing the cost of compilation.
    * 
    * # Basics
    * 
    * A stream of gobs is self-describing. Each data item in the stream is preceded by
    * a specification of its type, expressed in terms of a small set of predefined
    * types. Pointers are not transmitted, but the things they point to are
    * transmitted; that is, the values are flattened. Nil pointers are not permitted,
    * as they have no value. Recursive types work fine, but
    * recursive values (data with cycles) are problematic. This may change.
    * 
    * To use gobs, create an Encoder and present it with a series of data items as
    * values or addresses that can be dereferenced to values. The Encoder makes sure
    * all type information is sent before it is needed. At the receive side, a
    * Decoder retrieves values from the encoded stream and unpacks them into local
    * variables.
    * 
    * # Types and Values
    * 
    * The source and destination values/types need not correspond exactly. For structs,
    * fields (identified by name) that are in the source but absent from the receiving
    * variable will be ignored. Fields that are in the receiving variable but missing
    * from the transmitted type or value will be ignored in the destination. If a field
    * with the same name is present in both, their types must be compatible. Both the
    * receiver and transmitter will do all necessary indirection and dereferencing to
    * convert between gobs and actual Go values. For instance, a gob type that is
    * schematically,
    * 
    * 	struct { A, B int }
    * 
    * can be sent from or received into any of these Go types:
    * 
    * 	struct { A, B int }	// the same
    * 	*struct { A, B int }	// extra indirection of the struct
    * 	struct { *A, **B int }	// extra indirection of the fields
    * 	struct { A, B int64 }	// different concrete value type; see below
    * 
    * It may also be received into any of these:
    * 
    * 	struct { A, B int }	// the same
    * 	struct { B, A int }	// ordering doesn't matter; matching is by name
    * 	struct { A, B, C int }	// extra field (C) ignored
    * 	struct { B int }	// missing field (A) ignored; data will be dropped
    * 	struct { B, C int }	// missing field (A) ignored; extra field (C) ignored.
    * 
    * Attempting to receive into these types will draw a decode error:
    * 
    * 	struct { A int; B uint }	// change of signedness for B
    * 	struct { A int; B float }	// change of type for B
    * 	struct { }			// no field names in common
    * 	struct { C, D int }		// no field names in common
    * 
    * Integers are transmitted two ways: arbitrary precision signed integers or
    * arbitrary precision unsigned integers. There is no int8, int16 etc.
    * discrimination in the gob format; there are only signed and unsigned integers. As
    * described below, the transmitter sends the value in a variable-length encoding;
    * the receiver accepts the value and stores it in the destination variable.
    * Floating-point numbers are always sent using IEEE-754 64-bit precision (see
    * below).
    * 
    * Signed integers may be received into any signed integer variable: int, int16, etc.;
    * unsigned integers may be received into any unsigned integer variable; and floating
    * point values may be received into any floating point variable. However,
    * the destination variable must be able to represent the value or the decode
    * operation will fail.
    * 
    * Structs, arrays and slices are also supported. Structs encode and decode only
    * exported fields. Strings and arrays of bytes are supported with a special,
    * efficient representation (see below). When a slice is decoded, if the existing
    * slice has capacity the slice will be extended in place; if not, a new array is
    * allocated. Regardless, the length of the resulting slice reports the number of
    * elements decoded.
    * 
    * In general, if allocation is required, the decoder will allocate memory. If not,
    * it will update the destination variables with values read from the stream. It does
    * not initialize them first, so if the destination is a compound value such as a
    * map, struct, or slice, the decoded values will be merged elementwise into the
    * existing variables.
    * 
    * Functions and channels will not be sent in a gob. Attempting to encode such a value
    * at the top level will fail. A struct field of chan or func type is treated exactly
    * like an unexported field and is ignored.
    * 
    * Gob can encode a value of any type implementing the GobEncoder or
    * encoding.BinaryMarshaler interfaces by calling the corresponding method,
    * in that order of preference.
    * 
    * Gob can decode a value of any type implementing the GobDecoder or
    * encoding.BinaryUnmarshaler interfaces by calling the corresponding method,
    * again in that order of preference.
    * 
    * # Encoding Details
    * 
    * This section documents the encoding, details that are not important for most
    * users. Details are presented bottom-up.
    * 
    * An unsigned integer is sent one of two ways. If it is less than 128, it is sent
    * as a byte with that value. Otherwise it is sent as a minimal-length big-endian
    * (high byte first) byte stream holding the value, preceded by one byte holding the
    * byte count, negated. Thus 0 is transmitted as (00), 7 is transmitted as (07) and
    * 256 is transmitted as (FE 01 00).
    * 
    * A boolean is encoded within an unsigned integer: 0 for false, 1 for true.
    * 
    * A signed integer, i, is encoded within an unsigned integer, u. Within u, bits 1
    * upward contain the value; bit 0 says whether they should be complemented upon
    * receipt. The encode algorithm looks like this:
    * 
    * 	var u uint
    * 	if i < 0 {
    * 		u = (^uint(i) << 1) | 1 // complement i, bit 0 is 1
    * 	} else {
    * 		u = (uint(i) << 1) // do not complement i, bit 0 is 0
    * 	}
    * 	encodeUnsigned(u)
    * 
    * The low bit is therefore analogous to a sign bit, but making it the complement bit
    * instead guarantees that the largest negative integer is not a special case. For
    * example, -129=^128=(^256>>1) encodes as (FE 01 01).
    * 
    * Floating-point numbers are always sent as a representation of a float64 value.
    * That value is converted to a uint64 using math.Float64bits. The uint64 is then
    * byte-reversed and sent as a regular unsigned integer. The byte-reversal means the
    * exponent and high-precision part of the mantissa go first. Since the low bits are
    * often zero, this can save encoding bytes. For instance, 17.0 is encoded in only
    * three bytes (FE 31 40).
    * 
    * Strings and slices of bytes are sent as an unsigned count followed by that many
    * uninterpreted bytes of the value.
    * 
    * All other slices and arrays are sent as an unsigned count followed by that many
    * elements using the standard gob encoding for their type, recursively.
    * 
    * Maps are sent as an unsigned count followed by that many key, element
    * pairs. Empty but non-nil maps are sent, so if the receiver has not allocated
    * one already, one will always be allocated on receipt unless the transmitted map
    * is nil and not at the top level.
    * 
    * In slices and arrays, as well as maps, all elements, even zero-valued elements,
    * are transmitted, even if all the elements are zero.
    * 
    * Structs are sent as a sequence of (field number, field value) pairs. The field
    * value is sent using the standard gob encoding for its type, recursively. If a
    * field has the zero value for its type (except for arrays; see above), it is omitted
    * from the transmission. The field number is defined by the type of the encoded
    * struct: the first field of the encoded type is field 0, the second is field 1,
    * etc. When encoding a value, the field numbers are delta encoded for efficiency
    * and the fields are always sent in order of increasing field number; the deltas are
    * therefore unsigned. The initialization for the delta encoding sets the field
    * number to -1, so an unsigned integer field 0 with value 7 is transmitted as unsigned
    * delta = 1, unsigned value = 7 or (01 07). Finally, after all the fields have been
    * sent a terminating mark denotes the end of the struct. That mark is a delta=0
    * value, which has representation (00).
    * 
    * Interface types are not checked for compatibility; all interface types are
    * treated, for transmission, as members of a single "interface" type, analogous to
    * int or []byte - in effect they're all treated as interface{}. Interface values
    * are transmitted as a string identifying the concrete type being sent (a name
    * that must be pre-defined by calling Register), followed by a byte count of the
    * length of the following data (so the value can be skipped if it cannot be
    * stored), followed by the usual encoding of concrete (dynamic) value stored in
    * the interface value. (A nil interface value is identified by the empty string
    * and transmits no value.) Upon receipt, the decoder verifies that the unpacked
    * concrete item satisfies the interface of the receiving variable.
    * 
    * If a value is passed to Encode and the type is not a struct (or pointer to struct,
    * etc.), for simplicity of processing it is represented as a struct of one field.
    * The only visible effect of this is to encode a zero byte after the value, just as
    * after the last field of an encoded struct, so that the decode algorithm knows when
    * the top-level value is complete.
    * 
    * The representation of types is described below. When a type is defined on a given
    * connection between an Encoder and Decoder, it is assigned a signed integer type
    * id. When Encoder.Encode(v) is called, it makes sure there is an id assigned for
    * the type of v and all its elements and then it sends the pair (typeid, encoded-v)
    * where typeid is the type id of the encoded type of v and encoded-v is the gob
    * encoding of the value v.
    * 
    * To define a type, the encoder chooses an unused, positive type id and sends the
    * pair (-type id, encoded-type) where encoded-type is the gob encoding of a wireType
    * description, constructed from these types:
    * 
    * 	type wireType struct {
    * 		ArrayT           *ArrayType
    * 		SliceT           *SliceType
    * 		StructT          *StructType
    * 		MapT             *MapType
    * 		GobEncoderT      *gobEncoderType
    * 		BinaryMarshalerT *gobEncoderType
    * 		TextMarshalerT   *gobEncoderType
    * 
    * 	}
    * 	type arrayType struct {
    * 		CommonType
    * 		Elem typeId
    * 		Len  int
    * 	}
    * 	type CommonType struct {
    * 		Name string // the name of the struct type
    * 		Id  int    // the id of the type, repeated so it's inside the type
    * 	}
    * 	type sliceType struct {
    * 		CommonType
    * 		Elem typeId
    * 	}
    * 	type structType struct {
    * 		CommonType
    * 		Field []*fieldType // the fields of the struct.
    * 	}
    * 	type fieldType struct {
    * 		Name string // the name of the field.
    * 		Id   int    // the type id of the field, which must be already defined
    * 	}
    * 	type mapType struct {
    * 		CommonType
    * 		Key  typeId
    * 		Elem typeId
    * 	}
    * 	type gobEncoderType struct {
    * 		CommonType
    * 	}
    * 
    * If there are nested type ids, the types for all inner type ids must be defined
    * before the top-level type id is used to describe an encoded-v.
    * 
    * For simplicity in setup, the connection is defined to understand these types a
    * priori, as well as the basic gob types int, uint, etc. Their ids are:
    * 
    * 	bool        1
    * 	int         2
    * 	uint        3
    * 	float       4
    * 	[]byte      5
    * 	string      6
    * 	complex     7
    * 	interface   8
    * 	// gap for reserved ids.
    * 	WireType    16
    * 	ArrayType   17
    * 	CommonType  18
    * 	SliceType   19
    * 	StructType  20
    * 	FieldType   21
    * 	// 22 is slice of fieldType.
    * 	MapType     23
    * 
    * Finally, each message created by a call to Encode is preceded by an encoded
    * unsigned integer count of the number of bytes remaining in the message. After
    * the initial type name, interface values are wrapped the same way; in effect, the
    * interface value acts like a recursive invocation of Encode.
    * 
    * In summary, a gob stream looks like
    * 
    * 	(byteCount (-type id, encoding of a wireType)* (type id, encoding of a value))*
    * 
    * where * signifies zero or more repetitions and the type id of a value must
    * be predefined or be defined before the value in the stream.
    * 
    * Compatibility: Any future changes to the package will endeavor to maintain
    * compatibility with streams encoded using previous versions. That is, any released
    * version of this package should be able to decode data written with any previously
    * released version, subject to issues such as security fixes. See the Go compatibility
    * document for background: https://golang.org/doc/go1compat
    * 
    * See "Gobs of data" for a design discussion of the gob wire format:
    * https://blog.golang.org/gobs-of-data
    * 
    * # Security
    * 
    * This package is not designed to be hardened against adversarial inputs, and is
    * outside the scope of https://go.dev/security/policy. In particular, the Decoder
    * does only basic sanity checking on decoded input sizes, and its limits are not
    * configurable. Care should be taken when decoding gob data from untrusted
    * sources, which may consume significant resources.
    * 
**/
class Gob {
    /**
        * Test basic encode/decode routines for unsigned integers
    **/
    static public inline function testUintCodec(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testuintcodec.testUintCodec(_t);
    }
    /**
        * Test basic encode/decode routines for signed integers
    **/
    static public inline function testIntCodec(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testintcodec.testIntCodec(_t);
    }
    /**
        * Test instruction execution for encoding.
        * Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public inline function testScalarEncInstructions(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testscalarencinstructions.testScalarEncInstructions(_t);
    }
    /**
        * Test instruction execution for decoding.
        * Do not run the machine yet; instead do individual instructions crafted by hand.
    **/
    static public inline function testScalarDecInstructions(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testscalardecinstructions.testScalarDecInstructions(_t);
    }
    static public inline function testEndToEnd(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testendtoend.testEndToEnd(_t);
    }
    static public inline function testOverflow(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testoverflow.testOverflow(_t);
    }
    static public inline function testNesting(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testnesting.testNesting(_t);
    }
    static public inline function testAutoIndirection(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testautoindirection.testAutoIndirection(_t);
    }
    static public inline function testReorderedFields(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testreorderedfields.testReorderedFields(_t);
    }
    static public inline function testIgnoredFields(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testignoredfields.testIgnoredFields(_t);
    }
    static public inline function testBadRecursiveType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testbadrecursivetype.testBadRecursiveType(_t);
    }
    static public inline function testIndirectSliceMapArray(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testindirectslicemaparray.testIndirectSliceMapArray(_t);
    }
    static public inline function testInterface(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testinterface.testInterface(_t);
    }
    static public inline function testInterfaceBasic(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testinterfacebasic.testInterfaceBasic(_t);
    }
    /**
        * We'll send pointers; should receive values.
        * Also check that we can register T but send *T.
    **/
    static public inline function testInterfacePointer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testinterfacepointer.testInterfacePointer(_t);
    }
    static public inline function testIgnoreInterface(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testignoreinterface.testIgnoreInterface(_t);
    }
    static public inline function testUnexportedFields(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testunexportedfields.testUnexportedFields(_t);
    }
    static public inline function testDebugSingleton(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdebugsingleton.testDebugSingleton(_t);
    }
    static public inline function testDebugStruct(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdebugstruct.testDebugStruct(_t);
    }
    /**
        * This does some "fuzz testing" by attempting to decode a sequence of random bytes.
    **/
    static public inline function testFuzz(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testfuzz.testFuzz(_t);
    }
    static public inline function testFuzzRegressions(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testfuzzregressions.testFuzzRegressions(_t);
    }
    /**
        * TestFuzzOneByte tries to decode corrupted input sequences
        * and checks that no panic occurs.
    **/
    static public inline function testFuzzOneByte(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testfuzzonebyte.testFuzzOneByte(_t);
    }
    /**
        * Don't crash, just give error with invalid type id.
        * Issue 9649.
    **/
    static public inline function testErrorInvalidTypeId(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testerrorinvalidtypeid.testErrorInvalidTypeId(_t);
    }
    static public inline function testLargeSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testlargeslice.testLargeSlice(_t);
    }
    static public inline function testLocalRemoteTypesMismatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testlocalremotetypesmismatch.testLocalRemoteTypesMismatch(_t);
    }
    /**
        * NewDecoder returns a new decoder that reads from the io.Reader.
        * If r does not also implement io.ByteReader, it will be wrapped in a
        * bufio.Reader.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):Decoder {
        return stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(_r);
    }
    /**
        * NewEncoder returns a new encoder that will transmit on the io.Writer.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):Encoder {
        return stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(_w);
    }
    /**
        * Test basic operations in a safe manner.
    **/
    static public inline function testBasicEncoderDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testbasicencoderdecoder.testBasicEncoderDecoder(_t);
    }
    static public inline function testEncodeIntSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testencodeintslice.testEncodeIntSlice(_t);
    }
    static public inline function testEncoderDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testencoderdecoder.testEncoderDecoder(_t);
    }
    /**
        * Test that we recognize a bad type the first time.
    **/
    static public inline function testWrongTypeDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testwrongtypedecoder.testWrongTypeDecoder(_t);
    }
    static public inline function testUnsupported(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testunsupported.testUnsupported(_t);
    }
    static public inline function testTypeToPtrType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testtypetoptrtype.testTypeToPtrType(_t);
    }
    static public inline function testPtrTypeToType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testptrtypetotype.testPtrTypeToType(_t);
    }
    static public inline function testTypeToPtrPtrPtrPtrType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testtypetoptrptrptrptrtype.testTypeToPtrPtrPtrPtrType(_t);
    }
    static public inline function testSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testslice.testSlice(_t);
    }
    static public inline function testValueError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testvalueerror.testValueError(_t);
    }
    static public inline function testArray(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testarray.testArray(_t);
    }
    static public inline function testRecursiveMapType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testrecursivemaptype.testRecursiveMapType(_t);
    }
    static public inline function testRecursiveSliceType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testrecursiveslicetype.testRecursiveSliceType(_t);
    }
    /**
        * Regression test for bug: must send zero values inside arrays
    **/
    static public inline function testDefaultsInArray(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdefaultsinarray.testDefaultsInArray(_t);
    }
    static public inline function testSingletons(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testsingletons.testSingletons(_t);
    }
    static public inline function testStructNonStruct(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_teststructnonstruct.testStructNonStruct(_t);
    }
    /**
        * A version of a bug reported on golang-nuts. Also tests top-level
        * slice of interfaces. The issue was registering *T caused T to be
        * stored as the concrete type.
    **/
    static public inline function testInterfaceIndirect(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testinterfaceindirect.testInterfaceIndirect(_t);
    }
    static public inline function testDecodeIntoNothing(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdecodeintonothing.testDecodeIntoNothing(_t);
    }
    static public inline function testIgnoreRecursiveType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testignorerecursivetype.testIgnoreRecursiveType(_t);
    }
    static public inline function testNestedInterfaces(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testnestedinterfaces.testNestedInterfaces(_t);
    }
    static public inline function testMapBug1(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testmapbug1.testMapBug1(_t);
    }
    static public inline function testGobMapInterfaceEncode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobmapinterfaceencode.testGobMapInterfaceEncode(_t);
    }
    static public inline function testSliceReusesMemory(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testslicereusesmemory.testSliceReusesMemory(_t);
    }
    /**
        * Used to crash: negative count in recvMessage.
    **/
    static public inline function testBadCount(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testbadcount.testBadCount(_t);
    }
    /**
        * Verify that sequential Decoders built on a single input will
        * succeed if the input implements ReadByte and there is no
        * type information in the stream.
    **/
    static public inline function testSequentialDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testsequentialdecoder.testSequentialDecoder(_t);
    }
    static public inline function testChanFuncIgnored(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testchanfuncignored.testChanFuncIgnored(_t);
    }
    static public inline function testSliceIncompatibility(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testsliceincompatibility.testSliceIncompatibility(_t);
    }
    static public inline function testGobPtrSlices(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobptrslices.testGobPtrSlices(_t);
    }
    /**
        * getDecEnginePtr cached engine for ut.base instead of ut.user so we passed
        * a *map and then tried to reuse its engine to decode the inner map.
    **/
    static public inline function testPtrToMapOfMap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testptrtomapofmap.testPtrToMapOfMap(_t);
    }
    /**
        * Test that untyped nils generate an error, not a panic.
        * See Issue 16204.
    **/
    static public inline function testCatchInvalidNilValue(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testcatchinvalidnilvalue.testCatchInvalidNilValue(_t);
    }
    /**
        * A top-level nil pointer generates a panic with a helpful string-valued message.
    **/
    static public inline function testTopLevelNilPointer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testtoplevelnilpointer.testTopLevelNilPointer(_t);
    }
    static public inline function testNilPointerPanics(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testnilpointerpanics.testNilPointerPanics(_t);
    }
    static public inline function testNilPointerInsideInterface(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testnilpointerinsideinterface.testNilPointerInsideInterface(_t);
    }
    /**
        * Test that a failed compilation doesn't leave around an executable encoder.
        * Issue 3723.
    **/
    static public inline function testMutipleEncodingsOfBadType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testmutipleencodingsofbadtype.testMutipleEncodingsOfBadType(_t);
    }
    static public inline function test29ElementSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_test29elementslice.test29ElementSlice(_t);
    }
    /**
        * Don't crash, just give error when allocating a huge slice.
        * Issue 8084.
    **/
    static public inline function testErrorForHugeSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testerrorforhugeslice.testErrorForHugeSlice(_t);
    }
    /**
        * TestBadData tests that various problems caused by malformed input
        * are caught as errors and do not cause panics.
    **/
    static public inline function testBadData(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testbaddata.testBadData(_t);
    }
    static public inline function testDecodeErrorMultipleTypes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdecodeerrormultipletypes.testDecodeErrorMultipleTypes(_t);
    }
    /**
        * Issue 24075
    **/
    static public inline function testMarshalFloatMap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testmarshalfloatmap.testMarshalFloatMap(_t);
    }
    static public inline function testDecodePartial(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdecodepartial.testDecodePartial(_t);
    }
    static public inline function testDecoderOverflow(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testdecoderoverflow.testDecoderOverflow(_t);
    }
    static public inline function testGobEncoderField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderfield.testGobEncoderField(_t);
    }
    /**
        * Even though the field is a value, we can still take its address
        * and should be able to call the methods.
    **/
    static public inline function testGobEncoderValueField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodervaluefield.testGobEncoderValueField(_t);
    }
    /**
        * GobEncode/Decode should work even if the value is
        * more indirect than the receiver.
    **/
    static public inline function testGobEncoderIndirectField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderindirectfield.testGobEncoderIndirectField(_t);
    }
    /**
        * Test with a large field with methods.
    **/
    static public inline function testGobEncoderArrayField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderarrayfield.testGobEncoderArrayField(_t);
    }
    /**
        * Test an indirection to a large field with methods.
    **/
    static public inline function testGobEncoderIndirectArrayField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderindirectarrayfield.testGobEncoderIndirectArrayField(_t);
    }
    /**
        * As long as the fields have the same name and implement the
        * interface, we can cross-connect them. Not sure it's useful
        * and may even be bad but it works and it's hard to prevent
        * without exposing the contents of the object, which would
        * defeat the purpose.
    **/
    static public inline function testGobEncoderFieldsOfDifferentType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderfieldsofdifferenttype.testGobEncoderFieldsOfDifferentType(_t);
    }
    /**
        * Test that we can encode a value and decode into a pointer.
    **/
    static public inline function testGobEncoderValueEncoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodervalueencoder.testGobEncoderValueEncoder(_t);
    }
    /**
        * Test that we can use a value then a pointer type of a GobEncoder
        * in the same encoded value. Bug 4647.
    **/
    static public inline function testGobEncoderValueThenPointer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodervaluethenpointer.testGobEncoderValueThenPointer(_t);
    }
    /**
        * Test that we can use a pointer then a value type of a GobEncoder
        * in the same encoded value.
    **/
    static public inline function testGobEncoderPointerThenValue(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderpointerthenvalue.testGobEncoderPointerThenValue(_t);
    }
    static public inline function testGobEncoderFieldTypeError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderfieldtypeerror.testGobEncoderFieldTypeError(_t);
    }
    /**
        * Even though ByteStruct is a struct, it's treated as a singleton at the top level.
    **/
    static public inline function testGobEncoderStructSingleton(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderstructsingleton.testGobEncoderStructSingleton(_t);
    }
    static public inline function testGobEncoderNonStructSingleton(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodernonstructsingleton.testGobEncoderNonStructSingleton(_t);
    }
    static public inline function testGobEncoderIgnoreStructField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderignorestructfield.testGobEncoderIgnoreStructField(_t);
    }
    static public inline function testGobEncoderIgnoreNonStructField(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderignorenonstructfield.testGobEncoderIgnoreNonStructField(_t);
    }
    static public inline function testGobEncoderIgnoreNilEncoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderignorenilencoder.testGobEncoderIgnoreNilEncoder(_t);
    }
    /**
        * This was a bug: the receiver has a different indirection level
        * than the variable.
    **/
    static public inline function testGobEncoderExtraIndirect(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencoderextraindirect.testGobEncoderExtraIndirect(_t);
    }
    static public inline function testGobEncodeIsZero(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodeiszero.testGobEncodeIsZero(_t);
    }
    static public inline function testGobEncodePtrError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testgobencodeptrerror.testGobEncodePtrError(_t);
    }
    static public inline function testNetIP(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testnetip.testNetIP(_t);
    }
    static public inline function testIgnoreDepthLimit(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testignoredepthlimit.testIgnoreDepthLimit(_t);
    }
    static public inline function benchmarkEndToEndPipe(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkendtoendpipe.benchmarkEndToEndPipe(_b);
    }
    static public inline function benchmarkEndToEndByteBuffer(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkendtoendbytebuffer.benchmarkEndToEndByteBuffer(_b);
    }
    static public inline function benchmarkEndToEndSliceByteBuffer(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkendtoendslicebytebuffer.benchmarkEndToEndSliceByteBuffer(_b);
    }
    static public inline function testCountEncodeMallocs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testcountencodemallocs.testCountEncodeMallocs(_t);
    }
    static public inline function testCountDecodeMallocs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testcountdecodemallocs.testCountDecodeMallocs(_t);
    }
    static public inline function benchmarkEncodeComplex128Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkencodecomplex128slice.benchmarkEncodeComplex128Slice(_b);
    }
    static public inline function benchmarkEncodeFloat64Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkencodefloat64slice.benchmarkEncodeFloat64Slice(_b);
    }
    static public inline function benchmarkEncodeInt32Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkencodeint32slice.benchmarkEncodeInt32Slice(_b);
    }
    static public inline function benchmarkEncodeStringSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkencodestringslice.benchmarkEncodeStringSlice(_b);
    }
    static public inline function benchmarkEncodeInterfaceSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkencodeinterfaceslice.benchmarkEncodeInterfaceSlice(_b);
    }
    static public inline function benchmarkDecodeComplex128Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodecomplex128slice.benchmarkDecodeComplex128Slice(_b);
    }
    static public inline function benchmarkDecodeFloat64Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodefloat64slice.benchmarkDecodeFloat64Slice(_b);
    }
    static public inline function benchmarkDecodeInt32Slice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodeint32slice.benchmarkDecodeInt32Slice(_b);
    }
    static public inline function benchmarkDecodeStringSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodestringslice.benchmarkDecodeStringSlice(_b);
    }
    static public inline function benchmarkDecodeStringsSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodestringsslice.benchmarkDecodeStringsSlice(_b);
    }
    static public inline function benchmarkDecodeBytesSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodebytesslice.benchmarkDecodeBytesSlice(_b);
    }
    static public inline function benchmarkDecodeInterfaceSlice(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodeinterfaceslice.benchmarkDecodeInterfaceSlice(_b);
    }
    static public inline function benchmarkDecodeMap(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.gob.Gob_benchmarkdecodemap.benchmarkDecodeMap(_b);
    }
    /**
        * RegisterName is like Register but uses the provided name rather than the
        * type's default.
    **/
    static public inline function registerName(_name:String, _value:stdgo.AnyInterface):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.encoding.gob.Gob_registername.registerName(_name, _value);
    }
    /**
        * Register records a type, identified by a value for that type, under its
        * internal type name. That name will identify the concrete type of a value
        * sent or received as an interface variable. Only types that will be
        * transferred as implementations of interface values need to be registered.
        * Expecting to be used only during initialization, it panics if the mapping
        * between types and names is not a bijection.
    **/
    static public inline function register(_value:stdgo.AnyInterface):Void {
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.encoding.gob.Gob_register.register(_value);
    }
    /**
        * Sanity checks
    **/
    static public inline function testBasic(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testbasic.testBasic(_t);
    }
    /**
        * Reregister some basic types to check registration is idempotent.
    **/
    static public inline function testReregistration(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testreregistration.testReregistration(_t);
    }
    static public inline function testArrayType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testarraytype.testArrayType(_t);
    }
    static public inline function testSliceType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testslicetype.testSliceType(_t);
    }
    static public inline function testMapType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testmaptype.testMapType(_t);
    }
    static public inline function testStructType(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_teststructtype.testStructType(_t);
    }
    /**
        * Should be OK to register the same type multiple times, as long as they're
        * at the same level of indirection.
    **/
    static public inline function testRegistration(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testregistration.testRegistration(_t);
    }
    /**
        * See comment in type.go/Register.
    **/
    static public inline function testRegistrationNaming(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testregistrationnaming.testRegistrationNaming(_t);
    }
    static public inline function testStressParallel(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_teststressparallel.testStressParallel(_t);
    }
    /**
        * Issue 23328. Note that this test name is known to cmd/dist/test.go.
    **/
    static public inline function testTypeRace(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.gob.Gob_testtyperace.testTypeRace(_t);
    }
}
