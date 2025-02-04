package stdgo._internal.internal.abi;
class Name_asInterface {
    @:keep
    @:tdfield
    public dynamic function tag():stdgo.GoString return @:_0 __self__.value.tag();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function isBlank():Bool return @:_0 __self__.value.isBlank();
    @:keep
    @:tdfield
    public dynamic function readVarint(_off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value.readVarint(_off);
    @:keep
    @:tdfield
    public dynamic function isEmbedded():Bool return @:_0 __self__.value.isEmbedded();
    @:keep
    @:tdfield
    public dynamic function hasTag():Bool return @:_0 __self__.value.hasTag();
    @:keep
    @:tdfield
    public dynamic function isExported():Bool return @:_0 __self__.value.isExported();
    @:keep
    @:tdfield
    public dynamic function data(_off:stdgo.GoInt):stdgo.Pointer<stdgo.GoUInt8> return @:_0 __self__.value.data(_off);
    @:keep
    @:tdfield
    public dynamic function dataChecked(_off:stdgo.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt8> return @:_0 __self__.value.dataChecked(_off, _whySafe);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.abi.Abi_namepointer.NamePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
