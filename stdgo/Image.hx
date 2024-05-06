package stdgo;
/**
    Package image implements a basic 2-D image library.
    
    The fundamental interface is called Image. An Image contains colors, which
    are described in the image/color package.
    
    Values of the Image interface are created either by calling functions such
    as NewRGBA and NewPaletted, or by calling Decode on an io.Reader containing
    image data in a format such as GIF, JPEG or PNG. Decoding any particular
    image format requires the prior registration of a decoder function.
    Registration is typically automatic as a side effect of initializing that
    format's package so that, to decode a PNG image, it suffices to have
    
    	import _ "image/png"
    
    in a program's main package. The _ means to import a package purely for its
    initialization side effects.
    
    See "The Go image package" for more details:
    https://golang.org/doc/articles/image_package.html
**/
private var __go2hxdoc__package : Bool;
var zp(get, set) : Point;
private function get_zp():Point return stdgo._internal.image.Image.zp;
private function set_zp(v:Point):Point return stdgo._internal.image.Image.zp = v;
var zr(get, set) : Rectangle;
private function get_zr():Rectangle return stdgo._internal.image.Image.zr;
private function set_zr(v:Rectangle):Rectangle return stdgo._internal.image.Image.zr = v;
final ycbCrSubsampleRatio444 : stdgo._internal.image.Image.YCbCrSubsampleRatio = stdgo._internal.image.Image.ycbCrSubsampleRatio444;
final ycbCrSubsampleRatio422 = stdgo._internal.image.Image.ycbCrSubsampleRatio422;
final ycbCrSubsampleRatio420 = stdgo._internal.image.Image.ycbCrSubsampleRatio420;
final ycbCrSubsampleRatio440 = stdgo._internal.image.Image.ycbCrSubsampleRatio440;
final ycbCrSubsampleRatio411 = stdgo._internal.image.Image.ycbCrSubsampleRatio411;
final ycbCrSubsampleRatio410 = stdgo._internal.image.Image.ycbCrSubsampleRatio410;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.image.Image.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error return stdgo._internal.image.Image.errFormat = v;
var black(get, set) : stdgo._internal.image.Image.Uniform;
private function get_black():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.black;
private function set_black(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.black = v;
var white(get, set) : stdgo._internal.image.Image.Uniform;
private function get_white():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.white;
private function set_white(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.white = v;
var transparent(get, set) : stdgo._internal.image.Image.Uniform;
private function get_transparent():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.transparent;
private function set_transparent(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.transparent = v;
var opaque(get, set) : stdgo._internal.image.Image.Uniform;
private function get_opaque():stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.opaque;
private function set_opaque(v:stdgo._internal.image.Image.Uniform):stdgo._internal.image.Image.Uniform return stdgo._internal.image.Image.opaque = v;
@:forward @:forward.new abstract T_reader_static_extension(stdgo._internal.image.Image.T_reader_static_extension) from stdgo._internal.image.Image.T_reader_static_extension to stdgo._internal.image.Image.T_reader_static_extension {

}
typedef T_reader = stdgo._internal.image.Image.T_reader;
@:forward @:forward.new abstract Image_static_extension(stdgo._internal.image.Image.Image_static_extension) from stdgo._internal.image.Image.Image_static_extension to stdgo._internal.image.Image.Image_static_extension {

}
typedef Image = stdgo._internal.image.Image.Image;
@:forward @:forward.new abstract RGBA64Image_static_extension(stdgo._internal.image.Image.RGBA64Image_static_extension) from stdgo._internal.image.Image.RGBA64Image_static_extension to stdgo._internal.image.Image.RGBA64Image_static_extension {

}
typedef RGBA64Image = stdgo._internal.image.Image.RGBA64Image;
@:forward @:forward.new abstract PalettedImage_static_extension(stdgo._internal.image.Image.PalettedImage_static_extension) from stdgo._internal.image.Image.PalettedImage_static_extension to stdgo._internal.image.Image.PalettedImage_static_extension {

}
typedef PalettedImage = stdgo._internal.image.Image.PalettedImage;
@:forward @:forward.new abstract T_image_static_extension(stdgo._internal.image.Image.T_image_static_extension) from stdgo._internal.image.Image.T_image_static_extension to stdgo._internal.image.Image.T_image_static_extension {

}
typedef T_image = stdgo._internal.image.Image.T_image;
@:forward @:forward.new abstract T__interface_0_static_extension(stdgo._internal.image.Image.T__interface_0_static_extension) from stdgo._internal.image.Image.T__interface_0_static_extension to stdgo._internal.image.Image.T__interface_0_static_extension {

}
typedef T__interface_0 = stdgo._internal.image.Image.T__interface_0;
@:forward @:forward.new abstract T_format(stdgo._internal.image.Image.T_format) from stdgo._internal.image.Image.T_format to stdgo._internal.image.Image.T_format {

}
@:forward @:forward.new abstract Point(stdgo._internal.image.Image.Point) from stdgo._internal.image.Image.Point to stdgo._internal.image.Image.Point {

}
@:forward @:forward.new abstract Rectangle(stdgo._internal.image.Image.Rectangle) from stdgo._internal.image.Image.Rectangle to stdgo._internal.image.Image.Rectangle {

}
@:forward @:forward.new abstract Config(stdgo._internal.image.Image.Config) from stdgo._internal.image.Image.Config to stdgo._internal.image.Image.Config {

}
@:forward @:forward.new abstract RGBA(stdgo._internal.image.Image.RGBA) from stdgo._internal.image.Image.RGBA to stdgo._internal.image.Image.RGBA {

}
@:forward @:forward.new abstract RGBA64(stdgo._internal.image.Image.RGBA64) from stdgo._internal.image.Image.RGBA64 to stdgo._internal.image.Image.RGBA64 {

}
@:forward @:forward.new abstract NRGBA(stdgo._internal.image.Image.NRGBA) from stdgo._internal.image.Image.NRGBA to stdgo._internal.image.Image.NRGBA {

}
@:forward @:forward.new abstract NRGBA64(stdgo._internal.image.Image.NRGBA64) from stdgo._internal.image.Image.NRGBA64 to stdgo._internal.image.Image.NRGBA64 {

}
@:forward @:forward.new abstract Alpha(stdgo._internal.image.Image.Alpha) from stdgo._internal.image.Image.Alpha to stdgo._internal.image.Image.Alpha {

}
@:forward @:forward.new abstract Alpha16(stdgo._internal.image.Image.Alpha16) from stdgo._internal.image.Image.Alpha16 to stdgo._internal.image.Image.Alpha16 {

}
@:forward @:forward.new abstract Gray(stdgo._internal.image.Image.Gray) from stdgo._internal.image.Image.Gray to stdgo._internal.image.Image.Gray {

}
@:forward @:forward.new abstract Gray16(stdgo._internal.image.Image.Gray16) from stdgo._internal.image.Image.Gray16 to stdgo._internal.image.Image.Gray16 {

}
@:forward @:forward.new abstract CMYK(stdgo._internal.image.Image.CMYK) from stdgo._internal.image.Image.CMYK to stdgo._internal.image.Image.CMYK {

}
@:forward @:forward.new abstract Paletted(stdgo._internal.image.Image.Paletted) from stdgo._internal.image.Image.Paletted to stdgo._internal.image.Image.Paletted {

}
@:forward @:forward.new abstract Uniform(stdgo._internal.image.Image.Uniform) from stdgo._internal.image.Image.Uniform to stdgo._internal.image.Image.Uniform {

}
@:forward @:forward.new abstract YCbCr(stdgo._internal.image.Image.YCbCr) from stdgo._internal.image.Image.YCbCr to stdgo._internal.image.Image.YCbCr {

}
@:forward @:forward.new abstract NYCbCrA(stdgo._internal.image.Image.NYCbCrA) from stdgo._internal.image.Image.NYCbCrA to stdgo._internal.image.Image.NYCbCrA {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.image.Image.T__struct_0_asInterface) from stdgo._internal.image.Image.T__struct_0_asInterface to stdgo._internal.image.Image.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.image.Image.T__struct_0_static_extension) from stdgo._internal.image.Image.T__struct_0_static_extension to stdgo._internal.image.Image.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.image.Image.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.image.Image.T__struct_1_asInterface) from stdgo._internal.image.Image.T__struct_1_asInterface to stdgo._internal.image.Image.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.image.Image.T__struct_1_static_extension) from stdgo._internal.image.Image.T__struct_1_static_extension to stdgo._internal.image.Image.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.image.Image.T__struct_1;
typedef YCbCrSubsampleRatio = stdgo._internal.image.Image.YCbCrSubsampleRatio;
/**
    RegisterFormat registers an image format for use by Decode.
    Name is the name of the format, like "jpeg" or "png".
    Magic is the magic prefix that identifies the format's encoding. The magic
    string can contain "?" wildcards that each match any one byte.
    Decode is the function that decodes the encoded image.
    DecodeConfig is the function that decodes just its configuration.
**/
function registerFormat(name:String, magic:String, decode:stdgo._internal.io.Io.Reader -> { var _0 : Image; var _1 : stdgo.Error; }, decodeConfig:stdgo._internal.io.Io.Reader -> { var _0 : Config; var _1 : stdgo.Error; }):Void {
        final decode = decode;
        final decodeConfig = decodeConfig;
        stdgo._internal.image.Image.registerFormat(name, magic, decode, decodeConfig);
    }
