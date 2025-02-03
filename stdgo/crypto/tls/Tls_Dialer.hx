package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.Dialer_static_extension) abstract Dialer(stdgo._internal.crypto.tls.Tls_Dialer.Dialer) from stdgo._internal.crypto.tls.Tls_Dialer.Dialer to stdgo._internal.crypto.tls.Tls_Dialer.Dialer {
    public var netDialer(get, set) : stdgo._internal.net.Net_Dialer.Dialer;
    function get_netDialer():stdgo._internal.net.Net_Dialer.Dialer return this.netDialer;
    function set_netDialer(v:stdgo._internal.net.Net_Dialer.Dialer):stdgo._internal.net.Net_Dialer.Dialer {
        this.netDialer = (v : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        return v;
    }
    public var config(get, set) : Config;
    function get_config():Config return this.config;
    function set_config(v:Config):Config {
        this.config = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public function new(?netDialer:stdgo._internal.net.Net_Dialer.Dialer, ?config:Config) this = new stdgo._internal.crypto.tls.Tls_Dialer.Dialer((netDialer : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>), (config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
