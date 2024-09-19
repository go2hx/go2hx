package stdgo._internal.text.template.parse;
class Pos_asInterface {
    @:keep
    public dynamic function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.value.position();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.template.parse.Parse_Pos.Pos>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
