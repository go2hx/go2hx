package stdgo._internal.image;
function testRGBA64Image(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _memset = function(_s:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt8):Void {
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = _v;
            };
        };
        var _r = (stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _testCases = (new stdgo.Slice<stdgo._internal.image.Image_Image.Image>(14, 14, ...[
stdgo.Go.asInterface(stdgo._internal.image.Image_newAlpha.newAlpha(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newAlpha16.newAlpha16(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newCMYK.newCMYK(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newGray.newGray(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newGray16.newGray16(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newNRGBA.newNRGBA(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newNRGBA64.newNRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newNYCbCrA.newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(stdgo._internal.image.Image_newPaletted.newPaletted(_r?.__copy__(), stdgo._internal.image.color.palette.Palette_plan9.plan9)),
stdgo.Go.asInterface(stdgo._internal.image.Image_newRGBA.newRGBA(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newRGBA64.newRGBA64(_r?.__copy__())),
stdgo.Go.asInterface(stdgo._internal.image.Image_newUniform.newUniform(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA64.RGBA64() : stdgo._internal.image.color.Color_RGBA64.RGBA64)))),
stdgo.Go.asInterface(stdgo._internal.image.Image_newYCbCr.newYCbCr(_r?.__copy__(), (0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio))),
stdgo.Go.asInterface(_r)]) : stdgo.Slice<stdgo._internal.image.Image_Image.Image>);
        for (__0 => _tc in _testCases) {
            {
                final __type__ = _tc;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_T__interface_0.T__interface_0))) {
                    var _tc:stdgo._internal.image.Image_T__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.image.Image_T__interface_0.T__interface_0) : cast __type__;
                    _tc.setRGBA64((1 : stdgo.GoInt), (1 : stdgo.GoInt), (new stdgo._internal.image.color.Color_RGBA64.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_NYCbCrA.NYCbCrA>) : __type__.__underlying__().value;
                    _memset(_tc.ycbCr.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.ycbCr.cr, (153 : stdgo.GoUInt8));
                    _memset(_tc.a, (170 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>) : __type__.__underlying__().value;
                    _tc.c = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA64.RGBA64((32767 : stdgo.GoUInt16), (16383 : stdgo.GoUInt16), (0 : stdgo.GoUInt16), (32767 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>))) {
                    var _tc:stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>) : __type__.__underlying__().value;
                    _memset(_tc.y, (119 : stdgo.GoUInt8));
                    _memset(_tc.cb, (136 : stdgo.GoUInt8));
                    _memset(_tc.cr, (153 : stdgo.GoUInt8));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.image.Image_Rectangle.Rectangle))) {
                    var _tc:stdgo._internal.image.Image_Rectangle.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image_Rectangle.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.Image_Rectangle.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image_Rectangle.Rectangle) : __type__.__underlying__().value;
                } else {
                    var _tc:stdgo._internal.image.Image_Image.Image = __type__ == null ? (null : stdgo._internal.image.Image_Image.Image) : cast __type__;
                    _t.errorf(("could not initialize pixels for %T" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                    continue;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image)) : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image_RGBA64Image.RGBA64Image), _1 : false };
            }, _rgba64Image = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("%T is not an RGBA64Image" : stdgo.GoString), stdgo.Go.toInterface(_tc));
                continue;
            };
            var _got = (_rgba64Image.rgba64at((1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__() : stdgo._internal.image.color.Color_RGBA64.RGBA64);
            var __tmp__ = _tc.at((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rgba(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;
            if ((((((_got.r : stdgo.GoUInt32) != _wantR) || ((_got.g : stdgo.GoUInt32) != _wantG) : Bool) || ((_got.b : stdgo.GoUInt32) != _wantB) : Bool) || ((_got.a : stdgo.GoUInt32) != _wantA) : Bool)) {
                _t.errorf(("%T:\ngot  (0x%04X, 0x%04X, 0x%04X, 0x%04X)\nwant (0x%04X, 0x%04X, 0x%04X, 0x%04X)" : stdgo.GoString), stdgo.Go.toInterface(_tc), stdgo.Go.toInterface(_got.r), stdgo.Go.toInterface(_got.g), stdgo.Go.toInterface(_got.b), stdgo.Go.toInterface(_got.a), stdgo.Go.toInterface(_wantR), stdgo.Go.toInterface(_wantG), stdgo.Go.toInterface(_wantB), stdgo.Go.toInterface(_wantA));
                continue;
            };
        };
    }
