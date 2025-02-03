package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Direct_static_extension) abstract Direct(stdgo._internal.encoding.gob.Gob_Direct.Direct) from stdgo._internal.encoding.gob.Gob_Direct.Direct to stdgo._internal.encoding.gob.Gob_Direct.Direct {
    public var a(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_a():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.a) i]);
    function set_a(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.a = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.m = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public function new(?a:haxe.ds.Vector<StdTypes.Int>, ?s:Array<StdTypes.Int>, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) this = new stdgo._internal.encoding.gob.Gob_Direct.Direct(([for (i in a) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
