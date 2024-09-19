package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
class T_rngSource_asInterface {
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}