package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_listener_static_extension) abstract T_listener(stdgo._internal.crypto.tls.Tls_T_listener.T_listener) from stdgo._internal.crypto.tls.Tls_T_listener.T_listener to stdgo._internal.crypto.tls.Tls_T_listener.T_listener {
    public var listener(get, set) : stdgo._internal.net.Net_Listener.Listener;
    function get_listener():stdgo._internal.net.Net_Listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Listener.Listener {
        this.listener = v;
        return v;
    }
    public var _config(get, set) : Config;
    function get__config():Config return this._config;
    function set__config(v:Config):Config {
        this._config = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public function new(?listener:stdgo._internal.net.Net_Listener.Listener, ?_config:Config) this = new stdgo._internal.crypto.tls.Tls_T_listener.T_listener(listener, (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
