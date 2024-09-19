package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_listener_asInterface) class T_listener_static_extension {
    @:keep
    static public function accept( _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener> = _l;
        var __tmp__ = _l.listener.accept(), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(stdgo._internal.crypto.tls.Tls_server.server(_c, _l._config)), _1 : (null : stdgo.Error) };
    }
    @:embedded
    public static function close( __self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo.Error return __self__.close();
    @:embedded
    public static function addr( __self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo._internal.net.Net_Addr.Addr return __self__.addr();
}
