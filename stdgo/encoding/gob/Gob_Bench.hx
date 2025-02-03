package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bench_static_extension) abstract Bench(stdgo._internal.encoding.gob.Gob_Bench.Bench) from stdgo._internal.encoding.gob.Gob_Bench.Bench to stdgo._internal.encoding.gob.Gob_Bench.Bench {
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
    public function new(?a:StdTypes.Int, ?b:StdTypes.Float, ?c:String, ?d:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_Bench.Bench((a : stdgo.GoInt), (b : stdgo.GoFloat64), (c : stdgo.GoString), ([for (i in d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
