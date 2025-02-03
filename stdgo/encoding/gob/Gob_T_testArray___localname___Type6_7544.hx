package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testArray___localname___Type6_7544_static_extension) abstract T_testArray___localname___Type6_7544(stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type6_7544.T_testArray___localname___Type6_7544) from stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type6_7544.T_testArray___localname___Type6_7544 to stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type6_7544.T_testArray___localname___Type6_7544 {
    public var a(get, set) : haxe.ds.Vector<String>;
    function get_a():haxe.ds.Vector<String> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<String>) this = new stdgo._internal.encoding.gob.Gob_T_testArray___localname___Type6_7544.T_testArray___localname___Type6_7544(([for (i in a) (i : stdgo.GoString)] : stdgo.GoArray<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
