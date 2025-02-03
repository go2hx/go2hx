package stdgo.image.jpeg;
class T_decoder_static_extension {
    static public function _reconstructBlock(_d:T_decoder, _b:T_block, _bx:StdTypes.Int, _by:StdTypes.Int, _compIndex:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        final _bx = (_bx : stdgo.GoInt);
        final _by = (_by : stdgo.GoInt);
        final _compIndex = (_compIndex : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._reconstructBlock(_d, _b, _bx, _by, _compIndex);
    }
    static public function _reconstructProgressiveImage(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._reconstructProgressiveImage(_d);
    }
    static public function _refineNonZeroes(_d:T_decoder, _b:T_block, _zig:StdTypes.Int, _zigEnd:StdTypes.Int, _nz:StdTypes.Int, _delta:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        final _zig = (_zig : stdgo.GoInt32);
        final _zigEnd = (_zigEnd : stdgo.GoInt32);
        final _nz = (_nz : stdgo.GoInt32);
        final _delta = (_delta : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._refineNonZeroes(_d, _b, _zig, _zigEnd, _nz, _delta);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _refine(_d:T_decoder, _b:T_block, _h:T_huffman, _zigStart:StdTypes.Int, _zigEnd:StdTypes.Int, _delta:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        final _h = (_h : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>);
        final _zigStart = (_zigStart : stdgo.GoInt32);
        final _zigEnd = (_zigEnd : stdgo.GoInt32);
        final _delta = (_delta : stdgo.GoInt32);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._refine(_d, _b, _h, _zigStart, _zigEnd, _delta);
    }
    static public function _processSOS(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processSOS(_d, _n);
    }
    static public function _makeImg(_d:T_decoder, _mxx:StdTypes.Int, _myy:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _mxx = (_mxx : stdgo.GoInt);
        final _myy = (_myy : stdgo.GoInt);
        stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._makeImg(_d, _mxx, _myy);
    }
    static public function _convertToRGB(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._convertToRGB(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _isRGB(_d:T_decoder):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._isRGB(_d);
    }
    static public function _applyBlack(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._applyBlack(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_d:T_decoder, _r:stdgo._internal.io.Io_Reader.Reader, _configOnly:Bool):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decode(_d, _r, _configOnly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _processApp14Marker(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processApp14Marker(_d, _n);
    }
    static public function _processApp0Marker(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processApp0Marker(_d, _n);
    }
    static public function _processDRI(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDRI(_d, _n);
    }
    static public function _processDQT(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDQT(_d, _n);
    }
    static public function _processSOF(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processSOF(_d, _n);
    }
    static public function _ignore(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._ignore(_d, _n);
    }
    static public function _readFull(_d:T_decoder, _p:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readFull(_d, _p);
    }
    static public function _readByteStuffedByte(_d:T_decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readByteStuffedByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readByte(_d:T_decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unreadByteStuffedByte(_d:T_decoder):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._unreadByteStuffedByte(_d);
    }
    static public function _fill(_d:T_decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._fill(_d);
    }
    static public function _decodeBits(_d:T_decoder, _n:StdTypes.Int):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeBits(_d, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeBit(_d:T_decoder):stdgo.Tuple<Bool, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeBit(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeHuffman(_d:T_decoder, _h:T_huffman):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _h = (_h : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeHuffman(_d, _h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _processDHT(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDHT(_d, _n);
    }
    static public function _receiveExtend(_d:T_decoder, _t:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _t = (_t : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._receiveExtend(_d, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _ensureNBits(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>);
        final _n = (_n : stdgo.GoInt32);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._ensureNBits(_d, _n);
    }
}
