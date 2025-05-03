package stdgo._internal.image.draw;
function testDraw(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rr_0:stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle> = (null : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        var _b_8:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _iterator_5109377_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _iterator_5109342_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _test_4:stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest = ({} : stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest);
        var _x_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _golden_7:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var _dst_6:stdgo._internal.image.draw.Draw_image.Image = (null : stdgo._internal.image.draw.Draw_image.Image);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _rr_0 = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(9, 9, ...[stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (5 : stdgo.GoInt), (12 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__()].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L471"
                    if ((0i64 : stdgo.GoInt) < (_rr_0.length)) {
                        _gotoNext = 5111096i64;
                    } else {
                        _gotoNext = 5111099i64;
                    };
                } else if (__value__ == (5109334i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L471"
                    _iterator_5109342_1++;
                    _gotoNext = 5111097i64;
                } else if (__value__ == (5109351i64)) {
                    _r_2 = _rr_0[(_iterator_5109342_1 : stdgo.GoInt)];
                    _gotoNext = 5109354i64;
                } else if (__value__ == (5109354i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L473"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5111093i64;
                    } else {
                        _gotoNext = 5109334i64;
                    };
                } else if (__value__ == (5109366i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L473"
                    _iterator_5109377_3++;
                    _gotoNext = 5111094i64;
                } else if (__value__ == (5109393i64)) {
                    _test_4 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(_iterator_5109377_3 : stdgo.GoInt)];
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 5109398i64;
                } else if (__value__ == (5109398i64)) {
                    //"file://#L0"
                    if ((_i_5 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5109421i64;
                    } else {
                        _gotoNext = 5109366i64;
                    };
                } else if (__value__ == (5109417i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L474"
                    _i_5++;
                    _gotoNext = 5109398i64;
                } else if (__value__ == (5109421i64)) {
                    _dst_6 = (stdgo.Go.typeAssert((stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__hgradred._hgradRed((255 : stdgo.GoInt))) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>).subImage(_r_2?.__copy__())) : stdgo._internal.image.draw.Draw_image.Image)) : stdgo._internal.image.draw.Draw_image.Image);
                    _gotoNext = 5109672i64;
                } else if (__value__ == (5109672i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L479"
                    {
                        final __value__ = _i_5;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 5109687i64;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 5109735i64;
                        } else {
                            _gotoNext = 5109893i64;
                        };
                    };
                } else if (__value__ == (5109687i64)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowerrgba._convertToSlowerRGBA(_dst_6));
                    _gotoNext = 5109893i64;
                } else if (__value__ == (5109735i64)) {
                    _dst_6 = stdgo.Go.asInterface(stdgo._internal.image.draw.Draw__converttoslowestrgba._convertToSlowestRGBA(_dst_6));
                    _gotoNext = 5109893i64;
                } else if (__value__ == (5109893i64)) {
                    _golden_7 = stdgo._internal.image.draw.Draw__makegolden._makeGolden(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    _b_8 = _dst_6.bounds()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L489"
                    if (!_b_8.eq(_golden_7.bounds()?.__copy__())) {
                        _gotoNext = 5110047i64;
                    } else {
                        _gotoNext = 5110282i64;
                    };
                } else if (__value__ == (5110047i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L490"
                    _t.errorf(("draw %v %s on %T: bounds %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(stdgo.Go.asInterface(_dst_6.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_golden_7.bounds())));
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L474"
                    _i_5++;
                    _gotoNext = 5109398i64;
                } else if (__value__ == (5110282i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L495"
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst_6, stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(), _test_4._src, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._mask, stdgo._internal.image.Image_zp.zP?.__copy__(), _test_4._op);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L496"
                    if (stdgo._internal.image.Image_pt.pt((8 : stdgo.GoInt), (8 : stdgo.GoInt)).in_(_r_2?.__copy__())) {
                        _gotoNext = 5110400i64;
                    } else {
                        _gotoNext = 5110786i64;
                    };
                } else if (__value__ == (5110400i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L499"
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt)), _test_4._expected)) {
                        _gotoNext = 5110569i64;
                    } else {
                        _gotoNext = 5110786i64;
                    };
                } else if (__value__ == (5110569i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L500"
                    _t.errorf(("draw %v %s on %T: at (8, 8) %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_dst_6.at((8 : stdgo.GoInt), (8 : stdgo.GoInt))), stdgo.Go.toInterface(_test_4._expected));
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L474"
                    _i_5++;
                    _gotoNext = 5109398i64;
                } else if (__value__ == (5110786i64)) {
                    _y_9 = _b_8.min.y;
                    _gotoNext = 5110786i64;
                    //"file://#L0"
                    if ((_y_9 < _b_8.max.y : Bool)) {
                        _gotoNext = 5110821i64;
                    } else {
                        _gotoNext = 5109417i64;
                    };
                } else if (__value__ == (5110817i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L506"
                    _y_9++;
                    _gotoNext = 5110786i64;
                } else if (__value__ == (5110821i64)) {
                    _x_10 = _b_8.min.x;
                    _gotoNext = 5110828i64;
                } else if (__value__ == (5110828i64)) {
                    //"file://#L0"
                    if ((_x_10 < _b_8.max.x : Bool)) {
                        _gotoNext = 5110863i64;
                    } else {
                        _gotoNext = 5110817i64;
                    };
                } else if (__value__ == (5110859i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L507"
                    _x_10++;
                    _gotoNext = 5110828i64;
                } else if (__value__ == (5110863i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L508"
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_6.at(_x_10, _y_9), _golden_7.at(_x_10, _y_9))) {
                        _gotoNext = 5110909i64;
                    } else {
                        _gotoNext = 5110859i64;
                    };
                } else if (__value__ == (5110909i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L509"
                    _t.errorf(("draw %v %s on %T: at (%d, %d), %v versus golden %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r_2)), stdgo.Go.toInterface(_test_4._desc), stdgo.Go.toInterface(_dst_6), stdgo.Go.toInterface(_x_10), stdgo.Go.toInterface(_y_9), stdgo.Go.toInterface(_dst_6.at(_x_10, _y_9)), stdgo.Go.toInterface(_golden_7.at(_x_10, _y_9)));
                    //"file://#L0"
                    stdgo._internal.image.draw.Draw__iterator_5109377._iterator_5109377++;
                    _gotoNext = 5111094i64;
                } else if (__value__ == (5111093i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.image.draw.Draw__drawtests._drawTests[(0i64 : stdgo.GoInt)];
                        _iterator_5109377_3 = @:binopAssign __tmp__0;
                        _test_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5111094i64;
                } else if (__value__ == (5111094i64)) {
                    //"file://#L0"
                    if (_iterator_5109377_3 < (stdgo._internal.image.draw.Draw__drawtests._drawTests.length)) {
                        _gotoNext = 5109393i64;
                    } else {
                        _gotoNext = 5109334i64;
                    };
                } else if (__value__ == (5111096i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _rr_0[(0i64 : stdgo.GoInt)];
                        _iterator_5109342_1 = @:binopAssign __tmp__0;
                        _r_2 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5111097i64;
                } else if (__value__ == (5111097i64)) {
                    //"file://#L0"
                    if (_iterator_5109342_1 < (_rr_0.length)) {
                        _gotoNext = 5109351i64;
                    } else {
                        _gotoNext = 5111099i64;
                    };
                } else if (__value__ == (5111099i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
