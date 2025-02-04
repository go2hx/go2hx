package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_fakenetaddr_static_extension.T_fakeNetAddr_static_extension) class T_fakeNetAddr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fakeNetAddr();
    }
}
