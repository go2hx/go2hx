package stdgo._internal.net;
@:keep class PacketConn_static_extension {
    @:interfacetypeffun
    static public function setWriteDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setWriteDeadline(_t);
    @:interfacetypeffun
    static public function setReadDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setReadDeadline(_t);
    @:interfacetypeffun
    static public function setDeadline(t:stdgo._internal.net.Net_packetconn.PacketConn, _t:stdgo._internal.time.Time_time.Time):stdgo.Error return t.setDeadline(_t);
    @:interfacetypeffun
    static public function localAddr(t:stdgo._internal.net.Net_packetconn.PacketConn):stdgo._internal.net.Net_addr.Addr return t.localAddr();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.Net_packetconn.PacketConn):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function writeTo(t:stdgo._internal.net.Net_packetconn.PacketConn, _p:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeTo(_p, _addr);
    @:interfacetypeffun
    static public function readFrom(t:stdgo._internal.net.Net_packetconn.PacketConn, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } return t.readFrom(_p);
}
