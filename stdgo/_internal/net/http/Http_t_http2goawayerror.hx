package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2goawayerror_static_extension.T_http2GoAwayError_static_extension) class T_http2GoAwayError {
    public var lastStreamID : stdgo.GoUInt32 = 0;
    public var errCode : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
    public var debugData : stdgo.GoString = "";
    public function new(?lastStreamID:stdgo.GoUInt32, ?errCode:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, ?debugData:stdgo.GoString) {
        if (lastStreamID != null) this.lastStreamID = lastStreamID;
        if (errCode != null) this.errCode = errCode;
        if (debugData != null) this.debugData = debugData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2GoAwayError(lastStreamID, errCode, debugData);
    }
}
