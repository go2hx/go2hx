package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.RT0_static_extension) abstract RT0(stdgo._internal.encoding.gob.Gob_RT0.RT0) from stdgo._internal.encoding.gob.Gob_RT0.RT0 to stdgo._internal.encoding.gob.Gob_RT0.RT0 {
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
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_RT0.RT0((a : stdgo.GoInt), (b : stdgo.GoString), (c : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
