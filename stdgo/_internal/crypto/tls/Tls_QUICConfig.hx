package stdgo._internal.crypto.tls;
@:structInit class QUICConfig {
    public var tlsconfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public function new(?tlsconfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) {
        if (tlsconfig != null) this.tlsconfig = tlsconfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICConfig(tlsconfig);
    }
}
