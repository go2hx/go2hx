package stdgo._internal.runtime;
class PallocData_asInterface {
    @:keep
    public dynamic function scavenged():stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits> return __self__.value.scavenged();
    @:keep
    public dynamic function pallocBits():stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits> return __self__.value.pallocBits();
    @:keep
    public dynamic function scavengedSetRange(_i:stdgo.GoUInt, _n:stdgo.GoUInt):Void __self__.value.scavengedSetRange(_i, _n);
    @:keep
    public dynamic function allocRange(_i:stdgo.GoUInt, _n:stdgo.GoUInt):Void __self__.value.allocRange(_i, _n);
    @:keep
    public dynamic function findScavengeCandidate(_searchIdx:stdgo.GoUInt, _min:stdgo.GoUIntptr, _max:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return __self__.value.findScavengeCandidate(_searchIdx, _min, _max);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_PallocData.PallocData>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
