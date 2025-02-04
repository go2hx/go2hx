package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_hcode_static_extension.T_hcode_static_extension) class T_hcode {
    public var _code : stdgo.GoUInt16 = 0;
    public var _len : stdgo.GoUInt16 = 0;
    public function new(?_code:stdgo.GoUInt16, ?_len:stdgo.GoUInt16) {
        if (_code != null) this._code = _code;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_hcode(_code, _len);
    }
}
