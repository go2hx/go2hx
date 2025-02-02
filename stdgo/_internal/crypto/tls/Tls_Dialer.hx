package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_Dialer_static_extension.Dialer_static_extension) class Dialer {
    public var netDialer : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer> = (null : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
    public var config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public function new(?netDialer:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, ?config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) {
        if (netDialer != null) this.netDialer = netDialer;
        if (config != null) this.config = config;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dialer(netDialer, config);
    }
}
