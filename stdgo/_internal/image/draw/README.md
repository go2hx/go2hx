# Module: `stdgo._internal.image.draw`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _clamp(_i:stdgo.GoInt32):stdgo.GoInt32`](<#function-_clamp>)

- [`function _clip(_dst:stdgo._internal.image.draw.Image, _r:stdgo.Ref<stdgo._internal.image.Rectangle>, _src:stdgo._internal.image.Image, _sp:stdgo.Ref<stdgo._internal.image.Point>, _mask:stdgo._internal.image.Image, _mp:stdgo.Ref<stdgo._internal.image.Point>):Void`](<#function-_clip>)

- [`function _drawCMYK(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.CMYK>, _sp:stdgo._internal.image.Point):Void`](<#function-_drawcmyk>)

- [`function _drawCopyOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.RGBA>, _sp:stdgo._internal.image.Point):Void`](<#function-_drawcopyover>)

- [`function _drawCopySrc(_dstPix:stdgo.Slice<stdgo.GoUInt8>, _dstStride:stdgo.GoInt, _r:stdgo._internal.image.Rectangle, _srcPix:stdgo.Slice<stdgo.GoUInt8>, _srcStride:stdgo.GoInt, _sp:stdgo._internal.image.Point, _bytesPerRow:stdgo.GoInt):Void`](<#function-_drawcopysrc>)

- [`function _drawFillOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void`](<#function-_drawfillover>)

- [`function _drawFillSrc(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void`](<#function-_drawfillsrc>)

- [`function _drawGlyphOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Uniform>, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void`](<#function-_drawglyphover>)

- [`function _drawGray(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Gray>, _sp:stdgo._internal.image.Point):Void`](<#function-_drawgray>)

- [`function _drawGrayMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Gray>, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void`](<#function-_drawgraymaskover>)

- [`function _drawNRGBAOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.NRGBA>, _sp:stdgo._internal.image.Point):Void`](<#function-_drawnrgbaover>)

- [`function _drawNRGBASrc(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.NRGBA>, _sp:stdgo._internal.image.Point):Void`](<#function-_drawnrgbasrc>)

- [`function _drawPaletted(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _floydSteinberg:Bool):Void`](<#function-_drawpaletted>)

- [`function _drawRGBA(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _mask:stdgo._internal.image.Image, _mp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void`](<#function-_drawrgba>)

- [`function _drawRGBA64ImageMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.RGBA64Image, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void`](<#function-_drawrgba64imagemaskover>)

- [`function _drawRGBAMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.RGBA>, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void`](<#function-_drawrgbamaskover>)

- [`function _processBackward(_dst:stdgo._internal.image.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point):Bool`](<#function-_processbackward>)

- [`function _sqDiff(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoUInt32`](<#function-_sqdiff>)

- [`function draw(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void`](<#function-draw>)

- [`function drawMask(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _mask:stdgo._internal.image.Image, _mp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void`](<#function-drawmask>)

- [class T\_floydSteinberg](<#class-t_floydsteinberg>)

  - [`function new():Void`](<#t_floydsteinberg-function-new>)

- [typedef Drawer](<#typedef-drawer>)

- [typedef Image](<#typedef-image>)

- [typedef Op](<#typedef-op>)

- [typedef Quantizer](<#typedef-quantizer>)

- [typedef RGBA64Image](<#typedef-rgba64image>)

# Constants


```haxe
import stdgo._internal.image.draw.Draw_src
```


```haxe
final _m:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


```haxe
final over:stdgo._internal.image.draw.Op = ((1 : stdgo._internal.image.draw.Draw_Op.Op))
```


```haxe
final src:stdgo._internal.image.draw.Op = ((1 : stdgo._internal.image.draw.Draw_Op.Op))
```


# Variables


```haxe
import stdgo._internal.image.draw.Draw_src
```


```haxe
var floydSteinberg:stdgo._internal.image.draw.Drawer
```


# Functions


```haxe
import stdgo._internal.image.draw.Draw_src
```


## function \_clamp


```haxe
function _clamp(_i:stdgo.GoInt32):stdgo.GoInt32
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_clip


```haxe
function _clip(_dst:stdgo._internal.image.draw.Image, _r:stdgo.Ref<stdgo._internal.image.Rectangle>, _src:stdgo._internal.image.Image, _sp:stdgo.Ref<stdgo._internal.image.Point>, _mask:stdgo._internal.image.Image, _mp:stdgo.Ref<stdgo._internal.image.Point>):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawCMYK


```haxe
function _drawCMYK(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.CMYK>, _sp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawCopyOver


```haxe
function _drawCopyOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.RGBA>, _sp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawCopySrc


```haxe
function _drawCopySrc(_dstPix:stdgo.Slice<stdgo.GoUInt8>, _dstStride:stdgo.GoInt, _r:stdgo._internal.image.Rectangle, _srcPix:stdgo.Slice<stdgo.GoUInt8>, _srcStride:stdgo.GoInt, _sp:stdgo._internal.image.Point, _bytesPerRow:stdgo.GoInt):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawFillOver


```haxe
function _drawFillOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawFillSrc


```haxe
function _drawFillSrc(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _sr:stdgo.GoUInt32, _sg:stdgo.GoUInt32, _sb:stdgo.GoUInt32, _sa:stdgo.GoUInt32):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawGlyphOver


```haxe
function _drawGlyphOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Uniform>, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawGray


```haxe
function _drawGray(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Gray>, _sp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawGrayMaskOver


```haxe
function _drawGrayMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.Gray>, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawNRGBAOver


```haxe
function _drawNRGBAOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.NRGBA>, _sp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawNRGBASrc


```haxe
function _drawNRGBASrc(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.NRGBA>, _sp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawPaletted


```haxe
function _drawPaletted(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _floydSteinberg:Bool):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawRGBA


```haxe
function _drawRGBA(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _mask:stdgo._internal.image.Image, _mp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawRGBA64ImageMaskOver


```haxe
function _drawRGBA64ImageMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.RGBA64Image, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_drawRGBAMaskOver


```haxe
function _drawRGBAMaskOver(_dst:stdgo.Ref<stdgo._internal.image.RGBA>, _r:stdgo._internal.image.Rectangle, _src:stdgo.Ref<stdgo._internal.image.RGBA>, _sp:stdgo._internal.image.Point, _mask:stdgo.Ref<stdgo._internal.image.Alpha>, _mp:stdgo._internal.image.Point):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_processBackward


```haxe
function _processBackward(_dst:stdgo._internal.image.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point):Bool
```


[\(view code\)](<./Draw_src.hx#L2>)


## function \_sqDiff


```haxe
function _sqDiff(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoUInt32
```


[\(view code\)](<./Draw_src.hx#L2>)


## function draw


```haxe
function draw(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


## function drawMask


```haxe
function drawMask(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point, _mask:stdgo._internal.image.Image, _mp:stdgo._internal.image.Point, _op:stdgo._internal.image.draw.Op):Void
```


[\(view code\)](<./Draw_src.hx#L2>)


# Classes


```haxe
import stdgo._internal.image.draw.*
```


## class T\_floydSteinberg


### T\_floydSteinberg function new


```haxe
function new():Void
```


[\(view code\)](<./Draw_T_floydSteinberg.hx#L3>)


# Typedefs


```haxe
import stdgo._internal.image.draw.*
```


## typedef Drawer


```haxe
typedef Drawer = {
	public function draw(_dst:stdgo._internal.image.draw.Image, _r:stdgo._internal.image.Rectangle, _src:stdgo._internal.image.Image, _sp:stdgo._internal.image.Point):Void;	// Draw aligns r.Min in dst with sp in src and then replaces the rectangle r in dst with the result of drawing src on dst.
};
```


## typedef Image


```haxe
typedef Image = {
	public function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color):Void;
	public function colorModel():stdgo._internal.image.color.Model;	// ColorModel returns the Image's color model.
	public function bounds():stdgo._internal.image.Rectangle;	// Bounds returns the domain for which At can return non-zero color. The bounds do not necessarily contain the point (0, 0).
	public function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color;	// At returns the color of the pixel at (x, y). At(Bounds().Min.X, Bounds().Min.Y) returns the upper-left pixel of the grid. At(Bounds().Max.X-1, Bounds().Max.Y-1) returns the lower-right one.
};
```


## typedef Op


```haxe
typedef Op = stdgo.GoInt;
```


## typedef Quantizer


```haxe
typedef Quantizer = {
	public function quantize(_p:stdgo._internal.image.color.Palette, _m:stdgo._internal.image.Image):stdgo._internal.image.color.Palette;	// Quantize appends up to cap(p) - len(p) colors to p and returns the updated palette suitable for converting m to a paletted image.
};
```


## typedef RGBA64Image


```haxe
typedef RGBA64Image = {
	public function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.RGBA64):Void;
	public function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color):Void;
	public function rgba64at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.RGBA64;	// RGBA64At returns the RGBA64 color of the pixel at (x, y). It is equivalent to calling At(x, y).RGBA() and converting the resulting 32-bit return values to a color.RGBA64, but it can avoid allocations from converting concrete color types to the color.Color interface type.
	public function colorModel():stdgo._internal.image.color.Model;	// ColorModel returns the Image's color model.
	public function bounds():stdgo._internal.image.Rectangle;	// Bounds returns the domain for which At can return non-zero color. The bounds do not necessarily contain the point (0, 0).
	public function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color;	// At returns the color of the pixel at (x, y). At(Bounds().Min.X, Bounds().Min.Y) returns the upper-left pixel of the grid. At(Bounds().Max.X-1, Bounds().Max.Y-1) returns the lower-right one.
};
```


