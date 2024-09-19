package _internal.vendor.golang_dot_org.x.net.http2.hpack;
class T_dynamicTable_asInterface {
    @:keep
    public dynamic function _evict():Void __self__.value._evict();
    @:keep
    public dynamic function _add(_f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void __self__.value._add(_f);
    @:keep
    public dynamic function _setMaxSize(_v:stdgo.GoUInt32):Void __self__.value._setMaxSize(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
