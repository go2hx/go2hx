package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_onceCloseListener_asInterface) class T_onceCloseListener_static_extension {
    @:keep
    @:tdfield
    static public function close( _oc:stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>):stdgo.Error throw "T_onceCloseListener:net.http.close is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.addr();
    @:embedded
    @:embeddededffieldsffun
    public static function accept( __self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.accept();
}
