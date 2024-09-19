package stdgo._internal.net.http;
@:structInit class T_readResult {
    @:optional
    public var __70 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _n : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _b : stdgo.GoUInt8 = 0;
    public function new(?__70:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_n:stdgo.GoInt, ?_err:stdgo.Error, ?_b:stdgo.GoUInt8) {
        if (__70 != null) this.__70 = __70;
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readResult(__70, _n, _err, _b);
    }
}
