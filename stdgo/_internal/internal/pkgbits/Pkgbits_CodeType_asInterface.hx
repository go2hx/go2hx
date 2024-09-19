package stdgo._internal.internal.pkgbits;
class CodeType_asInterface {
    @:keep
    public dynamic function value():stdgo.GoInt return __self__.value.value();
    @:keep
    public dynamic function marker():stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker return __self__.value.marker();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.pkgbits.Pkgbits_CodeType.CodeType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
