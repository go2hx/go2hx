package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2PingFrame_static_extension) abstract T_http2PingFrame(stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame) from stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame to stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame {
    public var data(get, set) : haxe.ds.Vector<std.UInt>;
    function get_data():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.data) i]);
    function set_data(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?data:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame(([for (i in data) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
