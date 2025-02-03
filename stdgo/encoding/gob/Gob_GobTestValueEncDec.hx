package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTestValueEncDec_static_extension) abstract GobTestValueEncDec(stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec) from stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec to stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : StringStruct;
    function get_g():StringStruct return this.g;
    function set_g(v:StringStruct):StringStruct {
        this.g = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:StringStruct) this = new stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec((x : stdgo.GoInt), g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
