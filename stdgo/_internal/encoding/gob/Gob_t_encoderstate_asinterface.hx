package stdgo._internal.encoding.gob;
class T_encoderState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _update(_instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>):Void @:_0 __self__.value._update(_instr);
    @:keep
    @:tdfield
    public dynamic function _encodeInt(_i:stdgo.GoInt64):Void @:_0 __self__.value._encodeInt(_i);
    @:keep
    @:tdfield
    public dynamic function _encodeUint(_x:stdgo.GoUInt64):Void @:_0 __self__.value._encodeUint(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_encoderstatepointer.T_encoderStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
