package stdgo._internal.encoding.gob;
class T_decoderState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _getLength():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._getLength();
    @:keep
    @:tdfield
    public dynamic function _decodeInt():stdgo.GoInt64 return @:_0 __self__.value._decodeInt();
    @:keep
    @:tdfield
    public dynamic function _decodeUint():stdgo.GoUInt64 return @:_0 __self__.value._decodeUint();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_decoderstatepointer.T_decoderStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
