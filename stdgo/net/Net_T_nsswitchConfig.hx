package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_nsswitchConfig_static_extension) abstract T_nsswitchConfig(stdgo._internal.net.Net_T_nsswitchConfig.T_nsswitchConfig) from stdgo._internal.net.Net_T_nsswitchConfig.T_nsswitchConfig to stdgo._internal.net.Net_T_nsswitchConfig.T_nsswitchConfig {
    public function new() this = new stdgo._internal.net.Net_T_nsswitchConfig.T_nsswitchConfig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
