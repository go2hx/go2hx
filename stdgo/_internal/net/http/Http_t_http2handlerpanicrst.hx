package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2handlerpanicrst_static_extension.T_http2handlerPanicRST_static_extension) class T_http2handlerPanicRST {
    public var streamID : stdgo.GoUInt32 = 0;
    public function new(?streamID:stdgo.GoUInt32) {
        if (streamID != null) this.streamID = streamID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2handlerPanicRST(streamID);
    }
}
