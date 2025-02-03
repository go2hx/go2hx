package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_dnsConfig_static_extension) abstract T_dnsConfig(stdgo._internal.net.Net_T_dnsConfig.T_dnsConfig) from stdgo._internal.net.Net_T_dnsConfig.T_dnsConfig to stdgo._internal.net.Net_T_dnsConfig.T_dnsConfig {
    public function new() this = new stdgo._internal.net.Net_T_dnsConfig.T_dnsConfig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
