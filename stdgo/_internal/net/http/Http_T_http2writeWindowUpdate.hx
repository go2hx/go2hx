package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writeWindowUpdate_static_extension.T_http2writeWindowUpdate_static_extension) class T_http2writeWindowUpdate {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _n : stdgo.GoUInt32 = 0;
    public function new(?_streamID:stdgo.GoUInt32, ?_n:stdgo.GoUInt32) {
        if (_streamID != null) this._streamID = _streamID;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writeWindowUpdate(_streamID, _n);
    }
}
