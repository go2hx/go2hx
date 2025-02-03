package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T1_static_extension) abstract T1(stdgo._internal.encoding.gob.Gob_T1.T1) from stdgo._internal.encoding.gob.Gob_T1.T1 to stdgo._internal.encoding.gob.Gob_T1.T1 {
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
    public function new(?a:StdTypes.Int, ?b:stdgo.Pointer<StdTypes.Int>, ?c:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?d:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>) this = new stdgo._internal.encoding.gob.Gob_T1.T1((a : stdgo.GoInt), b, c, d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
