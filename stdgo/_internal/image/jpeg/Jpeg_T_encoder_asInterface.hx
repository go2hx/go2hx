package stdgo._internal.image.jpeg;
class T_encoder_asInterface {
    @:keep
    public dynamic function _writeSOS(_m:stdgo._internal.image.Image_Image.Image):Void __self__.value._writeSOS(_m);
    @:keep
    public dynamic function _writeBlock(_b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _q:stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex, _prevDC:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._writeBlock(_b, _q, _prevDC);
    @:keep
    public dynamic function _writeDHT(_nComponent:stdgo.GoInt):Void __self__.value._writeDHT(_nComponent);
    @:keep
    public dynamic function _writeSOF0(_size:stdgo._internal.image.Image_Point.Point, _nComponent:stdgo.GoInt):Void __self__.value._writeSOF0(_size, _nComponent);
    @:keep
    public dynamic function _writeDQT():Void __self__.value._writeDQT();
    @:keep
    public dynamic function _writeMarkerHeader(_marker:stdgo.GoUInt8, _markerlen:stdgo.GoInt):Void __self__.value._writeMarkerHeader(_marker, _markerlen);
    @:keep
    public dynamic function _emitHuffRLE(_h:stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex, _runLength:stdgo.GoInt32, _value:stdgo.GoInt32):Void __self__.value._emitHuffRLE(_h, _runLength, _value);
    @:keep
    public dynamic function _emitHuff(_h:stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex, _value:stdgo.GoInt32):Void __self__.value._emitHuff(_h, _value);
    @:keep
    public dynamic function _emit(_bits:stdgo.GoUInt32, _nBits:stdgo.GoUInt32):Void __self__.value._emit(_bits, _nBits);
    @:keep
    public dynamic function _writeByte(_b:stdgo.GoUInt8):Void __self__.value._writeByte(_b);
    @:keep
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._write(_p);
    @:keep
    public dynamic function _flush():Void __self__.value._flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
