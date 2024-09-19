package stdgo._internal.net.http.httputil;
class ServerConn_asInterface {
    @:keep
    public dynamic function write(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo.Error return __self__.value.write(_req, _resp);
    @:keep
    public dynamic function pending():stdgo.GoInt return __self__.value.pending();
    @:keep
    public dynamic function read():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } return __self__.value.read();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } return __self__.value.hijack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
