package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_nssConf_static_extension) abstract T_nssConf(stdgo._internal.net.Net_T_nssConf.T_nssConf) from stdgo._internal.net.Net_T_nssConf.T_nssConf to stdgo._internal.net.Net_T_nssConf.T_nssConf {
    public function new() this = new stdgo._internal.net.Net_T_nssConf.T_nssConf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
