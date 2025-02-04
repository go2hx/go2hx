package stdgo._internal.math.rand;
class Zipf_asInterface {
    @:keep
    @:tdfield
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:keep
    @:tdfield
    public dynamic function _hinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 return @:_0 __self__.value._hinv(_x);
    @:keep
    @:tdfield
    public dynamic function _h(_x:stdgo.GoFloat64):stdgo.GoFloat64 return @:_0 __self__.value._h(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.rand.Rand_zipfpointer.ZipfPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
