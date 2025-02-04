package stdgo._internal.encoding.json;
class Top_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sub(_0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point return @:_0 __self__.value.sub(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mul(_0:stdgo.GoInt):stdgo._internal.image.Image_point.Point return @:_0 __self__.value.mul(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mod(_0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_point.Point return @:_0 __self__.value.mod(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function in_(_0:stdgo._internal.image.Image_rectangle.Rectangle):Bool return @:_0 __self__.value.in_(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function eq(_0:stdgo._internal.image.Image_point.Point):Bool return @:_0 __self__.value.eq(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function div(_0:stdgo.GoInt):stdgo._internal.image.Image_point.Point return @:_0 __self__.value.div(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function add(_0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point return @:_0 __self__.value.add(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_toppointer.TopPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
