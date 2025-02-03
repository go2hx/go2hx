package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.NewType0_static_extension) abstract NewType0(stdgo._internal.encoding.gob.Gob_NewType0.NewType0) from stdgo._internal.encoding.gob.Gob_NewType0.NewType0 to stdgo._internal.encoding.gob.Gob_NewType0.NewType0 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.gob.Gob_NewType0.NewType0((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
