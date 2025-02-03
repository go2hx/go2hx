package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug0Inner_static_extension) abstract Bug0Inner(stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner) from stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner to stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
