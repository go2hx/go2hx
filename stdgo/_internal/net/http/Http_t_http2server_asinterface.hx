package stdgo._internal.net.http;
class T_http2Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function serveConn(_c:stdgo._internal.net.Net_conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):Void @:_0 __self__.value.serveConn(_c, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2serverpointer.T_http2ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
