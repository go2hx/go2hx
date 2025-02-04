package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_tcplistener_static_extension.TCPListener_static_extension) class TCPListener {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TCPListener();
    }
}
