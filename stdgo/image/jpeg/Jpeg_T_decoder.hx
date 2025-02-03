package stdgo.image.jpeg;
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
            { _buf : ([for (i in obj._buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _i : (obj._i : stdgo.GoInt), _j : (obj._j : stdgo.GoInt), _nUnreadable : (obj._nUnreadable : stdgo.GoInt) };
        };
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _height(get, set) : StdTypes.Int;
    function get__height():StdTypes.Int return this._height;
    function set__height(v:StdTypes.Int):StdTypes.Int {
        this._height = (v : stdgo.GoInt);
        return v;
    }
    public var _img1(get, set) : stdgo._internal.image.Image_Gray.Gray;
    function get__img1():stdgo._internal.image.Image_Gray.Gray return this._img1;
    function set__img1(v:stdgo._internal.image.Image_Gray.Gray):stdgo._internal.image.Image_Gray.Gray {
        this._img1 = (v : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        return v;
    }
    public var _img3(get, set) : stdgo._internal.image.Image_YCbCr.YCbCr;
    function get__img3():stdgo._internal.image.Image_YCbCr.YCbCr return this._img3;
    function set__img3(v:stdgo._internal.image.Image_YCbCr.YCbCr):stdgo._internal.image.Image_YCbCr.YCbCr {
        this._img3 = (v : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>);
        return v;
    }
    public var _blackPix(get, set) : Array<std.UInt>;
    function get__blackPix():Array<std.UInt> return [for (i in this._blackPix) i];
    function set__blackPix(v:Array<std.UInt>):Array<std.UInt> {
        this._blackPix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _blackStride(get, set) : StdTypes.Int;
    function get__blackStride():StdTypes.Int return this._blackStride;
    function set__blackStride(v:StdTypes.Int):StdTypes.Int {
        this._blackStride = (v : stdgo.GoInt);
        return v;
    }
    public var _ri(get, set) : StdTypes.Int;
    function get__ri():StdTypes.Int return this._ri;
    function set__ri(v:StdTypes.Int):StdTypes.Int {
        this._ri = (v : stdgo.GoInt);
        return v;
    }
    public var _nComp(get, set) : StdTypes.Int;
    function get__nComp():StdTypes.Int return this._nComp;
    function set__nComp(v:StdTypes.Int):StdTypes.Int {
        this._nComp = (v : stdgo.GoInt);
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
        this._adobeTransform = (v : stdgo.GoUInt8);
        return v;
    }
    public var _eobRun(get, set) : std.UInt;
    function get__eobRun():std.UInt return this._eobRun;
    function set__eobRun(v:std.UInt):std.UInt {
        this._eobRun = (v : stdgo.GoUInt16);
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
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_bits:T_bits, ?_bytes:stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int>, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_img1:stdgo._internal.image.Image_Gray.Gray, ?_img3:stdgo._internal.image.Image_YCbCr.YCbCr, ?_blackPix:Array<std.UInt>, ?_blackStride:StdTypes.Int, ?_ri:StdTypes.Int, ?_nComp:StdTypes.Int, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:std.UInt, ?_eobRun:std.UInt, ?_comp:haxe.ds.Vector<T_component>, ?_progCoeffs:haxe.ds.Vector<Array<T_block>>, ?_huff:haxe.ds.Vector<haxe.ds.Vector<T_huffman>>, ?_quant:haxe.ds.Vector<T_block>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder(
_r,
_bits,
{
        final obj = _bytes;
        { _buf : ([for (i in obj._buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _i : (obj._i : stdgo.GoInt), _j : (obj._j : stdgo.GoInt), _nUnreadable : (obj._nUnreadable : stdgo.GoInt) };
    },
(_width : stdgo.GoInt),
(_height : stdgo.GoInt),
(_img1 : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>),
(_img3 : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>),
([for (i in _blackPix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_blackStride : stdgo.GoInt),
(_ri : stdgo.GoInt),
(_nComp : stdgo.GoInt),
_baseline,
_progressive,
_jfif,
_adobeTransformValid,
(_adobeTransform : stdgo.GoUInt8),
(_eobRun : stdgo.GoUInt16),
([for (i in _comp) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_component.T_component>),
([for (i in _progCoeffs) ([for (i in i) i] : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>)] : stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>>),
([for (i in _huff) ([for (i in i) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>)] : stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>>),
([for (i in _quant) i] : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
