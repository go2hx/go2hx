package stdgo._internal.net.http.httputil;
class ClientConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function do_(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.do_(_req);
    @:keep
    @:tdfield
    public dynamic function read(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_req);
    @:keep
    @:tdfield
    public dynamic function pending():stdgo.GoInt return @:_0 __self__.value.pending();
    @:keep
    @:tdfield
    public dynamic function write(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error return @:_0 __self__.value.write(_req);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>; } return @:_0 __self__.value.hijack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httputil.Httputil_clientconnpointer.ClientConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
