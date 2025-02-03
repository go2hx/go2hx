package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestIndirectEncDec_static_extension) abstract GobTestIndirectEncDec(stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec) from stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec to stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : stdgo.Pointer<StringStruct>;
    function get_g():stdgo.Pointer<StringStruct> return this.g;
    function set_g(v:stdgo.Pointer<StringStruct>):stdgo.Pointer<StringStruct> {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:stdgo.Pointer<StringStruct>) this = new stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec((x : stdgo.GoInt), g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
