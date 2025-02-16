package stdgo._internal.net;
@:interface typedef PacketConn = stdgo.StructType & {
    @:interfacetypeffun
    function readFrom(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; };
    @:interfacetypeffun
    function writeTo(_p:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function close():stdgo.Error;
    @:interfacetypeffun
    function localAddr():stdgo._internal.net.Net_addr.Addr;
    @:interfacetypeffun
    function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
    @:interfacetypeffun
    function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
    @:interfacetypeffun
    function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error;
};
