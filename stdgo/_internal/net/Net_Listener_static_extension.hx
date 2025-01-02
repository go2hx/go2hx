package stdgo._internal.net;
@:keep class Listener_static_extension {
    @:interfacetypeffun
    static public function addr(t:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Addr.Addr return t.addr();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.Net_Listener.Listener):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function accept(t:stdgo._internal.net.Net_Listener.Listener):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return t.accept();
}
