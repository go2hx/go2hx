package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_fakenetfd_static_extension.T_fakeNetFD_static_extension) class T_fakeNetFD {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fakeNetFD();
    }
}
