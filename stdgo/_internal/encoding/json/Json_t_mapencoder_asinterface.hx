package stdgo._internal.encoding.json;
class T_mapEncoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _encode(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void @:_0 __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_t_mapencoderpointer.T_mapEncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
