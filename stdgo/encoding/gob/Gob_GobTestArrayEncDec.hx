package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestArrayEncDec_static_extension) abstract GobTestArrayEncDec(stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec) from stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec to stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : ArrayStruct;
    function get_a():ArrayStruct return this.a;
    function set_a(v:ArrayStruct):ArrayStruct {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:ArrayStruct) this = new stdgo._internal.encoding.gob.Gob_GobTestArrayEncDec.GobTestArrayEncDec((x : stdgo.GoInt), a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
