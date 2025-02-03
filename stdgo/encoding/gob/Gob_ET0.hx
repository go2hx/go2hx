package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ET0_static_extension) abstract ET0(stdgo._internal.encoding.gob.Gob_ET0.ET0) from stdgo._internal.encoding.gob.Gob_ET0.ET0 to stdgo._internal.encoding.gob.Gob_ET0.ET0 {
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
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.encoding.gob.Gob_ET0.ET0((a : stdgo.GoInt), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
