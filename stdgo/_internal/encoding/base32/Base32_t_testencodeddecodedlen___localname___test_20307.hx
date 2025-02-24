package stdgo._internal.encoding.base32;
@:structInit @:using(stdgo._internal.encoding.base32.Base32_t_testencodeddecodedlen___localname___test_20307_static_extension.T_testEncodedDecodedLen___localname___test_20307_static_extension) class T_testEncodedDecodedLen___localname___test_20307 {
    public var _in : stdgo.GoInt = 0;
    public var _wantEnc : stdgo.GoInt = 0;
    public var _wantDec : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoInt, ?_wantEnc:stdgo.GoInt, ?_wantDec:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_wantEnc != null) this._wantEnc = _wantEnc;
        if (_wantDec != null) this._wantDec = _wantDec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncodedDecodedLen___localname___test_20307(_in, _wantEnc, _wantDec);
    }
}
