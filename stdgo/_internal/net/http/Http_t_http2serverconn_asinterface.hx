package stdgo._internal.net.http;
class T_http2serverConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function headerEncoder():{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; } return @:_0 __self__.value.headerEncoder();
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function closeConn():stdgo.Error return @:_0 __self__.value.closeConn();
    @:keep
    @:tdfield
    public dynamic function framer():stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> return @:_0 __self__.value.framer();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2serverconnpointer.T_http2serverConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
