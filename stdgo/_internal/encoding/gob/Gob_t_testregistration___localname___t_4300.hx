package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testregistration___localname___t_4300_static_extension.T_testRegistration___localname___T_4300_static_extension) class T_testRegistration___localname___T_4300 {
    public var _a : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRegistration___localname___T_4300(_a);
    }
}
