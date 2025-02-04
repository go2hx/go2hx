package stdgo._internal.internal.fuzz;
class T_pcgRand_asInterface {
    @:keep
    @:tdfield
    public dynamic function _bool():Bool return @:_0 __self__.value._bool();
    @:keep
    @:tdfield
    public dynamic function _exp2():stdgo.GoInt return @:_0 __self__.value._exp2();
    @:keep
    @:tdfield
    public dynamic function _uint32n(_n:stdgo.GoUInt32):stdgo.GoUInt32 return @:_0 __self__.value._uint32n(_n);
    @:keep
    @:tdfield
    public dynamic function _intn(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._intn(_n);
    @:keep
    @:tdfield
    public dynamic function _uint32():stdgo.GoUInt32 return @:_0 __self__.value._uint32();
    @:keep
    @:tdfield
    public dynamic function _restore(_randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void @:_0 __self__.value._restore(_randState, _randInc);
    @:keep
    @:tdfield
    public dynamic function _save(_randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void @:_0 __self__.value._save(_randState, _randInc);
    @:keep
    @:tdfield
    public dynamic function _step():Void @:_0 __self__.value._step();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_pcgrandpointer.T_pcgRandPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
