package stdgo._internal.encoding.base64;
@:structInit class T_nextRead {
    public var _n : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nextRead(_n, _err);
    }
}
