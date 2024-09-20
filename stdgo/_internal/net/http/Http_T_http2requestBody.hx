package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2requestBody_static_extension.T_http2requestBody_static_extension) class T_http2requestBody {
    @:optional
    public var __29 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _stream : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
    public var _closeOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _sawEOF : Bool = false;
    public var _pipe : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
    public var _needsContinue : Bool = false;
    public function new(?__29:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_stream:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, ?_conn:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, ?_closeOnce:stdgo._internal.sync.Sync_Once.Once, ?_sawEOF:Bool, ?_pipe:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, ?_needsContinue:Bool) {
        if (__29 != null) this.__29 = __29;
        if (_stream != null) this._stream = _stream;
        if (_conn != null) this._conn = _conn;
        if (_closeOnce != null) this._closeOnce = _closeOnce;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
        if (_pipe != null) this._pipe = _pipe;
        if (_needsContinue != null) this._needsContinue = _needsContinue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2requestBody(__29, _stream, _conn, _closeOnce, _sawEOF, _pipe, _needsContinue);
    }
}
