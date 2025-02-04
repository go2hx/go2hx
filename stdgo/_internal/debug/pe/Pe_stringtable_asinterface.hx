package stdgo._internal.debug.pe;
class StringTable_asInterface {
    @:keep
    @:tdfield
    public dynamic function string(_start:stdgo.GoUInt32):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.string(_start);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.pe.Pe_stringtablepointer.StringTablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
