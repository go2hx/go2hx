package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2streamerror_static_extension.T_http2StreamError_static_extension) class T_http2StreamError {
    public var streamID : stdgo.GoUInt32 = 0;
    public var code : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
    public var cause : stdgo.Error = (null : stdgo.Error);
    public function new(?streamID:stdgo.GoUInt32, ?code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, ?cause:stdgo.Error) {
        if (streamID != null) this.streamID = streamID;
        if (code != null) this.code = code;
        if (cause != null) this.cause = cause;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2StreamError(streamID, code, cause);
    }
}
