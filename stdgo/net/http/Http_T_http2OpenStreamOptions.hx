package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2OpenStreamOptions_static_extension) abstract T_http2OpenStreamOptions(stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions) from stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions to stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions {
    public var pusherID(get, set) : std.UInt;
    function get_pusherID():std.UInt return this.pusherID;
    function set_pusherID(v:std.UInt):std.UInt {
        this.pusherID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?pusherID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions((pusherID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
