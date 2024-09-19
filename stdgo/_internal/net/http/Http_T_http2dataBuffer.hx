package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension) class T_http2dataBuffer {
    public var _chunks : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _r : stdgo.GoInt = 0;
    public var _w : stdgo.GoInt = 0;
    public var _size : stdgo.GoInt = 0;
    public var _expected : stdgo.GoInt64 = 0;
    public function new(?_chunks:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_r:stdgo.GoInt, ?_w:stdgo.GoInt, ?_size:stdgo.GoInt, ?_expected:stdgo.GoInt64) {
        if (_chunks != null) this._chunks = _chunks;
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
        if (_size != null) this._size = _size;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2dataBuffer(_chunks, _r, _w, _size, _expected);
    }
}
