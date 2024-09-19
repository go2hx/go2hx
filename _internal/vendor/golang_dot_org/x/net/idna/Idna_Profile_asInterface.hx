package _internal.vendor.golang_dot_org.x.net.idna;
class Profile_asInterface {
    @:keep
    public dynamic function _validateLabel(_s:stdgo.GoString):stdgo.Error return __self__.value._validateLabel(_s);
    @:keep
    public dynamic function _simplify(_cat:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category):_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category return __self__.value._simplify(_cat);
    @:keep
    public dynamic function _process(_s:stdgo.GoString, _toASCII:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._process(_s, _toASCII);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function toUnicode(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.toUnicode(_s);
    @:keep
    public dynamic function toASCII(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.toASCII(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
