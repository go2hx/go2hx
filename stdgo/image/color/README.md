# Module: `stdgo.image.color`

[(view library index)](../../stdgo.md)


# Overview



Package color implements a basic color library.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [Variables](<#variables>)

- [`function _alpha16Model(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_alpha16model>)

- [`function _alphaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_alphamodel>)

- [`function _cmykModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_cmykmodel>)

- [`function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-_delta>)

- [`function _eq(_c0:stdgo.image.color.Color, _c1:stdgo.image.color.Color):stdgo.Error`](<#function-_eq>)

- [`function _gray16Model(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_gray16model>)

- [`function _grayModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_graymodel>)

- [`function _nYCbCrAModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_nycbcramodel>)

- [`function _nrgba64Model(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_nrgba64model>)

- [`function _nrgbaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_nrgbamodel>)

- [`function _rgba64Model(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_rgba64model>)

- [`function _rgbaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_rgbamodel>)

- [`function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_sqdiff>)

- [`function _yCbCrModel(_c:stdgo.image.color.Color):stdgo.image.color.Color`](<#function-_ycbcrmodel>)

- [`function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarknycbcratorgba>)

- [`function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrgbtoycbcr>)

- [`function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkycbcrtorgb>)

- [`function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkycbcrtorgba>)

- [`function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}`](<#function-cmyktorgb>)

- [`function modelFunc(_f:()):stdgo.image.color.Model`](<#function-modelfunc>)

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

- [`function testCMYKGray(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcmykgray>)

- [`function testCMYKRoundtrip(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcmykroundtrip>)

- [`function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcmyktorgbconsistency>)

- [`function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnycbcraalpha>)

- [`function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnycbcraycbcr>)

- [`function testPalette(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpalette>)

- [`function testSqDiff(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsqdiff>)

- [`function testYCbCrGray(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testycbcrgray>)

- [`function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testycbcrroundtrip>)

- [`function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testycbcrtorgbconsistency>)

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

  - [`function new(?ycbCr:stdgo.image.color.YCbCr, ?a:stdgo.GoUInt8):Void`](<#nycbcra-function-new>)

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
import stdgo.image.color.Color
```


```haxe
var _sink32:stdgo.GoUInt32
```


```haxe
var _sink8:stdgo.GoUInt8
```


```haxe
var alpha16Model:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var alphaModel:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var black:stdgo.image.color.Gray16
```



Standard colors.  

```haxe
var cmykmodel:stdgo.image.color.Model
```



CMYKModel is the Model for CMYK colors.  

```haxe
var gray16Model:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var grayModel:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var nrgba64model:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var nrgbamodel:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var nycbCrAModel:stdgo.image.color.Model
```



NYCbCrAModel is the Model for non\-alpha\-premultiplied Y'CbCr\-with\-alpha
colors.  

```haxe
var opaque:stdgo.image.color.Alpha16
```



Standard colors.  

```haxe
var rgba64model:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var rgbamodel:stdgo.image.color.Model
```



Models for the standard color types.  

```haxe
var transparent:stdgo.image.color.Alpha16
```



Standard colors.  

```haxe
var white:stdgo.image.color.Gray16
```



Standard colors.  

```haxe
var ycbCrModel:stdgo.image.color.Model
```



YCbCrModel is the Model for Y'CbCr colors.  

# Functions


```haxe
import stdgo.image.color.Color
```


## function \_alpha16Model


```haxe
function _alpha16Model(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L481>)


## function \_alphaModel


```haxe
function _alphaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L467>)


## function \_cmykModel


```haxe
function _cmykModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L693>)


## function \_delta


```haxe
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8
```


[\(view code\)](<./Color.hx#L708>)


## function \_eq


```haxe
function _eq(_c0:stdgo.image.color.Color, _c1:stdgo.image.color.Color):stdgo.Error
```


[\(view code\)](<./Color.hx#L714>)


## function \_gray16Model


```haxe
function _gray16Model(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L510>)


## function \_grayModel


```haxe
function _grayModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L495>)


## function \_nYCbCrAModel


```haxe
function _nYCbCrAModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L641>)


## function \_nrgba64Model


```haxe
function _nrgba64Model(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L444>)


## function \_nrgbaModel


```haxe
function _nrgbaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L421>)


## function \_rgba64Model


```haxe
function _rgba64Model(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L407>)


## function \_rgbaModel


```haxe
function _rgbaModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L393>)


## function \_sqDiff


```haxe
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```



sqDiff returns the squared\-difference of x and y, shifted by 2 so that
adding four of those won't overflow a uint32.  


x and y are both assumed to be in the range \[0, 0xffff\].  

[\(view code\)](<./Color.hx#L531>)


## function \_yCbCrModel


```haxe
function _yCbCrModel(_c:stdgo.image.color.Color):stdgo.image.color.Color
```


[\(view code\)](<./Color.hx#L626>)


## function benchmarkNYCbCrAToRGBA


```haxe
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Color.hx#L1072>)


## function benchmarkRGBToYCbCr


```haxe
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Color.hx#L984>)


## function benchmarkYCbCrToRGB


```haxe
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Color.hx#L943>)


## function benchmarkYCbCrToRGBA


```haxe
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Color.hx#L1025>)


## function cmyktoRGB


```haxe
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```



CMYKToRGB converts a CMYK quadruple to an RGB triple.  

[\(view code\)](<./Color.hx#L686>)


## function modelFunc


```haxe
function modelFunc(_f:()):stdgo.image.color.Model
```



ModelFunc returns a Model that invokes f to implement the conversion.  

[\(view code\)](<./Color.hx#L390>)


## function rgbtoCMYK


```haxe
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_3:stdgo.GoUInt8;
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```



RGBToCMYK converts an RGB triple to a CMYK quadruple.  

[\(view code\)](<./Color.hx#L664>)


## function rgbtoYCbCr


```haxe
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```



RGBToYCbCr converts an RGB triple to a Y'CbCr triple.  

[\(view code\)](<./Color.hx#L580>)


## function testCMYKGray


```haxe
function testCMYKGray(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestCMYKGray tests that CMYK colors are a superset of Gray colors.  

[\(view code\)](<./Color.hx#L916>)


## function testCMYKRoundtrip


```haxe
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
and back to within 1/256 tolerance.  

[\(view code\)](<./Color.hx#L836>)


## function testCMYKToRGBConsistency


```haxe
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestCMYKToRGBConsistency tests that calling the RGBA method \(16 bit color\)
then truncating to 8 bits is equivalent to calling the CMYKToRGB function \(8
bit color\).  

[\(view code\)](<./Color.hx#L874>)


## function testNYCbCrAAlpha


```haxe
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.  

[\(view code\)](<./Color.hx#L799>)


## function testNYCbCrAYCbCr


```haxe
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.  

[\(view code\)](<./Color.hx#L817>)


## function testPalette


```haxe
function testPalette(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L929>)


## function testSqDiff


```haxe
function testSqDiff(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L535>)


## function testYCbCrGray


```haxe
function testYCbCrGray(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.  

[\(view code\)](<./Color.hx#L781>)


## function testYCbCrRoundtrip


```haxe
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
and back to within 2/256 tolerance.  

[\(view code\)](<./Color.hx#L726>)


## function testYCbCrToRGBConsistency


```haxe
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestYCbCrToRGBConsistency tests that calling the RGBA method \(16 bit color\)
then truncating to 8 bits is equivalent to calling the YCbCrToRGB function \(8
bit color\).  

[\(view code\)](<./Color.hx#L754>)


## function ycbCrToRGB


```haxe
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{
	_2:stdgo.GoUInt8;
	_1:stdgo.GoUInt8;
	_0:stdgo.GoUInt8;
}
```



YCbCrToRGB converts a Y'CbCr triple to an RGB triple.  

[\(view code\)](<./Color.hx#L602>)


# Classes


```haxe
import stdgo.image.color.*
```


## class Alpha



Alpha represents an 8\-bit alpha color.  

```haxe
var a:stdgo.GoUInt8
```


### Alpha function new


```haxe
function new(?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L243>)


### Alpha function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1240>)


## class Alpha16



Alpha16 represents a 16\-bit alpha color.  

```haxe
var a:stdgo.GoUInt16
```


### Alpha16 function new


```haxe
function new(?a:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color.hx#L258>)


### Alpha16 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1261>)


## class CMYK



CMYK represents a fully opaque CMYK color, having 8 bits for each of cyan,
magenta, yellow and black.  


It is not associated with any particular color profile.  

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


[\(view code\)](<./Color.hx#L372>)


### CMYK function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1419>)


## class Gray



Gray represents an 8\-bit grayscale color.  

```haxe
var y:stdgo.GoUInt8
```


### Gray function new


```haxe
function new(?y:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L273>)


### Gray function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1281>)


## class Gray16



Gray16 represents a 16\-bit grayscale color.  

```haxe
var y:stdgo.GoUInt16
```


### Gray16 function new


```haxe
function new(?y:stdgo.GoUInt16):Void
```


[\(view code\)](<./Color.hx#L288>)


### Gray16 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1302>)


## class NRGBA



NRGBA represents a non\-alpha\-premultiplied 32\-bit color.  

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


[\(view code\)](<./Color.hx#L203>)


### NRGBA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1178>)


## class NRGBA64



NRGBA64 represents a non\-alpha\-premultiplied 64\-bit color,
having 16 bits for each of red, green, blue and alpha.  

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


[\(view code\)](<./Color.hx#L225>)


### NRGBA64 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1211>)


## class NYCbCrA



NYCbCrA represents a non\-alpha\-premultiplied Y'CbCr\-with\-alpha color, having
8 bits each for one luma, two chroma and one alpha component.  

```haxe
var a:stdgo.GoUInt8
```


```haxe
var ycbCr:stdgo.image.color.YCbCr
```


### NYCbCrA function new


```haxe
function new(?ycbCr:stdgo.image.color.YCbCr, ?a:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L350>)


### NYCbCrA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1379>)


## class RGBA



RGBA represents a traditional 32\-bit alpha\-premultiplied color, having 8
bits for each of red, green, blue and alpha.  


An alpha\-premultiplied color component C has been scaled by alpha \(A\), so
has valid values 0 \<= C \<= A.  

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


[\(view code\)](<./Color.hx#L157>)


### RGBA function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1132>)


## class RGBA64



RGBA64 represents a 64\-bit alpha\-premultiplied color, having 16 bits for
each of red, green, blue and alpha.  


An alpha\-premultiplied color component C has been scaled by alpha \(A\), so
has valid values 0 \<= C \<= A.  

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


[\(view code\)](<./Color.hx#L182>)


### RGBA64 function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1159>)


## class YCbCr



YCbCr represents a fully opaque 24\-bit Y'CbCr color, having 8 bits each for
one luma and two chroma components.  


JPEG, VP8, the MPEG family and other codecs use this color model. Such
codecs often use the terms YUV and Y'CbCr interchangeably, but strictly
speaking, the term YUV applies only to analog video signals, and Y' \(luma\)
is Y \(luminance\) after applying gamma correction.  


Conversion between RGB and Y'CbCr is lossy and there are multiple, slightly
different formulae for converting between the two. This package follows
the JFIF specification at https://www.w3.org/Graphics/JPEG/jfif3.pdf.  

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


[\(view code\)](<./Color.hx#L330>)


### YCbCr function rgba


```haxe
function rgba():{
	_3:stdgo.GoUInt32;
	_2:stdgo.GoUInt32;
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Color.hx#L1340>)


# Typedefs


```haxe
import stdgo.image.color.*
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



Color can convert itself to alpha\-premultiplied 16\-bits per channel RGBA.
The conversion may be lossy.  

## typedef Model


```haxe
typedef Model = {
	public function convert(_c:stdgo.image.color.Color):stdgo.image.color.Color;
};
```



Model can convert any Color to one from its own color model. The conversion
may be lossy.  

## typedef Palette


```haxe
typedef Palette = stdgo.Slice<stdgo.image.color.Color>;
```



Palette is a palette of colors.  

