package stdgo._internal.math.rand;
class T_fastSource_asInterface {
    @:keep
    public dynamic function _read(_p:stdgo.Slice<stdgo.GoUInt8>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_p, _readVal, _readPos);
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function seed(_0:stdgo.GoInt64):Void __self__.value.seed(_0);
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
