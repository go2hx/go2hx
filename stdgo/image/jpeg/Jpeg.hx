package stdgo.image.jpeg;
final defaultQuality : haxe.UInt64 = stdgo._internal.image.jpeg.Jpeg_defaultQuality.defaultQuality;
class Reader_static_extension {

}
typedef Reader = stdgo._internal.image.jpeg.Jpeg_Reader.Reader;
class T_writer_static_extension {
    static public function flush(t:stdgo._internal.image.jpeg.Jpeg_T_writer.T_writer):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_writer_static_extension.T_writer_static_extension.flush(t);
    }
}
typedef T_writer = stdgo._internal.image.jpeg.Jpeg_T_writer.T_writer;
@:structInit abstract T_huffman(stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman) from stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman to stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman {
    public var _nCodes(get, set) : StdTypes.Int;
    function get__nCodes():StdTypes.Int return this._nCodes;
    function set__nCodes(v:StdTypes.Int):StdTypes.Int {
        this._nCodes = v;
        return v;
    }
    public var _lut(get, set) : haxe.ds.Vector<std.UInt>;
    function get__lut():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._lut) i]);
    function set__lut(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._lut = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt16>);
        return v;
    }
    public var _vals(get, set) : haxe.ds.Vector<std.UInt>;
    function get__vals():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._vals) i]);
    function set__vals(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._vals = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _minCodes(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__minCodes():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._minCodes) i]);
    function set__minCodes(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._minCodes = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _maxCodes(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__maxCodes():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._maxCodes) i]);
    function set__maxCodes(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._maxCodes = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _valsIndices(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__valsIndices():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._valsIndices) i]);
    function set__valsIndices(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._valsIndices = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public function new(?_nCodes:StdTypes.Int, ?_lut:haxe.ds.Vector<std.UInt>, ?_vals:haxe.ds.Vector<std.UInt>, ?_minCodes:haxe.ds.Vector<StdTypes.Int>, ?_maxCodes:haxe.ds.Vector<StdTypes.Int>, ?_valsIndices:haxe.ds.Vector<StdTypes.Int>) this = new stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman(_nCodes, ([for (i in _lut) i] : stdgo.GoArray<stdgo.GoUInt16>), ([for (i in _vals) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _minCodes) i] : stdgo.GoArray<stdgo.GoInt32>), ([for (i in _maxCodes) i] : stdgo.GoArray<stdgo.GoInt32>), ([for (i in _valsIndices) i] : stdgo.GoArray<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_component(stdgo._internal.image.jpeg.Jpeg_T_component.T_component) from stdgo._internal.image.jpeg.Jpeg_T_component.T_component to stdgo._internal.image.jpeg.Jpeg_T_component.T_component {
    public var _h(get, set) : StdTypes.Int;
    function get__h():StdTypes.Int return this._h;
    function set__h(v:StdTypes.Int):StdTypes.Int {
        this._h = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = v;
        return v;
    }
    public var _c(get, set) : std.UInt;
    function get__c():std.UInt return this._c;
    function set__c(v:std.UInt):std.UInt {
        this._c = v;
        return v;
    }
    public var _tq(get, set) : std.UInt;
    function get__tq():std.UInt return this._tq;
    function set__tq(v:std.UInt):std.UInt {
        this._tq = v;
        return v;
    }
    public function new(?_h:StdTypes.Int, ?_v:StdTypes.Int, ?_c:std.UInt, ?_tq:std.UInt) this = new stdgo._internal.image.jpeg.Jpeg_T_component.T_component(_h, _v, _c, _tq);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_bits(stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits) from stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits to stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits {
    public var _a(get, set) : std.UInt;
    function get__a():std.UInt return this._a;
    function set__a(v:std.UInt):std.UInt {
        this._a = v;
        return v;
    }
    public var _m(get, set) : std.UInt;
    function get__m():std.UInt return this._m;
    function set__m(v:std.UInt):std.UInt {
        this._m = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public function new(?_a:std.UInt, ?_m:std.UInt, ?_n:StdTypes.Int) this = new stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits(_a, _m, _n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_decoder_static_extension) abstract T_decoder(stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder) from stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder to stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _bits(get, set) : T_bits;
    function get__bits():T_bits return this._bits;
    function set__bits(v:T_bits):T_bits {
        this._bits = v;
        return v;
    }
    public var _bytes(get, set) : stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int>;
    function get__bytes():stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int> return {
        final obj = this._bytes;
        { _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };
    };
    function set__bytes(v:stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int>):stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int> {
        this._bytes = {
            final obj = v;
            { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };
        };
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = v;
        return v;
    }
    public var _height(get, set) : StdTypes.Int;
    function get__height():StdTypes.Int return this._height;
    function set__height(v:StdTypes.Int):StdTypes.Int {
        this._height = v;
        return v;
    }
    public var _img1(get, set) : stdgo._internal.image.Image_Gray.Gray;
    function get__img1():stdgo._internal.image.Image_Gray.Gray return this._img1;
    function set__img1(v:stdgo._internal.image.Image_Gray.Gray):stdgo._internal.image.Image_Gray.Gray {
        this._img1 = v;
        return v;
    }
    public var _img3(get, set) : stdgo._internal.image.Image_YCbCr.YCbCr;
    function get__img3():stdgo._internal.image.Image_YCbCr.YCbCr return this._img3;
    function set__img3(v:stdgo._internal.image.Image_YCbCr.YCbCr):stdgo._internal.image.Image_YCbCr.YCbCr {
        this._img3 = v;
        return v;
    }
    public var _blackPix(get, set) : Array<std.UInt>;
    function get__blackPix():Array<std.UInt> return [for (i in this._blackPix) i];
    function set__blackPix(v:Array<std.UInt>):Array<std.UInt> {
        this._blackPix = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _blackStride(get, set) : StdTypes.Int;
    function get__blackStride():StdTypes.Int return this._blackStride;
    function set__blackStride(v:StdTypes.Int):StdTypes.Int {
        this._blackStride = v;
        return v;
    }
    public var _ri(get, set) : StdTypes.Int;
    function get__ri():StdTypes.Int return this._ri;
    function set__ri(v:StdTypes.Int):StdTypes.Int {
        this._ri = v;
        return v;
    }
    public var _nComp(get, set) : StdTypes.Int;
    function get__nComp():StdTypes.Int return this._nComp;
    function set__nComp(v:StdTypes.Int):StdTypes.Int {
        this._nComp = v;
        return v;
    }
    public var _baseline(get, set) : Bool;
    function get__baseline():Bool return this._baseline;
    function set__baseline(v:Bool):Bool {
        this._baseline = v;
        return v;
    }
    public var _progressive(get, set) : Bool;
    function get__progressive():Bool return this._progressive;
    function set__progressive(v:Bool):Bool {
        this._progressive = v;
        return v;
    }
    public var _jfif(get, set) : Bool;
    function get__jfif():Bool return this._jfif;
    function set__jfif(v:Bool):Bool {
        this._jfif = v;
        return v;
    }
    public var _adobeTransformValid(get, set) : Bool;
    function get__adobeTransformValid():Bool return this._adobeTransformValid;
    function set__adobeTransformValid(v:Bool):Bool {
        this._adobeTransformValid = v;
        return v;
    }
    public var _adobeTransform(get, set) : std.UInt;
    function get__adobeTransform():std.UInt return this._adobeTransform;
    function set__adobeTransform(v:std.UInt):std.UInt {
        this._adobeTransform = v;
        return v;
    }
    public var _eobRun(get, set) : std.UInt;
    function get__eobRun():std.UInt return this._eobRun;
    function set__eobRun(v:std.UInt):std.UInt {
        this._eobRun = v;
        return v;
    }
    public var _comp(get, set) : haxe.ds.Vector<T_component>;
    function get__comp():haxe.ds.Vector<T_component> return haxe.ds.Vector.fromArrayCopy([for (i in this._comp) i]);
    function set__comp(v:haxe.ds.Vector<T_component>):haxe.ds.Vector<T_component> {
        this._comp = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_component.T_component>);
        return v;
    }
    public var _progCoeffs(get, set) : haxe.ds.Vector<Array<T_block>>;
    function get__progCoeffs():haxe.ds.Vector<Array<T_block>> return haxe.ds.Vector.fromArrayCopy([for (i in this._progCoeffs) [for (i in i) i]]);
    function set__progCoeffs(v:haxe.ds.Vector<Array<T_block>>):haxe.ds.Vector<Array<T_block>> {
        this._progCoeffs = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>>);
        return v;
    }
    public var _huff(get, set) : haxe.ds.Vector<haxe.ds.Vector<T_huffman>>;
    function get__huff():haxe.ds.Vector<haxe.ds.Vector<T_huffman>> return haxe.ds.Vector.fromArrayCopy([for (i in this._huff) haxe.ds.Vector.fromArrayCopy([for (i in i) i])]);
    function set__huff(v:haxe.ds.Vector<haxe.ds.Vector<T_huffman>>):haxe.ds.Vector<haxe.ds.Vector<T_huffman>> {
        this._huff = ([for (i in v) ([for (i in i) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>)] : stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>>);
        return v;
    }
    public var _quant(get, set) : haxe.ds.Vector<T_block>;
    function get__quant():haxe.ds.Vector<T_block> return haxe.ds.Vector.fromArrayCopy([for (i in this._quant) i]);
    function set__quant(v:haxe.ds.Vector<T_block>):haxe.ds.Vector<T_block> {
        this._quant = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_bits:T_bits, ?_bytes:stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int>, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_img1:stdgo._internal.image.Image_Gray.Gray, ?_img3:stdgo._internal.image.Image_YCbCr.YCbCr, ?_blackPix:Array<std.UInt>, ?_blackStride:StdTypes.Int, ?_ri:StdTypes.Int, ?_nComp:StdTypes.Int, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:std.UInt, ?_eobRun:std.UInt, ?_comp:haxe.ds.Vector<T_component>, ?_progCoeffs:haxe.ds.Vector<Array<T_block>>, ?_huff:haxe.ds.Vector<haxe.ds.Vector<T_huffman>>, ?_quant:haxe.ds.Vector<T_block>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder(
_r,
_bits,
{
        final obj = _bytes;
        { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };
    },
_width,
_height,
_img1,
_img3,
([for (i in _blackPix) i] : stdgo.Slice<stdgo.GoUInt8>),
_blackStride,
_ri,
_nComp,
_baseline,
_progressive,
_jfif,
_adobeTransformValid,
_adobeTransform,
_eobRun,
([for (i in _comp) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_component.T_component>),
([for (i in _progCoeffs) ([for (i in i) i] : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>>),
([for (i in _huff) ([for (i in i) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>)] : stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>>),
([for (i in _quant) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>),
([for (i in _tmp) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_huffmanSpec(stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec) from stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec to stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec {
    public var _count(get, set) : haxe.ds.Vector<std.UInt>;
    function get__count():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._count) i]);
    function set__count(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._count = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _value(get, set) : Array<std.UInt>;
    function get__value():Array<std.UInt> return [for (i in this._value) i];
    function set__value(v:Array<std.UInt>):Array<std.UInt> {
        this._value = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_count:haxe.ds.Vector<std.UInt>, ?_value:Array<std.UInt>) this = new stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec(([for (i in _count) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _value) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_encoder_static_extension) abstract T_encoder(stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder) from stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder to stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder {
    public var _w(get, set) : T_writer;
    function get__w():T_writer return this._w;
    function set__w(v:T_writer):T_writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = v;
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = v;
        return v;
    }
    public var _quant(get, set) : haxe.ds.Vector<haxe.ds.Vector<std.UInt>>;
    function get__quant():haxe.ds.Vector<haxe.ds.Vector<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._quant) haxe.ds.Vector.fromArrayCopy([for (i in i) i])]);
    function set__quant(v:haxe.ds.Vector<haxe.ds.Vector<std.UInt>>):haxe.ds.Vector<haxe.ds.Vector<std.UInt>> {
        this._quant = ([for (i in v) ([for (i in i) i] : stdgo.GoArray<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>);
        return v;
    }
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_buf:haxe.ds.Vector<std.UInt>, ?_bits:std.UInt, ?_nBits:std.UInt, ?_quant:haxe.ds.Vector<haxe.ds.Vector<std.UInt>>) this = new stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder(_w, _err, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _bits, _nBits, ([for (i in _quant) ([for (i in i) i] : stdgo.GoArray<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Options(stdgo._internal.image.jpeg.Jpeg_Options.Options) from stdgo._internal.image.jpeg.Jpeg_Options.Options to stdgo._internal.image.jpeg.Jpeg_Options.Options {
    public var quality(get, set) : StdTypes.Int;
    function get_quality():StdTypes.Int return this.quality;
    function set_quality(v:StdTypes.Int):StdTypes.Int {
        this.quality = v;
        return v;
    }
    public function new(?quality:StdTypes.Int) this = new stdgo._internal.image.jpeg.Jpeg_Options.Options(quality);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.image.jpeg.Jpeg_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.image.jpeg.Jpeg_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.image.jpeg.Jpeg_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1;
typedef T__struct_2Pointer = stdgo._internal.image.jpeg.Jpeg_T__struct_2Pointer.T__struct_2Pointer;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.image.jpeg.Jpeg_T__struct_2.T__struct_2;
typedef T_block = stdgo._internal.image.jpeg.Jpeg_T_block.T_block;
typedef FormatError = stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError;
typedef UnsupportedError = stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError;
typedef T_quantIndex = stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex;
typedef T_huffIndex = stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex;
typedef T_huffmanLUT = stdgo._internal.image.jpeg.Jpeg_T_huffmanLUT.T_huffmanLUT;
typedef T_decoderPointer = stdgo._internal.image.jpeg.Jpeg_T_decoderPointer.T_decoderPointer;
class T_decoder_static_extension {
    static public function _reconstructBlock(_d:T_decoder, _b:T_block, _bx:StdTypes.Int, _by:StdTypes.Int, _compIndex:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._reconstructBlock(_d, _b, _bx, _by, _compIndex);
    }
    static public function _reconstructProgressiveImage(_d:T_decoder):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._reconstructProgressiveImage(_d);
    }
    static public function _refineNonZeroes(_d:T_decoder, _b:T_block, _zig:StdTypes.Int, _zigEnd:StdTypes.Int, _nz:StdTypes.Int, _delta:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._refineNonZeroes(_d, _b, _zig, _zigEnd, _nz, _delta);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _refine(_d:T_decoder, _b:T_block, _h:T_huffman, _zigStart:StdTypes.Int, _zigEnd:StdTypes.Int, _delta:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._refine(_d, _b, _h, _zigStart, _zigEnd, _delta);
    }
    static public function _processSOS(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processSOS(_d, _n);
    }
    static public function _makeImg(_d:T_decoder, _mxx:StdTypes.Int, _myy:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._makeImg(_d, _mxx, _myy);
    }
    static public function _convertToRGB(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._convertToRGB(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _isRGB(_d:T_decoder):Bool {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._isRGB(_d);
    }
    static public function _applyBlack(_d:T_decoder):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._applyBlack(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decode(_d:T_decoder, _r:stdgo._internal.io.Io_Reader.Reader, _configOnly:Bool):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decode(_d, _r, _configOnly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _processApp14Marker(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processApp14Marker(_d, _n);
    }
    static public function _processApp0Marker(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processApp0Marker(_d, _n);
    }
    static public function _processDRI(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDRI(_d, _n);
    }
    static public function _processDQT(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDQT(_d, _n);
    }
    static public function _processSOF(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processSOF(_d, _n);
    }
    static public function _ignore(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._ignore(_d, _n);
    }
    static public function _readFull(_d:T_decoder, _p:Array<std.UInt>):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readFull(_d, _p);
    }
    static public function _readByteStuffedByte(_d:T_decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readByteStuffedByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readByte(_d:T_decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._readByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unreadByteStuffedByte(_d:T_decoder):Void {
        stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._unreadByteStuffedByte(_d);
    }
    static public function _fill(_d:T_decoder):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._fill(_d);
    }
    static public function _decodeBits(_d:T_decoder, _n:StdTypes.Int):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeBits(_d, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeBit(_d:T_decoder):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeBit(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeHuffman(_d:T_decoder, _h:T_huffman):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._decodeHuffman(_d, _h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _processDHT(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._processDHT(_d, _n);
    }
    static public function _receiveExtend(_d:T_decoder, _t:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._receiveExtend(_d, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _ensureNBits(_d:T_decoder, _n:StdTypes.Int):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_T_decoder_static_extension.T_decoder_static_extension._ensureNBits(_d, _n);
    }
}
typedef T_encoderPointer = stdgo._internal.image.jpeg.Jpeg_T_encoderPointer.T_encoderPointer;
class T_encoder_static_extension {
    static public function _writeSOS(_e:T_encoder, _m:stdgo._internal.image.Image_Image.Image):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeSOS(_e, _m);
    }
    static public function _writeBlock(_e:T_encoder, _b:T_block, _q:T_quantIndex, _prevDC:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeBlock(_e, _b, _q, _prevDC);
    }
    static public function _writeDHT(_e:T_encoder, _nComponent:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeDHT(_e, _nComponent);
    }
    static public function _writeSOF0(_e:T_encoder, _size:stdgo._internal.image.Image_Point.Point, _nComponent:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeSOF0(_e, _size, _nComponent);
    }
    static public function _writeDQT(_e:T_encoder):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeDQT(_e);
    }
    static public function _writeMarkerHeader(_e:T_encoder, _marker:std.UInt, _markerlen:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeMarkerHeader(_e, _marker, _markerlen);
    }
    static public function _emitHuffRLE(_e:T_encoder, _h:T_huffIndex, _runLength:StdTypes.Int, _value:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emitHuffRLE(_e, _h, _runLength, _value);
    }
    static public function _emitHuff(_e:T_encoder, _h:T_huffIndex, _value:StdTypes.Int):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emitHuff(_e, _h, _value);
    }
    static public function _emit(_e:T_encoder, _bits:std.UInt, _nBits:std.UInt):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._emit(_e, _bits, _nBits);
    }
    static public function _writeByte(_e:T_encoder, _b:std.UInt):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._writeByte(_e, _b);
    }
    static public function _write(_e:T_encoder, _p:Array<std.UInt>):Void {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._write(_e, _p);
    }
    static public function _flush(_e:T_encoder):Void {
        stdgo._internal.image.jpeg.Jpeg_T_encoder_static_extension.T_encoder_static_extension._flush(_e);
    }
}
typedef FormatErrorPointer = stdgo._internal.image.jpeg.Jpeg_FormatErrorPointer.FormatErrorPointer;
class FormatError_static_extension {
    static public function error(_e:FormatError):String {
        return stdgo._internal.image.jpeg.Jpeg_FormatError_static_extension.FormatError_static_extension.error(_e);
    }
}
typedef UnsupportedErrorPointer = stdgo._internal.image.jpeg.Jpeg_UnsupportedErrorPointer.UnsupportedErrorPointer;
class UnsupportedError_static_extension {
    static public function error(_e:UnsupportedError):String {
        return stdgo._internal.image.jpeg.Jpeg_UnsupportedError_static_extension.UnsupportedError_static_extension.error(_e);
    }
}
typedef T_huffmanLUTPointer = stdgo._internal.image.jpeg.Jpeg_T_huffmanLUTPointer.T_huffmanLUTPointer;
class T_huffmanLUT_static_extension {
    static public function _init(_h:T_huffmanLUT, _s:T_huffmanSpec):Void {
        stdgo._internal.image.jpeg.Jpeg_T_huffmanLUT_static_extension.T_huffmanLUT_static_extension._init(_h, _s);
    }
}
/**
    /|*{
    	if zigStart == 0 {
    		gotoNext = 2967222
    		_ = gotoNext == 2967222
    		if zigEnd != 0 {
    			gotoNext = 2967241
    			_ = gotoNext == 2967241
    			panic("unreachable")
    			gotoNext = 2967273
    		} else {
    			gotoNext = 2967273
    		}
    		_ = gotoNext == 2967273
    		bit_2967273, err_2967278 = d.decodeBit()
    		if err_2967278 != nil {
    			gotoNext = 2967315
    			_ = gotoNext == 2967315
    			return err_2967278
    			gotoNext = 2967337
    		} else {
    			gotoNext = 2967337
    		}
    		_ = gotoNext == 2967337
    		if bit_2967273 {
    			gotoNext = 2967344
    			_ = gotoNext == 2967344
    			b[0] |= delta
    			gotoNext = 2967369
    		} else {
    			gotoNext = 2967369
    		}
    		_ = gotoNext == 2967369
    		return nil
    		gotoNext = 2967467
    	} else {
    		gotoNext = 2967467
    	}
    	_ = gotoNext == 2967467
    	zig_2967467 = zigStart
    	if d.eobRun == 0 {
    		gotoNext = 2967501
    		_ = gotoNext == 2967501
    		gotoNext = 2967504
    		_ = gotoNext == 2967504
    		_ = 0
    		loopBreak = false
    		gotoNext = 2967512
    		_ = gotoNext == 2967512
    		if !loopBreak && (zig_2967467 <= zigEnd) {
    			gotoNext = 2967539
    			_ = gotoNext == 2967539
    			z_2967544 = int32(0)
    			value_2967561, err_2967568 = d.decodeHuffman(h)
    			if err_2967568 != nil {
    				gotoNext = 2967611
    				_ = gotoNext == 2967611
    				return err_2967568
    				gotoNext = 2967636
    			} else {
    				gotoNext = 2967636
    			}
    			_ = gotoNext == 2967636
    			val0_2967636 = value_2967561 >> 4
    			val1_2967658 = value_2967561 & 15
    			gotoNext = 2967683
    			_ = gotoNext == 2967683
    			switch val1_2967658 {
    			case 0:
    				gotoNext = 2967700
    				_ = gotoNext == 2967700
    				if val0_2967636 != 15 {
    					gotoNext = 2967728
    					_ = gotoNext == 2967728
    					d.eobRun = uint16(1 << val0_2967636)
    					if val0_2967636 != 0 {
    						gotoNext = 2967782
    						_ = gotoNext == 2967782
    						bits_2967790, err_2967796 = d.decodeBits(int32(val0_2967636))
    						if err_2967796 != nil {
    							gotoNext = 2967849
    							_ = gotoNext == 2967849
    							return err_2967796
    							gotoNext = 2967883
    						} else {
    							gotoNext = 2967883
    						}
    						_ = gotoNext == 2967883
    						d.eobRun |= uint16(bits_2967790)
    						gotoNext = 2967920
    					} else {
    						gotoNext = 2967920
    					}
    					_ = gotoNext == 2967920
    					loopBreak = true
    					gotoNext = 2967512
    					gotoNext = 2968137
    				} else {
    					gotoNext = 2968137
    				}
    				gotoNext = 2968137
    			case 1:
    				gotoNext = 2967940
    				_ = gotoNext == 2967940
    				z_2967544 = delta
    				bit_2967966, err_2967971 = d.decodeBit()
    				if err_2967971 != nil {
    					gotoNext = 2968010
    					_ = gotoNext == 2968010
    					return err_2967971
    					gotoNext = 2968038
    				} else {
    					gotoNext = 2968038
    				}
    				_ = gotoNext == 2968038
    				if !bit_2967966 {
    					gotoNext = 2968046
    					_ = gotoNext == 2968046
    					z_2967544 = -z_2967544
    					gotoNext = 2968137
    				} else {
    					gotoNext = 2968137
    				}
    				gotoNext = 2968137
    			default:
    				gotoNext = 2968069
    				_ = gotoNext == 2968069
    				return FormatError("unexpected Huffman code")
    				gotoNext = 2968137
    			}
    			_ = gotoNext == 2968137
    			zig_2967467, err_2967568 = d.refineNonZeroes(b, zig_2967467, zigEnd, int32(val0_2967636), delta)
    			if err_2967568 != nil {
    				gotoNext = 2968219
    				_ = gotoNext == 2968219
    				return err_2967568
    				gotoNext = 2968244
    			} else {
    				gotoNext = 2968244
    			}
    			_ = gotoNext == 2968244
    			if zig_2967467 > zigEnd {
    				gotoNext = 2968260
    				_ = gotoNext == 2968260
    				return FormatError("too many coefficients")
    				gotoNext = 2968318
    			} else {
    				gotoNext = 2968318
    			}
    			_ = gotoNext == 2968318
    			if z_2967544 != 0 {
    				gotoNext = 2968328
    				_ = gotoNext == 2968328
    				b[unzig[zig_2967467]] = z_2967544
    				gotoNext = 2967533
    			} else {
    				gotoNext = 2967533
    			}
    			_ = gotoNext == 2967533
    			zig_2967467++
    			gotoNext = 2967512
    		} else {
    			gotoNext = 2968365
    		}
    		gotoNext = 2968365
    	} else {
    		gotoNext = 2968365
    	}
    	_ = gotoNext == 2968365
    	if d.eobRun > 0 {
    		gotoNext = 2968381
    		_ = gotoNext == 2968381
    		d.eobRun--
    		if _, err_2968404 = d.refineNonZeroes(b, zig_2967467, zigEnd, -1, delta); err_2968404 != nil {
    			gotoNext = 2968468
    			_ = gotoNext == 2968468
    			return err_2968404
    			gotoNext = 2968492
    		} else {
    			gotoNext = 2968492
    		}
    		gotoNext = 2968492
    	} else {
    		gotoNext = 2968492
    	}
    	_ = gotoNext == 2968492
    	return nil
    	gotoNext = -1
    }*|/
**/
class Jpeg {
    /**
        Decode reads a JPEG image from r and returns it as an image.Image.
    **/
    static public function decode(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Image.Image, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DecodeConfig returns the color model and dimensions of a JPEG image without
        decoding the entire image.
    **/
    static public function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.image.Image_Config.Config, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.jpeg.Jpeg_decodeConfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Encode writes the Image m to w in JPEG 4:2:0 baseline format with the given
        options. Default parameters are used if a nil *Options is passed.
    **/
    static public function encode(_w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _o:Options):stdgo.Error {
        return stdgo._internal.image.jpeg.Jpeg_encode.encode(_w, _m, _o);
    }
}
