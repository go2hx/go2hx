package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_fakeNetAddr_static_extension) abstract T_fakeNetAddr(stdgo._internal.net.Net_T_fakeNetAddr.T_fakeNetAddr) from stdgo._internal.net.Net_T_fakeNetAddr.T_fakeNetAddr to stdgo._internal.net.Net_T_fakeNetAddr.T_fakeNetAddr {
    public function new() this = new stdgo._internal.net.Net_T_fakeNetAddr.T_fakeNetAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
