package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bar_static_extension) abstract Bar(stdgo._internal.encoding.gob.Gob_Bar.Bar) from stdgo._internal.encoding.gob.Gob_Bar.Bar to stdgo._internal.encoding.gob.Gob_Bar.Bar {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.gob.Gob_Bar.Bar((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
