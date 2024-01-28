# Module: `stdgo.image.color`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,413

# Index


- [Variables](<#variables>)

- [`function _alpha16Model(_c:stdgo.image.color.Color):Void`](<#function-_alpha16model>)

- [`function _alphaModel(_c:stdgo.image.color.Color):Void`](<#function-_alphamodel>)

- [`function _cmykModel(_c:stdgo.image.color.Color):Void`](<#function-_cmykmodel>)

- [`function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):Void`](<#function-_delta>)

- [`function _eq(_c0:stdgo.image.color.Color, _c1:stdgo.image.color.Color):Void`](<#function-_eq>)

- [`function _gray16Model(_c:stdgo.image.color.Color):Void`](<#function-_gray16model>)

- [`function _grayModel(_c:stdgo.image.color.Color):Void`](<#function-_graymodel>)

- [`function _nYCbCrAModel(_c:stdgo.image.color.Color):Void`](<#function-_nycbcramodel>)

- [`function _nrgba64Model(_c:stdgo.image.color.Color):Void`](<#function-_nrgba64model>)

- [`function _nrgbaModel(_c:stdgo.image.color.Color):Void`](<#function-_nrgbamodel>)

- [`function _rgba64Model(_c:stdgo.image.color.Color):Void`](<#function-_rgba64model>)

- [`function _rgbaModel(_c:stdgo.image.color.Color):Void`](<#function-_rgbamodel>)

- [`function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void`](<#function-_sqdiff>)

- [`function _yCbCrModel(_c:stdgo.image.color.Color):Void`](<#function-_ycbcrmodel>)

- [`function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknycbcratorgba>)

- [`function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrgbtoycbcr>)

- [`function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgb>)

- [`function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkycbcrtorgba>)

- [`function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):Void`](<#function-cmyktorgb>)

- [`function modelFunc(_f:()):Void`](<#function-modelfunc>)

- [`function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void`](<#function-rgbtocmyk>)

- [`function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void`](<#function-rgbtoycbcr>)

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

- [`function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):Void`](<#function-ycbcrtorgb>)

- [typedef Alpha](<#typedef-alpha>)

- [typedef Alpha16](<#typedef-alpha16>)

- [typedef Alpha16\_asInterface](<#typedef-alpha16_asinterface>)

- [typedef Alpha16\_static\_extension](<#typedef-alpha16_static_extension>)

- [typedef Alpha\_asInterface](<#typedef-alpha_asinterface>)

- [typedef Alpha\_static\_extension](<#typedef-alpha_static_extension>)

- [typedef CMYK](<#typedef-cmyk>)

- [typedef CMYK\_asInterface](<#typedef-cmyk_asinterface>)

- [typedef CMYK\_static\_extension](<#typedef-cmyk_static_extension>)

- [typedef Color](<#typedef-color>)

- [typedef Gray](<#typedef-gray>)

- [typedef Gray16](<#typedef-gray16>)

- [typedef Gray16\_asInterface](<#typedef-gray16_asinterface>)

- [typedef Gray16\_static\_extension](<#typedef-gray16_static_extension>)

- [typedef Gray\_asInterface](<#typedef-gray_asinterface>)

- [typedef Gray\_static\_extension](<#typedef-gray_static_extension>)

- [typedef Model](<#typedef-model>)

- [typedef NRGBA](<#typedef-nrgba>)

- [typedef NRGBA64](<#typedef-nrgba64>)

- [typedef NRGBA64\_asInterface](<#typedef-nrgba64_asinterface>)

- [typedef NRGBA64\_static\_extension](<#typedef-nrgba64_static_extension>)

- [typedef NRGBA\_asInterface](<#typedef-nrgba_asinterface>)

- [typedef NRGBA\_static\_extension](<#typedef-nrgba_static_extension>)

- [typedef NYCbCrA](<#typedef-nycbcra>)

- [typedef NYCbCrA\_asInterface](<#typedef-nycbcra_asinterface>)

- [typedef NYCbCrA\_static\_extension](<#typedef-nycbcra_static_extension>)

- [typedef Palette](<#typedef-palette>)

- [typedef Palette\_asInterface](<#typedef-palette_asinterface>)

- [typedef Palette\_static\_extension](<#typedef-palette_static_extension>)

- [typedef RGBA](<#typedef-rgba>)

- [typedef RGBA64](<#typedef-rgba64>)

- [typedef RGBA64\_asInterface](<#typedef-rgba64_asinterface>)

- [typedef RGBA64\_static\_extension](<#typedef-rgba64_static_extension>)

- [typedef RGBA\_asInterface](<#typedef-rgba_asinterface>)

- [typedef RGBA\_static\_extension](<#typedef-rgba_static_extension>)

- [typedef T\_modelFunc](<#typedef-t_modelfunc>)

- [typedef T\_modelFunc\_asInterface](<#typedef-t_modelfunc_asinterface>)

- [typedef T\_modelFunc\_static\_extension](<#typedef-t_modelfunc_static_extension>)

- [typedef YCbCr](<#typedef-ycbcr>)

- [typedef YCbCr\_asInterface](<#typedef-ycbcr_asinterface>)

- [typedef YCbCr\_static\_extension](<#typedef-ycbcr_static_extension>)

# Variables


```haxe
import stdgo.image.color.Color
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _sink32:Dynamic
```


```haxe
var _sink8:Dynamic
```


```haxe
var alpha16Model:Dynamic
```


```haxe
var alphaModel:Dynamic
```


```haxe
var black:Dynamic
```


```haxe
var cmykmodel:Dynamic
```


```haxe
var gray16Model:Dynamic
```


```haxe
var grayModel:Dynamic
```


```haxe
var nrgba64model:Dynamic
```


```haxe
var nrgbamodel:Dynamic
```


```haxe
var nycbCrAModel:Dynamic
```


```haxe
var opaque:Dynamic
```


```haxe
var rgba64model:Dynamic
```


```haxe
var rgbamodel:Dynamic
```


```haxe
var transparent:Dynamic
```


```haxe
var white:Dynamic
```


```haxe
var ycbCrModel:Dynamic
```


# Functions


```haxe
import stdgo.image.color.Color
```


## function \_alpha16Model


```haxe
function _alpha16Model(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L41>)


## function \_alphaModel


```haxe
function _alphaModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L40>)


## function \_cmykModel


```haxe
function _cmykModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L52>)


## function \_delta


```haxe
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L53>)


## function \_eq


```haxe
function _eq(_c0:stdgo.image.color.Color, _c1:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L54>)


## function \_gray16Model


```haxe
function _gray16Model(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L43>)


## function \_grayModel


```haxe
function _grayModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L42>)


## function \_nYCbCrAModel


```haxe
function _nYCbCrAModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L49>)


## function \_nrgba64Model


```haxe
function _nrgba64Model(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L39>)


## function \_nrgbaModel


```haxe
function _nrgbaModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L38>)


## function \_rgba64Model


```haxe
function _rgba64Model(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L37>)


## function \_rgbaModel


```haxe
function _rgbaModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L36>)


## function \_sqDiff


```haxe
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void
```


[\(view code\)](<./Color.hx#L44>)


## function \_yCbCrModel


```haxe
function _yCbCrModel(_c:stdgo.image.color.Color):Void
```


[\(view code\)](<./Color.hx#L48>)


## function benchmarkNYCbCrAToRGBA


```haxe
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L67>)


## function benchmarkRGBToYCbCr


```haxe
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L65>)


## function benchmarkYCbCrToRGB


```haxe
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L64>)


## function benchmarkYCbCrToRGBA


```haxe
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Color.hx#L66>)


## function cmyktoRGB


```haxe
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L51>)


## function modelFunc


```haxe
function modelFunc(_f:()):Void
```


[\(view code\)](<./Color.hx#L35>)


## function rgbtoCMYK


```haxe
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L50>)


## function rgbtoYCbCr


```haxe
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L46>)


## function testCMYKGray


```haxe
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L62>)


## function testCMYKRoundtrip


```haxe
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L60>)


## function testCMYKToRGBConsistency


```haxe
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L61>)


## function testNYCbCrAAlpha


```haxe
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L58>)


## function testNYCbCrAYCbCr


```haxe
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L59>)


## function testPalette


```haxe
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L63>)


## function testSqDiff


```haxe
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L45>)


## function testYCbCrGray


```haxe
function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L57>)


## function testYCbCrRoundtrip


```haxe
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L55>)


## function testYCbCrToRGBConsistency


```haxe
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Color.hx#L56>)


## function ycbCrToRGB


```haxe
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):Void
```


[\(view code\)](<./Color.hx#L47>)


# Typedefs


```haxe
import stdgo.image.color.*
```


## typedef Alpha


```haxe
typedef Alpha = Dynamic;
```


## typedef Alpha16


```haxe
typedef Alpha16 = Dynamic;
```


## typedef Alpha16\_asInterface


```haxe
typedef Alpha16_asInterface = Dynamic;
```


## typedef Alpha16\_static\_extension


```haxe
typedef Alpha16_static_extension = Dynamic;
```


## typedef Alpha\_asInterface


```haxe
typedef Alpha_asInterface = Dynamic;
```


## typedef Alpha\_static\_extension


```haxe
typedef Alpha_static_extension = Dynamic;
```


## typedef CMYK


```haxe
typedef CMYK = Dynamic;
```


## typedef CMYK\_asInterface


```haxe
typedef CMYK_asInterface = Dynamic;
```


## typedef CMYK\_static\_extension


```haxe
typedef CMYK_static_extension = Dynamic;
```


## typedef Color


```haxe
typedef Color = stdgo._internal.image.color.Color;
```


## typedef Gray


```haxe
typedef Gray = Dynamic;
```


## typedef Gray16


```haxe
typedef Gray16 = Dynamic;
```


## typedef Gray16\_asInterface


```haxe
typedef Gray16_asInterface = Dynamic;
```


## typedef Gray16\_static\_extension


```haxe
typedef Gray16_static_extension = Dynamic;
```


## typedef Gray\_asInterface


```haxe
typedef Gray_asInterface = Dynamic;
```


## typedef Gray\_static\_extension


```haxe
typedef Gray_static_extension = Dynamic;
```


## typedef Model


```haxe
typedef Model = stdgo._internal.image.color.Model;
```


## typedef NRGBA


```haxe
typedef NRGBA = Dynamic;
```


## typedef NRGBA64


```haxe
typedef NRGBA64 = Dynamic;
```


## typedef NRGBA64\_asInterface


```haxe
typedef NRGBA64_asInterface = Dynamic;
```


## typedef NRGBA64\_static\_extension


```haxe
typedef NRGBA64_static_extension = Dynamic;
```


## typedef NRGBA\_asInterface


```haxe
typedef NRGBA_asInterface = Dynamic;
```


## typedef NRGBA\_static\_extension


```haxe
typedef NRGBA_static_extension = Dynamic;
```


## typedef NYCbCrA


```haxe
typedef NYCbCrA = Dynamic;
```


## typedef NYCbCrA\_asInterface


```haxe
typedef NYCbCrA_asInterface = Dynamic;
```


## typedef NYCbCrA\_static\_extension


```haxe
typedef NYCbCrA_static_extension = Dynamic;
```


## typedef Palette


```haxe
typedef Palette = stdgo._internal.image.color.Palette;
```


## typedef Palette\_asInterface


```haxe
typedef Palette_asInterface = Dynamic;
```


## typedef Palette\_static\_extension


```haxe
typedef Palette_static_extension = Dynamic;
```


## typedef RGBA


```haxe
typedef RGBA = Dynamic;
```


## typedef RGBA64


```haxe
typedef RGBA64 = Dynamic;
```


## typedef RGBA64\_asInterface


```haxe
typedef RGBA64_asInterface = Dynamic;
```


## typedef RGBA64\_static\_extension


```haxe
typedef RGBA64_static_extension = Dynamic;
```


## typedef RGBA\_asInterface


```haxe
typedef RGBA_asInterface = Dynamic;
```


## typedef RGBA\_static\_extension


```haxe
typedef RGBA_static_extension = Dynamic;
```


## typedef T\_modelFunc


```haxe
typedef T_modelFunc = Dynamic;
```


## typedef T\_modelFunc\_asInterface


```haxe
typedef T_modelFunc_asInterface = Dynamic;
```


## typedef T\_modelFunc\_static\_extension


```haxe
typedef T_modelFunc_static_extension = Dynamic;
```


## typedef YCbCr


```haxe
typedef YCbCr = Dynamic;
```


## typedef YCbCr\_asInterface


```haxe
typedef YCbCr_asInterface = Dynamic;
```


## typedef YCbCr\_static\_extension


```haxe
typedef YCbCr_static_extension = Dynamic;
```


