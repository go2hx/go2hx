package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_maxBytesReader_static_extension.T_maxBytesReader_static_extension) class T_maxBytesReader {
    public var _w : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
    public var _r : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _i : stdgo.GoInt64 = 0;
    public var _n : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, ?_r:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_i:stdgo.GoInt64, ?_n:stdgo.GoInt64, ?_err:stdgo.Error) {
        if (_w != null) this._w = _w;
        if (_r != null) this._r = _r;
        if (_i != null) this._i = _i;
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_maxBytesReader(_w, _r, _i, _n, _err);
    }
}
