package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T2_static_extension) abstract T2(stdgo._internal.encoding.gob.Gob_T2.T2) from stdgo._internal.encoding.gob.Gob_T2.T2 to stdgo._internal.encoding.gob.Gob_T2.T2 {
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
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>>, ?b:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?c:stdgo.Pointer<StdTypes.Int>, ?d:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T2.T2(a, b, c, (d : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
