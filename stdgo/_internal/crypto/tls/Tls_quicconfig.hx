package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_quicconfig_static_extension.QUICConfig_static_extension) class QUICConfig {
    public var tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public function new(?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) {
        if (tLSConfig != null) this.tLSConfig = tLSConfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICConfig(tLSConfig);
    }
}
