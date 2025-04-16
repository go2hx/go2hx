package stdgo.image;
var zP(get, set) : Point;
private function get_zP():Point return stdgo._internal.image.Image_zp.zP;
private function set_zP(v:Point):stdgo._internal.image.Image_point.Point {
        stdgo._internal.image.Image_zp.zP = v;
        return v;
    }
var zR(get, set) : Rectangle;
private function get_zR():Rectangle return stdgo._internal.image.Image_zr.zR;
private function set_zR(v:Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        stdgo._internal.image.Image_zr.zR = v;
        return v;
    }
var yCbCrSubsampleRatio444 : YCbCrSubsampleRatio = 0i32;
var yCbCrSubsampleRatio422 : YCbCrSubsampleRatio = 1i32;
var yCbCrSubsampleRatio420 : YCbCrSubsampleRatio = 2i32;
var yCbCrSubsampleRatio440 : YCbCrSubsampleRatio = 3i32;
var yCbCrSubsampleRatio411 : YCbCrSubsampleRatio = 4i32;
var yCbCrSubsampleRatio410 : YCbCrSubsampleRatio = 5i32;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.image.Image_errformat.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.image.Image_errformat.errFormat = v;
        return v;
    }
var black(get, set) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>;
private function get_black():stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> return stdgo._internal.image.Image_black.black;
private function set_black(v:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> {
        stdgo._internal.image.Image_black.black = v;
        return v;
    }
var white(get, set) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>;
private function get_white():stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> return stdgo._internal.image.Image_white.white;
private function set_white(v:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> {
        stdgo._internal.image.Image_white.white = v;
        return v;
    }
var transparent(get, set) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>;
private function get_transparent():stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> return stdgo._internal.image.Image_transparent.transparent;
private function set_transparent(v:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> {
        stdgo._internal.image.Image_transparent.transparent = v;
        return v;
    }
var opaque(get, set) : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>;
private function get_opaque():stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> return stdgo._internal.image.Image_opaque.opaque;
private function set_opaque(v:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> {
        stdgo._internal.image.Image_opaque.opaque = v;
        return v;
    }
typedef Image_ = stdgo._internal.image.Image_image.Image;
typedef RGBA64Image = stdgo._internal.image.Image_rgba64image.RGBA64Image;
typedef PalettedImage = stdgo._internal.image.Image_palettedimage.PalettedImage;
typedef Point = stdgo._internal.image.Image_point.Point;
typedef Rectangle = stdgo._internal.image.Image_rectangle.Rectangle;
typedef Config = stdgo._internal.image.Image_config.Config;
typedef RGBA = stdgo._internal.image.Image_rgba.RGBA;
typedef RGBA64 = stdgo._internal.image.Image_rgba64.RGBA64;
typedef NRGBA = stdgo._internal.image.Image_nrgba.NRGBA;
typedef NRGBA64 = stdgo._internal.image.Image_nrgba64.NRGBA64;
typedef Alpha = stdgo._internal.image.Image_alpha.Alpha;
typedef Alpha16 = stdgo._internal.image.Image_alpha16.Alpha16;
typedef Gray = stdgo._internal.image.Image_gray.Gray;
typedef Gray16 = stdgo._internal.image.Image_gray16.Gray16;
typedef CMYK = stdgo._internal.image.Image_cmyk.CMYK;
typedef Paletted = stdgo._internal.image.Image_paletted.Paletted;
typedef Uniform = stdgo._internal.image.Image_uniform.Uniform;
typedef YCbCr = stdgo._internal.image.Image_ycbcr.YCbCr;
typedef NYCbCrA = stdgo._internal.image.Image_nycbcra.NYCbCrA;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio;
typedef PointPointer = stdgo._internal.image.Image_pointpointer.PointPointer;
typedef RectanglePointer = stdgo._internal.image.Image_rectanglepointer.RectanglePointer;
typedef ConfigPointer = stdgo._internal.image.Image_configpointer.ConfigPointer;
typedef RGBAPointer = stdgo._internal.image.Image_rgbapointer.RGBAPointer;
typedef RGBA64Pointer = stdgo._internal.image.Image_rgba64pointer.RGBA64Pointer;
typedef NRGBAPointer = stdgo._internal.image.Image_nrgbapointer.NRGBAPointer;
typedef NRGBA64Pointer = stdgo._internal.image.Image_nrgba64pointer.NRGBA64Pointer;
typedef AlphaPointer = stdgo._internal.image.Image_alphapointer.AlphaPointer;
typedef Alpha16Pointer = stdgo._internal.image.Image_alpha16pointer.Alpha16Pointer;
typedef GrayPointer = stdgo._internal.image.Image_graypointer.GrayPointer;
typedef Gray16Pointer = stdgo._internal.image.Image_gray16pointer.Gray16Pointer;
typedef CMYKPointer = stdgo._internal.image.Image_cmykpointer.CMYKPointer;
typedef PalettedPointer = stdgo._internal.image.Image_palettedpointer.PalettedPointer;
typedef UniformPointer = stdgo._internal.image.Image_uniformpointer.UniformPointer;
typedef YCbCrPointer = stdgo._internal.image.Image_ycbcrpointer.YCbCrPointer;
typedef NYCbCrAPointer = stdgo._internal.image.Image_nycbcrapointer.NYCbCrAPointer;
typedef YCbCrSubsampleRatioPointer = stdgo._internal.image.Image_ycbcrsubsampleratiopointer.YCbCrSubsampleRatioPointer;
/**
    * Package image implements a basic 2-D image library.
    * 
    * The fundamental interface is called Image. An Image contains colors, which
    * are described in the image/color package.
    * 
    * Values of the Image interface are created either by calling functions such
    * as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    * image data in a format such as GIF, JPEG or PNG. Decoding any particular
    * image format requires the prior registration of a decoder function.
    * Registration is typically automatic as a side effect of initializing that
    * format's package so that, to decode a PNG image, it suffices to have
    * 
    * 	import _ "image/png"
    * 
    * in a program's main package. The _ means to import a package purely for its
    * initialization side effects.
    * 
    * See "The Go image package" for more details:
    * https://golang.org/doc/articles/image_package.html
**/
class Image {
    /**
        * RegisterFormat registers an image format for use by Decode.
        * Name is the name of the format, like "jpeg" or "png".
        * Magic is the magic prefix that identifies the format's encoding. The magic
        * string can contain "?" wildcards that each match any one byte.
        * Decode is the function that decodes the encoded image.
        * DecodeConfig is the function that decodes just its configuration.
    **/
    static public inline function registerFormat(_name:stdgo.GoString, _magic:stdgo.GoString, _decode:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Image_, stdgo.Error>, _decodeConfig:stdgo._internal.io.Io_reader.Reader -> stdgo.Tuple<Config, stdgo.Error>):Void stdgo._internal.image.Image_registerformat.registerFormat(_name, _magic, _decode, _decodeConfig);
    /**
        * Decode decodes an image that has been encoded in a registered format.
        * The string returned is the format name used during format registration.
        * Format registration is typically done by an init function in the codec-
        * specific package.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return stdgo._internal.image.Image_decode.decode(_r);
    /**
        * DecodeConfig decodes the color model and dimensions of an image that has
        * been encoded in a registered format. The string returned is the format name
        * used during format registration. Format registration is typically done by
        * an init function in the codec-specific package.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.image.Image_config.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return stdgo._internal.image.Image_decodeconfig.decodeConfig(_r);
    /**
        * Pt is shorthand for Point{X, Y}.
    **/
    static public inline function pt(x:stdgo.GoInt, y:stdgo.GoInt):stdgo._internal.image.Image_point.Point return stdgo._internal.image.Image_pt.pt(x, y);
    /**
        * Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
        * rectangle has minimum and maximum coordinates swapped if necessary so that
        * it is well-formed.
    **/
    static public inline function rect(_x0:stdgo.GoInt, _y0:stdgo.GoInt, _x1:stdgo.GoInt, _y1:stdgo.GoInt):stdgo._internal.image.Image_rectangle.Rectangle return stdgo._internal.image.Image_rect.rect(_x0, _y0, _x1, _y1);
    static public inline function testRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testrectangle.testRectangle(_t);
    /**
        * NewRGBA returns a new RGBA image with the given bounds.
    **/
    static public inline function newRGBA(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> return stdgo._internal.image.Image_newrgba.newRGBA(_r);
    /**
        * NewRGBA64 returns a new RGBA64 image with the given bounds.
    **/
    static public inline function newRGBA64(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> return stdgo._internal.image.Image_newrgba64.newRGBA64(_r);
    /**
        * NewNRGBA returns a new NRGBA image with the given bounds.
    **/
    static public inline function newNRGBA(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> return stdgo._internal.image.Image_newnrgba.newNRGBA(_r);
    /**
        * NewNRGBA64 returns a new NRGBA64 image with the given bounds.
    **/
    static public inline function newNRGBA64(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64> return stdgo._internal.image.Image_newnrgba64.newNRGBA64(_r);
    /**
        * NewAlpha returns a new Alpha image with the given bounds.
    **/
    static public inline function newAlpha(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> return stdgo._internal.image.Image_newalpha.newAlpha(_r);
    /**
        * NewAlpha16 returns a new Alpha16 image with the given bounds.
    **/
    static public inline function newAlpha16(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> return stdgo._internal.image.Image_newalpha16.newAlpha16(_r);
    /**
        * NewGray returns a new Gray image with the given bounds.
    **/
    static public inline function newGray(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_gray.Gray> return stdgo._internal.image.Image_newgray.newGray(_r);
    /**
        * NewGray16 returns a new Gray16 image with the given bounds.
    **/
    static public inline function newGray16(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> return stdgo._internal.image.Image_newgray16.newGray16(_r);
    /**
        * NewCMYK returns a new CMYK image with the given bounds.
    **/
    static public inline function newCMYK(_r:Rectangle):stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK> return stdgo._internal.image.Image_newcmyk.newCMYK(_r);
    /**
        * NewPaletted returns a new Paletted image with the given width, height and
        * palette.
    **/
    static public inline function newPaletted(_r:Rectangle, _p:stdgo._internal.image.color.Color_palette.Palette):stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> return stdgo._internal.image.Image_newpaletted.newPaletted(_r, _p);
    static public inline function testImage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testimage.testImage(_t);
    static public inline function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testnewxxxbadrectangle.testNewXxxBadRectangle(_t);
    static public inline function test16BitsPerColorChannel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_test16bitspercolorchannel.test16BitsPerColorChannel(_t);
    static public inline function testRGBA64Image(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testrgba64image.testRGBA64Image(_t);
    static public inline function benchmarkAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkat.benchmarkAt(_b);
    static public inline function benchmarkSet(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkset.benchmarkSet(_b);
    static public inline function benchmarkRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkrgbaat.benchmarkRGBAAt(_b);
    static public inline function benchmarkRGBASetRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkrgbasetrgba.benchmarkRGBASetRGBA(_b);
    static public inline function benchmarkRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkrgba64at.benchmarkRGBA64At(_b);
    static public inline function benchmarkRGBA64SetRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkrgba64setrgba64.benchmarkRGBA64SetRGBA64(_b);
    static public inline function benchmarkNRGBAAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarknrgbaat.benchmarkNRGBAAt(_b);
    static public inline function benchmarkNRGBASetNRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarknrgbasetnrgba.benchmarkNRGBASetNRGBA(_b);
    static public inline function benchmarkNRGBA64At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarknrgba64at.benchmarkNRGBA64At(_b);
    static public inline function benchmarkNRGBA64SetNRGBA64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarknrgba64setnrgba64.benchmarkNRGBA64SetNRGBA64(_b);
    static public inline function benchmarkAlphaAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkalphaat.benchmarkAlphaAt(_b);
    static public inline function benchmarkAlphaSetAlpha(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkalphasetalpha.benchmarkAlphaSetAlpha(_b);
    static public inline function benchmarkAlpha16At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkalpha16at.benchmarkAlpha16At(_b);
    static public inline function benchmarkAlphaSetAlpha16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkalphasetalpha16.benchmarkAlphaSetAlpha16(_b);
    static public inline function benchmarkGrayAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkgrayat.benchmarkGrayAt(_b);
    static public inline function benchmarkGraySetGray(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkgraysetgray.benchmarkGraySetGray(_b);
    static public inline function benchmarkGray16At(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkgray16at.benchmarkGray16At(_b);
    static public inline function benchmarkGraySetGray16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.Image_benchmarkgraysetgray16.benchmarkGraySetGray16(_b);
    /**
        * NewUniform returns a new Uniform image of the given color.
    **/
    static public inline function newUniform(_c:stdgo._internal.image.color.Color_color.Color):stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> return stdgo._internal.image.Image_newuniform.newUniform(_c);
    /**
        * NewYCbCr returns a new YCbCr image with the given bounds and subsample
        * ratio.
    **/
    static public inline function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> return stdgo._internal.image.Image_newycbcr.newYCbCr(_r, _subsampleRatio);
    /**
        * NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
        * ratio.
    **/
    static public inline function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> return stdgo._internal.image.Image_newnycbcra.newNYCbCrA(_r, _subsampleRatio);
    static public inline function testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testycbcr.testYCbCr(_t);
    static public inline function testYCbCrSlicesDontOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.Image_testycbcrslicesdontoverlap.testYCbCrSlicesDontOverlap(_t);
}
