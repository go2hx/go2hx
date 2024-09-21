# Module: `stdgo._internal.image.color`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function modelFunc(_f:()):stdgo._internal.image.color.Model`](<#function-modelfunc>)

- [`function _rgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_rgbamodel>)

- [`function _rgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_rgba64model>)

- [`function _nrgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nrgbamodel>)

- [`function _nrgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nrgba64model>)

- [`function _alphaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_alphamodel>)

- [`function _alpha16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_alpha16model>)

- [`function _grayModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_graymodel>)

- [`function _gray16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_gray16model>)

- [`function _yCbCrModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_ycbcrmodel>)

- [`function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-rgbtoycbcr>)

- [`function _nYCbCrAModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nycbcramodel>)

- [`function _cmykModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_cmykmodel>)

- [`function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_3:stdgo.GoUInt8;
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-rgbtocmyk>)

- [`function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_delta>)

- [`function _eq(_c0:stdgo._internal.image.color.Color, _c1:stdgo._internal.image.color.Color):stdgo.Error`](<#function-_eq>)

- [`function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_sqdiff>)

- [`function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknycbcratorgba>)

- [`function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrgbtoycbcr>)

- [`function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgb>)

- [`function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgba>)

- [`function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-cmyktorgb>)

- [`function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcmykgray>)

- [`function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcmykroundtrip>)

- [`function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcmyktorgbconsistency>)

- [`function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnycbcraalpha>)

- [`function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnycbcraycbcr>)

- [`function testPalette(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testpalette>)

- [`function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsqdiff>)

- [`function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testycbcrgray>)

- [`function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testycbcrroundtrip>)

- [`function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testycbcrtorgbconsistency>)

- [`function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-ycbcrtorgb>)

- [class Alpha](<#class-alpha>)

  - [`function new(?a:stdgo.GoUInt8):Void`](<#alpha-function-new>)

- [class Alpha16](<#class-alpha16>)

  - [`function new(?a:stdgo.GoUInt16):Void`](<#alpha16-function-new>)

- [class CMYK](<#class-cmyk>)

  - [`function new(?c:stdgo.GoUInt8, ?m:stdgo.GoUInt8, ?y:stdgo.GoUInt8, ?k:stdgo.GoUInt8):Void`](<#cmyk-function-new>)

- [class Gray](<#class-gray>)

  - [`function new(?y:stdgo.GoUInt8):Void`](<#gray-function-new>)

- [class Gray16](<#class-gray16>)

  - [`function new(?y:stdgo.GoUInt16):Void`](<#gray16-function-new>)

- [class NRGBA](<#class-nrgba>)

  - [`function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void`](<#nrgba-function-new>)

- [class NRGBA64](<#class-nrgba64>)

  - [`function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void`](<#nrgba64-function-new>)

- [class NYCbCrA](<#class-nycbcra>)

  - [`function new(?ycbCr:stdgo._internal.image.color.YCbCr, ?a:stdgo.GoUInt8):Void`](<#nycbcra-function-new>)

- [class RGBA](<#class-rgba>)

  - [`function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void`](<#rgba-function-new>)

- [class RGBA64](<#class-rgba64>)

  - [`function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void`](<#rgba64-function-new>)

- [class T\_modelFunc](<#class-t_modelfunc>)

  - [`function _f()`](<#t_modelfunc-function-_f>)

  - [`function new(?_f:()):Void`](<#t_modelfunc-function-new>)

- [class YCbCr](<#class-ycbcr>)

  - [`function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoUInt8, ?cr:stdgo.GoUInt8):Void`](<#ycbcr-function-new>)

- [typedef Color](<#typedef-color>)

- [typedef Model](<#typedef-model>)

- [typedef Palette](<#typedef-palette>)

# Variables


```haxe
import stdgo._internal.image.color.Color_ycbCrToRGB
```


```haxe
var rgbamodel:stdgo._internal.image.color.Model
```


```haxe
var rgba64model:stdgo._internal.image.color.Model
```


```haxe
var nrgbamodel:stdgo._internal.image.color.Model
```


```haxe
var nrgba64model:stdgo._internal.image.color.Model
```


```haxe
var alphaModel:stdgo._internal.image.color.Model
```


```haxe
var alpha16Model:stdgo._internal.image.color.Model
```


```haxe
var grayModel:stdgo._internal.image.color.Model
```


```haxe
var gray16Model:stdgo._internal.image.color.Model
```


```haxe
var black:stdgo._internal.image.color.Gray16
```


```haxe
var white:stdgo._internal.image.color.Gray16
```


```haxe
var transparent:stdgo._internal.image.color.Alpha16
```


```haxe
var opaque:stdgo._internal.image.color.Alpha16
```


```haxe
var ycbCrModel:stdgo._internal.image.color.Model
```


```haxe
var nycbCrAModel:stdgo._internal.image.color.Model
```


```haxe
var cmykmodel:stdgo._internal.image.color.Model
```


```haxe
var _sink32:stdgo.GoUInt32
```


```haxe
var _sink8:stdgo.GoUInt8
```


# Functions


```haxe
import stdgo._internal.image.color.Color_ycbCrToRGB
```


## function modelFunc


```haxe
function modelFunc(_f:()):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_rgbaModel


```haxe
function _rgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_rgba64Model


```haxe
function _rgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_nrgbaModel


```haxe
function _nrgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_nrgba64Model


```haxe
function _nrgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_alphaModel


```haxe
function _alphaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_alpha16Model


```haxe
function _alpha16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_grayModel


```haxe
function _grayModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_gray16Model


```haxe
function _gray16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_yCbCrModel


```haxe
function _yCbCrModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function rgbtoYCbCr


```haxe
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_nYCbCrAModel


```haxe
function _nYCbCrAModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_cmykModel


```haxe
function _cmykModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function rgbtoCMYK


```haxe
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_3:stdgo.GoUInt8;
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_delta


```haxe
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_eq


```haxe
function _eq(_c0:stdgo._internal.image.color.Color, _c1:stdgo._internal.image.color.Color):stdgo.Error
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function \_sqDiff


```haxe
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function benchmarkNYCbCrAToRGBA


```haxe
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function benchmarkRGBToYCbCr


```haxe
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function benchmarkYCbCrToRGB


```haxe
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function benchmarkYCbCrToRGBA


```haxe
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function cmyktoRGB


```haxe
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testCMYKGray


```haxe
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testCMYKRoundtrip


```haxe
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testCMYKToRGBConsistency


```haxe
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testNYCbCrAAlpha


```haxe
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testNYCbCrAYCbCr


```haxe
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testPalette


```haxe
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testSqDiff


```haxe
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testYCbCrGray


```haxe
function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testYCbCrRoundtrip


```haxe
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function testYCbCrToRGBConsistency


```haxe
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


## function ycbCrToRGB


```haxe
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color_ycbCrToRGB.hx#L2>)


# Classes


```haxe
import stdgo._internal.image.color.*
```


## class Alpha


```haxe
var a:stdgo.GoUInt8
```


### Alpha function new


```haxe
function new(?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_Alpha.hx#L4>)


## class Alpha16


```haxe
var a:stdgo.GoUInt16
```


### Alpha16 function new


```haxe
function new(?a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color_Alpha16.hx#L4>)


## class CMYK


```haxe
var c:stdgo.GoUInt8
```


```haxe
var k:stdgo.GoUInt8
```


```haxe
var m:stdgo.GoUInt8
```


```haxe
var y:stdgo.GoUInt8
```


### CMYK function new


```haxe
function new(?c:stdgo.GoUInt8, ?m:stdgo.GoUInt8, ?y:stdgo.GoUInt8, ?k:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_CMYK.hx#L7>)


## class Gray


```haxe
var y:stdgo.GoUInt8
```


### Gray function new


```haxe
function new(?y:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_Gray.hx#L4>)


## class Gray16


```haxe
var y:stdgo.GoUInt16
```


### Gray16 function new


```haxe
function new(?y:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color_Gray16.hx#L4>)


## class NRGBA


```haxe
var a:stdgo.GoUInt8
```


```haxe
var b:stdgo.GoUInt8
```


```haxe
var g:stdgo.GoUInt8
```


```haxe
var r:stdgo.GoUInt8
```


### NRGBA function new


```haxe
function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_NRGBA.hx#L7>)


## class NRGBA64


```haxe
var a:stdgo.GoUInt16
```


```haxe
var b:stdgo.GoUInt16
```


```haxe
var g:stdgo.GoUInt16
```


```haxe
var r:stdgo.GoUInt16
```


### NRGBA64 function new


```haxe
function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color_NRGBA64.hx#L7>)


## class NYCbCrA


```haxe
var a:stdgo.GoUInt8
```


```haxe
var ycbCr:stdgo._internal.image.color.YCbCr
```


### NYCbCrA function new


```haxe
function new(?ycbCr:stdgo._internal.image.color.YCbCr, ?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_NYCbCrA.hx#L6>)


## class RGBA


```haxe
var a:stdgo.GoUInt8
```


```haxe
var b:stdgo.GoUInt8
```


```haxe
var g:stdgo.GoUInt8
```


```haxe
var r:stdgo.GoUInt8
```


### RGBA function new


```haxe
function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_RGBA.hx#L7>)


## class RGBA64


```haxe
var a:stdgo.GoUInt16
```


```haxe
var b:stdgo.GoUInt16
```


```haxe
var g:stdgo.GoUInt16
```


```haxe
var r:stdgo.GoUInt16
```


### RGBA64 function new


```haxe
function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color_RGBA64.hx#L7>)


## class T\_modelFunc


### T\_modelFunc function \_f


```haxe
function _f()
```


### T\_modelFunc function new


```haxe
function new(?_f:()):Void
```


[\(view code\)](<./Color_T_modelFunc.hx#L4>)


## class YCbCr


```haxe
var cb:stdgo.GoUInt8
```


```haxe
var cr:stdgo.GoUInt8
```


```haxe
var y:stdgo.GoUInt8
```


### YCbCr function new


```haxe
function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoUInt8, ?cr:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color_YCbCr.hx#L6>)


# Typedefs


```haxe
import stdgo._internal.image.color.*
```


## typedef Color


```haxe
typedef Color = {
	public function rgba():{
		_3:stdgo.GoUInt32;
		_2:stdgo.GoUInt32;
		_1:stdgo.GoUInt32;
		_0:stdgo.GoUInt32;
	};	// RGBA returns the alpha-premultiplied red, green, blue and alpha values for the color. Each value ranges within [0, 0xffff], but is represented by a uint32 so that multiplying by a blend factor up to 0xffff will not overflow. An alpha-premultiplied color component c has been scaled by alpha (a), so has valid values 0 <= c <= a.
};
```


## typedef Model


```haxe
typedef Model = {
	public function convert(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color;
};
```


## typedef Palette


```haxe
typedef Palette = stdgo.Slice<stdgo._internal.image.color.Color>;
```


