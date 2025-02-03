package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2WindowUpdateFrame_static_extension) abstract T_http2WindowUpdateFrame(stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame) from stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame to stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame {
    public var increment(get, set) : std.UInt;
    function get_increment():std.UInt return this.increment;
    function set_increment(v:std.UInt):std.UInt {
        this.increment = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?increment:std.UInt) this = new stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame((increment : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
