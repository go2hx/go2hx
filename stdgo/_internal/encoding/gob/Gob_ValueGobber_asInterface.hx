package stdgo._internal.encoding.gob;
class ValueGobber_asInterface {
    @:keep
    @:pointer
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(__self__, _data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}