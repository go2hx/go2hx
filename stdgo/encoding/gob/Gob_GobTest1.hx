package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest1_static_extension) abstract GobTest1(stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1) from stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1 to stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : StringStruct;
    function get_g():StringStruct return this.g;
    function set_g(v:StringStruct):StringStruct {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:StringStruct) this = new stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1((x : stdgo.GoInt), (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
