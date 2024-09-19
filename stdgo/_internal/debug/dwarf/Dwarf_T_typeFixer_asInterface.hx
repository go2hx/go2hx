package stdgo._internal.debug.dwarf;
class T_typeFixer_asInterface {
    @:keep
    public dynamic function _apply():Void __self__.value._apply();
    @:keep
    public dynamic function _recordArrayType(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):Void __self__.value._recordArrayType(_t);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
