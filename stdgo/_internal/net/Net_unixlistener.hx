package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_unixlistener_static_extension.UnixListener_static_extension) class UnixListener {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnixListener();
    }
}
