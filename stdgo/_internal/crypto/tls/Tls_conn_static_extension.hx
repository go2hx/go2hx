package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Conn_asInterface) class Conn_static_extension {
    @:keep
    @:tdfield
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _host:stdgo.GoString):stdgo.Error throw "Conn:crypto.tls.verifyHostname is not yet implemented";
    @:keep
    @:tdfield
    static public function oCSPResponse( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Slice<stdgo.GoUInt8> throw "Conn:crypto.tls.oCSPResponse is not yet implemented";
    @:keep
    @:tdfield
    static public function connectionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState throw "Conn:crypto.tls.connectionState is not yet implemented";
    @:keep
    @:tdfield
    static public function handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error throw "Conn:crypto.tls.handshakeContext is not yet implemented";
    @:keep
    @:tdfield
    static public function handshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error throw "Conn:crypto.tls.handshake is not yet implemented";
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error throw "Conn:crypto.tls.closeWrite is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error throw "Conn:crypto.tls.close is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "Conn:crypto.tls.read is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "Conn:crypto.tls.write is not yet implemented";
    @:keep
    @:tdfield
    static public function netConn( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_conn.Conn throw "Conn:crypto.tls.netConn is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "Conn:crypto.tls.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "Conn:crypto.tls.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "Conn:crypto.tls.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr throw "Conn:crypto.tls.remoteAddr is not yet implemented";
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr throw "Conn:crypto.tls.localAddr is not yet implemented";
}
