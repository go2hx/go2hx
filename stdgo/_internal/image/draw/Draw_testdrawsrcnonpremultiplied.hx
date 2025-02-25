package stdgo._internal.image.draw;
function testDrawSrcNonpremultiplied(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _opaqueGray = (new stdgo._internal.image.color.Color_nrgba.NRGBA((153 : stdgo.GoUInt8), (153 : stdgo.GoUInt8), (153 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA), _transparentBlue = (new stdgo._internal.image.color.Color_nrgba.NRGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA), _transparentGreen = (new stdgo._internal.image.color.Color_nrgba.NRGBA((0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA), _transparentRed = (new stdgo._internal.image.color.Color_nrgba.NRGBA((255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nrgba.NRGBA), _opaqueGray64 = (new stdgo._internal.image.color.Color_nrgba64.NRGBA64((39321 : stdgo.GoUInt16), (39321 : stdgo.GoUInt16), (39321 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64), _transparentPurple64 = (new stdgo._internal.image.color.Color_nrgba64.NRGBA64((65244 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (30292 : stdgo.GoUInt16), (0 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64);
        {
            var _dst = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (10 : stdgo.GoInt), (3 : stdgo.GoInt), (11 : stdgo.GoInt))?.__copy__());
            @:check2r _dst.setNRGBA((0 : stdgo.GoInt), (10 : stdgo.GoInt), _opaqueGray?.__copy__());
            var _src = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (20 : stdgo.GoInt), (4 : stdgo.GoInt), (21 : stdgo.GoInt))?.__copy__());
            @:check2r _src.setNRGBA((1 : stdgo.GoInt), (20 : stdgo.GoInt), _transparentBlue?.__copy__());
            @:check2r _src.setNRGBA((2 : stdgo.GoInt), (20 : stdgo.GoInt), _transparentGreen?.__copy__());
            @:check2r _src.setNRGBA((3 : stdgo.GoInt), (20 : stdgo.GoInt), _transparentRed?.__copy__());
            var _dr = (stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (10 : stdgo.GoInt), (3 : stdgo.GoInt), (11 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
            stdgo._internal.image.draw.Draw_draw.draw(stdgo.Go.asInterface(_dst), _dr?.__copy__(), stdgo.Go.asInterface(_src), (new stdgo._internal.image.Image_point.Point((1 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), (1 : stdgo._internal.image.draw.Draw_op.Op));
            {
                var __0 = (@:check2r _dst.at((0 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo._internal.image.color.Color_color.Color), __1 = (_opaqueGray?.__copy__() : stdgo._internal.image.color.Color_nrgba.NRGBA);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
                    @:check2r _t.errorf(("At(0, 10):\ngot  %#v\nwant %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
            {
                var __0 = (@:check2r _dst.at((1 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo._internal.image.color.Color_color.Color), __1 = (_transparentBlue?.__copy__() : stdgo._internal.image.color.Color_nrgba.NRGBA);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
                    @:check2r _t.errorf(("At(1, 10):\ngot  %#v\nwant %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
            {
                var __0 = (@:check2r _dst.at((2 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo._internal.image.color.Color_color.Color), __1 = (_transparentGreen?.__copy__() : stdgo._internal.image.color.Color_nrgba.NRGBA);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
                    @:check2r _t.errorf(("At(2, 10):\ngot  %#v\nwant %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
        };
        {
            var _dst = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
            @:check2r _dst.setNRGBA64((0 : stdgo.GoInt), (0 : stdgo.GoInt), _opaqueGray64?.__copy__());
            var _src = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
            @:check2r _src.setNRGBA64((0 : stdgo.GoInt), (0 : stdgo.GoInt), _transparentPurple64?.__copy__());
            stdgo._internal.image.draw.Draw_draw.draw(stdgo.Go.asInterface(_dst), @:check2r _dst.bounds()?.__copy__(), stdgo.Go.asInterface(_src), (new stdgo._internal.image.Image_point.Point((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), (1 : stdgo._internal.image.draw.Draw_op.Op));
            {
                var __0 = (@:check2r _dst.at((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.image.color.Color_color.Color), __1 = (_transparentPurple64?.__copy__() : stdgo._internal.image.color.Color_nrgba64.NRGBA64);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
                    @:check2r _t.errorf(("At(0, 0):\ngot  %#v\nwant %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
        };
    }
