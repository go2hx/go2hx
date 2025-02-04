package stdgo._internal.image.color;
class T_modelFunc_asInterface {
    @:keep
    @:tdfield
    public dynamic function convert(_c:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color return @:_0 __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.color.Color_t_modelfuncpointer.T_modelFuncPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
