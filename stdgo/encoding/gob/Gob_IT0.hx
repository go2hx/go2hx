package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.IT0_static_extension) abstract IT0(stdgo._internal.encoding.gob.Gob_IT0.IT0) from stdgo._internal.encoding.gob.Gob_IT0.IT0 to stdgo._internal.encoding.gob.Gob_IT0.IT0 {
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
        this.ignore_i = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>);
        return v;
    }
    public var ignore_m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_ignore_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.ignore_m;
    function set_ignore_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.ignore_m = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?a:haxe.Int64, ?b:String, ?ignore_d:Array<StdTypes.Int>, ?ignore_e:haxe.ds.Vector<StdTypes.Float>, ?ignore_f:Bool, ?ignore_g:String, ?ignore_h:Array<std.UInt>, ?ignore_i:RT1, ?ignore_m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_IT0.IT0((a : stdgo.GoInt64), (b : stdgo.GoString), ([for (i in ignore_d) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in ignore_e) (i : stdgo.GoFloat64)] : stdgo.GoArray<stdgo.GoFloat64>), ignore_f, (ignore_g : stdgo.GoString), ([for (i in ignore_h) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (ignore_i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>), (ignore_m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), (c : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
