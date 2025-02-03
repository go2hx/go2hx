package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2handlerPanicRST_static_extension) abstract T_http2handlerPanicRST(stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST) from stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST to stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?streamID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST((streamID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
