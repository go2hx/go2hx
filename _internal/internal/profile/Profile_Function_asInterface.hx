package _internal.internal.profile;
class Function_asInterface {
    @:keep
    public dynamic function _key():_internal.internal.profile.Profile_T_functionKey.T_functionKey return __self__.value._key();
    @:keep
    public dynamic function _encode(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void __self__.value._encode(_b);
    @:keep
    public dynamic function _decoder():stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> return __self__.value._decoder();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.internal.profile.Profile_Function.Function>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
