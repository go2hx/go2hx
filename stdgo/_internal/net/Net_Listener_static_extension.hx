package stdgo._internal.net;
@:keep class Listener_static_extension {
    static public function addr(t:Listener):stdgo._internal.net.Net_Addr.Addr return t.addr();
    static public function close(t:Listener):stdgo.Error return t.close();
    static public function accept(t:Listener):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return t.accept();
}
