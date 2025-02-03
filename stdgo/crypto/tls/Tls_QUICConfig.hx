package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.QUICConfig_static_extension) abstract QUICConfig(stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig) from stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig to stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig {
    public var tLSConfig(get, set) : Config;
    function get_tLSConfig():Config return this.tLSConfig;
    function set_tLSConfig(v:Config):Config {
        this.tLSConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public function new(?tLSConfig:Config) this = new stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig((tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
