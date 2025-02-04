package stdgo._internal.internal.profile;
class Label_asInterface {
    @:keep
    @:tdfield
    public dynamic function _encode(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void @:_0 __self__.value._encode(_b);
    @:keep
    @:tdfield
    public dynamic function _decoder():stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> return @:_0 __self__.value._decoder();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.profile.Profile_labelpointer.LabelPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
