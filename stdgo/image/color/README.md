# Module: `stdgo.image.color`

[(view library index)](../../stdgo.md)


# Overview



Package color implements a basic color library.  

# Index


- [Variables](<#variables>)

- [`function benchmarkNYCbCrAToRGBA(b:stdgo._internal.testing.B):Void`](<#function-benchmarknycbcratorgba>)

- [`function benchmarkRGBToYCbCr(b:stdgo._internal.testing.B):Void`](<#function-benchmarkrgbtoycbcr>)

- [`function benchmarkYCbCrToRGB(b:stdgo._internal.testing.B):Void`](<#function-benchmarkycbcrtorgb>)

- [`function benchmarkYCbCrToRGBA(b:stdgo._internal.testing.B):Void`](<#function-benchmarkycbcrtorgba>)

- [`function cmyktoRGB(c:UInt, m:UInt, y:UInt, k:UInt):stdgo.Tuple3<UInt, UInt, UInt>`](<#function-cmyktorgb>)

- [`function get_alpha16Model():stdgo._internal.image.color.Model`](<#function-get_alpha16model>)

- [`function get_alphaModel():stdgo._internal.image.color.Model`](<#function-get_alphamodel>)

- [`function get_black():stdgo._internal.image.color.Gray16`](<#function-get_black>)

- [`function get_cmykmodel():stdgo._internal.image.color.Model`](<#function-get_cmykmodel>)

- [`function get_gray16Model():stdgo._internal.image.color.Model`](<#function-get_gray16model>)

- [`function get_grayModel():stdgo._internal.image.color.Model`](<#function-get_graymodel>)

- [`function get_nrgba64model():stdgo._internal.image.color.Model`](<#function-get_nrgba64model>)

- [`function get_nrgbamodel():stdgo._internal.image.color.Model`](<#function-get_nrgbamodel>)

- [`function get_nycbCrAModel():stdgo._internal.image.color.Model`](<#function-get_nycbcramodel>)

- [`function get_opaque():stdgo._internal.image.color.Alpha16`](<#function-get_opaque>)

- [`function get_rgba64model():stdgo._internal.image.color.Model`](<#function-get_rgba64model>)

- [`function get_rgbamodel():stdgo._internal.image.color.Model`](<#function-get_rgbamodel>)

- [`function get_transparent():stdgo._internal.image.color.Alpha16`](<#function-get_transparent>)

- [`function get_white():stdgo._internal.image.color.Gray16`](<#function-get_white>)

- [`function get_ycbCrModel():stdgo._internal.image.color.Model`](<#function-get_ycbcrmodel>)

- [`function modelFunc(f:()):stdgo.image.color.Model`](<#function-modelfunc>)

- [`function rgbtoCMYK(r:UInt, g:UInt, b:UInt):stdgo.Tuple4<UInt, UInt, UInt, UInt>`](<#function-rgbtocmyk>)

- [`function rgbtoYCbCr(r:UInt, g:UInt, b:UInt):stdgo.Tuple3<UInt, UInt, UInt>`](<#function-rgbtoycbcr>)

- [`function set_alpha16Model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_alpha16model>)

- [`function set_alphaModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_alphamodel>)

- [`function set_black(v:stdgo._internal.image.color.Gray16):stdgo._internal.image.color.Gray16`](<#function-set_black>)

- [`function set_cmykmodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_cmykmodel>)

- [`function set_gray16Model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_gray16model>)

- [`function set_grayModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_graymodel>)

- [`function set_nrgba64model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_nrgba64model>)

- [`function set_nrgbamodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_nrgbamodel>)

- [`function set_nycbCrAModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_nycbcramodel>)

- [`function set_opaque(v:stdgo._internal.image.color.Alpha16):stdgo._internal.image.color.Alpha16`](<#function-set_opaque>)

- [`function set_rgba64model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_rgba64model>)

- [`function set_rgbamodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_rgbamodel>)

- [`function set_transparent(v:stdgo._internal.image.color.Alpha16):stdgo._internal.image.color.Alpha16`](<#function-set_transparent>)

- [`function set_white(v:stdgo._internal.image.color.Gray16):stdgo._internal.image.color.Gray16`](<#function-set_white>)

- [`function set_ycbCrModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model`](<#function-set_ycbcrmodel>)

- [`function testCMYKGray(t:stdgo._internal.testing.T_):Void`](<#function-testcmykgray>)

- [`function testCMYKRoundtrip(t:stdgo._internal.testing.T_):Void`](<#function-testcmykroundtrip>)

- [`function testCMYKToRGBConsistency(t:stdgo._internal.testing.T_):Void`](<#function-testcmyktorgbconsistency>)

- [`function testNYCbCrAAlpha(t:stdgo._internal.testing.T_):Void`](<#function-testnycbcraalpha>)

- [`function testNYCbCrAYCbCr(t:stdgo._internal.testing.T_):Void`](<#function-testnycbcraycbcr>)

- [`function testPalette(t:stdgo._internal.testing.T_):Void`](<#function-testpalette>)

- [`function testSqDiff(t:stdgo._internal.testing.T_):Void`](<#function-testsqdiff>)

- [`function testYCbCrGray(t:stdgo._internal.testing.T_):Void`](<#function-testycbcrgray>)

- [`function testYCbCrRoundtrip(t:stdgo._internal.testing.T_):Void`](<#function-testycbcrroundtrip>)

- [`function testYCbCrToRGBConsistency(t:stdgo._internal.testing.T_):Void`](<#function-testycbcrtorgbconsistency>)

- [`function ycbCrToRGB(y:UInt, cb:UInt, cr:UInt):stdgo.Tuple3<UInt, UInt, UInt>`](<#function-ycbcrtorgb>)

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
import stdgo.image.color.Color
```


## function benchmarkNYCbCrAToRGBA


```haxe
function benchmarkNYCbCrAToRGBA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Color.hx#L129>)


## function benchmarkRGBToYCbCr


```haxe
function benchmarkRGBToYCbCr(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Color.hx#L127>)


## function benchmarkYCbCrToRGB


```haxe
function benchmarkYCbCrToRGB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Color.hx#L126>)


## function benchmarkYCbCrToRGBA


```haxe
function benchmarkYCbCrToRGBA(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Color.hx#L128>)


## function cmyktoRGB


```haxe
function cmyktoRGB(c:UInt, m:UInt, y:UInt, k:UInt):stdgo.Tuple3<UInt, UInt, UInt>
```



CMYKToRGB converts a CMYK quadruple to an RGB triple.  

[\(view code\)](<./Color.hx#L86>)


## function get\_alpha16Model


```haxe
function get_alpha16Model():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L22>)


## function get\_alphaModel


```haxe
function get_alphaModel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L19>)


## function get\_black


```haxe
function get_black():stdgo._internal.image.color.Gray16
```


[\(view code\)](<./Color.hx#L31>)


## function get\_cmykmodel


```haxe
function get_cmykmodel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L49>)


## function get\_gray16Model


```haxe
function get_gray16Model():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L28>)


## function get\_grayModel


```haxe
function get_grayModel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L25>)


## function get\_nrgba64model


```haxe
function get_nrgba64model():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L16>)


## function get\_nrgbamodel


```haxe
function get_nrgbamodel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L13>)


## function get\_nycbCrAModel


```haxe
function get_nycbCrAModel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L46>)


## function get\_opaque


```haxe
function get_opaque():stdgo._internal.image.color.Alpha16
```


[\(view code\)](<./Color.hx#L40>)


## function get\_rgba64model


```haxe
function get_rgba64model():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L10>)


## function get\_rgbamodel


```haxe
function get_rgbamodel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L7>)


## function get\_transparent


```haxe
function get_transparent():stdgo._internal.image.color.Alpha16
```


[\(view code\)](<./Color.hx#L37>)


## function get\_white


```haxe
function get_white():stdgo._internal.image.color.Gray16
```


[\(view code\)](<./Color.hx#L34>)


## function get\_ycbCrModel


```haxe
function get_ycbCrModel():stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L43>)


## function modelFunc


```haxe
function modelFunc(f:()):stdgo.image.color.Model
```



ModelFunc returns a Model that invokes f to implement the conversion.  

[\(view code\)](<./Color.hx#L69>)


## function rgbtoCMYK


```haxe
function rgbtoCMYK(r:UInt, g:UInt, b:UInt):stdgo.Tuple4<UInt, UInt, UInt, UInt>
```



RGBToCMYK converts an RGB triple to a CMYK quadruple.  

[\(view code\)](<./Color.hx#L82>)


## function rgbtoYCbCr


```haxe
function rgbtoYCbCr(r:UInt, g:UInt, b:UInt):stdgo.Tuple3<UInt, UInt, UInt>
```



RGBToYCbCr converts an RGB triple to a Y'CbCr triple.  

[\(view code\)](<./Color.hx#L74>)


## function set\_alpha16Model


```haxe
function set_alpha16Model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L23>)


## function set\_alphaModel


```haxe
function set_alphaModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L20>)


## function set\_black


```haxe
function set_black(v:stdgo._internal.image.color.Gray16):stdgo._internal.image.color.Gray16
```


[\(view code\)](<./Color.hx#L32>)


## function set\_cmykmodel


```haxe
function set_cmykmodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L50>)


## function set\_gray16Model


```haxe
function set_gray16Model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L29>)


## function set\_grayModel


```haxe
function set_grayModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L26>)


## function set\_nrgba64model


```haxe
function set_nrgba64model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L17>)


## function set\_nrgbamodel


```haxe
function set_nrgbamodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L14>)


## function set\_nycbCrAModel


```haxe
function set_nycbCrAModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L47>)


## function set\_opaque


```haxe
function set_opaque(v:stdgo._internal.image.color.Alpha16):stdgo._internal.image.color.Alpha16
```


[\(view code\)](<./Color.hx#L41>)


## function set\_rgba64model


```haxe
function set_rgba64model(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L11>)


## function set\_rgbamodel


```haxe
function set_rgbamodel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L8>)


## function set\_transparent


```haxe
function set_transparent(v:stdgo._internal.image.color.Alpha16):stdgo._internal.image.color.Alpha16
```


[\(view code\)](<./Color.hx#L38>)


## function set\_white


```haxe
function set_white(v:stdgo._internal.image.color.Gray16):stdgo._internal.image.color.Gray16
```


[\(view code\)](<./Color.hx#L35>)


## function set\_ycbCrModel


```haxe
function set_ycbCrModel(v:stdgo._internal.image.color.Model):stdgo._internal.image.color.Model
```


[\(view code\)](<./Color.hx#L44>)


## function testCMYKGray


```haxe
function testCMYKGray(t:stdgo._internal.testing.T_):Void
```



TestCMYKGray tests that CMYK colors are a superset of Gray colors.  

[\(view code\)](<./Color.hx#L124>)


## function testCMYKRoundtrip


```haxe
function testCMYKRoundtrip(t:stdgo._internal.testing.T_):Void
```



TestCMYKRoundtrip tests that a subset of RGB space can be converted to CMYK
and back to within 1/256 tolerance.  

[\(view code\)](<./Color.hx#L114>)


## function testCMYKToRGBConsistency


```haxe
function testCMYKToRGBConsistency(t:stdgo._internal.testing.T_):Void
```



TestCMYKToRGBConsistency tests that calling the RGBA method \(16 bit color\)
then truncating to 8 bits is equivalent to calling the CMYKToRGB function \(8
bit color\).  

[\(view code\)](<./Color.hx#L120>)


## function testNYCbCrAAlpha


```haxe
function testNYCbCrAAlpha(t:stdgo._internal.testing.T_):Void
```



TestNYCbCrAAlpha tests that NYCbCrA colors are a superset of Alpha colors.  

[\(view code\)](<./Color.hx#L105>)


## function testNYCbCrAYCbCr


```haxe
function testNYCbCrAYCbCr(t:stdgo._internal.testing.T_):Void
```



TestNYCbCrAYCbCr tests that NYCbCrA colors are a superset of YCbCr colors.  

[\(view code\)](<./Color.hx#L109>)


## function testPalette


```haxe
function testPalette(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Color.hx#L125>)


## function testSqDiff


```haxe
function testSqDiff(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Color.hx#L70>)


## function testYCbCrGray


```haxe
function testYCbCrGray(t:stdgo._internal.testing.T_):Void
```



TestYCbCrGray tests that YCbCr colors are a superset of Gray colors.  

[\(view code\)](<./Color.hx#L101>)


## function testYCbCrRoundtrip


```haxe
function testYCbCrRoundtrip(t:stdgo._internal.testing.T_):Void
```



TestYCbCrRoundtrip tests that a subset of RGB space can be converted to YCbCr
and back to within 2/256 tolerance.  

[\(view code\)](<./Color.hx#L91>)


## function testYCbCrToRGBConsistency


```haxe
function testYCbCrToRGBConsistency(t:stdgo._internal.testing.T_):Void
```



TestYCbCrToRGBConsistency tests that calling the RGBA method \(16 bit color\)
then truncating to 8 bits is equivalent to calling the YCbCrToRGB function \(8
bit color\).  

[\(view code\)](<./Color.hx#L97>)


## function ycbCrToRGB


```haxe
function ycbCrToRGB(y:UInt, cb:UInt, cr:UInt):stdgo.Tuple3<UInt, UInt, UInt>
```



YCbCrToRGB converts a Y'CbCr triple to an RGB triple.  

[\(view code\)](<./Color.hx#L78>)


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


