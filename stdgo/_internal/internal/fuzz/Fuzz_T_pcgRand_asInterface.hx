package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
class T_pcgRand_asInterface {
    @:keep
    public dynamic function _bool():Bool return __self__.value._bool();
    @:keep
    public dynamic function _exp2():stdgo.GoInt return __self__.value._exp2();
    @:keep
    public dynamic function _uint32n(_n:stdgo.GoUInt32):stdgo.GoUInt32 return __self__.value._uint32n(_n);
    @:keep
    public dynamic function _intn(_n:stdgo.GoInt):stdgo.GoInt return __self__.value._intn(_n);
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _restore(_randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void __self__.value._restore(_randState, _randInc);
    @:keep
    public dynamic function _save(_randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void __self__.value._save(_randState, _randInc);
    @:keep
    public dynamic function _step():Void __self__.value._step();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