/**
    Decode decodes an image that has been encoded in a registered format.
    The string returned is the format name used during format registration.
    Format registration is typically done by an init function in the codec-
    specific package.
**/
function decode(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Image, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decode(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    DecodeConfig decodes the color model and dimensions of an image that has
    been encoded in a registered format. The string returned is the format name
    used during format registration. Format registration is typically done by
    an init function in the codec-specific package.
**/
function decodeConfig(r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image.decodeConfig(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    Pt is shorthand for Point{X, Y}.
**/
function pt(x:StdTypes.Int, y:StdTypes.Int):Point {
        return stdgo._internal.image.Image.pt(x, y);
    }
/**
    Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
    rectangle has minimum and maximum coordinates swapped if necessary so that
    it is well-formed.
**/
function rect(x0:StdTypes.Int, y0:StdTypes.Int, x1:StdTypes.Int, y1:StdTypes.Int):Rectangle {
        return stdgo._internal.image.Image.rect(x0, y0, x1, y1);
    }
function testRectangle(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRectangle(t);
    }
/**
    NewRGBA returns a new RGBA image with the given bounds.
**/
function newRGBA(r:Rectangle):RGBA {
        return stdgo._internal.image.Image.newRGBA(r);
    }
/**
    NewRGBA64 returns a new RGBA64 image with the given bounds.
**/
function newRGBA64(r:Rectangle):RGBA64 {
        return stdgo._internal.image.Image.newRGBA64(r);
    }
/**
    NewNRGBA returns a new NRGBA image with the given bounds.
**/
function newNRGBA(r:Rectangle):NRGBA {
        return stdgo._internal.image.Image.newNRGBA(r);
    }
/**
    NewNRGBA64 returns a new NRGBA64 image with the given bounds.
**/
function newNRGBA64(r:Rectangle):NRGBA64 {
        return stdgo._internal.image.Image.newNRGBA64(r);
    }
/**
    NewAlpha returns a new Alpha image with the given bounds.
**/
function newAlpha(r:Rectangle):Alpha {
        return stdgo._internal.image.Image.newAlpha(r);
    }
/**
    NewAlpha16 returns a new Alpha16 image with the given bounds.
**/
function newAlpha16(r:Rectangle):Alpha16 {
        return stdgo._internal.image.Image.newAlpha16(r);
    }
/**
    NewGray returns a new Gray image with the given bounds.
**/
function newGray(r:Rectangle):Gray {
        return stdgo._internal.image.Image.newGray(r);
    }
/**
    NewGray16 returns a new Gray16 image with the given bounds.
**/
function newGray16(r:Rectangle):Gray16 {
        return stdgo._internal.image.Image.newGray16(r);
    }
/**
    NewCMYK returns a new CMYK image with the given bounds.
**/
function newCMYK(r:Rectangle):CMYK {
        return stdgo._internal.image.Image.newCMYK(r);
    }
/**
    NewPaletted returns a new Paletted image with the given width, height and
    palette.
**/
function newPaletted(r:Rectangle, p:stdgo._internal.image.color.Color.Palette):Paletted {
        return stdgo._internal.image.Image.newPaletted(r, p);
    }
function testImage(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testImage(t);
    }
function testNewXxxBadRectangle(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testNewXxxBadRectangle(t);
    }
function test16BitsPerColorChannel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.test16BitsPerColorChannel(t);
    }
function testRGBA64Image(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testRGBA64Image(t);
    }
function benchmarkAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAt(b);
    }
function benchmarkSet(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkSet(b);
    }
function benchmarkRGBAAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBAAt(b);
    }
function benchmarkRGBASetRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBASetRGBA(b);
    }
