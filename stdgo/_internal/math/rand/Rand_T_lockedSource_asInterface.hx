package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
class T_lockedSource_asInterface {
    @:keep
    public dynamic function _read(_p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_p, _readVal, _readPos);
    @:keep
    public dynamic function _seed(_seed:stdgo.GoInt64):Void __self__.value._seed(_seed);
    @:keep
    public dynamic function _seedPos(_seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void __self__.value._seedPos(_seed, _readPos);
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
