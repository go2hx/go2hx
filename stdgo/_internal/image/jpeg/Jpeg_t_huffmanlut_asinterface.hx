package stdgo._internal.image.jpeg;
class T_huffmanLUT_asInterface {
    @:keep
    @:tdfield
    public dynamic function _init(_s:stdgo._internal.image.jpeg.Jpeg_t_huffmanspec.T_huffmanSpec):Void @:_0 __self__.value._init(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.jpeg.Jpeg_t_huffmanlutpointer.T_huffmanLUTPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
