package stdgo._internal.net;
@:interface typedef Listener = stdgo.StructType & {
    @:interfacetypeffun
    function accept():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function close():stdgo.Error;
    @:interfacetypeffun
    function addr():stdgo._internal.net.Net_addr.Addr;
};
