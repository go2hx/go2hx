package stdgo._internal.image.draw;
function testDrawOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src_17:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _dst_16:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _loopBreak = false;
        var _xoff_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _golden_19:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var _m_15:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        var _yoff_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _op_12:stdgo._internal.image.draw.Draw_op.Op = ((0 : stdgo.GoInt) : stdgo._internal.image.draw.Draw_op.Op);
        var _iterator_5111153_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _x_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_18:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((0i32 : stdgo.GoInt) < ((new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>).length)) {
                        _gotoNext = 5112345i32;
                    } else {
                        _gotoNext = 5112348i32;
                    };
                } else if (__value__ == (5111144i32)) {
                    _iterator_5111153_11++;
                    _gotoNext = 5112346i32;
                } else if (__value__ == (5111175i32)) {
                    _op_12 = (new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>)[(_iterator_5111153_11 : stdgo.GoInt)];
                    _yoff_13 = (-2 : stdgo.GoInt);
                    _gotoNext = 5111179i32;
                } else if (__value__ == (5111179i32)) {
                    if ((_yoff_13 <= (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5111213i32;
                    } else {
                        _gotoNext = 5111144i32;
                    };
                } else if (__value__ == (5111206i32)) {
                    _yoff_13++;
                    _gotoNext = 5111179i32;
                } else if (__value__ == (5111213i32)) {
                    _gotoNext = 5111217i32;
                } else if (__value__ == (5111217i32)) {
                    _xoff_14 = (-2 : stdgo.GoInt);
                    _loopBreak = false;
                    _gotoNext = 5111226i32;
                } else if (__value__ == (5111226i32)) {
                    if (!_loopBreak && ((_xoff_14 <= (2 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5111260i32;
                    } else {
                        _gotoNext = 5111206i32;
                    };
                } else if (__value__ == (5111253i32)) {
                    _xoff_14++;
                    _gotoNext = 5111226i32;
                } else if (__value__ == (5111260i32)) {
                    _m_15 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.draw.Draw__gradyellow._gradYellow((127 : stdgo.GoInt))) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _dst_16 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _m_15.subImage(stdgo._internal.image.Image_rect.rect((5 : stdgo.GoInt), (5 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _src_17 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _m_15.subImage(stdgo._internal.image.Image_rect.rect(((5 : stdgo.GoInt) + _xoff_14 : stdgo.GoInt), ((5 : stdgo.GoInt) + _yoff_13 : stdgo.GoInt), ((10 : stdgo.GoInt) + _xoff_14 : stdgo.GoInt), ((10 : stdgo.GoInt) + _yoff_13 : stdgo.GoInt))?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
                    _b_18 = @:check2r _dst_16.bounds()?.__copy__();
                    _golden_19 = stdgo._internal.image.draw.Draw__makegolden._makeGolden(stdgo.Go.asInterface(_dst_16), _b_18?.__copy__(), stdgo.Go.asInterface(_src_17), @:check2r _src_17.bounds().min?.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP?.__copy__(), _op_12);
                    if (!_b_18.eq(_golden_19.bounds()?.__copy__())) {
                        _gotoNext = 5111674i32;
                    } else {
                        _gotoNext = 5111907i32;
                    };
                } else if (__value__ == (5111674i32)) {
                    @:check2r _t.errorf(("drawOverlap xoff=%d,yoff=%d: bounds %v versus %v" : stdgo.GoString), stdgo.Go.toInterface(_xoff_14), stdgo.Go.toInterface(_yoff_13), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _dst_16.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_golden_19.bounds())));
                    _xoff_14++;
                    _gotoNext = 5111226i32;
                } else if (__value__ == (5111907i32)) {
                    stdgo._internal.image.draw.Draw_drawmask.drawMask(stdgo.Go.asInterface(_dst_16), _b_18?.__copy__(), stdgo.Go.asInterface(_src_17), @:check2r _src_17.bounds().min?.__copy__(), (null : stdgo._internal.image.Image_image.Image), stdgo._internal.image.Image_zp.zP?.__copy__(), _op_12);
                    _y_20 = _b_18.min.y;
                    _gotoNext = 5112039i32;
                } else if (__value__ == (5112039i32)) {
                    if ((_y_20 < _b_18.max.y : Bool)) {
                        _gotoNext = 5112074i32;
                    } else {
                        _gotoNext = 5111253i32;
                    };
                } else if (__value__ == (5112070i32)) {
                    _y_20++;
                    _gotoNext = 5112039i32;
                } else if (__value__ == (5112074i32)) {
                    _x_21 = _b_18.min.x;
                    _gotoNext = 5112081i32;
                } else if (__value__ == (5112081i32)) {
                    if ((_x_21 < _b_18.max.x : Bool)) {
                        _gotoNext = 5112116i32;
                    } else {
                        _gotoNext = 5112070i32;
                    };
                } else if (__value__ == (5112112i32)) {
                    _x_21++;
                    _gotoNext = 5112081i32;
                } else if (__value__ == (5112116i32)) {
                    if (!stdgo._internal.image.draw.Draw__eq._eq(@:check2r _dst_16.at(_x_21, _y_20), _golden_19.at(_x_21, _y_20))) {
                        _gotoNext = 5112162i32;
                    } else {
                        _gotoNext = 5112112i32;
                    };
                } else if (__value__ == (5112162i32)) {
                    @:check2r _t.errorf(("drawOverlap xoff=%d,yoff=%d: at (%d, %d), %v versus golden %v" : stdgo.GoString), stdgo.Go.toInterface(_xoff_14), stdgo.Go.toInterface(_yoff_13), stdgo.Go.toInterface(_x_21), stdgo.Go.toInterface(_y_20), stdgo.Go.toInterface(@:check2r _dst_16.at(_x_21, _y_20)), stdgo.Go.toInterface(_golden_19.at(_x_21, _y_20)));
                    _xoff_14++;
                    _gotoNext = 5111226i32;
                } else if (__value__ == (5112345i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>)[(0i32 : stdgo.GoInt)];
                        _iterator_5111153_11 = @:binopAssign __tmp__0;
                        _op_12 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5112346i32;
                } else if (__value__ == (5112346i32)) {
                    if (_iterator_5111153_11 < ((new stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>(2, 2, ...[(0 : stdgo._internal.image.draw.Draw_op.Op), (1 : stdgo._internal.image.draw.Draw_op.Op)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.draw.Draw_op.Op>).length)) {
                        _gotoNext = 5111175i32;
                    } else {
                        _gotoNext = 5112348i32;
                    };
                } else if (__value__ == (5112348i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
