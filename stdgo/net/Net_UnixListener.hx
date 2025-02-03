package stdgo.net;
@:structInit @:using(stdgo.net.Net.UnixListener_static_extension) abstract UnixListener(stdgo._internal.net.Net_UnixListener.UnixListener) from stdgo._internal.net.Net_UnixListener.UnixListener to stdgo._internal.net.Net_UnixListener.UnixListener {
    public function new() this = new stdgo._internal.net.Net_UnixListener.UnixListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
