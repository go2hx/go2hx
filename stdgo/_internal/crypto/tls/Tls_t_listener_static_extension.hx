package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_listener_asInterface) class T_listener_static_extension {
    @:keep
    @:tdfield
    static public function accept( _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_listener.T_listener>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_listener.T_listener> = _l;
        var __tmp__ = (@:checkr _l ?? throw "null pointer dereference").listener.accept(), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(stdgo._internal.crypto.tls.Tls_server.server(_c, (@:checkr _l ?? throw "null pointer dereference")._config)), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.crypto.tls.Tls_t_listener.T_listener):stdgo.Error return @:_5 __self__.close();
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.crypto.tls.Tls_t_listener.T_listener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.addr();
}
