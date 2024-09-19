package stdgo._internal.debug.pe;
class SectionHeader32_asInterface {
    @:keep
    public dynamic function _fullName(_st:stdgo._internal.debug.pe.Pe_StringTable.StringTable):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._fullName(_st);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
