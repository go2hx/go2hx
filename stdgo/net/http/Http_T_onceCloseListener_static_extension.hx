package stdgo.net.http;
class T_onceCloseListener_static_extension {
    static public function close(_oc:T_onceCloseListener):stdgo.Error {
        final _oc = (_oc : stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>);
        return stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.close(_oc);
    }
    public static function addr(__self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.addr(__self__);
    }
    public static function accept(__self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.accept(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
