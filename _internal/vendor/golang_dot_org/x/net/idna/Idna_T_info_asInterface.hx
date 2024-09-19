package _internal.vendor.golang_dot_org.x.net.idna;
class T_info_asInterface {
    @:keep
    public dynamic function _isViramaModifier():Bool return __self__.value._isViramaModifier();
    @:keep
    public dynamic function _isModifier():Bool return __self__.value._isModifier();
    @:keep
    public dynamic function _joinType():_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info return __self__.value._joinType();
    @:keep
    public dynamic function _category():_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category return __self__.value._category();
    @:keep
    public dynamic function _isMapped():Bool return __self__.value._isMapped();
    @:keep
    public dynamic function _appendMapping(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return __self__.value._appendMapping(_b, _s);
    @:keep
    public dynamic function _isBidi(_s:stdgo.GoString):Bool return __self__.value._isBidi(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
