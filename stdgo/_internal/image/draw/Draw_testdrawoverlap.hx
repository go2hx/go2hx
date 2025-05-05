package stdgo._internal.image.draw;
function testDrawOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _golden_19:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var _m_15:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _xoff_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _op_12:stdgo._internal.image.draw.Draw_op.Op = ((0 : stdgo.GoInt) : stdgo._internal.image.draw.Draw_op.Op);
        var _iterator_5111153_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_18:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _src_17:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _dst_16:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _loopBreak = false;
        var _yoff_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L521"
                    if ((0i64 : stdgo.GoInt) < ((new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>).length)) {
                        _gotoNext = 5112345i64;
                    } else {
                        _gotoNext = 5112348i64;
                    };
                } else if (__value__ == (5111144i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L521"
                    _iterator_5111153_11++;
                    _gotoNext = 5112346i64;
                } else if (__value__ == (5111175i64)) {
                    _op_12 = (new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>)[(_iterator_5111153_11 : stdgo.GoInt)];
                    _yoff_13 = (-2 : stdgo.GoInt);
                    _gotoNext = 5111179i64;
                } else if (__value__ == (5111179i64)) {
                    //"file://#L0"
                    if ((_yoff_13 <= (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5111213i64;
                    } else {
                        _gotoNext = 5111144i64;
                    };
                } else if (__value__ == (5111206i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L522"
                    _yoff_13++;
                    _gotoNext = 5111179i64;
                } else if (__value__ == (5111213i64)) {
                    _gotoNext = 5111217i64;
                } else if (__value__ == (5111217i64)) {
                    _xoff_14 = (-2 : stdgo.GoInt);
                    _loopBreak = false;
                    _gotoNext = 5111226i64;
                } else if (__value__ == (5111226i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_xoff_14 <= (2 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5111260i64;
                    } else {
                        _gotoNext = 5111206i64;
                    };
                } else if (__value__ == (5111253i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L524"
                    _xoff_14++;
                    _gotoNext = 5111226i64;
                } else if (__value__ == (5111260i64)) {
                    _m_15 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__gradyellow._gradYellow((127 : stdgo.GoInt))) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _dst_16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m_15.subImage(stdgo._internal.image.Image_rect.rect((5 : stdgo.GoInt), (5 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _src_17 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m_15.subImage(stdgo._internal.image.Image_rect.rect(((5 : stdgo.GoInt) + _xoff_14 : stdgo.GoInt), ((5 : stdgo.GoInt) + _yoff_13 : stdgo.GoInt), ((10 : stdgo.GoInt) + _xoff_14 : stdgo.GoInt), ((10 : stdgo.GoInt) + _yoff_13 : stdgo.GoInt))?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _b_18 = _dst_16.bounds()?.__copy__();
                    _golden_19 = stdgo._internal.image.draw.Draw__makegolden._makeGolden(stdgo.Go.asInterface(_dst_16), _b_18?.__copy__(), stdgo.Go.asInterface(_src_17), _src_17.bounds().min?.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP?.__copy__(), _op_12);
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L531"
                    if (!_b_18.eq(_golden_19.bounds()?.__copy__())) {
                        _gotoNext = 5111674i64;
                    } else {
                        _gotoNext = 5111907i64;
                    };
                } else if (__value__ == (5111674i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L532"
                    _t.errorf(("drawOverlap xoff=%d,yoff=%d: bounds %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(_xoff_14), stdgo.Go.toInterface(_yoff_13), stdgo.Go.toInterface(stdgo.Go.asInterface(_dst_16.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_golden_19.bounds())));
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L524"
                    _xoff_14++;
                    _gotoNext = 5111226i64;
                } else if (__value__ == (5111907i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L536"
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_dst_16), _b_18?.__copy__(), stdgo.Go.asInterface(_src_17), _src_17.bounds().min?.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP?.__copy__(), _op_12);
                    _y_20 = _b_18.min.y;
                    _gotoNext = 5112039i64;
                } else if (__value__ == (5112039i64)) {
                    //"file://#L0"
                    if ((_y_20 < _b_18.max.y : Bool)) {
                        _gotoNext = 5112074i64;
                    } else {
                        _gotoNext = 5111253i64;
                    };
                } else if (__value__ == (5112070i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L538"
                    _y_20++;
                    _gotoNext = 5112039i64;
                } else if (__value__ == (5112074i64)) {
                    _x_21 = _b_18.min.x;
                    _gotoNext = 5112081i64;
                } else if (__value__ == (5112081i64)) {
                    //"file://#L0"
                    if ((_x_21 < _b_18.max.x : Bool)) {
                        _gotoNext = 5112116i64;
                    } else {
                        _gotoNext = 5112070i64;
                    };
                } else if (__value__ == (5112112i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L539"
                    _x_21++;
                    _gotoNext = 5112081i64;
                } else if (__value__ == (5112116i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L540"
                    if (!stdgo._internal.image.draw.Draw__eq._eq(_dst_16.at(_x_21, _y_20), _golden_19.at(_x_21, _y_20))) {
                        _gotoNext = 5112162i64;
                    } else {
                        _gotoNext = 5112112i64;
                    };
                } else if (__value__ == (5112162i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L541"
                    _t.errorf(("drawOverlap xoff=%d,yoff=%d: at (%d, %d), %v versus golden %v" : stdgo.GoString), stdgo.Go.toInterface(_xoff_14), stdgo.Go.toInterface(_yoff_13), stdgo.Go.toInterface(_x_21), stdgo.Go.toInterface(_y_20), stdgo.Go.toInterface(_dst_16.at(_x_21, _y_20)), stdgo.Go.toInterface(_golden_19.at(_x_21, _y_20)));
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/draw_test.go#L524"
                    _xoff_14++;
                    _gotoNext = 5111226i64;
                } else if (__value__ == (5112345i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>)[(0i64 : stdgo.GoInt)];
                        _iterator_5111153_11 = @:binopAssign __tmp__0;
                        _op_12 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5112346i64;
                } else if (__value__ == (5112346i64)) {
                    //"file://#L0"
                    if (_iterator_5111153_11 < ((new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>).length)) {
                        _gotoNext = 5111175i64;
                    } else {
                        _gotoNext = 5112348i64;
                    };
                } else if (__value__ == (5112348i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
