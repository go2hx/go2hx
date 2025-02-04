package stdgo._internal.compress.flate;
class T_huffmanEncoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _generate(_freq:stdgo.Slice<stdgo.GoInt32>, _maxBits:stdgo.GoInt32):Void @:_0 __self__.value._generate(_freq, _maxBits);
    @:keep
    @:tdfield
    public dynamic function _assignEncodingAndSize(_bitCount:stdgo.Slice<stdgo.GoInt32>, _list:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>):Void @:_0 __self__.value._assignEncodingAndSize(_bitCount, _list);
    @:keep
    @:tdfield
    public dynamic function _bitCounts(_list:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>, _maxBits:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> return @:_0 __self__.value._bitCounts(_list, _maxBits);
    @:keep
    @:tdfield
    public dynamic function _bitLength(_freq:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt return @:_0 __self__.value._bitLength(_freq);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_t_huffmanencoderpointer.T_huffmanEncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
