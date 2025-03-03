package stdgo._internal.image.draw;
function testDraw(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _test_4:stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest = ({} : stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest);
        var _i_5116107_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5116072_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rr_0:stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle> = (null : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        var _golden_7:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_8:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _dst_6:stdgo._internal.image.draw.Draw_image.Image = (null : stdgo._internal.image.draw.Draw_image.Image);
        var _r_2:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _x_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _rr_0 = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(9, 9, ...[stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (5 : stdgo.GoInt), (12 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__()].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
                    if ((0i32 : stdgo.GoInt) < (_rr_0.length)) {
                        _gotoNext = 5117826i32;
                    } else {
                        _gotoNext = 5117829i32;
                    };
                } else if (__value__ == (5116064i32)) {
                    _i_5116072_1++;
                    _gotoNext = 5117827i32;
                } else if (__value__ == (5116081i32)) {
                    _r_2 = _rr_0[(_i_5116072_1 : stdgo.GoInt)];
                    _gotoNext = 5116084i32;
                } else if (__value__ == (5116084i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5117823i32;
                    } else {
                        _gotoNext = 5116064i32;
                    };
                } else if (__value__ == (5116096i32)) {
                    _i_5116107_3++;
                    _gotoNext = 5117824i32;
                } else if (__value__ == (5116123i32)) {
                    _test_4 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(_i_5116107_3 : stdgo.GoInt)];
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 5116128i32;
                } else if (__value__ == (5116128i32)) {
                    if ((_i_5 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5116151i32;
                    } else {
                        _gotoNext = 5116096i32;
                    };
                } else if (__value__ == (5116147i32)) {
                    _i_5++;
                    _gotoNext = 5116128i32;
                } else if (__value__ == (5116151i32)) {
                    _dst_6 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__hgradred._hgradRed((255 : stdgo.GoInt))) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>).subImage(_r_2?.__copy__())) : stdgo._internal.image.draw.Draw_image.Image)) : stdgo._internal.image.draw.Draw_image.Image);
                    _gotoNext = 5116402i32;
                } else if (__value__ == (5116402i32)) {
                    {
                        final __value__ = _i_5;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 5116417i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 5116465i32;
                        } else {
                            _gotoNext = 5116623i32;
                        };
                    };
                } else if (__value__ == (5116417i32)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowerrgba._convertToSlowerRGBA(_dst_6));
                    _gotoNext = 5116623i32;
                } else if (__value__ == (5116465i32)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowestrgba._convertToSlowestRGBA(_dst_6));
                    _gotoNext = 5116623i32;
                } else if (__value__ == (5116623i32)) {
                    _golden_7 = stdgo._internal.image.draw.Draw__makegolden._makeGolden(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    _b_8 = _dst_6.bounds()?.__copy__();
                    if (!_b_8.eq(_golden_7.bounds()?.__copy__())) {
                        _gotoNext = 5116777i32;
                    } else {
                        _gotoNext = 5117012i32;
                    };
                } else if (__value__ == (5116777i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: bounds %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(stdgo.Go.asInterface(_dst_6.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_golden_7.bounds())));
                    _i_5++;
                    _gotoNext = 5116128i32;
                } else if (__value__ == (5117012i32)) {
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    if (stdgo._internal.image.Image_pt.pt((8 : stdgo.GoInt), (8 : stdgo.GoInt)).in_(_r_2?.__copy__())) {
                        _gotoNext = 5117130i32;
                    } else {
                        _gotoNext = 5117516i32;
                    };
                } else if (__value__ == (5117130i32)) {
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt)), _test_4._expected)) {
                        _gotoNext = 5117299i32;
                    } else {
                        _gotoNext = 5117516i32;
                    };
                } else if (__value__ == (5117299i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: at (8, 8) %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt))), stdgo.Go.toInterface(_test_4._expected));
                    _i_5++;
                    _gotoNext = 5116128i32;
                } else if (__value__ == (5117516i32)) {
                    _y_9 = _b_8.min.y;
                    _gotoNext = 5117516i32;
                    if ((_y_9 < _b_8.max.y : Bool)) {
                        _gotoNext = 5117551i32;
                    } else {
                        _gotoNext = 5116147i32;
                    };
                } else if (__value__ == (5117547i32)) {
                    _y_9++;
                    _gotoNext = 5117516i32;
                } else if (__value__ == (5117551i32)) {
                    _x_10 = _b_8.min.x;
                    _gotoNext = 5117558i32;
                } else if (__value__ == (5117558i32)) {
                    if ((_x_10 < _b_8.max.x : Bool)) {
                        _gotoNext = 5117593i32;
                    } else {
                        _gotoNext = 5117547i32;
                    };
                } else if (__value__ == (5117589i32)) {
                    _x_10++;
                    _gotoNext = 5117558i32;
                } else if (__value__ == (5117593i32)) {
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at(_x_10, _y_9), _golden_7.at(_x_10, _y_9))) {
                        _gotoNext = 5117639i32;
                    } else {
                        _gotoNext = 5117589i32;
                    };
                } else if (__value__ == (5117639i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: at (%d, %d), %v versus golden %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_x_10), stdgo.Go.toInterface(_y_9), stdgo.Go.toInterface(_dst_6.at(_x_10, _y_9)), stdgo.Go.toInterface(_golden_7.at(_x_10, _y_9)));
                    stdgo._internal.image.draw.Draw__i_5116107._i_5116107++;
                    _gotoNext = 5117824i32;
                } else if (__value__ == (5117823i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(0i32 : stdgo.GoInt)];
                        _i_5116107_3 = @:binopAssign __tmp__0;
                        _test_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5117824i32;
                } else if (__value__ == (5117824i32)) {
                    if (_i_5116107_3 < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5116123i32;
                    } else {
                        _gotoNext = 5116064i32;
                    };
                } else if (__value__ == (5117826i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _rr_0[(0i32 : stdgo.GoInt)];
                        _i_5116072_1 = @:binopAssign __tmp__0;
                        _r_2 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5117827i32;
                } else if (__value__ == (5117827i32)) {
                    if (_i_5116072_1 < (_rr_0.length)) {
                        _gotoNext = 5116081i32;
                    } else {
                        _gotoNext = 5117829i32;
                    };
                } else if (__value__ == (5117829i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
