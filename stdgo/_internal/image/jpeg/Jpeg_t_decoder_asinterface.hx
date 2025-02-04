package stdgo._internal.image.jpeg;
class T_decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _reconstructBlock(_b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _bx:stdgo.GoInt, _by:stdgo.GoInt, _compIndex:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._reconstructBlock(_b, _bx, _by, _compIndex);
    @:keep
    @:tdfield
    public dynamic function _reconstructProgressiveImage():stdgo.Error return @:_0 __self__.value._reconstructProgressiveImage();
    @:keep
    @:tdfield
    public dynamic function _refineNonZeroes(_b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _zig:stdgo.GoInt32, _zigEnd:stdgo.GoInt32, _nz:stdgo.GoInt32, _delta:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._refineNonZeroes(_b, _zig, _zigEnd, _nz, _delta);
    @:keep
    @:tdfield
    public dynamic function _refine(_b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>, _zigStart:stdgo.GoInt32, _zigEnd:stdgo.GoInt32, _delta:stdgo.GoInt32):stdgo.Error return @:_0 __self__.value._refine(_b, _h, _zigStart, _zigEnd, _delta);
    @:keep
    @:tdfield
    public dynamic function _processSOS(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processSOS(_n);
    @:keep
    @:tdfield
    public dynamic function _makeImg(_mxx:stdgo.GoInt, _myy:stdgo.GoInt):Void @:_0 __self__.value._makeImg(_mxx, _myy);
    @:keep
    @:tdfield
    public dynamic function _convertToRGB():{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return @:_0 __self__.value._convertToRGB();
    @:keep
    @:tdfield
    public dynamic function _isRGB():Bool return @:_0 __self__.value._isRGB();
    @:keep
    @:tdfield
    public dynamic function _applyBlack():{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return @:_0 __self__.value._applyBlack();
    @:keep
    @:tdfield
    public dynamic function _decode(_r:stdgo._internal.io.Io_reader.Reader, _configOnly:Bool):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } return @:_0 __self__.value._decode(_r, _configOnly);
    @:keep
    @:tdfield
    public dynamic function _processApp14Marker(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processApp14Marker(_n);
    @:keep
    @:tdfield
    public dynamic function _processApp0Marker(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processApp0Marker(_n);
    @:keep
    @:tdfield
    public dynamic function _processDRI(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processDRI(_n);
    @:keep
    @:tdfield
    public dynamic function _processDQT(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processDQT(_n);
    @:keep
    @:tdfield
    public dynamic function _processSOF(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processSOF(_n);
    @:keep
    @:tdfield
    public dynamic function _ignore(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._ignore(_n);
    @:keep
    @:tdfield
    public dynamic function _readFull(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._readFull(_p);
    @:keep
    @:tdfield
    public dynamic function _readByteStuffedByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value._readByteStuffedByte();
    @:keep
    @:tdfield
    public dynamic function _readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value._readByte();
    @:keep
    @:tdfield
    public dynamic function _unreadByteStuffedByte():Void @:_0 __self__.value._unreadByteStuffedByte();
    @:keep
    @:tdfield
    public dynamic function _fill():stdgo.Error return @:_0 __self__.value._fill();
    @:keep
    @:tdfield
    public dynamic function _decodeBits(_n:stdgo.GoInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._decodeBits(_n);
    @:keep
    @:tdfield
    public dynamic function _decodeBit():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._decodeBit();
    @:keep
    @:tdfield
    public dynamic function _decodeHuffman(_h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value._decodeHuffman(_h);
    @:keep
    @:tdfield
    public dynamic function _processDHT(_n:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._processDHT(_n);
    @:keep
    @:tdfield
    public dynamic function _receiveExtend(_t:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._receiveExtend(_t);
    @:keep
    @:tdfield
    public dynamic function _ensureNBits(_n:stdgo.GoInt32):stdgo.Error return @:_0 __self__.value._ensureNBits(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.jpeg.Jpeg_t_decoderpointer.T_decoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
