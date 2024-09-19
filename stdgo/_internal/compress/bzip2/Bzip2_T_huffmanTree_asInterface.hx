package stdgo._internal.compress.bzip2;
class T_huffmanTree_asInterface {
    @:keep
    public dynamic function decode(_br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>):stdgo.GoUInt16 return __self__.value.decode(_br);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
