package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_QUICConfig_static_extension.QUICConfig_static_extension) class QUICConfig {
    public var tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public function new(?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) {
        if (tLSConfig != null) this.tLSConfig = tLSConfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICConfig(tLSConfig);
    }
}
