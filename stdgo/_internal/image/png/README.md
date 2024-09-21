# Module: `stdgo._internal.image.png`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function decode(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Image;
}`](<#function-decode>)

- [`function _cbPaletted(_cb:stdgo.GoInt):Bool`](<#function-_cbpaletted>)

- [`function _cbTrueColor(_cb:stdgo.GoInt):Bool`](<#function-_cbtruecolor>)

- [`function _filterPaeth(_cdat:stdgo.Slice<stdgo.GoUInt8>, _pdat:stdgo.Slice<stdgo.GoUInt8>, _bytesPerPixel:stdgo.GoInt):Void`](<#function-_filterpaeth>)

- [`function _abs(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_abs>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function decodeConfig(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Config;
}`](<#function-decodeconfig>)

- [`function _abs8(_d:stdgo.GoUInt8):stdgo.GoInt`](<#function-_abs8>)

- [`function _filter(_cr:stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>>, _pr:stdgo.Slice<stdgo.GoUInt8>, _bpp:stdgo.GoInt):stdgo.GoInt`](<#function-_filter>)

- [`function _levelToZlib(_l:stdgo._internal.image.png.CompressionLevel):stdgo.GoInt`](<#function-_leveltozlib>)

- [`function _opaque(_m:stdgo._internal.image.Image):Bool`](<#function-_opaque>)

- [`function _paeth(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_paeth>)

- [`function _zeroMemory(_v:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_zeromemory>)

- [`function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image):stdgo.Error`](<#function-encode>)

- [class Encoder](<#class-encoder>)

  - [`function new(?compressionLevel:stdgo._internal.image.png.CompressionLevel, ?bufferPool:stdgo._internal.image.png.EncoderBufferPool):Void`](<#encoder-function-new>)

- [class T\_decoder](<#class-t_decoder>)

  - [`function new(?_r:stdgo._internal.io.Reader, ?_img:stdgo._internal.image.Image, ?_crc:stdgo._internal.hash.Hash32, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_depth:stdgo.GoInt, ?_palette:stdgo._internal.image.color.Palette, ?_cb:stdgo.GoInt, ?_stage:stdgo.GoInt, ?_idatLength:stdgo.GoUInt32, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_interlace:stdgo.GoInt, ?_useTransparent:Bool, ?_transparent:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_decoder-function-new>)

- [class T\_encoder](<#class-t_encoder>)

  - [`function new(?_enc:stdgo.Ref<stdgo._internal.image.png.Encoder>, ?_w:stdgo._internal.io.Writer, ?_m:stdgo._internal.image.Image, ?_cb:stdgo.GoInt, ?_err:stdgo.Error, ?_header:stdgo.GoArray<stdgo.GoUInt8>, ?_footer:stdgo.GoArray<stdgo.GoUInt8>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_pr:stdgo.Slice<stdgo.GoUInt8>, ?_zw:stdgo.Ref<stdgo._internal.compress.zlib.Writer>, ?_zwLevel:stdgo.GoInt, ?_bw:stdgo.Ref<stdgo._internal.bufio.Writer>):Void`](<#t_encoder-function-new>)

- [class T\_interlaceScan](<#class-t_interlacescan>)

  - [`function new(?_xFactor:stdgo.GoInt, ?_yFactor:stdgo.GoInt, ?_xOffset:stdgo.GoInt, ?_yOffset:stdgo.GoInt):Void`](<#t_interlacescan-function-new>)

- [typedef CompressionLevel](<#typedef-compressionlevel>)

- [typedef EncoderBuffer](<#typedef-encoderbuffer>)

- [typedef EncoderBufferPool](<#typedef-encoderbufferpool>)

- [typedef FormatError](<#typedef-formaterror>)

- [typedef T\_opaquer](<#typedef-t_opaquer>)

- [typedef UnsupportedError](<#typedef-unsupportederror>)

# Constants


```haxe
import stdgo._internal.image.png.Png_noCompression
```


```haxe
final _cbG1:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbG16:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbG2:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbG4:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbG8:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbGA16:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbGA8:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbInvalid:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbP1:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbP2:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbP4:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbP8:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbTC16:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbTC8:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbTCA16:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _cbTCA8:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _ctGrayscale:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _ctGrayscaleAlpha:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _ctPaletted:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _ctTrueColor:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _ctTrueColorAlpha:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _dsSeenIDAT:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _dsSeenIEND:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _dsSeenIHDR:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _dsSeenPLTE:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _dsSeentRNS:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _dsStart:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _ftAverage:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _ftNone:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _ftPaeth:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _ftSub:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _ftUp:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _intSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _itAdam7:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _itNone:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _nFilter:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _pngHeader:stdgo.GoString = stdgo.Go.str(137, "PNG\r\n", 26, "\n")
```


```haxe
final bestCompression:stdgo._internal.image.png.CompressionLevel = ((-3 : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel))
```


```haxe
final bestSpeed:stdgo._internal.image.png.CompressionLevel = ((-2 : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel))
```


```haxe
final defaultCompression:stdgo._internal.image.png.CompressionLevel = ((0 : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel))
```


```haxe
final noCompression:stdgo._internal.image.png.CompressionLevel = ((-1 : stdgo._internal.image.png.Png_CompressionLevel.CompressionLevel))
```


# Variables


```haxe
import stdgo._internal.image.png.Png_noCompression
```


```haxe
var _interlacing:stdgo.Slice<stdgo._internal.image.png.T_interlaceScan>
```


```haxe
var _chunkOrderError:stdgo._internal.image.png.FormatError
```


# Functions


```haxe
import stdgo._internal.image.png.Png_noCompression
```


## function decode


```haxe
function decode(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Image;
}
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_cbPaletted


```haxe
function _cbPaletted(_cb:stdgo.GoInt):Bool
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_cbTrueColor


```haxe
function _cbTrueColor(_cb:stdgo.GoInt):Bool
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_filterPaeth


```haxe
function _filterPaeth(_cdat:stdgo.Slice<stdgo.GoUInt8>, _pdat:stdgo.Slice<stdgo.GoUInt8>, _bytesPerPixel:stdgo.GoInt):Void
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_abs


```haxe
function _abs(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function decodeConfig


```haxe
function decodeConfig(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.image.Config;
}
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_abs8


```haxe
function _abs8(_d:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_filter


```haxe
function _filter(_cr:stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>>, _pr:stdgo.Slice<stdgo.GoUInt8>, _bpp:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_levelToZlib


```haxe
function _levelToZlib(_l:stdgo._internal.image.png.CompressionLevel):stdgo.GoInt
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_opaque


```haxe
function _opaque(_m:stdgo._internal.image.Image):Bool
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_paeth


```haxe
function _paeth(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function \_zeroMemory


```haxe
function _zeroMemory(_v:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Png_noCompression.hx#L2>)


## function encode


```haxe
function encode(_w:stdgo._internal.io.Writer, _m:stdgo._internal.image.Image):stdgo.Error
```


[\(view code\)](<./Png_noCompression.hx#L2>)


# Classes


```haxe
import stdgo._internal.image.png.*
```


## class Encoder


```haxe
var bufferPool:stdgo._internal.image.png.EncoderBufferPool
```


```haxe
var compressionLevel:stdgo._internal.image.png.CompressionLevel
```


### Encoder function new


```haxe
function new(?compressionLevel:stdgo._internal.image.png.CompressionLevel, ?bufferPool:stdgo._internal.image.png.EncoderBufferPool):Void
```


[\(view code\)](<./Png_Encoder.hx#L5>)


## class T\_decoder


```haxe
var _cb:stdgo.GoInt
```


```haxe
var _crc:stdgo._internal.hash.Hash32
```


```haxe
var _depth:stdgo.GoInt
```


```haxe
var _height:stdgo.GoInt
```


```haxe
var _idatLength:stdgo.GoUInt32
```


```haxe
var _img:stdgo._internal.image.Image
```


```haxe
var _interlace:stdgo.GoInt
```


```haxe
var _palette:stdgo._internal.image.color.Palette
```


```haxe
var _r:stdgo._internal.io.Reader
```


```haxe
var _stage:stdgo.GoInt
```


```haxe
var _tmp:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _transparent:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _useTransparent:Bool
```


```haxe
var _width:stdgo.GoInt
```


### T\_decoder function new


```haxe
function new(?_r:stdgo._internal.io.Reader, ?_img:stdgo._internal.image.Image, ?_crc:stdgo._internal.hash.Hash32, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_depth:stdgo.GoInt, ?_palette:stdgo._internal.image.color.Palette, ?_cb:stdgo.GoInt, ?_stage:stdgo.GoInt, ?_idatLength:stdgo.GoUInt32, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_interlace:stdgo.GoInt, ?_useTransparent:Bool, ?_transparent:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Png_T_decoder.hx#L17>)


## class T\_encoder


```haxe
var _bw:stdgo.Ref<stdgo._internal.bufio.Writer>
```


```haxe
var _cb:stdgo.GoInt
```


```haxe
var _cr:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>
```


```haxe
var _enc:stdgo.Ref<stdgo._internal.image.png.Encoder>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _footer:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _header:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _m:stdgo._internal.image.Image
```


```haxe
var _pr:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _tmp:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _w:stdgo._internal.io.Writer
```


```haxe
var _zw:stdgo.Ref<stdgo._internal.compress.zlib.Writer>
```


```haxe
var _zwLevel:stdgo.GoInt
```


### T\_encoder function new


```haxe
function new(?_enc:stdgo.Ref<stdgo._internal.image.png.Encoder>, ?_w:stdgo._internal.io.Writer, ?_m:stdgo._internal.image.Image, ?_cb:stdgo.GoInt, ?_err:stdgo.Error, ?_header:stdgo.GoArray<stdgo.GoUInt8>, ?_footer:stdgo.GoArray<stdgo.GoUInt8>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_pr:stdgo.Slice<stdgo.GoUInt8>, ?_zw:stdgo.Ref<stdgo._internal.compress.zlib.Writer>, ?_zwLevel:stdgo.GoInt, ?_bw:stdgo.Ref<stdgo._internal.bufio.Writer>):Void
```


[\(view code\)](<./Png_T_encoder.hx#L16>)


## class T\_interlaceScan


```haxe
var _xFactor:stdgo.GoInt
```


```haxe
var _xOffset:stdgo.GoInt
```


```haxe
var _yFactor:stdgo.GoInt
```


```haxe
var _yOffset:stdgo.GoInt
```


### T\_interlaceScan function new


```haxe
function new(?_xFactor:stdgo.GoInt, ?_yFactor:stdgo.GoInt, ?_xOffset:stdgo.GoInt, ?_yOffset:stdgo.GoInt):Void
```


[\(view code\)](<./Png_T_interlaceScan.hx#L7>)


# Typedefs


```haxe
import stdgo._internal.image.png.*
```


## typedef CompressionLevel


```haxe
typedef CompressionLevel = stdgo.GoInt;
```


## typedef EncoderBuffer


```haxe
typedef EncoderBuffer = stdgo._internal.image.png.T_encoder;
```


## typedef EncoderBufferPool


```haxe
typedef EncoderBufferPool = {
	public function put(_0:stdgo.Ref<stdgo._internal.image.png.EncoderBuffer>):Void;
	public function get():stdgo.Ref<stdgo._internal.image.png.EncoderBuffer>;
};
```


## typedef FormatError


```haxe
typedef FormatError = stdgo.GoString;
```


## typedef T\_opaquer


```haxe
typedef T_opaquer = {
	public function opaque():Bool;
};
```


## typedef UnsupportedError


```haxe
typedef UnsupportedError = stdgo.GoString;
```


