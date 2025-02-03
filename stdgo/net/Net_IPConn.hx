package stdgo.net;
@:structInit @:using(stdgo.net.Net.IPConn_static_extension) abstract IPConn(stdgo._internal.net.Net_IPConn.IPConn) from stdgo._internal.net.Net_IPConn.IPConn to stdgo._internal.net.Net_IPConn.IPConn {
    public function new() this = new stdgo._internal.net.Net_IPConn.IPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
