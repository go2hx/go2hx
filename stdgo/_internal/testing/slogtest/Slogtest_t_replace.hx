package stdgo._internal.testing.slogtest;
@:structInit @:using(stdgo._internal.testing.slogtest.Slogtest_t_replace_static_extension.T_replace_static_extension) class T_replace {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_replace(_v);
    }
}
