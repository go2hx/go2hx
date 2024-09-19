package stdgo._internal.compress.flate;
class T_deflateFast_asInterface {
    @:keep
    public dynamic function _shiftOffsets():Void __self__.value._shiftOffsets();
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    @:keep
    public dynamic function _matchLen(_s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 return __self__.value._matchLen(_s, _t, _src);
    @:keep
    public dynamic function _encode(_dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> return __self__.value._encode(_dst, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
