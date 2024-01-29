package stdgo.image;
/**
    // Package image implements a basic 2-D image library.
    //
    // The fundamental interface is called Image. An Image contains colors, which
    // are described in the image/color package.
    //
    // Values of the Image interface are created either by calling functions such
    // as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    // image data in a format such as GIF, JPEG or PNG. Decoding any particular
    // image format requires the prior registration of a decoder function.
    // Registration is typically automatic as a side effect of initializing that
    // format's package so that, to decode a PNG image, it suffices to have
    //
    //	import _ "image/png"
    //
    // in a program's main package. The _ means to import a package purely for its
    // initialization side effects.
    //
    // See "The Go image package" for more details:
    // https://golang.org/doc/articles/image_package.html
**/
private var __go2hxdoc__package : Bool;
var errFormat(get_errFormat, set_errFormat) : stdgo.Error;
function get_errFormat():stdgo.Error return stdgo._internal.image.Image.errFormat;
function set_errFormat(v:stdgo.Error):stdgo.Error return stdgo._internal.image.Image.errFormat = v;
var black(get_black, set_black) : stdgo._internal.image.Image.Uniform;
function get_black():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.black;
function set_black(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.black = v;
var white(get_white, set_white) : stdgo._internal.image.Image.Uniform;
function get_white():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.white;
function set_white(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.white = v;
var transparent(get_transparent, set_transparent) : stdgo._internal.image.Image.Uniform;
function get_transparent():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.transparent;
function set_transparent(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.transparent = v;
var opaque(get_opaque, set_opaque) : stdgo._internal.image.Image.Uniform;
function get_opaque():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.opaque;
function set_opaque(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.opaque = v;
var zp(get_zp, set_zp) : Point;
function get_zp():Point return stdgo._internal.image.Image.zp;
function set_zp(v:Point):Point return stdgo._internal.image.Image.zp = v;
var zr(get_zr, set_zr) : Rectangle;
function get_zr():Rectangle return stdgo._internal.image.Image.zr;
function set_zr(v:Rectangle):Rectangle return stdgo._internal.image.Image.zr = v;
final ycbCrSubsampleRatio444 : stdgo._internal.image.Image.YCbCrSubsampleRatio = stdgo._internal.image.Image.ycbCrSubsampleRatio444;
final ycbCrSubsampleRatio422 = stdgo._internal.image.Image.ycbCrSubsampleRatio422;
final ycbCrSubsampleRatio420 = stdgo._internal.image.Image.ycbCrSubsampleRatio420;
final ycbCrSubsampleRatio440 = stdgo._internal.image.Image.ycbCrSubsampleRatio440;
final ycbCrSubsampleRatio411 = stdgo._internal.image.Image.ycbCrSubsampleRatio411;
final ycbCrSubsampleRatio410 = stdgo._internal.image.Image.ycbCrSubsampleRatio410;
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
/**
    // RegisterFormat registers an image format for use by Decode.
    // Name is the name of the format, like "jpeg" or "png".
    // Magic is the magic prefix that identifies the format's encoding. The magic
    // string can contain "?" wildcards that each match any one byte.
    // Decode is the function that decodes the encoded image.
    // DecodeConfig is the function that decodes just its configuration.
**/
inline function registerFormat(name:String, magic:String, decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void throw "not implemented";
/**
    // Decode decodes an image that has been encoded in a registered format.
    // The string returned is the format name used during format registration.
    // Format registration is typically done by an init function in the codec-
    // specific package.
**/
inline function decode(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Image, String, stdgo.Error> throw "not implemented";
/**
    // DecodeConfig decodes the color model and dimensions of an image that has
    // been encoded in a registered format. The string returned is the format name
    // used during format registration. Format registration is typically done by
    // an init function in the codec-specific package.
**/
inline function decodeConfig(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> throw "not implemented";
/**
    // Pt is shorthand for Point{X, Y}.
**/
inline function pt(x:Int, y:Int):Point throw "not implemented";
/**
    // Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
    // rectangle has minimum and maximum coordinates swapped if necessary so that
    // it is well-formed.
**/
inline function rect(x0:Int, y0:Int, x1:Int, y1:Int):Rectangle throw "not implemented";
inline function testRectangle(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewRGBA returns a new RGBA image with the given bounds.
**/
inline function newRGBA(r:Rectangle):RGBA throw "not implemented";
/**
    // NewRGBA64 returns a new RGBA64 image with the given bounds.
**/
inline function newRGBA64(r:Rectangle):RGBA64 throw "not implemented";
/**
    // NewNRGBA returns a new NRGBA image with the given bounds.
**/
inline function newNRGBA(r:Rectangle):NRGBA throw "not implemented";
/**
    // NewNRGBA64 returns a new NRGBA64 image with the given bounds.
**/
inline function newNRGBA64(r:Rectangle):NRGBA64 throw "not implemented";
/**
    // NewAlpha returns a new Alpha image with the given bounds.
**/
inline function newAlpha(r:Rectangle):Alpha throw "not implemented";
/**
    // NewAlpha16 returns a new Alpha16 image with the given bounds.
**/
inline function newAlpha16(r:Rectangle):Alpha16 throw "not implemented";
/**
    // NewGray returns a new Gray image with the given bounds.
**/
inline function newGray(r:Rectangle):Gray throw "not implemented";
/**
    // NewGray16 returns a new Gray16 image with the given bounds.
**/
inline function newGray16(r:Rectangle):Gray16 throw "not implemented";
/**
    // NewCMYK returns a new CMYK image with the given bounds.
**/
inline function newCMYK(r:Rectangle):CMYK throw "not implemented";
/**
    // NewPaletted returns a new Paletted image with the given width, height and
    // palette.
**/
inline function newPaletted(r:Rectangle, p:stdgo._internal.image.color.Color.Palette):Paletted throw "not implemented";
inline function testImage(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNewXxxBadRectangle(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function test16BitsPerColorChannel(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRGBA64Image(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkAt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSet(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRGBAAt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRGBASetRGBA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRGBA64At(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkRGBA64SetRGBA64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNRGBAAt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNRGBASetNRGBA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNRGBA64At(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNRGBA64SetNRGBA64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAlphaAt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAlphaSetAlpha(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAlpha16At(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAlphaSetAlpha16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGrayAt(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGraySetGray(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGray16At(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkGraySetGray16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // NewUniform returns a new Uniform image of the given color.
**/
inline function newUniform(c:stdgo._internal.image.color.Color.Color):Uniform throw "not implemented";
/**
    // NewYCbCr returns a new YCbCr image with the given bounds and subsample
    // ratio.
**/
inline function newYCbCr(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):YCbCr throw "not implemented";
/**
    // NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
    // ratio.
**/
inline function newNYCbCrA(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):NYCbCrA throw "not implemented";
inline function testYCbCr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testYCbCrSlicesDontOverlap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
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
