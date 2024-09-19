package stdgo._internal.internal.abi;
class Name_asInterface {
    @:keep
    public dynamic function tag():stdgo.GoString return __self__.value.tag();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function isBlank():Bool return __self__.value.isBlank();
    @:keep
    public dynamic function readVarint(_off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.readVarint(_off);
    @:keep
    public dynamic function isEmbedded():Bool return __self__.value.isEmbedded();
    @:keep
    public dynamic function hasTag():Bool return __self__.value.hasTag();
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    @:keep
    public dynamic function data(_off:stdgo.GoInt):stdgo.Pointer<stdgo.GoUInt8> return __self__.value.data(_off);
    @:keep
    public dynamic function dataChecked(_off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt8> return __self__.value.dataChecked(_off, _whySafe);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.abi.Abi_Name.Name>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
