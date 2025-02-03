package stdgo.image.jpeg;
class T_encoder_static_extension {
    static public function _writeSOS(_e:T_encoder, _m:stdgo._internal.image.Image_Image.Image):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeSOS(_e, _m);
    }
    static public function _writeBlock(_e:T_encoder, _b:T_block, _q:T_quantIndex, _prevDC:StdTypes.Int):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        final _prevDC = (_prevDC : stdgo.GoInt32);
        return stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeBlock(_e, _b, _q, _prevDC);
    }
    static public function _writeDHT(_e:T_encoder, _nComponent:StdTypes.Int):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _nComponent = (_nComponent : stdgo.GoInt);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeDHT(_e, _nComponent);
    }
    static public function _writeSOF0(_e:T_encoder, _size:stdgo._internal.image.Image_Point.Point, _nComponent:StdTypes.Int):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _nComponent = (_nComponent : stdgo.GoInt);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeSOF0(_e, _size, _nComponent);
    }
    static public function _writeDQT(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeDQT(_e);
    }
    static public function _writeMarkerHeader(_e:T_encoder, _marker:std.UInt, _markerlen:StdTypes.Int):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _marker = (_marker : stdgo.GoUInt8);
        final _markerlen = (_markerlen : stdgo.GoInt);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeMarkerHeader(_e, _marker, _markerlen);
    }
    static public function _emitHuffRLE(_e:T_encoder, _h:T_huffIndex, _runLength:StdTypes.Int, _value:StdTypes.Int):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _runLength = (_runLength : stdgo.GoInt32);
        final _value = (_value : stdgo.GoInt32);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emitHuffRLE(_e, _h, _runLength, _value);
    }
    static public function _emitHuff(_e:T_encoder, _h:T_huffIndex, _value:StdTypes.Int):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _value = (_value : stdgo.GoInt32);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emitHuff(_e, _h, _value);
    }
    static public function _emit(_e:T_encoder, _bits:std.UInt, _nBits:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _bits = (_bits : stdgo.GoUInt32);
        final _nBits = (_nBits : stdgo.GoUInt32);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emit(_e, _bits, _nBits);
    }
    static public function _writeByte(_e:T_encoder, _b:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _b = (_b : stdgo.GoUInt8);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeByte(_e, _b);
    }
    static public function _write(_e:T_encoder, _p:Array<std.UInt>):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._write(_e, _p);
    }
    static public function _flush(_e:T_encoder):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._flush(_e);
    }
}
