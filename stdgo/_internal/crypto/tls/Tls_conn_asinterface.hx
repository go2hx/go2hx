package stdgo._internal.crypto.tls;
class Conn_asInterface {
    @:keep
    @:tdfield
    public dynamic function verifyHostname(_host:stdgo.GoString):stdgo.Error return @:_0 __self__.value.verifyHostname(_host);
    @:keep
    @:tdfield
    public dynamic function oCSPResponse():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.oCSPResponse();
    @:keep
    @:tdfield
    public dynamic function connectionState():stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState return @:_0 __self__.value.connectionState();
    @:keep
    @:tdfield
    public dynamic function handshakeContext(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.handshakeContext(_ctx);
    @:keep
    @:tdfield
    public dynamic function handshake():stdgo.Error return @:_0 __self__.value.handshake();
    @:keep
    @:tdfield
    public dynamic function closeWrite():stdgo.Error return @:_0 __self__.value.closeWrite();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function netConn():stdgo._internal.net.Net_conn.Conn return @:_0 __self__.value.netConn();
    @:keep
    @:tdfield
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.remoteAddr();
    @:keep
    @:tdfield
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.localAddr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_connpointer.ConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
