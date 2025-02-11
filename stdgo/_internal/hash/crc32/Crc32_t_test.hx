package stdgo._internal.hash.crc32;
@:structInit @:using(stdgo._internal.hash.crc32.Crc32_t_test_static_extension.T_test_static_extension) class T_test {
    public var _ieee : stdgo.GoUInt32 = 0;
    public var _castagnoli : stdgo.GoUInt32 = 0;
    public var _in : stdgo.GoString = "";
    public var _halfStateIEEE : stdgo.GoString = "";
    public var _halfStateCastagnoli : stdgo.GoString = "";
    public function new(?_ieee:stdgo.GoUInt32, ?_castagnoli:stdgo.GoUInt32, ?_in:stdgo.GoString, ?_halfStateIEEE:stdgo.GoString, ?_halfStateCastagnoli:stdgo.GoString) {
        if (_ieee != null) this._ieee = _ieee;
        if (_castagnoli != null) this._castagnoli = _castagnoli;
        if (_in != null) this._in = _in;
        if (_halfStateIEEE != null) this._halfStateIEEE = _halfStateIEEE;
        if (_halfStateCastagnoli != null) this._halfStateCastagnoli = _halfStateCastagnoli;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_test(_ieee, _castagnoli, _in, _halfStateIEEE, _halfStateCastagnoli);
    }
}
