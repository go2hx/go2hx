# Module: `stdgo._internal.image.color`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _alpha16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_alpha16model>)

- [`function _alphaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_alphamodel>)

- [`function _cmykModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_cmykmodel>)

- [`function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_delta>)

- [`function _eq(_c0:stdgo._internal.image.color.Color, _c1:stdgo._internal.image.color.Color):stdgo.Error`](<#function-_eq>)

- [`function _gray16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_gray16model>)

- [`function _grayModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_graymodel>)

- [`function _nYCbCrAModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nycbcramodel>)

- [`function _nrgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nrgba64model>)

- [`function _nrgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_nrgbamodel>)

- [`function _rgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_rgba64model>)

- [`function _rgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_rgbamodel>)

- [`function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_sqdiff>)

- [`function _yCbCrModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color`](<#function-_ycbcrmodel>)

- [`function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknycbcratorgba>)

- [`function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrgbtoycbcr>)

- [`function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgb>)

- [`function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgba>)

- [`function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-cmyktorgb>)

- [`function modelFunc(_f:()):stdgo._internal.image.color.Model`](<#function-modelfunc>)

- [`function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_3:stdgo.GoUInt8;
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-rgbtocmyk>)

- [`function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-rgbtoycbcr>)

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

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#alpha-function-rgba>)

- [class Alpha16](<#class-alpha16>)

  - [`function new(?a:stdgo.GoUInt16):Void`](<#alpha16-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#alpha16-function-rgba>)

- [class CMYK](<#class-cmyk>)

  - [`function new(?c:stdgo.GoUInt8, ?m:stdgo.GoUInt8, ?y:stdgo.GoUInt8, ?k:stdgo.GoUInt8):Void`](<#cmyk-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#cmyk-function-rgba>)

- [class Gray](<#class-gray>)

  - [`function new(?y:stdgo.GoUInt8):Void`](<#gray-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#gray-function-rgba>)

- [class Gray16](<#class-gray16>)

  - [`function new(?y:stdgo.GoUInt16):Void`](<#gray16-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#gray16-function-rgba>)

- [class NRGBA](<#class-nrgba>)

  - [`function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void`](<#nrgba-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#nrgba-function-rgba>)

- [class NRGBA64](<#class-nrgba64>)

  - [`function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void`](<#nrgba64-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#nrgba64-function-rgba>)

- [class NYCbCrA](<#class-nycbcra>)

  - [`function new(?ycbCr:stdgo._internal.image.color.YCbCr, ?a:stdgo.GoUInt8):Void`](<#nycbcra-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#nycbcra-function-rgba>)

- [class RGBA](<#class-rgba>)

  - [`function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8, ?a:stdgo.GoUInt8):Void`](<#rgba-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#rgba-function-rgba>)

- [class RGBA64](<#class-rgba64>)

  - [`function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16):Void`](<#rgba64-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#rgba64-function-rgba>)

- [class YCbCr](<#class-ycbcr>)

  - [`function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoUInt8, ?cr:stdgo.GoUInt8):Void`](<#ycbcr-function-new>)

  - [`function rgba():{ _3:stdgo.GoUInt32; _2:stdgo.GoUInt32; _1:stdgo.GoUInt32; _0:stdgo.GoUInt32;}`](<#ycbcr-function-rgba>)

- [typedef Color](<#typedef-color>)

- [typedef Model](<#typedef-model>)

- [typedef Palette](<#typedef-palette>)

# Variables


```haxe
import stdgo._internal.image.color.Color
```


```haxe
var _sink32:stdgo.GoUInt32
```


```haxe
var _sink8:stdgo.GoUInt8
```


```haxe
var alpha16Model:stdgo._internal.image.color.Model
```


```haxe
var alphaModel:stdgo._internal.image.color.Model
```


```haxe
var black:stdgo._internal.image.color.Gray16
```


```haxe
var cmykmodel:stdgo._internal.image.color.Model
```


```haxe
var gray16Model:stdgo._internal.image.color.Model
```


```haxe
var grayModel:stdgo._internal.image.color.Model
```


```haxe
var nrgba64model:stdgo._internal.image.color.Model
```


```haxe
var nrgbamodel:stdgo._internal.image.color.Model
```


```haxe
var nycbCrAModel:stdgo._internal.image.color.Model
```


```haxe
var opaque:stdgo._internal.image.color.Alpha16
```


```haxe
var rgba64model:stdgo._internal.image.color.Model
```


```haxe
var rgbamodel:stdgo._internal.image.color.Model
```


```haxe
var transparent:stdgo._internal.image.color.Alpha16
```


```haxe
var white:stdgo._internal.image.color.Gray16
```


```haxe
var ycbCrModel:stdgo._internal.image.color.Model
```


# Functions


```haxe
import stdgo._internal.image.color.Color
```


## function \_alpha16Model


```haxe
function _alpha16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L291>)


## function \_alphaModel


```haxe
function _alphaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L277>)


## function \_cmykModel


```haxe
function _cmykModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L485>)


## function \_delta


```haxe
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Color.hx#L500>)


## function \_eq


```haxe
function _eq(_c0:stdgo._internal.image.color.Color, _c1:stdgo._internal.image.color.Color):stdgo.Error
```


[\(view code\)](<./Color.hx#L506>)


## function \_gray16Model


```haxe
function _gray16Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L320>)


## function \_grayModel


```haxe
function _grayModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L305>)


## function \_nYCbCrAModel


```haxe
function _nYCbCrAModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L439>)


## function \_nrgba64Model


```haxe
function _nrgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L254>)


## function \_nrgbaModel


```haxe
function _nrgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L231>)


## function \_rgba64Model


```haxe
function _rgba64Model(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L217>)


## function \_rgbaModel


```haxe
function _rgbaModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L203>)


## function \_sqDiff


```haxe
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Color.hx#L335>)


## function \_yCbCrModel


```haxe
function _yCbCrModel(_c:stdgo._internal.image.color.Color):stdgo._internal.image.color.Color
```


[\(view code\)](<./Color.hx#L424>)


## function benchmarkNYCbCrAToRGBA


```haxe
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L834>)


## function benchmarkRGBToYCbCr


```haxe
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L746>)


## function benchmarkYCbCrToRGB


```haxe
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L705>)


## function benchmarkYCbCrToRGBA


```haxe
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L787>)


## function cmyktoRGB


```haxe
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color.hx#L478>)


## function modelFunc


```haxe
function modelFunc(_f:()):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L200>)


## function rgbtoCMYK


```haxe
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_3:stdgo.GoUInt8;
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color.hx#L459>)


## function rgbtoYCbCr


```haxe
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color.hx#L381>)


## function testCMYKGray


```haxe
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L678>)


## function testCMYKRoundtrip


```haxe
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L606>)


## function testCMYKToRGBConsistency


```haxe
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L639>)


## function testNYCbCrAAlpha


```haxe
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L576>)


## function testNYCbCrAYCbCr


```haxe
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L591>)


## function testPalette


```haxe
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L691>)


## function testSqDiff


```haxe
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L339>)


## function testYCbCrGray


```haxe
function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L561>)


## function testYCbCrRoundtrip


```haxe
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L514>)


## function testYCbCrToRGBConsistency


```haxe
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L537>)


## function ycbCrToRGB


```haxe
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Color.hx#L400>)


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


[\(view code\)](<./Color.hx#L108>)


### Alpha function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1002>)


## class Alpha16


```haxe
var a:stdgo.GoUInt16
```


### Alpha16 function new


```haxe
function new(?a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color.hx#L118>)


### Alpha16 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1023>)


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


[\(view code\)](<./Color.hx#L188>)


### CMYK function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1181>)


## class Gray


```haxe
var y:stdgo.GoUInt8
```


### Gray function new


```haxe
function new(?y:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L128>)


### Gray function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1043>)


## class Gray16


```haxe
var y:stdgo.GoUInt16
```


### Gray16 function new


```haxe
function new(?y:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color.hx#L138>)


### Gray16 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1064>)


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


[\(view code\)](<./Color.hx#L79>)


### NRGBA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L940>)


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


[\(view code\)](<./Color.hx#L95>)


### NRGBA64 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L973>)


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


[\(view code\)](<./Color.hx#L174>)


### NYCbCrA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1141>)


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


[\(view code\)](<./Color.hx#L47>)


### RGBA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L894>)


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


[\(view code\)](<./Color.hx#L63>)


### RGBA64 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L921>)


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


[\(view code\)](<./Color.hx#L160>)


### YCbCr function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1102>)


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
	};	//  RGBA returns the alpha-premultiplied red, green, blue and alpha values for the color. Each value ranges within [0, 0xffff], but is represented by a uint32 so that multiplying by a blend factor up to 0xffff will not overflow. An alpha-premultiplied color component c has been scaled by alpha (a), so has valid values 0 <= c <= a.
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


