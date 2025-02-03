package stdgo.net;
@:structInit @:using(stdgo.net.Net.UnixConn_static_extension) abstract UnixConn(stdgo._internal.net.Net_UnixConn.UnixConn) from stdgo._internal.net.Net_UnixConn.UnixConn to stdgo._internal.net.Net_UnixConn.UnixConn {
    public function new() this = new stdgo._internal.net.Net_UnixConn.UnixConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
