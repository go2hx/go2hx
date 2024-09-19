package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_listener_static_extension.T_listener_static_extension) class T_listener {
    @:embedded
    public var listener : stdgo._internal.net.Net_Listener.Listener = (null : stdgo._internal.net.Net_Listener.Listener);
    public var _config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public function new(?listener:stdgo._internal.net.Net_Listener.Listener, ?_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) {
        if (listener != null) this.listener = listener;
        if (_config != null) this._config = _config;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function addr():stdgo._internal.net.Net_Addr.Addr return this.listener.addr();
    @:embedded
    public function close():stdgo.Error return this.listener.close();
    public function __copy__() {
        return new T_listener(listener, _config);
    }
}
