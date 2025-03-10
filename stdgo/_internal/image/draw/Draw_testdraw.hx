package stdgo._internal.image.draw;
function testDraw(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _y_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_8:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _dst_6:stdgo._internal.image.draw.Draw_image.Image = (null : stdgo._internal.image.draw.Draw_image.Image);
        var _x_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _i_5120390_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rr_0:stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle> = (null : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        var _golden_7:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _test_4:stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest = ({} : stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest);
        var _i_5120425_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _rr_0 = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(9, 9, ...[stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (5 : stdgo.GoInt), (12 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__()].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
                    if ((0i32 : stdgo.GoInt) < (_rr_0.length)) {
                        _gotoNext = 5122144i32;
                    } else {
                        _gotoNext = 5122147i32;
                    };
                } else if (__value__ == (5120382i32)) {
                    _i_5120390_1++;
                    _gotoNext = 5122145i32;
                } else if (__value__ == (5120399i32)) {
                    _r_2 = _rr_0[(_i_5120390_1 : stdgo.GoInt)];
                    _gotoNext = 5120402i32;
                } else if (__value__ == (5120402i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5122141i32;
                    } else {
                        _gotoNext = 5120382i32;
                    };
                } else if (__value__ == (5120414i32)) {
                    _i_5120425_3++;
                    _gotoNext = 5122142i32;
                } else if (__value__ == (5120441i32)) {
                    _test_4 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(_i_5120425_3 : stdgo.GoInt)];
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 5120446i32;
                } else if (__value__ == (5120446i32)) {
                    if ((_i_5 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5120469i32;
                    } else {
                        _gotoNext = 5120414i32;
                    };
                } else if (__value__ == (5120465i32)) {
                    _i_5++;
                    _gotoNext = 5120446i32;
                } else if (__value__ == (5120469i32)) {
                    _dst_6 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__hgradred._hgradRed((255 : stdgo.GoInt))) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>).subImage(_r_2?.__copy__())) : stdgo._internal.image.draw.Draw_image.Image)) : stdgo._internal.image.draw.Draw_image.Image);
                    _gotoNext = 5120720i32;
                } else if (__value__ == (5120720i32)) {
                    {
                        final __value__ = _i_5;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 5120735i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 5120783i32;
                        } else {
                            _gotoNext = 5120941i32;
                        };
                    };
                } else if (__value__ == (5120735i32)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowerrgba._convertToSlowerRGBA(_dst_6));
                    _gotoNext = 5120941i32;
                } else if (__value__ == (5120783i32)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowestrgba._convertToSlowestRGBA(_dst_6));
                    _gotoNext = 5120941i32;
                } else if (__value__ == (5120941i32)) {
                    _golden_7 = stdgo._internal.image.draw.Draw__makegolden._makeGolden(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    _b_8 = _dst_6.bounds()?.__copy__();
                    if (!_b_8.eq(_golden_7.bounds()?.__copy__())) {
                        _gotoNext = 5121095i32;
                    } else {
                        _gotoNext = 5121330i32;
                    };
                } else if (__value__ == (5121095i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: bounds %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(stdgo.Go.asInterface(_dst_6.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_golden_7.bounds())));
                    _i_5++;
                    _gotoNext = 5120446i32;
                } else if (__value__ == (5121330i32)) {
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    if (stdgo._internal.image.Image_pt.pt((8 : stdgo.GoInt), (8 : stdgo.GoInt)).in_(_r_2?.__copy__())) {
                        _gotoNext = 5121448i32;
                    } else {
                        _gotoNext = 5121834i32;
                    };
                } else if (__value__ == (5121448i32)) {
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt)), _test_4._expected)) {
                        _gotoNext = 5121617i32;
                    } else {
                        _gotoNext = 5121834i32;
                    };
                } else if (__value__ == (5121617i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: at (8, 8) %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt))), stdgo.Go.toInterface(_test_4._expected));
                    _i_5++;
                    _gotoNext = 5120446i32;
                } else if (__value__ == (5121834i32)) {
                    _y_9 = _b_8.min.y;
                    _gotoNext = 5121834i32;
                    if ((_y_9 < _b_8.max.y : Bool)) {
                        _gotoNext = 5121869i32;
                    } else {
                        _gotoNext = 5120465i32;
                    };
                } else if (__value__ == (5121865i32)) {
                    _y_9++;
                    _gotoNext = 5121834i32;
                } else if (__value__ == (5121869i32)) {
                    _x_10 = _b_8.min.x;
                    _gotoNext = 5121876i32;
                } else if (__value__ == (5121876i32)) {
                    if ((_x_10 < _b_8.max.x : Bool)) {
                        _gotoNext = 5121911i32;
                    } else {
                        _gotoNext = 5121865i32;
                    };
                } else if (__value__ == (5121907i32)) {
                    _x_10++;
                    _gotoNext = 5121876i32;
                } else if (__value__ == (5121911i32)) {
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at(_x_10, _y_9), _golden_7.at(_x_10, _y_9))) {
                        _gotoNext = 5121957i32;
                    } else {
                        _gotoNext = 5121907i32;
                    };
                } else if (__value__ == (5121957i32)) {
                    @:check2r _t.errorf(("draw %v %s on %T: at (%d, %d), %v versus golden %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_x_10), stdgo.Go.toInterface(_y_9), stdgo.Go.toInterface(_dst_6.at(_x_10, _y_9)), stdgo.Go.toInterface(_golden_7.at(_x_10, _y_9)));
                    stdgo._internal.image.draw.Draw__i_5120425._i_5120425++;
                    _gotoNext = 5122142i32;
                } else if (__value__ == (5122141i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(0i32 : stdgo.GoInt)];
                        _i_5120425_3 = @:binopAssign __tmp__0;
                        _test_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5122142i32;
                } else if (__value__ == (5122142i32)) {
                    if (_i_5120425_3 < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5120441i32;
                    } else {
                        _gotoNext = 5120382i32;
                    };
                } else if (__value__ == (5122144i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _rr_0[(0i32 : stdgo.GoInt)];
                        _i_5120390_1 = @:binopAssign __tmp__0;
                        _r_2 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5122145i32;
                } else if (__value__ == (5122145i32)) {
                    if (_i_5120390_1 < (_rr_0.length)) {
                        _gotoNext = 5120399i32;
                    } else {
                        _gotoNext = 5122147i32;
                    };
                } else if (__value__ == (5122147i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
