package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_listener_asInterface) class T_listener_static_extension {
    @:keep
    @:tdfield
    static public function accept( _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_listener.T_listener>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "T_listener:crypto.tls.accept is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.crypto.tls.Tls_t_listener.T_listener):stdgo.Error return @:_5 __self__.close();
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.crypto.tls.Tls_t_listener.T_listener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.addr();
}
