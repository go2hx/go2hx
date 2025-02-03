package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.DT_static_extension) abstract DT(stdgo._internal.encoding.gob.Gob_DT.DT) from stdgo._internal.encoding.gob.Gob_DT.DT to stdgo._internal.encoding.gob.Gob_DT.DT {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public var c(get, set) : StdTypes.Float;
    function get_c():StdTypes.Float return this.c;
    function set_c(v:StdTypes.Float):StdTypes.Float {
        this.c = (v : stdgo.GoFloat64);
        return v;
    }
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public var j(get, set) : stdgo.AnyInterface;
    function get_j():stdgo.AnyInterface return this.j;
    function set_j(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.j = (v : stdgo.AnyInterface);
        return v;
    }
    public var i_nil(get, set) : stdgo.AnyInterface;
    function get_i_nil():stdgo.AnyInterface return this.i_nil;
    function set_i_nil(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i_nil = (v : stdgo.AnyInterface);
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.m = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var t(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_t():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.t) i]);
    function set_t(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.t = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?c:StdTypes.Float, ?i:stdgo.AnyInterface, ?j:stdgo.AnyInterface, ?i_nil:stdgo.AnyInterface, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?t:haxe.ds.Vector<StdTypes.Int>, ?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob_DT.DT((a : stdgo.GoInt), (b : stdgo.GoString), (c : stdgo.GoFloat64), (i : stdgo.AnyInterface), (j : stdgo.AnyInterface), (i_nil : stdgo.AnyInterface), (m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), ([for (i in t) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
