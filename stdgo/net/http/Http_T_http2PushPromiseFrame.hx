package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2PushPromiseFrame_static_extension) abstract T_http2PushPromiseFrame(stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame) from stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame to stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame {
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?promiseID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame((promiseID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
