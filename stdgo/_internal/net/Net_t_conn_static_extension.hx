package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    @:tdfield
    static public function file( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "T_conn:net.file is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteBuffer( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _bytes:stdgo.GoInt):stdgo.Error throw "T_conn:net.setWriteBuffer is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadBuffer( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _bytes:stdgo.GoInt):stdgo.Error throw "T_conn:net.setReadBuffer is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_conn:net.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_conn:net.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "T_conn:net.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo._internal.net.Net_addr.Addr throw "T_conn:net.remoteAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo._internal.net.Net_addr.Addr throw "T_conn:net.localAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo.Error throw "T_conn:net.close is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_conn:net.write is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_conn:net.read is not yet implemented";
}
