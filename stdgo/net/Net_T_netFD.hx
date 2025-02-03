package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_netFD_static_extension) abstract T_netFD(stdgo._internal.net.Net_T_netFD.T_netFD) from stdgo._internal.net.Net_T_netFD.T_netFD to stdgo._internal.net.Net_T_netFD.T_netFD {
    public function new() this = new stdgo._internal.net.Net_T_netFD.T_netFD();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
