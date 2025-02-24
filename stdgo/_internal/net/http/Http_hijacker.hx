package stdgo._internal.net.http;
@:interface typedef Hijacker = stdgo.StructType & {
    @:interfacetypeffun
    function hijack():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; };
};
