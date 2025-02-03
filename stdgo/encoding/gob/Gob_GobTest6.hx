package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest6_static_extension) abstract GobTest6(stdgo._internal.encoding.gob.Gob_GobTest6.GobTest6) from stdgo._internal.encoding.gob.Gob_GobTest6.GobTest6 to stdgo._internal.encoding.gob.Gob_GobTest6.GobTest6 {
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
    public function new(?x:StdTypes.Int, ?v:ValueGobber, ?w:stdgo.Pointer<ValueGobber>, ?bV:BinaryValueGobber, ?bW:stdgo.Pointer<BinaryValueGobber>, ?tV:TextValueGobber, ?tW:stdgo.Pointer<TextValueGobber>) this = new stdgo._internal.encoding.gob.Gob_GobTest6.GobTest6((x : stdgo.GoInt), v, w, bV, bW, tV, tW);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
