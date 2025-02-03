package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest4_static_extension) abstract GobTest4(stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4) from stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4 to stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4 {
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
    public var bV(get, set) : BinaryValueGobber;
    function get_bV():BinaryValueGobber return this.bV;
    function set_bV(v:BinaryValueGobber):BinaryValueGobber {
        this.bV = v;
        return v;
    }
    public var tV(get, set) : TextValueGobber;
    function get_tV():TextValueGobber return this.tV;
    function set_tV(v:TextValueGobber):TextValueGobber {
        this.tV = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?v:ValueGobber, ?bV:BinaryValueGobber, ?tV:TextValueGobber) this = new stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4((x : stdgo.GoInt), v, bV, tV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
