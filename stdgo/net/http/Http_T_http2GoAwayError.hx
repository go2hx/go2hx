package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2GoAwayError_static_extension) abstract T_http2GoAwayError(stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError) from stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError to stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError {
    public var lastStreamID(get, set) : std.UInt;
    function get_lastStreamID():std.UInt return this.lastStreamID;
    function set_lastStreamID(v:std.UInt):std.UInt {
        this.lastStreamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public var debugData(get, set) : String;
    function get_debugData():String return this.debugData;
    function set_debugData(v:String):String {
        this.debugData = (v : stdgo.GoString);
        return v;
    }
    public function new(?lastStreamID:std.UInt, ?errCode:T_http2ErrCode, ?debugData:String) this = new stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError((lastStreamID : stdgo.GoUInt32), errCode, (debugData : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
