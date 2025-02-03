package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIndirectArrayEncDec_static_extension) abstract GobTestIndirectArrayEncDec(stdgo._internal.encoding.gob.Gob_GobTestIndirectArrayEncDec.GobTestIndirectArrayEncDec) from stdgo._internal.encoding.gob.Gob_GobTestIndirectArrayEncDec.GobTestIndirectArrayEncDec to stdgo._internal.encoding.gob.Gob_GobTestIndirectArrayEncDec.GobTestIndirectArrayEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : stdgo.Pointer<ArrayStruct>;
    function get_a():stdgo.Pointer<ArrayStruct> return this.a;
    function set_a(v:stdgo.Pointer<ArrayStruct>):stdgo.Pointer<ArrayStruct> {
        this.a = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?a:stdgo.Pointer<ArrayStruct>) this = new stdgo._internal.encoding.gob.Gob_GobTestIndirectArrayEncDec.GobTestIndirectArrayEncDec((x : stdgo.GoInt), a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
