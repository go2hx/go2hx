package stdgo.crypto.tls;
class Dialer_static_extension {
    static public function dialContext(_d:Dialer, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _addr:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Dialer_static_extension.Dialer_static_extension.dialContext(_d, _ctx, _network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _netDialer(_d:Dialer):stdgo._internal.net.Net_Dialer.Dialer {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>);
        return stdgo._internal.crypto.tls.Tls_Dialer_static_extension.Dialer_static_extension._netDialer(_d);
    }
    static public function dial(_d:Dialer, _network:String, _addr:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Dialer_static_extension.Dialer_static_extension.dial(_d, _network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
