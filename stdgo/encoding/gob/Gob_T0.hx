package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T0_static_extension) abstract T0(stdgo._internal.encoding.gob.Gob_T0.T0) from stdgo._internal.encoding.gob.Gob_T0.T0 to stdgo._internal.encoding.gob.Gob_T0.T0 {
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
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T0.T0((a : stdgo.GoInt), (b : stdgo.GoInt), (c : stdgo.GoInt), (d : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