function benchmarkRGBA64At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64At(b);
    }
function benchmarkRGBA64SetRGBA64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkRGBA64SetRGBA64(b);
    }
function benchmarkNRGBAAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBAAt(b);
    }
function benchmarkNRGBASetNRGBA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBASetNRGBA(b);
    }
function benchmarkNRGBA64At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64At(b);
    }
function benchmarkNRGBA64SetNRGBA64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkNRGBA64SetNRGBA64(b);
    }
function benchmarkAlphaAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaAt(b);
    }
function benchmarkAlphaSetAlpha(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha(b);
    }
function benchmarkAlpha16At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlpha16At(b);
    }
function benchmarkAlphaSetAlpha16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkAlphaSetAlpha16(b);
    }
function benchmarkGrayAt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGrayAt(b);
    }
function benchmarkGraySetGray(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray(b);
    }
function benchmarkGray16At(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGray16At(b);
    }
function benchmarkGraySetGray16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.image.Image.benchmarkGraySetGray16(b);
    }
/**
    NewUniform returns a new Uniform image of the given color.
**/
function newUniform(c:stdgo._internal.image.color.Color.Color):Uniform {
        return stdgo._internal.image.Image.newUniform(c);
    }
/**
    NewYCbCr returns a new YCbCr image with the given bounds and subsample
    ratio.
**/
function newYCbCr(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):YCbCr {
        return stdgo._internal.image.Image.newYCbCr(r, subsampleRatio);
    }
