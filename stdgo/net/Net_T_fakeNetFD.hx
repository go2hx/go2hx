package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_fakeNetFD_static_extension) abstract T_fakeNetFD(stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD) from stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD to stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD {
    public function new() this = new stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
