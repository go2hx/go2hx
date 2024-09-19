package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension) class T_http2responseWriter {
    public var _rws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>);
    public function new(?_rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>) {
        if (_rws != null) this._rws = _rws;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2responseWriter(_rws);
    }
}