/**
    NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
    ratio.
**/
function newNYCbCrA(r:Rectangle, subsampleRatio:YCbCrSubsampleRatio):NYCbCrA {
        return stdgo._internal.image.Image.newNYCbCrA(r, subsampleRatio);
    }
function testYCbCr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCr(t);
    }
function testYCbCrSlicesDontOverlap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.image.Image.testYCbCrSlicesDontOverlap(t);
    }
@:forward @:forward.new abstract Point_asInterface(stdgo._internal.image.Image.Point_asInterface) from stdgo._internal.image.Image.Point_asInterface to stdgo._internal.image.Image.Point_asInterface {

}
@:forward @:forward.new abstract Point_static_extension(stdgo._internal.image.Image.Point_static_extension) from stdgo._internal.image.Image.Point_static_extension to stdgo._internal.image.Image.Point_static_extension {

}
@:forward @:forward.new abstract Rectangle_asInterface(stdgo._internal.image.Image.Rectangle_asInterface) from stdgo._internal.image.Image.Rectangle_asInterface to stdgo._internal.image.Image.Rectangle_asInterface {

}
@:forward @:forward.new abstract Rectangle_static_extension(stdgo._internal.image.Image.Rectangle_static_extension) from stdgo._internal.image.Image.Rectangle_static_extension to stdgo._internal.image.Image.Rectangle_static_extension {

}
@:forward @:forward.new abstract RGBA_asInterface(stdgo._internal.image.Image.RGBA_asInterface) from stdgo._internal.image.Image.RGBA_asInterface to stdgo._internal.image.Image.RGBA_asInterface {

}
@:forward @:forward.new abstract RGBA_static_extension(stdgo._internal.image.Image.RGBA_static_extension) from stdgo._internal.image.Image.RGBA_static_extension to stdgo._internal.image.Image.RGBA_static_extension {

}
@:forward @:forward.new abstract RGBA64_asInterface(stdgo._internal.image.Image.RGBA64_asInterface) from stdgo._internal.image.Image.RGBA64_asInterface to stdgo._internal.image.Image.RGBA64_asInterface {

}
@:forward @:forward.new abstract RGBA64_static_extension(stdgo._internal.image.Image.RGBA64_static_extension) from stdgo._internal.image.Image.RGBA64_static_extension to stdgo._internal.image.Image.RGBA64_static_extension {

}
@:forward @:forward.new abstract NRGBA_asInterface(stdgo._internal.image.Image.NRGBA_asInterface) from stdgo._internal.image.Image.NRGBA_asInterface to stdgo._internal.image.Image.NRGBA_asInterface {

}
@:forward @:forward.new abstract NRGBA_static_extension(stdgo._internal.image.Image.NRGBA_static_extension) from stdgo._internal.image.Image.NRGBA_static_extension to stdgo._internal.image.Image.NRGBA_static_extension {

}
@:forward @:forward.new abstract NRGBA64_asInterface(stdgo._internal.image.Image.NRGBA64_asInterface) from stdgo._internal.image.Image.NRGBA64_asInterface to stdgo._internal.image.Image.NRGBA64_asInterface {

}
@:forward @:forward.new abstract NRGBA64_static_extension(stdgo._internal.image.Image.NRGBA64_static_extension) from stdgo._internal.image.Image.NRGBA64_static_extension to stdgo._internal.image.Image.NRGBA64_static_extension {

}
@:forward @:forward.new abstract Alpha_asInterface(stdgo._internal.image.Image.Alpha_asInterface) from stdgo._internal.image.Image.Alpha_asInterface to stdgo._internal.image.Image.Alpha_asInterface {

}
@:forward @:forward.new abstract Alpha_static_extension(stdgo._internal.image.Image.Alpha_static_extension) from stdgo._internal.image.Image.Alpha_static_extension to stdgo._internal.image.Image.Alpha_static_extension {

}
@:forward @:forward.new abstract Alpha16_asInterface(stdgo._internal.image.Image.Alpha16_asInterface) from stdgo._internal.image.Image.Alpha16_asInterface to stdgo._internal.image.Image.Alpha16_asInterface {

}
@:forward @:forward.new abstract Alpha16_static_extension(stdgo._internal.image.Image.Alpha16_static_extension) from stdgo._internal.image.Image.Alpha16_static_extension to stdgo._internal.image.Image.Alpha16_static_extension {

}
@:forward @:forward.new abstract Gray_asInterface(stdgo._internal.image.Image.Gray_asInterface) from stdgo._internal.image.Image.Gray_asInterface to stdgo._internal.image.Image.Gray_asInterface {

}
@:forward @:forward.new abstract Gray_static_extension(stdgo._internal.image.Image.Gray_static_extension) from stdgo._internal.image.Image.Gray_static_extension to stdgo._internal.image.Image.Gray_static_extension {

}
@:forward @:forward.new abstract Gray16_asInterface(stdgo._internal.image.Image.Gray16_asInterface) from stdgo._internal.image.Image.Gray16_asInterface to stdgo._internal.image.Image.Gray16_asInterface {

}
@:forward @:forward.new abstract Gray16_static_extension(stdgo._internal.image.Image.Gray16_static_extension) from stdgo._internal.image.Image.Gray16_static_extension to stdgo._internal.image.Image.Gray16_static_extension {

}
@:forward @:forward.new abstract CMYK_asInterface(stdgo._internal.image.Image.CMYK_asInterface) from stdgo._internal.image.Image.CMYK_asInterface to stdgo._internal.image.Image.CMYK_asInterface {

}
@:forward @:forward.new abstract CMYK_static_extension(stdgo._internal.image.Image.CMYK_static_extension) from stdgo._internal.image.Image.CMYK_static_extension to stdgo._internal.image.Image.CMYK_static_extension {

}
@:forward @:forward.new abstract Paletted_asInterface(stdgo._internal.image.Image.Paletted_asInterface) from stdgo._internal.image.Image.Paletted_asInterface to stdgo._internal.image.Image.Paletted_asInterface {

}
@:forward @:forward.new abstract Paletted_static_extension(stdgo._internal.image.Image.Paletted_static_extension) from stdgo._internal.image.Image.Paletted_static_extension to stdgo._internal.image.Image.Paletted_static_extension {

}
@:forward @:forward.new abstract Uniform_asInterface(stdgo._internal.image.Image.Uniform_asInterface) from stdgo._internal.image.Image.Uniform_asInterface to stdgo._internal.image.Image.Uniform_asInterface {

}
@:forward @:forward.new abstract Uniform_static_extension(stdgo._internal.image.Image.Uniform_static_extension) from stdgo._internal.image.Image.Uniform_static_extension to stdgo._internal.image.Image.Uniform_static_extension {

}
@:forward @:forward.new abstract YCbCr_asInterface(stdgo._internal.image.Image.YCbCr_asInterface) from stdgo._internal.image.Image.YCbCr_asInterface to stdgo._internal.image.Image.YCbCr_asInterface {

}
@:forward @:forward.new abstract YCbCr_static_extension(stdgo._internal.image.Image.YCbCr_static_extension) from stdgo._internal.image.Image.YCbCr_static_extension to stdgo._internal.image.Image.YCbCr_static_extension {

}
@:forward @:forward.new abstract NYCbCrA_asInterface(stdgo._internal.image.Image.NYCbCrA_asInterface) from stdgo._internal.image.Image.NYCbCrA_asInterface to stdgo._internal.image.Image.NYCbCrA_asInterface {

}
@:forward @:forward.new abstract NYCbCrA_static_extension(stdgo._internal.image.Image.NYCbCrA_static_extension) from stdgo._internal.image.Image.NYCbCrA_static_extension to stdgo._internal.image.Image.NYCbCrA_static_extension {

}
@:forward @:forward.new abstract YCbCrSubsampleRatio_asInterface(stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface) from stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface to stdgo._internal.image.Image.YCbCrSubsampleRatio_asInterface {

}
@:forward @:forward.new abstract YCbCrSubsampleRatio_static_extension(stdgo._internal.image.Image.YCbCrSubsampleRatio_static_extension) from stdgo._internal.image.Image.YCbCrSubsampleRatio_static_extension to stdgo._internal.image.Image.YCbCrSubsampleRatio_static_extension {

}
