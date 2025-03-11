package stdgo._internal.image.jpeg;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_t_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _bits : stdgo._internal.image.jpeg.Jpeg_t_bits.T_bits = ({} : stdgo._internal.image.jpeg.Jpeg_t_bits.T_bits);
    public var _bytes : { var _buf : stdgo.GoArray<stdgo.GoUInt8>; var _i : stdgo.GoInt; var _j : stdgo.GoInt; var _nUnreadable : stdgo.GoInt; } = { _buf : new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096).__setNumber32__(), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _nUnreadable : (0 : stdgo.GoInt) };
    public var _width : stdgo.GoInt = 0;
    public var _height : stdgo.GoInt = 0;
    public var _img1 : stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>);
    public var _img3 : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
    public var _blackPix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _blackStride : stdgo.GoInt = 0;
    public var _ri : stdgo.GoInt = 0;
    public var _nComp : stdgo.GoInt = 0;
    public var _baseline : Bool = false;
    public var _progressive : Bool = false;
    public var _jfif : Bool = false;
    public var _adobeTransformValid : Bool = false;
    public var _adobeTransform : stdgo.GoUInt8 = 0;
    public var _eobRun : stdgo.GoUInt16 = 0;
    public var _comp : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_component.T_component> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_component.T_component>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.jpeg.Jpeg_t_component.T_component)]);
    public var _progCoeffs : stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>> = new stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>>(4, 4);
    public var _huff : stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>> = new stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>>(2, 2, ...[for (i in 0 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman)])]);
    public var _quant : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_t_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128).__setNumber32__();
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_bits:stdgo._internal.image.jpeg.Jpeg_t_bits.T_bits, ?_bytes:{ var _buf : stdgo.GoArray<stdgo.GoUInt8>; var _i : stdgo.GoInt; var _j : stdgo.GoInt; var _nUnreadable : stdgo.GoInt; }, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_img1:stdgo.Ref<stdgo._internal.image.Image_gray.Gray>, ?_img3:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>, ?_blackPix:stdgo.Slice<stdgo.GoUInt8>, ?_blackStride:stdgo.GoInt, ?_ri:stdgo.GoInt, ?_nComp:stdgo.GoInt, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:stdgo.GoUInt8, ?_eobRun:stdgo.GoUInt16, ?_comp:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_component.T_component>, ?_progCoeffs:stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>>, ?_huff:stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_huffman.T_huffman>>, ?_quant:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_bits != null) this._bits = _bits;
        if (_bytes != null) this._bytes = _bytes;
        if (_width != null) this._width = _width;
        if (_height != null) this._height = _height;
        if (_img1 != null) this._img1 = _img1;
        if (_img3 != null) this._img3 = _img3;
        if (_blackPix != null) this._blackPix = _blackPix;
        if (_blackStride != null) this._blackStride = _blackStride;
        if (_ri != null) this._ri = _ri;
        if (_nComp != null) this._nComp = _nComp;
        if (_baseline != null) this._baseline = _baseline;
        if (_progressive != null) this._progressive = _progressive;
        if (_jfif != null) this._jfif = _jfif;
        if (_adobeTransformValid != null) this._adobeTransformValid = _adobeTransformValid;
        if (_adobeTransform != null) this._adobeTransform = _adobeTransform;
        if (_eobRun != null) this._eobRun = _eobRun;
        if (_comp != null) this._comp = _comp;
        if (_progCoeffs != null) this._progCoeffs = _progCoeffs;
        if (_huff != null) this._huff = _huff;
        if (_quant != null) this._quant = _quant;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(
_r,
_bits,
_bytes,
_width,
_height,
_img1,
_img3,
_blackPix,
_blackStride,
_ri,
_nComp,
_baseline,
_progressive,
_jfif,
_adobeTransformValid,
_adobeTransform,
_eobRun,
_comp,
_progCoeffs,
_huff,
_quant,
_tmp);
    }
}
