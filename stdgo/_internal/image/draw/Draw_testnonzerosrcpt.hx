package stdgo._internal.image.draw;
function testNonZeroSrcPt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
        var _b = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L555"
        _b.set((0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L556"
        _b.set((1 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L557"
        _b.set((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L558"
        _b.set((1 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((5 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L559"
        stdgo._internal.image.draw.Draw_draw.draw(stdgo.Go.asInterface(_a), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__(), stdgo.Go.asInterface(_b), stdgo._internal.image.Image_pt.pt((1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__(), (0 : stdgo._internal.image.draw.Draw_op.Op));
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L560"
        if (!stdgo._internal.image.draw.Draw__eq._eq(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((5 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), _a.at((0 : stdgo.GoInt), (0 : stdgo.GoInt)))) {
            //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L561"
            _t.errorf(("non-zero src pt: want %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((5 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))), stdgo.Go.toInterface(_a.at((0 : stdgo.GoInt), (0 : stdgo.GoInt))));
        };
    }
