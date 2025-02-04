package stdgo._internal.debug.dwarf;
class T_unknownFormat_asInterface {
    @:keep
    @:tdfield
    public dynamic function _addrsize():stdgo.GoInt return @:_0 __self__.value._addrsize();
    @:keep
    @:tdfield
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._dwarf64();
    @:keep
    @:tdfield
    public dynamic function _version():stdgo.GoInt return @:_0 __self__.value._version();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_t_unknownformatpointer.T_unknownFormatPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
