package stdgo._internal.encoding.gob;
class T_encoderState_asInterface {
    @:keep
    public dynamic function _update(_instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>):Void __self__.value._update(_instr);
    @:keep
    public dynamic function _encodeInt(_i:stdgo.GoInt64):Void __self__.value._encodeInt(_i);
    @:keep
    public dynamic function _encodeUint(_x:stdgo.GoUInt64):Void __self__.value._encodeUint(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
