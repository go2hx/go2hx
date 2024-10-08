package stdgo._internal.net.http.internal;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension) class T_chunkedReader {
    public var _r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _n : stdgo.GoUInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
    public var _checkEnd : Bool = false;
    public function new(?_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_n:stdgo.GoUInt64, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_checkEnd:Bool) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_checkEnd != null) this._checkEnd = _checkEnd;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chunkedReader(_r, _n, _err, _buf, _checkEnd);
    }
}
