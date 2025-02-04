package stdgo._internal.net;
@:keep class Addr_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.net.Net_addr.Addr):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function network(t:stdgo._internal.net.Net_addr.Addr):stdgo.GoString return t.network();
}
