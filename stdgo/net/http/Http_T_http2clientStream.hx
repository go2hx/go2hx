package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2clientStream_static_extension) abstract T_http2clientStream(stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream) from stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream to stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream {
    public var iD(get, set) : std.UInt;
    function get_iD():std.UInt return this.iD;
    function set_iD(v:std.UInt):std.UInt {
        this.iD = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?iD:std.UInt) this = new stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream((iD : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
