package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest0_static_extension) abstract GobTest0(stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0) from stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0 to stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : ByteStruct;
    function get_g():ByteStruct return this.g;
    function set_g(v:ByteStruct):ByteStruct {
        this.g = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:ByteStruct) this = new stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0((x : stdgo.GoInt), (g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
