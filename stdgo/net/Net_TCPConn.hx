package stdgo.net;
@:structInit @:using(stdgo.net.Net.TCPConn_static_extension) abstract TCPConn(stdgo._internal.net.Net_TCPConn.TCPConn) from stdgo._internal.net.Net_TCPConn.TCPConn to stdgo._internal.net.Net_TCPConn.TCPConn {
    public function new() this = new stdgo._internal.net.Net_TCPConn.TCPConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
