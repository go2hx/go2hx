package _internal.internal.zstd;
class T_xxhash64_asInterface {
    @:keep
    public dynamic function _mergeRound(_v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value._mergeRound(_v, _n);
    @:keep
    public dynamic function _round(_v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value._round(_v, _n);
    @:keep
    public dynamic function _digest():stdgo.GoUInt64 return __self__.value._digest();
    @:keep
    public dynamic function _update(_b:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._update(_b);
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}