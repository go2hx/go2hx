package stdgo.crypto.tls;
class T_listener_static_extension {
    static public function accept(_l:T_listener):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_listener_static_extension.T_listener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo.Error {
        return stdgo._internal.crypto.tls.Tls_T_listener_static_extension.T_listener_static_extension.close(__self__);
    }
    public static function addr(__self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.crypto.tls.Tls_T_listener_static_extension.T_listener_static_extension.addr(__self__);
    }
}
