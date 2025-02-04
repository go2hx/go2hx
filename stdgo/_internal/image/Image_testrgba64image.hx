package stdgo._internal.image;
function testRGBA64Image(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _memset = function(_s:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt8):Void {
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = _v;
            };
        };
        var _r = (stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        var _testCases = (new stdgo.Slice<stdgo._internal.image.Image_image.Image>(14, 14, ...[
stdgo.Go.asInterface(stdgo._internal.image.Image_newalpha.newAlpha(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newalpha16.newAlpha16(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newcmyk.newCMYK(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newgray.newGray(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newgray16.newGray16(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newnrgba.newNRGBA(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newnrgba64.newNRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newnycbcra.newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(stdgo._internal.image.Image_newpaletted.newPaletted(_r?.__copy__(), stdgo._internal.image.color.palette.Palette_plan9.plan9)),
stdgo.Go.asInterface(stdgo._internal.image.Image_newrgba.newRGBA(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newrgba64.newRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newuniform.newUniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64)))),
stdgo.Go.asInterface(stdgo._internal.image.Image_newycbcr.newYCbCr(_r?.__copy__(), (0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(_r)]) : stdgo.Slice<stdgo._internal.image.Image_image.Image>);
        for (__0 => _tc in _testCases) {
            {
                final __type__ = _tc;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_t__interface_0.T__interface_0))) {
                    var _tc:stdgo._internal.image.Image_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.image.Image_t__interface_0.T__interface_0) : cast __type__;
                    _tc.setRGBA64((1 : stdgo.GoInt), (1 : stdgo.GoInt), (new stdgo._internal.image.color.Color_rgba64.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>) : __type__.__underlying__().value;
                    _memset((@:checkr _tc ?? throw "null pointer dereference").yCbCr.y, (119 : stdgo.GoUInt8));
                    _memset((@:checkr _tc ?? throw "null pointer dereference").yCbCr.cb, (136 : stdgo.GoUInt8));
                    _memset((@:checkr _tc ?? throw "null pointer dereference").yCbCr.cr, (153 : stdgo.GoUInt8));
                    _memset((@:checkr _tc ?? throw "null pointer dereference").a, (170 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>) : __type__.__underlying__().value;
                    (@:checkr _tc ?? throw "null pointer dereference").c = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba64.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>) : __type__.__underlying__().value;
                    _memset((@:checkr _tc ?? throw "null pointer dereference").y, (119 : stdgo.GoUInt8));
                    _memset((@:checkr _tc ?? throw "null pointer dereference").cb, (136 : stdgo.GoUInt8));
                    _memset((@:checkr _tc ?? throw "null pointer dereference").cr, (153 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_rectangle.Rectangle))) {
                    var _tc:stdgo._internal.image.Image_rectangle.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image_rectangle.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.Image_rectangle.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image_rectangle.Rectangle) : __type__.__underlying__().value;
                } else {
                    var _tc:stdgo._internal.image.Image_image.Image = __type__ == null ? (null : stdgo._internal.image.Image_image.Image) : cast __type__;
                    @:check2r _t.errorf(("could not initialize pixels for %T" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                    continue;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc) : stdgo._internal.image.Image_rgba64image.RGBA64Image)) : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image_rgba64image.RGBA64Image), _1 : false };
            }, _rgba64Image = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("%T is not an RGBA64Image" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                continue;
            };
            var _got = (_rgba64Image.rGBA64At((1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.color.Color_rgba64.RGBA64);
            var __tmp__ = _tc.at((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rGBA(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;
            if ((((((_got.r : stdgo.GoUInt32) != _wantR) || ((_got.g : stdgo.GoUInt32) != _wantG) : Bool) || ((_got.b : stdgo.GoUInt32) != _wantB) : Bool) || ((_got.a : stdgo.GoUInt32) != _wantA) : Bool)) {
                @:check2r _t.errorf(("%T:\ngot  (0x%04X, 0x%04X, 0x%04X, 0x%04X)\nwant (0x%04X, 0x%04X, 0x%04X, 0x%04X)" : stdgo.GoString), stdgo.Go.toInterface(_tc), stdgo.Go.toInterface(_got.r), stdgo.Go.toInterface(_got.g), stdgo.Go.toInterface(_got.b), stdgo.Go.toInterface(_got.a), stdgo.Go.toInterface(_wantR), stdgo.Go.toInterface(_wantG), stdgo.Go.toInterface(_wantB), stdgo.Go.toInterface(_wantA));
                continue;
            };
        };
    }
