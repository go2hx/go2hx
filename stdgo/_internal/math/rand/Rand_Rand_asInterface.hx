package stdgo._internal.math.rand;
class Rand_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void __self__.value.shuffle(_n, _swap);
    @:keep
    public dynamic function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> return __self__.value.perm(_n);
    @:keep
    public dynamic function float32():stdgo.GoFloat32 return __self__.value.float32();
    @:keep
    public dynamic function float64():stdgo.GoFloat64 return __self__.value.float64();
    @:keep
    public dynamic function intn(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.intn(_n);
    @:keep
    public dynamic function _int31n(_n:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._int31n(_n);
    @:keep
    public dynamic function int31n(_n:stdgo.GoInt32):stdgo.GoInt32 return __self__.value.int31n(_n);
    @:keep
    public dynamic function int63n(_n:stdgo.GoInt64):stdgo.GoInt64 return __self__.value.int63n(_n);
    @:keep
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:keep
    public dynamic function int31():stdgo.GoInt32 return __self__.value.int31();
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function uint32():stdgo.GoUInt32 return __self__.value.uint32();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    @:keep
    public dynamic function normFloat64():stdgo.GoFloat64 return __self__.value.normFloat64();
    @:keep
    public dynamic function expFloat64():stdgo.GoFloat64 return __self__.value.expFloat64();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.rand.Rand_Rand.Rand>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
