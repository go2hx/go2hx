package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_label_static_extension.T_label_static_extension) class T_label {
    public var _key : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public function new(?_key:stdgo.GoString, ?_value:stdgo.GoString) {
        if (_key != null) this._key = _key;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_label(_key, _value);
    }
}
