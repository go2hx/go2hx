package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testArray___localname___Type5_7494_static_extension) abstract T_testArray___localname___Type5_7494(stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type5_7494.T_testArray___localname___Type5_7494) from stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type5_7494.T_testArray___localname___Type5_7494 to stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type5_7494.T_testArray___localname___Type5_7494 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public var b(get, set) : haxe.ds.Vector<std.UInt>;
    function get_b():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.b) i]);
    function set_b(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>, ?b:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type5_7494.T_testArray___localname___Type5_7494(([for (i in a) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>), ([for (i in b) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
