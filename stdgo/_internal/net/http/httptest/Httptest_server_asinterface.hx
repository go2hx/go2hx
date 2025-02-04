package stdgo._internal.net.http.httptest;
class Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function _closeConnChan(_c:stdgo._internal.net.Net_conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>):Void @:_0 __self__.value._closeConnChan(_c, _done);
    @:keep
    @:tdfield
    public dynamic function _closeConn(_c:stdgo._internal.net.Net_conn.Conn):Void @:_0 __self__.value._closeConn(_c);
    @:keep
    @:tdfield
    public dynamic function _wrap():Void @:_0 __self__.value._wrap();
    @:keep
    @:tdfield
    public dynamic function _goServe():Void @:_0 __self__.value._goServe();
    @:keep
    @:tdfield
    public dynamic function client():stdgo.Ref<stdgo._internal.net.http.Http_client.Client> return @:_0 __self__.value.client();
    @:keep
    @:tdfield
    public dynamic function certificate():stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> return @:_0 __self__.value.certificate();
    @:keep
    @:tdfield
    public dynamic function closeClientConnections():Void @:_0 __self__.value.closeClientConnections();
    @:keep
    @:tdfield
    public dynamic function _logCloseHangDebugInfo():Void @:_0 __self__.value._logCloseHangDebugInfo();
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function startTLS():Void @:_0 __self__.value.startTLS();
    @:keep
    @:tdfield
    public dynamic function start():Void @:_0 __self__.value.start();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httptest.Httptest_serverpointer.ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
