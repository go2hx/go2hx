package stdgo.net;
@:structInit @:using(stdgo.net.Net.UDPConn_static_extension) abstract UDPConn(stdgo._internal.net.Net_UDPConn.UDPConn) from stdgo._internal.net.Net_UDPConn.UDPConn to stdgo._internal.net.Net_UDPConn.UDPConn {
    public function new() this = new stdgo._internal.net.Net_UDPConn.UDPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
