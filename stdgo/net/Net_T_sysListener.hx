package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_sysListener_static_extension) abstract T_sysListener(stdgo._internal.net.Net_T_sysListener.T_sysListener) from stdgo._internal.net.Net_T_sysListener.T_sysListener to stdgo._internal.net.Net_T_sysListener.T_sysListener {
    public var listenConfig(get, set) : ListenConfig;
    function get_listenConfig():ListenConfig return this.listenConfig;
    function set_listenConfig(v:ListenConfig):ListenConfig {
        this.listenConfig = v;
        return v;
    }
    public function new(?listenConfig:ListenConfig) this = new stdgo._internal.net.Net_T_sysListener.T_sysListener(listenConfig);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
