package stdgo._internal.net;
@:keep class PacketConn_static_extension {
    static public function setWriteDeadline(t:PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setWriteDeadline(_t);
    static public function setReadDeadline(t:PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setReadDeadline(_t);
    static public function setDeadline(t:PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setDeadline(_t);
    static public function localAddr(t:PacketConn):stdgo._internal.net.Net_Addr.Addr return t.localAddr();
    static public function close(t:PacketConn):stdgo.Error return t.close();
    static public function writeTo(t:PacketConn, _p:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_Addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeTo(_p, _addr);
    static public function readFrom(t:PacketConn, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } return t.readFrom(_p);
}
