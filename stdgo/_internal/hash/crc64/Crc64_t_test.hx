package stdgo._internal.hash.crc64;
@:structInit @:using(stdgo._internal.hash.crc64.Crc64_t_test_static_extension.T_test_static_extension) class T_test {
    public var _outISO : stdgo.GoUInt64 = 0;
    public var _outECMA : stdgo.GoUInt64 = 0;
    public var _in : stdgo.GoString = "";
    public var _halfStateISO : stdgo.GoString = "";
    public var _halfStateECMA : stdgo.GoString = "";
    public function new(?_outISO:stdgo.GoUInt64, ?_outECMA:stdgo.GoUInt64, ?_in:stdgo.GoString, ?_halfStateISO:stdgo.GoString, ?_halfStateECMA:stdgo.GoString) {
        if (_outISO != null) this._outISO = _outISO;
        if (_outECMA != null) this._outECMA = _outECMA;
        if (_in != null) this._in = _in;
        if (_halfStateISO != null) this._halfStateISO = _halfStateISO;
        if (_halfStateECMA != null) this._halfStateECMA = _halfStateECMA;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_test(_outISO, _outECMA, _in, _halfStateISO, _halfStateECMA);
    }
}
