package stdgo._internal.image.jpeg;
class T_huffmanLUT_asInterface {
    @:keep
    public dynamic function _init(_s:stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec):Void __self__.value._init(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.jpeg.Jpeg_T_huffmanLUT.T_huffmanLUT>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
