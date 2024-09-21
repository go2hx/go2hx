# Module: `stdgo._internal.image.jpeg`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function decode(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Image;
}`](<#function-decode>)

- [`function _idct(_src:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_idct>)

- [`function decodeConfig(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Config;
}`](<#function-decodeconfig>)

- [`function _div(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32`](<#function-_div>)

- [`function _fdct(_b:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_fdct>)

- [`function _grayToY(_m:stdgo.Ref<stdgo._internal.image.Gray>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_graytoy>)

- [`function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function _rgbaToYCbCr(_m:stdgo.Ref<stdgo._internal.image.RGBA>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_rgbatoycbcr>)

- [`function _scale(_dst:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _src:stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.T_block>>):Void`](<#function-_scale>)

- [`function _toYCbCr(_m:stdgo._internal.image.Image, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_toycbcr>)

- [`function _yCbCrToYCbCr(_m:stdgo.Ref<stdgo._internal.image.YCbCr>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void`](<#function-_ycbcrtoycbcr>)

- [`function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image, _o:stdgo.Ref<stdgo._internal.image.jpeg.Options>):stdgo.Error`](<#function-encode>)

- [class Options](<#class-options>)

  - [`function new(?quality:stdgo.GoInt):Void`](<#options-function-new>)

- [class T\_bits](<#class-t_bits>)

  - [`function new(?_a:stdgo.GoUInt32, ?_m:stdgo.GoUInt32, ?_n:stdgo.GoInt32):Void`](<#t_bits-function-new>)

- [class T\_component](<#class-t_component>)

  - [`function new(?_h:stdgo.GoInt, ?_v:stdgo.GoInt, ?_c:stdgo.GoUInt8, ?_tq:stdgo.GoUInt8):Void`](<#t_component-function-new>)

- [class T\_decoder](<#class-t_decoder>)

  - [`function new(?_r:stdgo._internal.io.Reader, ?_bits:stdgo._internal.image.jpeg.T_bits, ?_bytes:{ _nUnreadable:stdgo.GoInt; _j:stdgo.GoInt; _i:stdgo.GoInt; _buf:stdgo.GoArray<stdgo.GoUInt8>;}, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_img1:stdgo.Ref<stdgo._internal.image.Gray>, ?_img3:stdgo.Ref<stdgo._internal.image.YCbCr>, ?_blackPix:stdgo.Slice<stdgo.GoUInt8>, ?_blackStride:stdgo.GoInt, ?_ri:stdgo.GoInt, ?_nComp:stdgo.GoInt, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:stdgo.GoUInt8, ?_eobRun:stdgo.GoUInt16, ?_comp:stdgo.GoArray<stdgo._internal.image.jpeg.T_component>, ?_progCoeffs:stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.T_block>>, ?_huff:stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.T_huffman>>, ?_quant:stdgo.GoArray<stdgo._internal.image.jpeg.T_block>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_decoder-function-new>)

- [class T\_encoder](<#class-t_encoder>)

  - [`function new(?_w:stdgo._internal.image.jpeg.T_writer, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt32, ?_quant:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>):Void`](<#t_encoder-function-new>)

- [class T\_huffman](<#class-t_huffman>)

  - [`function new(?_nCodes:stdgo.GoInt32, ?_lut:stdgo.GoArray<stdgo.GoUInt16>, ?_vals:stdgo.GoArray<stdgo.GoUInt8>, ?_minCodes:stdgo.GoArray<stdgo.GoInt32>, ?_maxCodes:stdgo.GoArray<stdgo.GoInt32>, ?_valsIndices:stdgo.GoArray<stdgo.GoInt32>):Void`](<#t_huffman-function-new>)

- [class T\_huffmanSpec](<#class-t_huffmanspec>)

  - [`function new(?_count:stdgo.GoArray<stdgo.GoUInt8>, ?_value:stdgo.Slice<stdgo.GoUInt8>):Void`](<#t_huffmanspec-function-new>)

- [typedef FormatError](<#typedef-formaterror>)

- [typedef Reader](<#typedef-reader>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_block](<#typedef-t_block>)

- [typedef T\_huffIndex](<#typedef-t_huffindex>)

- [typedef T\_huffmanLUT](<#typedef-t_huffmanlut>)

- [typedef T\_quantIndex](<#typedef-t_quantindex>)

- [typedef T\_writer](<#typedef-t_writer>)

- [typedef UnsupportedError](<#typedef-unsupportederror>)

# Constants


```haxe
import stdgo._internal.image.jpeg.Jpeg_encode
```


```haxe
final _acTable:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _adobeTransformUnknown:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _adobeTransformYCbCr:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _adobeTransformYCbCrK:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _app0Marker:stdgo.GoUInt64 = ((224i64 : stdgo.GoUInt64))
```


```haxe
final _app14Marker:stdgo.GoUInt64 = ((238i64 : stdgo.GoUInt64))
```


```haxe
final _app15Marker:stdgo.GoUInt64 = ((239i64 : stdgo.GoUInt64))
```


```haxe
final _blockSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final _centerJSample:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _comMarker:stdgo.GoUInt64 = ((254i64 : stdgo.GoUInt64))
```


```haxe
final _constBits:stdgo.GoUInt64 = ((13i64 : stdgo.GoUInt64))
```


```haxe
final _dcTable:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _dhtMarker:stdgo.GoUInt64 = ((196i64 : stdgo.GoUInt64))
```


```haxe
final _dqtMarker:stdgo.GoUInt64 = ((219i64 : stdgo.GoUInt64))
```


```haxe
final _driMarker:stdgo.GoUInt64 = ((221i64 : stdgo.GoUInt64))
```


```haxe
final _eoiMarker:stdgo.GoUInt64 = ((217i64 : stdgo.GoUInt64))
```


```haxe
final _fix_0_298631336:stdgo.GoUInt64 = ((2446i64 : stdgo.GoUInt64))
```


```haxe
final _fix_0_390180644:stdgo.GoUInt64 = ((3196i64 : stdgo.GoUInt64))
```


```haxe
final _fix_0_541196100:stdgo.GoUInt64 = ((4433i64 : stdgo.GoUInt64))
```


```haxe
final _fix_0_765366865:stdgo.GoUInt64 = ((6270i64 : stdgo.GoUInt64))
```


```haxe
final _fix_0_899976223:stdgo.GoUInt64 = ((7373i64 : stdgo.GoUInt64))
```


```haxe
final _fix_1_175875602:stdgo.GoUInt64 = ((9633i64 : stdgo.GoUInt64))
```


```haxe
final _fix_1_501321110:stdgo.GoUInt64 = ((12299i64 : stdgo.GoUInt64))
```


```haxe
final _fix_1_847759065:stdgo.GoUInt64 = ((15137i64 : stdgo.GoUInt64))
```


```haxe
final _fix_1_961570560:stdgo.GoUInt64 = ((16069i64 : stdgo.GoUInt64))
```


```haxe
final _fix_2_053119869:stdgo.GoUInt64 = ((16819i64 : stdgo.GoUInt64))
```


```haxe
final _fix_2_562915447:stdgo.GoUInt64 = ((20995i64 : stdgo.GoUInt64))
```


```haxe
final _fix_3_072711026:stdgo.GoUInt64 = ((25172i64 : stdgo.GoUInt64))
```


```haxe
final _huffIndexChrominanceAC:stdgo._internal.image.jpeg.T_huffIndex = ((4 : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex))
```


```haxe
final _huffIndexChrominanceDC:stdgo._internal.image.jpeg.T_huffIndex = ((4 : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex))
```


```haxe
final _huffIndexLuminanceAC:stdgo._internal.image.jpeg.T_huffIndex = ((4 : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex))
```


```haxe
final _huffIndexLuminanceDC:stdgo._internal.image.jpeg.T_huffIndex = ((4 : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex))
```


```haxe
final _lutSize:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _maxCodeLength:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _maxComponents:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _maxNCodes:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```


```haxe
final _maxTc:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _maxTh:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _maxTq:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _nHuffIndex:stdgo._internal.image.jpeg.T_huffIndex = ((4 : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex))
```


```haxe
final _nQuantIndex:stdgo._internal.image.jpeg.T_quantIndex = ((1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex))
```


```haxe
final _pass1Bits:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _quantIndexChrominance:stdgo._internal.image.jpeg.T_quantIndex = ((1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex))
```


```haxe
final _quantIndexLuminance:stdgo._internal.image.jpeg.T_quantIndex = ((1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex))
```


```haxe
final _r2:stdgo.GoUInt64 = ((181i64 : stdgo.GoUInt64))
```


```haxe
final _rst0Marker:stdgo.GoUInt64 = ((208i64 : stdgo.GoUInt64))
```


```haxe
final _rst7Marker:stdgo.GoUInt64 = ((215i64 : stdgo.GoUInt64))
```


```haxe
final _sof0Marker:stdgo.GoUInt64 = ((192i64 : stdgo.GoUInt64))
```


```haxe
final _sof1Marker:stdgo.GoUInt64 = ((193i64 : stdgo.GoUInt64))
```


```haxe
final _sof2Marker:stdgo.GoUInt64 = ((194i64 : stdgo.GoUInt64))
```


```haxe
final _soiMarker:stdgo.GoUInt64 = ((216i64 : stdgo.GoUInt64))
```


```haxe
final _sosMarker:stdgo.GoUInt64 = ((218i64 : stdgo.GoUInt64))
```


```haxe
final _w1:stdgo.GoUInt64 = ((2841i64 : stdgo.GoUInt64))
```


```haxe
final _w1mw7:stdgo.GoUInt64 = ((2276i64 : stdgo.GoUInt64))
```


```haxe
final _w1pw7:stdgo.GoUInt64 = ((3406i64 : stdgo.GoUInt64))
```


```haxe
final _w2:stdgo.GoUInt64 = ((2676i64 : stdgo.GoUInt64))
```


```haxe
final _w2mw6:stdgo.GoUInt64 = ((1568i64 : stdgo.GoUInt64))
```


```haxe
final _w2pw6:stdgo.GoUInt64 = ((3784i64 : stdgo.GoUInt64))
```


```haxe
final _w3:stdgo.GoUInt64 = ((2408i64 : stdgo.GoUInt64))
```


```haxe
final _w3mw5:stdgo.GoUInt64 = ((799i64 : stdgo.GoUInt64))
```


```haxe
final _w3pw5:stdgo.GoUInt64 = ((4017i64 : stdgo.GoUInt64))
```


```haxe
final _w5:stdgo.GoUInt64 = ((1609i64 : stdgo.GoUInt64))
```


```haxe
final _w6:stdgo.GoUInt64 = ((1108i64 : stdgo.GoUInt64))
```


```haxe
final _w7:stdgo.GoUInt64 = ((565i64 : stdgo.GoUInt64))
```


```haxe
final defaultQuality:stdgo.GoUInt64 = ((75i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.image.jpeg.Jpeg_encode
```


```haxe
var _errShortHuffmanData:stdgo._internal.image.jpeg.FormatError
```


```haxe
var _errUnsupportedSubsamplingRatio:stdgo._internal.image.jpeg.UnsupportedError
```


```haxe
var _unzig:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _errMissingFF00:stdgo._internal.image.jpeg.FormatError
```


```haxe
var _bitCount:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _unscaledQuant:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>
```


```haxe
var _theHuffmanSpec:stdgo.GoArray<stdgo._internal.image.jpeg.T_huffmanSpec>
```


```haxe
var _sosHeaderY:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _sosHeaderYCbCr:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _theHuffmanLUT:stdgo.GoArray<stdgo._internal.image.jpeg.T_huffmanLUT>
```


# Functions


```haxe
import stdgo._internal.image.jpeg.Jpeg_encode
```


## function decode


```haxe
function decode(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Image;
}
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_idct


```haxe
function _idct(_src:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function decodeConfig


```haxe
function decodeConfig(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Config;
}
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_div


```haxe
function _div(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_fdct


```haxe
function _fdct(_b:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_grayToY


```haxe
function _grayToY(_m:stdgo.Ref<stdgo._internal.image.Gray>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_min


```haxe
function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_rgbaToYCbCr


```haxe
function _rgbaToYCbCr(_m:stdgo.Ref<stdgo._internal.image.RGBA>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_scale


```haxe
function _scale(_dst:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _src:stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.T_block>>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_toYCbCr


```haxe
function _toYCbCr(_m:stdgo._internal.image.Image, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function \_yCbCrToYCbCr


```haxe
function _yCbCrToYCbCr(_m:stdgo.Ref<stdgo._internal.image.YCbCr>, _p:stdgo._internal.image.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.T_block>):Void
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


## function encode


```haxe
function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image, _o:stdgo.Ref<stdgo._internal.image.jpeg.Options>):stdgo.Error
```


[\(view code\)](<./Jpeg_encode.hx#L2>)


# Classes


```haxe
import stdgo._internal.image.jpeg.*
```


## class Options


```haxe
var quality:stdgo.GoInt
```


### Options function new


```haxe
function new(?quality:stdgo.GoInt):Void
```


[\(view code\)](<./Jpeg_Options.hx#L4>)


## class T\_bits


```haxe
var _a:stdgo.GoUInt32
```


```haxe
var _m:stdgo.GoUInt32
```


```haxe
var _n:stdgo.GoInt32
```


### T\_bits function new


```haxe
function new(?_a:stdgo.GoUInt32, ?_m:stdgo.GoUInt32, ?_n:stdgo.GoInt32):Void
```


[\(view code\)](<./Jpeg_T_bits.hx#L6>)


## class T\_component


```haxe
var _c:stdgo.GoUInt8
```


```haxe
var _h:stdgo.GoInt
```


```haxe
var _tq:stdgo.GoUInt8
```


```haxe
var _v:stdgo.GoInt
```


### T\_component function new


```haxe
function new(?_h:stdgo.GoInt, ?_v:stdgo.GoInt, ?_c:stdgo.GoUInt8, ?_tq:stdgo.GoUInt8):Void
```


[\(view code\)](<./Jpeg_T_component.hx#L7>)


## class T\_decoder


```haxe
var _adobeTransform:stdgo.GoUInt8
```


```haxe
var _adobeTransformValid:Bool
```


```haxe
var _baseline:Bool
```


```haxe
var _bits:stdgo._internal.image.jpeg.T_bits
```


```haxe
var _blackPix:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _blackStride:stdgo.GoInt
```


```haxe
var _bytes:{
	_nUnreadable:stdgo.GoInt;
	_j:stdgo.GoInt;
	_i:stdgo.GoInt;
	_buf:stdgo.GoArray<stdgo.GoUInt8>;
}
```


```haxe
var _comp:stdgo.GoArray<stdgo._internal.image.jpeg.T_component>
```


```haxe
var _eobRun:stdgo.GoUInt16
```


```haxe
var _height:stdgo.GoInt
```


```haxe
var _huff:stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.T_huffman>>
```


```haxe
var _img1:stdgo.Ref<stdgo._internal.image.Gray>
```


```haxe
var _img3:stdgo.Ref<stdgo._internal.image.YCbCr>
```


```haxe
var _jfif:Bool
```


```haxe
var _nComp:stdgo.GoInt
```


```haxe
var _progCoeffs:stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.T_block>>
```


```haxe
var _progressive:Bool
```


```haxe
var _quant:stdgo.GoArray<stdgo._internal.image.jpeg.T_block>
```


```haxe
var _r:stdgo._internal.io.Reader
```


```haxe
var _ri:stdgo.GoInt
```


```haxe
var _tmp:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _width:stdgo.GoInt
```


### T\_decoder function new


```haxe
function new(?_r:stdgo._internal.io.Reader, ?_bits:stdgo._internal.image.jpeg.T_bits, ?_bytes:{
	_nUnreadable:stdgo.GoInt;
	_j:stdgo.GoInt;
	_i:stdgo.GoInt;
	_buf:stdgo.GoArray<stdgo.GoUInt8>;
}, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_img1:stdgo.Ref<stdgo._internal.image.Gray>, ?_img3:stdgo.Ref<stdgo._internal.image.YCbCr>, ?_blackPix:stdgo.Slice<stdgo.GoUInt8>, ?_blackStride:stdgo.GoInt, ?_ri:stdgo.GoInt, ?_nComp:stdgo.GoInt, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:stdgo.GoUInt8, ?_eobRun:stdgo.GoUInt16, ?_comp:stdgo.GoArray<stdgo._internal.image.jpeg.T_component>, ?_progCoeffs:stdgo.GoArray<stdgo.Slice<stdgo._internal.image.jpeg.T_block>>, ?_huff:stdgo.GoArray<stdgo.GoArray<stdgo._internal.image.jpeg.T_huffman>>, ?_quant:stdgo.GoArray<stdgo._internal.image.jpeg.T_block>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Jpeg_T_decoder.hx#L25>)


## class T\_encoder


```haxe
var _bits:stdgo.GoUInt32
```


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _nBits:stdgo.GoUInt32
```


```haxe
var _quant:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>
```


```haxe
var _w:stdgo._internal.image.jpeg.T_writer
```


### T\_encoder function new


```haxe
function new(?_w:stdgo._internal.image.jpeg.T_writer, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt32, ?_quant:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>):Void
```


[\(view code\)](<./Jpeg_T_encoder.hx#L9>)


## class T\_huffman


```haxe
var _lut:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var _maxCodes:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var _minCodes:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var _nCodes:stdgo.GoInt32
```


```haxe
var _vals:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _valsIndices:stdgo.GoArray<stdgo.GoInt32>
```


### T\_huffman function new


```haxe
function new(?_nCodes:stdgo.GoInt32, ?_lut:stdgo.GoArray<stdgo.GoUInt16>, ?_vals:stdgo.GoArray<stdgo.GoUInt8>, ?_minCodes:stdgo.GoArray<stdgo.GoInt32>, ?_maxCodes:stdgo.GoArray<stdgo.GoInt32>, ?_valsIndices:stdgo.GoArray<stdgo.GoInt32>):Void
```


[\(view code\)](<./Jpeg_T_huffman.hx#L9>)


## class T\_huffmanSpec


```haxe
var _count:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _value:stdgo.Slice<stdgo.GoUInt8>
```


### T\_huffmanSpec function new


```haxe
function new(?_count:stdgo.GoArray<stdgo.GoUInt8>, ?_value:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Jpeg_T_huffmanSpec.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.image.jpeg.*
```


## typedef FormatError


```haxe
typedef FormatError = stdgo.GoString;
```


## typedef Reader


```haxe
typedef Reader = {
	public function readByte():{
		_1:stdgo.Error;
		_0:stdgo.GoUInt8;
	};
	public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_nUnreadable:stdgo.GoInt;
	_j:stdgo.GoInt;	// nUnreadable is the number of bytes to back up i after overshooting. It can be 0, 1 or 2.
	_i:stdgo.GoInt;
	_buf:stdgo.GoArray<stdgo.GoUInt8>;	// buf[i:j] are the buffered bytes read from the underlying io.Reader that haven't yet been passed further on.
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_stride:stdgo.GoInt;
	_src:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_td:stdgo.GoUInt8;
	_ta:stdgo.GoUInt8;
	_compIndex:stdgo.GoUInt8;
};
```


## typedef T\_block


```haxe
typedef T_block = stdgo.GoArray<stdgo.GoInt32>;
```


## typedef T\_huffIndex


```haxe
typedef T_huffIndex = stdgo.GoInt;
```


## typedef T\_huffmanLUT


```haxe
typedef T_huffmanLUT = stdgo.Slice<stdgo.GoUInt32>;
```


## typedef T\_quantIndex


```haxe
typedef T_quantIndex = stdgo.GoInt;
```


## typedef T\_writer


```haxe
typedef T_writer = {
	public function writeByte(_c:stdgo.GoUInt8):stdgo.Error;
	public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
	public function flush():stdgo.Error;
};
```


## typedef UnsupportedError


```haxe
typedef UnsupportedError = stdgo.GoString;
```


