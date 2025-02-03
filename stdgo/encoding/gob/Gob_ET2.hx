package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ET2_static_extension) abstract ET2(stdgo._internal.encoding.gob.Gob_ET2.ET2) from stdgo._internal.encoding.gob.Gob_ET2.ET2 to stdgo._internal.encoding.gob.Gob_ET2.ET2 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob_ET2.ET2((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
