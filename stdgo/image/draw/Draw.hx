package stdgo.image.draw;
var over : Op = 0i64;
var src : Op = 1i64;
var floydSteinberg(get, set) : Drawer;
private function get_floydSteinberg():Drawer return stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg;
private function set_floydSteinberg(v:Drawer):stdgo._internal.image.draw.Draw_drawer.Drawer {
        stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg = v;
        return v;
    }
typedef Image = stdgo._internal.image.draw.Draw_image.Image;
typedef RGBA64Image = stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image;
typedef Quantizer = stdgo._internal.image.draw.Draw_quantizer.Quantizer;
typedef Drawer = stdgo._internal.image.draw.Draw_drawer.Drawer;
typedef Op = stdgo._internal.image.draw.Draw_op.Op;
typedef OpPointer = stdgo._internal.image.draw.Draw_oppointer.OpPointer;
/**
    * Package draw provides image composition functions.
    * 
    * See "The Go image/draw package" for an introduction to this package:
    * https://golang.org/doc/articles/image_draw.html
**/
class Draw {
    static public inline function benchmarkFillOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkfillover.benchmarkFillOver(_b);
    static public inline function benchmarkFillSrc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkfillsrc.benchmarkFillSrc(_b);
    static public inline function benchmarkCopyOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkcopyover.benchmarkCopyOver(_b);
    static public inline function benchmarkCopySrc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkcopysrc.benchmarkCopySrc(_b);
    static public inline function benchmarkNRGBAOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarknrgbaover.benchmarkNRGBAOver(_b);
    static public inline function benchmarkNRGBASrc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarknrgbasrc.benchmarkNRGBASrc(_b);
    static public inline function benchmarkYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkycbcr.benchmarkYCbCr(_b);
    static public inline function benchmarkGray(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgray.benchmarkGray(_b);
    static public inline function benchmarkCMYK(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkcmyk.benchmarkCMYK(_b);
    static public inline function benchmarkGlyphOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkglyphover.benchmarkGlyphOver(_b);
    static public inline function benchmarkRGBAMaskOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkrgbamaskover.benchmarkRGBAMaskOver(_b);
    static public inline function benchmarkGrayMaskOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgraymaskover.benchmarkGrayMaskOver(_b);
    static public inline function benchmarkRGBA64ImageMaskOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkrgba64imagemaskover.benchmarkRGBA64ImageMaskOver(_b);
    static public inline function benchmarkRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkrgba.benchmarkRGBA(_b);
    static public inline function benchmarkPalettedFill(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkpalettedfill.benchmarkPalettedFill(_b);
    static public inline function benchmarkPalettedRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkpalettedrgba.benchmarkPalettedRGBA(_b);
    static public inline function benchmarkGenericOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgenericover.benchmarkGenericOver(_b);
    static public inline function benchmarkGenericMaskOver(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgenericmaskover.benchmarkGenericMaskOver(_b);
    static public inline function benchmarkGenericSrc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgenericsrc.benchmarkGenericSrc(_b);
    static public inline function benchmarkGenericMaskSrc(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.image.draw.Draw_benchmarkgenericmasksrc.benchmarkGenericMaskSrc(_b);
    static public inline function testClip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testclip.testClip(_t);
    /**
        * Draw calls DrawMask with a nil mask.
    **/
    static public inline function draw(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _op:Op):Void stdgo._internal.image.draw.Draw_draw.draw(_dst, _r, _src, _sp, _op);
    /**
        * DrawMask aligns r.Min in dst with sp in src and mp in mask and then replaces the rectangle r
        * in dst with the result of a Porter-Duff composition. A nil mask is treated as opaque.
    **/
    static public inline function drawMask(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _mask:stdgo._internal.image.Image_image.Image, _mp:stdgo._internal.image.Image_point.Point, _op:Op):Void stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst, _r, _src, _sp, _mask, _mp, _op);
    static public inline function testDraw(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testdraw.testDraw(_t);
    static public inline function testDrawOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testdrawoverlap.testDrawOverlap(_t);
    /**
        * TestNonZeroSrcPt checks drawing with a non-zero src point parameter.
    **/
    static public inline function testNonZeroSrcPt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testnonzerosrcpt.testNonZeroSrcPt(_t);
    static public inline function testFill(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testfill.testFill(_t);
    static public inline function testDrawSrcNonpremultiplied(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testdrawsrcnonpremultiplied.testDrawSrcNonpremultiplied(_t);
    /**
        * TestFloydSteinbergCheckerboard tests that the result of Floyd-Steinberg
        * error diffusion of a uniform 50% gray source image with a black-and-white
        * palette is a checkerboard pattern.
    **/
    static public inline function testFloydSteinbergCheckerboard(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testfloydsteinbergcheckerboard.testFloydSteinbergCheckerboard(_t);
    /**
        * TestPaletted tests that the drawPaletted function behaves the same
        * regardless of whether dst is an *image.Paletted.
    **/
    static public inline function testPaletted(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testpaletted.testPaletted(_t);
    static public inline function testSqDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.image.draw.Draw_testsqdiff.testSqDiff(_t);
}
