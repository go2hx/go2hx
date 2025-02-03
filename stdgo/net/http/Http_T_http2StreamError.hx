package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2StreamError_static_extension) abstract T_http2StreamError(stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) from stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError to stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var code(get, set) : T_http2ErrCode;
    function get_code():T_http2ErrCode return this.code;
    function set_code(v:T_http2ErrCode):T_http2ErrCode {
        this.code = v;
        return v;
    }
    public var cause(get, set) : stdgo.Error;
    function get_cause():stdgo.Error return this.cause;
    function set_cause(v:stdgo.Error):stdgo.Error {
        this.cause = (v : stdgo.Error);
        return v;
    }
    public function new(?streamID:std.UInt, ?code:T_http2ErrCode, ?cause:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError((streamID : stdgo.GoUInt32), code, (cause : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
