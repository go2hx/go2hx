package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.StringPair_static_extension) abstract StringPair(stdgo._internal.encoding.gob.Gob_StringPair.StringPair) from stdgo._internal.encoding.gob.Gob_StringPair.StringPair to stdgo._internal.encoding.gob.Gob_StringPair.StringPair {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.gob.Gob_StringPair.StringPair((a : stdgo.GoString), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
