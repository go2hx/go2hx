package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest3_static_extension) abstract GobTest3(stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3) from stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3 to stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3 {
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
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<Gobber>, ?b:stdgo.Pointer<BinaryGobber>, ?t:stdgo.Pointer<TextGobber>) this = new stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3((x : stdgo.GoInt), g, b, t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
