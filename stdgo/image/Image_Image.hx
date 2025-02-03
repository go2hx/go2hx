package stdgo.image;
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
class Image {
    /**
        RegisterFormat registers an image format for use by Decode.
        Name is the name of the format, like "jpeg" or "png".
        Magic is the magic prefix that identifies the format's encoding. The magic
        string can contain "?" wildcards that each match any one byte.
        Decode is the function that decodes the encoded image.
        DecodeConfig is the function that decodes just its configuration.
    **/
    static public inline function registerFormat(_name:String, _magic:String, _decode:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; }):Void {
        final _name = (_name : stdgo.GoString);
        final _magic = (_magic : stdgo.GoString);
        final _decode = _decode;
        final _decodeConfig = _decodeConfig;
        stdgo._internal.image.Image_registerFormat.registerFormat(_name, _magic, _decode, _decodeConfig);
    }
    /**
        Decode decodes an image that has been encoded in a registered format.
        The string returned is the format name used during format registration.
        Format registration is typically done by an init function in the codec-
        specific package.
    **/
    static public inline function decode(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple3<Image_, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image_decode.decode(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        DecodeConfig decodes the color model and dimensions of an image that has
        been encoded in a registered format. The string returned is the format name
        used during format registration. Format registration is typically done by
        an init function in the codec-specific package.
    **/
    static public inline function decodeConfig(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple3<Config, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.image.Image_decodeConfig.decodeConfig(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Pt is shorthand for Point{X, Y}.
    **/
    static public inline function pt(x:StdTypes.Int, y:StdTypes.Int):Point {
        final x = (x : stdgo.GoInt);
        final y = (y : stdgo.GoInt);
        return stdgo._internal.image.Image_pt.pt(x, y);
    }
    /**
        Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
        rectangle has minimum and maximum coordinates swapped if necessary so that
        it is well-formed.
    **/
    static public inline function rect(_x0:StdTypes.Int, _y0:StdTypes.Int, _x1:StdTypes.Int, _y1:StdTypes.Int):Rectangle {
        final _x0 = (_x0 : stdgo.GoInt);
        final _y0 = (_y0 : stdgo.GoInt);
        final _x1 = (_x1 : stdgo.GoInt);
        final _y1 = (_y1 : stdgo.GoInt);
        return stdgo._internal.image.Image_rect.rect(_x0, _y0, _x1, _y1);
    }
    static public inline function testRectangle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testRectangle.testRectangle(_t);
    }
    /**
        NewRGBA returns a new RGBA image with the given bounds.
    **/
    static public inline function newRGBA(_r:Rectangle):RGBA {
        return stdgo._internal.image.Image_newRGBA.newRGBA(_r);
    }
    /**
        NewRGBA64 returns a new RGBA64 image with the given bounds.
    **/
    static public inline function newRGBA64(_r:Rectangle):RGBA64 {
        return stdgo._internal.image.Image_newRGBA64.newRGBA64(_r);
    }
    /**
        NewNRGBA returns a new NRGBA image with the given bounds.
    **/
    static public inline function newNRGBA(_r:Rectangle):NRGBA {
        return stdgo._internal.image.Image_newNRGBA.newNRGBA(_r);
    }
    /**
        NewNRGBA64 returns a new NRGBA64 image with the given bounds.
    **/
    static public inline function newNRGBA64(_r:Rectangle):NRGBA64 {
        return stdgo._internal.image.Image_newNRGBA64.newNRGBA64(_r);
    }
    /**
        NewAlpha returns a new Alpha image with the given bounds.
    **/
    static public inline function newAlpha(_r:Rectangle):Alpha {
        return stdgo._internal.image.Image_newAlpha.newAlpha(_r);
    }
    /**
        NewAlpha16 returns a new Alpha16 image with the given bounds.
    **/
    static public inline function newAlpha16(_r:Rectangle):Alpha16 {
        return stdgo._internal.image.Image_newAlpha16.newAlpha16(_r);
    }
    /**
        NewGray returns a new Gray image with the given bounds.
    **/
    static public inline function newGray(_r:Rectangle):Gray {
        return stdgo._internal.image.Image_newGray.newGray(_r);
    }
    /**
        NewGray16 returns a new Gray16 image with the given bounds.
    **/
    static public inline function newGray16(_r:Rectangle):Gray16 {
        return stdgo._internal.image.Image_newGray16.newGray16(_r);
    }
    /**
        NewCMYK returns a new CMYK image with the given bounds.
    **/
    static public inline function newCMYK(_r:Rectangle):CMYK {
        return stdgo._internal.image.Image_newCMYK.newCMYK(_r);
    }
    /**
        NewPaletted returns a new Paletted image with the given width, height and
        palette.
    **/
    static public inline function newPaletted(_r:Rectangle, _p:Palette):Paletted {
        return stdgo._internal.image.Image_newPaletted.newPaletted(_r, _p);
    }
    static public inline function testImage(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testImage.testImage(_t);
    }
    static public inline function testNewXxxBadRectangle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testNewXxxBadRectangle.testNewXxxBadRectangle(_t);
    }
    static public inline function test16BitsPerColorChannel(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_test16BitsPerColorChannel.test16BitsPerColorChannel(_t);
    }
    static public inline function testRGBA64Image(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testRGBA64Image.testRGBA64Image(_t);
    }
    static public inline function benchmarkAt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkAt.benchmarkAt(_b);
    }
    static public inline function benchmarkSet(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkSet.benchmarkSet(_b);
    }
    static public inline function benchmarkRGBAAt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkRGBAAt.benchmarkRGBAAt(_b);
    }
    static public inline function benchmarkRGBASetRGBA(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkRGBASetRGBA.benchmarkRGBASetRGBA(_b);
    }
    static public inline function benchmarkRGBA64At(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkRGBA64At.benchmarkRGBA64At(_b);
    }
    static public inline function benchmarkRGBA64SetRGBA64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkRGBA64SetRGBA64.benchmarkRGBA64SetRGBA64(_b);
    }
    static public inline function benchmarkNRGBAAt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkNRGBAAt.benchmarkNRGBAAt(_b);
    }
    static public inline function benchmarkNRGBASetNRGBA(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkNRGBASetNRGBA.benchmarkNRGBASetNRGBA(_b);
    }
    static public inline function benchmarkNRGBA64At(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkNRGBA64At.benchmarkNRGBA64At(_b);
    }
    static public inline function benchmarkNRGBA64SetNRGBA64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkNRGBA64SetNRGBA64.benchmarkNRGBA64SetNRGBA64(_b);
    }
    static public inline function benchmarkAlphaAt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkAlphaAt.benchmarkAlphaAt(_b);
    }
    static public inline function benchmarkAlphaSetAlpha(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkAlphaSetAlpha.benchmarkAlphaSetAlpha(_b);
    }
    static public inline function benchmarkAlpha16At(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkAlpha16At.benchmarkAlpha16At(_b);
    }
    static public inline function benchmarkAlphaSetAlpha16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkAlphaSetAlpha16.benchmarkAlphaSetAlpha16(_b);
    }
    static public inline function benchmarkGrayAt(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkGrayAt.benchmarkGrayAt(_b);
    }
    static public inline function benchmarkGraySetGray(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkGraySetGray.benchmarkGraySetGray(_b);
    }
    static public inline function benchmarkGray16At(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkGray16At.benchmarkGray16At(_b);
    }
    static public inline function benchmarkGraySetGray16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.image.Image_benchmarkGraySetGray16.benchmarkGraySetGray16(_b);
    }
    /**
        NewUniform returns a new Uniform image of the given color.
    **/
    static public inline function newUniform(_c:Color):Uniform {
        return stdgo._internal.image.Image_newUniform.newUniform(_c);
    }
    /**
        NewYCbCr returns a new YCbCr image with the given bounds and subsample
        ratio.
    **/
    static public inline function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):YCbCr {
        return stdgo._internal.image.Image_newYCbCr.newYCbCr(_r, _subsampleRatio);
    }
    /**
        NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
        ratio.
    **/
    static public inline function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):NYCbCrA {
        return stdgo._internal.image.Image_newNYCbCrA.newNYCbCrA(_r, _subsampleRatio);
    }
    static public inline function testYCbCr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testYCbCr.testYCbCr(_t);
    }
    static public inline function testYCbCrSlicesDontOverlap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.image.Image_testYCbCrSlicesDontOverlap.testYCbCrSlicesDontOverlap(_t);
    }
}
