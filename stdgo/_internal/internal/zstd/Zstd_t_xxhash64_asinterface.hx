package stdgo._internal.internal.zstd;
class T_xxhash64_asInterface {
    @:keep
    @:tdfield
    public dynamic function _mergeRound(_v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value._mergeRound(_v, _n);
    @:keep
    @:tdfield
    public dynamic function _round(_v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value._round(_v, _n);
    @:keep
    @:tdfield
    public dynamic function _digest():stdgo.GoUInt64 return @:_0 __self__.value._digest();
    @:keep
    @:tdfield
    public dynamic function _update(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._update(_b);
    @:keep
    @:tdfield
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.zstd.Zstd_t_xxhash64pointer.T_xxhash64Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
