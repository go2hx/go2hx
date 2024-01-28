package stdgo.image;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errFormat : Dynamic;
@:invalid var black : Dynamic;
@:invalid var white : Dynamic;
@:invalid var transparent : Dynamic;
@:invalid var opaque : Dynamic;
@:invalid var _testImages : Dynamic;
@:invalid var _formatsMu : Dynamic;
@:invalid var _atomicFormats : Dynamic;
@:invalid var zp : Dynamic;
@:invalid var zr : Dynamic;
@:invalid var ycbCrSubsampleRatio444 : Dynamic;
@:invalid var ycbCrSubsampleRatio422 : Dynamic;
@:invalid var ycbCrSubsampleRatio420 : Dynamic;
@:invalid var ycbCrSubsampleRatio440 : Dynamic;
@:invalid var ycbCrSubsampleRatio411 : Dynamic;
@:invalid var ycbCrSubsampleRatio410 : Dynamic;
typedef T_reader = stdgo._internal.image.Image.T_reader;
typedef Image = stdgo._internal.image.Image.Image;
typedef RGBA64Image = stdgo._internal.image.Image.RGBA64Image;
typedef PalettedImage = stdgo._internal.image.Image.PalettedImage;
typedef T_image = stdgo._internal.image.Image.T_image;
typedef T__interface_0 = stdgo._internal.image.Image.T__interface_0;
@:invalid typedef T_format = Dynamic;
@:invalid typedef Point = Dynamic;
@:invalid typedef Rectangle = Dynamic;
@:invalid typedef Config = Dynamic;
@:invalid typedef RGBA = Dynamic;
@:invalid typedef RGBA64 = Dynamic;
@:invalid typedef NRGBA = Dynamic;
@:invalid typedef NRGBA64 = Dynamic;
@:invalid typedef Alpha = Dynamic;
@:invalid typedef Alpha16 = Dynamic;
@:invalid typedef Gray = Dynamic;
@:invalid typedef Gray16 = Dynamic;
@:invalid typedef CMYK = Dynamic;
@:invalid typedef Paletted = Dynamic;
@:invalid typedef Uniform = Dynamic;
@:invalid typedef YCbCr = Dynamic;
@:invalid typedef NYCbCrA = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.image.Image.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.image.Image.T__struct_1;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image.YCbCrSubsampleRatio;
function registerFormat(_name:stdgo.GoString, _magic:stdgo.GoString, _decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {}
function _asReader(_r:stdgo._internal.io.Io.Reader):Void {}
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _sniff(_r:T_reader):Void {}
function decode(_r:stdgo._internal.io.Io.Reader):Void {}
function decodeConfig(_r:stdgo._internal.io.Io.Reader):Void {}
function pt(x:stdgo.GoInt, y:stdgo.GoInt):Void {}
function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):Void {}
function _mul3NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt, _z:stdgo.GoInt):Void {}
function _add2NonNeg(_x:stdgo.GoInt, _y:stdgo.GoInt):Void {}
function testRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:Rectangle, _imageTypeName:stdgo.GoString):Void {}
function newRGBA(_r:Rectangle):Void {}
function newRGBA64(_r:Rectangle):Void {}
function newNRGBA(_r:Rectangle):Void {}
function newNRGBA64(_r:Rectangle):Void {}
function newAlpha(_r:Rectangle):Void {}
function newAlpha16(_r:Rectangle):Void {}
function newGray(_r:Rectangle):Void {}
function newGray16(_r:Rectangle):Void {}
function newCMYK(_r:Rectangle):Void {}
function newPaletted(_r:Rectangle, _p:stdgo._internal.image.color.Color.Palette):Void {}
function _cmp(_cm:stdgo._internal.image.color.Color.Model, _c0:stdgo._internal.image.color.Color.Color, _c1:stdgo._internal.image.color.Color.Color):Void {}
function testImage(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function test16BitsPerColorChannel(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRGBA64Image(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSet(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRGBASetRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRGBA64SetRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNRGBASetNRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNRGBA64SetNRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAlphaAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAlphaSetAlpha(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAlpha16At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAlphaSetAlpha16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkGrayAt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkGraySetGray(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkGray16At(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkGraySetGray16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function newUniform(_c:stdgo._internal.image.color.Color.Color):Void {}
function _yCbCrSize(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):Void {}
function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):Void {}
function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):Void {}
function testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio, _delta:Point):Void {}
function testYCbCrSlicesDontOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef Point_asInterface = Dynamic;
@:invalid typedef Point_static_extension = Dynamic;
@:invalid typedef Rectangle_asInterface = Dynamic;
@:invalid typedef Rectangle_static_extension = Dynamic;
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
@:invalid typedef CMYK_asInterface = Dynamic;
@:invalid typedef CMYK_static_extension = Dynamic;
@:invalid typedef Paletted_asInterface = Dynamic;
@:invalid typedef Paletted_static_extension = Dynamic;
@:invalid typedef Uniform_asInterface = Dynamic;
@:invalid typedef Uniform_static_extension = Dynamic;
@:invalid typedef YCbCr_asInterface = Dynamic;
@:invalid typedef YCbCr_static_extension = Dynamic;
@:invalid typedef NYCbCrA_asInterface = Dynamic;
@:invalid typedef NYCbCrA_static_extension = Dynamic;
@:invalid typedef YCbCrSubsampleRatio_asInterface = Dynamic;
@:invalid typedef YCbCrSubsampleRatio_static_extension = Dynamic;
