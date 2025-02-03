package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testRegistration___localname___T_4297_static_extension) abstract T_testRegistration___localname___T_4297(stdgo._internal.encoding.gob.Gob_T_testRegistration___localname___T_4297.T_testRegistration___localname___T_4297) from stdgo._internal.encoding.gob.Gob_T_testRegistration___localname___T_4297.T_testRegistration___localname___T_4297 to stdgo._internal.encoding.gob.Gob_T_testRegistration___localname___T_4297.T_testRegistration___localname___T_4297 {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testRegistration___localname___T_4297.T_testRegistration___localname___T_4297((_a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
