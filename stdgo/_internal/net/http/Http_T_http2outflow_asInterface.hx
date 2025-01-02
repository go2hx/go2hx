package stdgo._internal.net.http;
class T_http2outflow_asInterface {
    @:keep
    @:tdfield
    public dynamic function _add(_n:stdgo.GoInt32):Bool return @:_0 __self__.value._add(_n);
    @:keep
    @:tdfield
    public dynamic function _take(_n:stdgo.GoInt32):Void @:_0 __self__.value._take(_n);
    @:keep
    @:tdfield
    public dynamic function _available():stdgo.GoInt32 return @:_0 __self__.value._available();
    @:keep
    @:tdfield
    public dynamic function _setConnFlow(_cf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>):Void @:_0 __self__.value._setConnFlow(_cf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2outflowPointer.T_http2outflowPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
