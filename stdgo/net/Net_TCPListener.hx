package stdgo.net;
@:structInit @:using(stdgo.net.Net.TCPListener_static_extension) abstract TCPListener(stdgo._internal.net.Net_TCPListener.TCPListener) from stdgo._internal.net.Net_TCPListener.TCPListener to stdgo._internal.net.Net_TCPListener.TCPListener {
    public function new() this = new stdgo._internal.net.Net_TCPListener.TCPListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
