package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.GobTest2_static_extension) abstract GobTest2(stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2) from stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2 to stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var g(get, set) : String;
    function get_g():String return this.g;
    function set_g(v:String):String {
        this.g = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:StdTypes.Int, ?g:String) this = new stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2((x : stdgo.GoInt), (g : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
