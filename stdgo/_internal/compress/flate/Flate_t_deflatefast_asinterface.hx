package stdgo._internal.compress.flate;
class T_deflateFast_asInterface {
    @:keep
    @:tdfield
    public dynamic function _shiftOffsets():Void @:_0 __self__.value._shiftOffsets();
    @:keep
    @:tdfield
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:keep
    @:tdfield
    public dynamic function _matchLen(_s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 return @:_0 __self__.value._matchLen(_s, _t, _src);
    @:keep
    @:tdfield
    public dynamic function _encode(_dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> return @:_0 __self__.value._encode(_dst, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_t_deflatefastpointer.T_deflateFastPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
