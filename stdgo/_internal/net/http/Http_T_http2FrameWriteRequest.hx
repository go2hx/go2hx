package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension) class T_http2FrameWriteRequest {
    public var _write : stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer = (null : stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer);
    public var _stream : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
    public var _done : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public function new(?_write:stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer, ?_stream:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, ?_done:stdgo.Chan<stdgo.Error>) {
        if (_write != null) this._write = _write;
        if (_stream != null) this._stream = _stream;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2FrameWriteRequest(_write, _stream, _done);
    }
}
