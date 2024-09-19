package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame_static_extension.T_http2write100ContinueHeadersFrame_static_extension) class T_http2write100ContinueHeadersFrame {
    public var _streamID : stdgo.GoUInt32 = 0;
    public function new(?_streamID:stdgo.GoUInt32) {
        if (_streamID != null) this._streamID = _streamID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2write100ContinueHeadersFrame(_streamID);
    }
}
