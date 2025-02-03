package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest7_static_extension) abstract GobTest7(stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7) from stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7 to stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7 {
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
    public var w(get, set) : ValueGobber;
    function get_w():ValueGobber return this.w;
    function set_w(v:ValueGobber):ValueGobber {
        this.w = v;
        return v;
    }
    public var bV(get, set) : stdgo.Pointer<BinaryValueGobber>;
    function get_bV():stdgo.Pointer<BinaryValueGobber> return this.bV;
    function set_bV(v:stdgo.Pointer<BinaryValueGobber>):stdgo.Pointer<BinaryValueGobber> {
        this.bV = v;
        return v;
    }
    public var bW(get, set) : BinaryValueGobber;
    function get_bW():BinaryValueGobber return this.bW;
    function set_bW(v:BinaryValueGobber):BinaryValueGobber {
        this.bW = v;
        return v;
    }
    public var tV(get, set) : stdgo.Pointer<TextValueGobber>;
    function get_tV():stdgo.Pointer<TextValueGobber> return this.tV;
    function set_tV(v:stdgo.Pointer<TextValueGobber>):stdgo.Pointer<TextValueGobber> {
        this.tV = v;
        return v;
    }
    public var tW(get, set) : TextValueGobber;
    function get_tW():TextValueGobber return this.tW;
    function set_tW(v:TextValueGobber):TextValueGobber {
        this.tW = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:stdgo.Pointer<ValueGobber>, ?w:ValueGobber, ?bV:stdgo.Pointer<BinaryValueGobber>, ?bW:BinaryValueGobber, ?tV:stdgo.Pointer<TextValueGobber>, ?tW:TextValueGobber) this = new stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7((x : stdgo.GoInt), v, w, bV, bW, tV, tW);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
