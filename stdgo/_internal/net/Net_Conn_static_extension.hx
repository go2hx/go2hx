package stdgo._internal.net;
@:keep class Conn_static_extension {
    static public function setWriteDeadline(t:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setWriteDeadline(_t);
    static public function setReadDeadline(t:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setReadDeadline(_t);
    static public function setDeadline(t:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error return t.setDeadline(_t);
    static public function remoteAddr(t:Conn):stdgo._internal.net.Net_Addr.Addr return t.remoteAddr();
    static public function localAddr(t:Conn):stdgo._internal.net.Net_Addr.Addr return t.localAddr();
    static public function close(t:Conn):stdgo.Error return t.close();
    static public function write(t:Conn, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
    static public function read(t:Conn, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_b);
}
