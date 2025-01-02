package stdgo._internal.net.http;
class T_http2dialCall_asInterface {
    @:keep
    @:tdfield
    public dynamic function _dial(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):Void @:_0 __self__.value._dial(_ctx, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2dialCallPointer.T_http2dialCallPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
