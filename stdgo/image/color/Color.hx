package stdgo.image.color;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var rgbamodel : Dynamic;
@:invalid var rgba64model : Dynamic;
@:invalid var nrgbamodel : Dynamic;
@:invalid var nrgba64model : Dynamic;
@:invalid var alphaModel : Dynamic;
@:invalid var alpha16Model : Dynamic;
@:invalid var grayModel : Dynamic;
@:invalid var gray16Model : Dynamic;
@:invalid var black : Dynamic;
@:invalid var white : Dynamic;
@:invalid var transparent : Dynamic;
@:invalid var opaque : Dynamic;
@:invalid var ycbCrModel : Dynamic;
@:invalid var nycbCrAModel : Dynamic;
@:invalid var cmykmodel : Dynamic;
@:invalid var _sink8 : Dynamic;
@:invalid var _sink32 : Dynamic;
typedef Color = stdgo._internal.image.color.Color.Color;
typedef Model = stdgo._internal.image.color.Color.Model;
@:invalid typedef RGBA = Dynamic;
@:invalid typedef RGBA64 = Dynamic;
@:invalid typedef NRGBA = Dynamic;
@:invalid typedef NRGBA64 = Dynamic;
@:invalid typedef Alpha = Dynamic;
@:invalid typedef Alpha16 = Dynamic;
@:invalid typedef Gray = Dynamic;
@:invalid typedef Gray16 = Dynamic;
@:invalid typedef T_modelFunc = Dynamic;
@:invalid typedef YCbCr = Dynamic;
@:invalid typedef NYCbCrA = Dynamic;
@:invalid typedef CMYK = Dynamic;
typedef Palette = stdgo._internal.image.color.Color.Palette;
function modelFunc(_f:Color -> Color):Void {}
function _rgbaModel(_c:Color):Void {}
function _rgba64Model(_c:Color):Void {}
function _nrgbaModel(_c:Color):Void {}
function _nrgba64Model(_c:Color):Void {}
function _alphaModel(_c:Color):Void {}
function _alpha16Model(_c:Color):Void {}
function _grayModel(_c:Color):Void {}
function _gray16Model(_c:Color):Void {}
function _sqDiff(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void {}
function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function rgbtoYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void {}
function ycbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):Void {}
function _yCbCrModel(_c:Color):Void {}
function _nYCbCrAModel(_c:Color):Void {}
function rgbtoCMYK(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):Void {}
function cmyktoRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):Void {}
function _cmykModel(_c:Color):Void {}
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):Void {}
function _eq(_c0:Color, _c1:Color):Void {}
function testYCbCrRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testYCbCrGray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCMYKToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkYCbCrToRGB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNYCbCrAToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
@:invalid typedef RGBA_asInterface = Dynamic;
@:invalid typedef RGBA_static_extension = Dynamic;
@:invalid typedef RGBA64_asInterface = Dynamic;
@:invalid typedef RGBA64_static_extension = Dynamic;
@:invalid typedef NRGBA_asInterface = Dynamic;
@:invalid typedef NRGBA_static_extension = Dynamic;
@:invalid typedef NRGBA64_asInterface = Dynamic;
@:invalid typedef NRGBA64_static_extension = Dynamic;
@:invalid typedef Alpha_asInterface = Dynamic;
@:invalid typedef Alpha_static_extension = Dynamic;
@:invalid typedef Alpha16_asInterface = Dynamic;
@:invalid typedef Alpha16_static_extension = Dynamic;
@:invalid typedef Gray_asInterface = Dynamic;
@:invalid typedef Gray_static_extension = Dynamic;
@:invalid typedef Gray16_asInterface = Dynamic;
@:invalid typedef Gray16_static_extension = Dynamic;
@:invalid typedef T_modelFunc_asInterface = Dynamic;
@:invalid typedef T_modelFunc_static_extension = Dynamic;
@:invalid typedef YCbCr_asInterface = Dynamic;
@:invalid typedef YCbCr_static_extension = Dynamic;
@:invalid typedef NYCbCrA_asInterface = Dynamic;
@:invalid typedef NYCbCrA_static_extension = Dynamic;
@:invalid typedef CMYK_asInterface = Dynamic;
@:invalid typedef CMYK_static_extension = Dynamic;
@:invalid typedef Palette_asInterface = Dynamic;
@:invalid typedef Palette_static_extension = Dynamic;
