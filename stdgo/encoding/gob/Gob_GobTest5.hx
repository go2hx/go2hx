package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest5_static_extension) abstract GobTest5(stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5) from stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5 to stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5 {
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
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<ValueGobber>, ?bV:stdgo.Pointer<BinaryValueGobber>, ?tV:stdgo.Pointer<TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5((x : stdgo.GoInt), v, bV, tV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
