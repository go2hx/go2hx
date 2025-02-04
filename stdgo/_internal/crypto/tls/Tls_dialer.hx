package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_dialer_static_extension.Dialer_static_extension) class Dialer {
    public var netDialer : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = (null : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
    public var config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public function new(?netDialer:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, ?config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) {
        if (netDialer != null) this.netDialer = netDialer;
        if (config != null) this.config = config;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dialer(netDialer, config);
    }
}
