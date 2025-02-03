package stdgo.testing.slogtest;
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_replace_static_extension) abstract T_replace(stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace) from stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace to stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
