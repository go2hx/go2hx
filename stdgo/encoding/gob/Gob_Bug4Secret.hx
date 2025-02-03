package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug4Secret_static_extension) abstract Bug4Secret(stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret) from stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret to stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret((_a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
