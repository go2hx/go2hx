package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Indirect_static_extension) abstract Indirect(stdgo._internal.encoding.gob.Gob_Indirect.Indirect) from stdgo._internal.encoding.gob.Gob_Indirect.Indirect to stdgo._internal.encoding.gob.Gob_Indirect.Indirect {
    public var a(get, set) : stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>;
    function get_a():stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> return this.a;
    function set_a(v:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>):stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> {
        this.a = v;
        return v;
    }
    public var s(get, set) : stdgo.Pointer<Array<StdTypes.Int>>;
    function get_s():stdgo.Pointer<Array<StdTypes.Int>> return this.s;
    function set_s(v:stdgo.Pointer<Array<StdTypes.Int>>):stdgo.Pointer<Array<StdTypes.Int>> {
        this.s = v;
        return v;
    }
    public var m(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>;
    function get_m():stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>> return this.m;
    function set_m(v:stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>):stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>> {
        this.m = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>, ?s:stdgo.Pointer<Array<StdTypes.Int>>, ?m:stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>) this = new stdgo._internal.encoding.gob.Gob_Indirect.Indirect(a, s, m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
