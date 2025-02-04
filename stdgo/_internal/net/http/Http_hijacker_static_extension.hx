package stdgo._internal.net.http;
@:keep class Hijacker_static_extension {
    @:interfacetypeffun
    static public function hijack(t:stdgo._internal.net.http.Http_hijacker.Hijacker):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } return t.hijack();
}
