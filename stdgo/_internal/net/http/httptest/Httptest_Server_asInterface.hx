package stdgo._internal.net.http.httptest;
class Server_asInterface {
    @:keep
    public dynamic function _closeConnChan(_c:stdgo._internal.net.Net_Conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>):Void __self__.value._closeConnChan(_c, _done);
    @:keep
    public dynamic function _closeConn(_c:stdgo._internal.net.Net_Conn.Conn):Void __self__.value._closeConn(_c);
    @:keep
    public dynamic function _wrap():Void __self__.value._wrap();
    @:keep
    public dynamic function _goServe():Void __self__.value._goServe();
    @:keep
    public dynamic function client():stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> return __self__.value.client();
    @:keep
    public dynamic function certificate():stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> return __self__.value.certificate();
    @:keep
    public dynamic function closeClientConnections():Void __self__.value.closeClientConnections();
    @:keep
    public dynamic function _logCloseHangDebugInfo():Void __self__.value._logCloseHangDebugInfo();
    @:keep
    public dynamic function close():Void __self__.value.close();
    @:keep
    public dynamic function startTLS():Void __self__.value.startTLS();
    @:keep
    public dynamic function start():Void __self__.value.start();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httptest.Httptest_Server.Server>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
