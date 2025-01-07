package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2844397:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2844394:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2843805:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2843744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2845070:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2844525:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2844522:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2844315:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2844311:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2843792:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2843744 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2843752i32;
                } else if (__value__ == (2843752i32)) {
                    if (((_i_2843744 < (_s.length) : Bool) && (_i_2843744 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2843788i32;
                    } else {
                        _gotoNext = 2844177i32;
                    };
                } else if (__value__ == (2843788i32)) {
                    _sr_2843792 = _s[(_i_2843744 : stdgo.GoInt)];
                    _tr_2843805 = _t[(_i_2843744 : stdgo.GoInt)];
                    if (((_sr_2843792 | _tr_2843805 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2843844i32;
                    } else {
                        _gotoNext = 2843888i32;
                    };
                } else if (__value__ == (2843844i32)) {
                    _gotoNext = 2844202i32;
                } else if (__value__ == (2843888i32)) {
                    if (_tr_2843805 == (_sr_2843792)) {
                        _gotoNext = 2843900i32;
                    } else {
                        _gotoNext = 2843965i32;
                    };
                } else if (__value__ == (2843900i32)) {
                    _i_2843744++;
                    _gotoNext = 2843752i32;
                } else if (__value__ == (2843965i32)) {
                    if ((_tr_2843805 < _sr_2843792 : Bool)) {
                        _gotoNext = 2843976i32;
                    } else {
                        _gotoNext = 2844051i32;
                    };
                } else if (__value__ == (2843976i32)) {
                    {
                        final __tmp__0 = _sr_2843792;
                        final __tmp__1 = _tr_2843805;
                        _tr_2843805 = __tmp__0;
                        _sr_2843792 = __tmp__1;
                    };
                    _gotoNext = 2844051i32;
                } else if (__value__ == (2844051i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2843792 : Bool) && (_sr_2843792 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2843805 == ((_sr_2843792 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2844097i32;
                    } else {
                        _gotoNext = 2844117i32;
                    };
                } else if (__value__ == (2844097i32)) {
                    _i_2843744++;
                    _gotoNext = 2843752i32;
                } else if (__value__ == (2844117i32)) {
                    return false;
                    _i_2843744++;
                    _gotoNext = 2843752i32;
                } else if (__value__ == (2844177i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2844202i32;
                } else if (__value__ == (2844202i32)) {
                    _s = (_s.__slice__(_i_2843744) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2843744) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2844237i32;
                } else if (__value__ == (2844237i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2844268i32;
                    } else {
                        _gotoNext = 2845243i32;
                    };
                } else if (__value__ == (2844268i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2844349i32;
                    } else {
                        _gotoNext = 2844389i32;
                    };
                } else if (__value__ == (2844349i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2844311 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2844453i32;
                } else if (__value__ == (2844389i32)) {
                    _gotoNext = 2844389i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2844394 = __tmp__._0;
                        _size_2844397 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2844394;
                        final __tmp__1 = (_s.__slice__(_size_2844397) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2844311 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2844453i32;
                } else if (__value__ == (2844453i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2844477i32;
                    } else {
                        _gotoNext = 2844517i32;
                    };
                } else if (__value__ == (2844477i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2844315 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2844653i32;
                } else if (__value__ == (2844517i32)) {
                    _gotoNext = 2844517i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2844522 = __tmp__._0;
                        _size_2844525 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2844522;
                        final __tmp__1 = (_t.__slice__(_size_2844525) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2844315 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2844653i32;
                } else if (__value__ == (2844653i32)) {
                    if (_tr_2844315 == (_sr_2844311)) {
                        _gotoNext = 2844665i32;
                    } else {
                        _gotoNext = 2844730i32;
                    };
                } else if (__value__ == (2844665i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2844237i32;
                } else if (__value__ == (2844730i32)) {
                    if ((_tr_2844315 < _sr_2844311 : Bool)) {
                        _gotoNext = 2844741i32;
                    } else {
                        _gotoNext = 2844795i32;
                    };
                } else if (__value__ == (2844741i32)) {
                    {
                        final __tmp__0 = _sr_2844311;
                        final __tmp__1 = _tr_2844315;
                        _tr_2844315 = __tmp__0;
                        _sr_2844311 = __tmp__1;
                    };
                    _gotoNext = 2844795i32;
                } else if (__value__ == (2844795i32)) {
                    if ((_tr_2844315 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2844817i32;
                    } else {
                        _gotoNext = 2845070i32;
                    };
                } else if (__value__ == (2844817i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2844311 : Bool) && (_sr_2844311 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2844315 == ((_sr_2844311 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2844917i32;
                    } else {
                        _gotoNext = 2844940i32;
                    };
                } else if (__value__ == (2844917i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2844237i32;
                } else if (__value__ == (2844940i32)) {
                    return false;
                    _gotoNext = 2845070i32;
                } else if (__value__ == (2845070i32)) {
                    _r_2845070 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2844311);
                    var __blank__ = 0i32;
                    _gotoNext = 2845100i32;
                } else if (__value__ == (2845100i32)) {
                    if (((_r_2845070 != _sr_2844311) && (_r_2845070 < _tr_2844315 : Bool) : Bool)) {
                        _gotoNext = 2845122i32;
                    } else {
                        _gotoNext = 2845159i32;
                    };
                } else if (__value__ == (2845122i32)) {
                    _r_2845070 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2845070);
                    _gotoNext = 2845100i32;
                } else if (__value__ == (2845159i32)) {
                    if (_r_2845070 == (_tr_2844315)) {
                        _gotoNext = 2845170i32;
                    } else {
                        _gotoNext = 2845190i32;
                    };
                } else if (__value__ == (2845170i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2844237i32;
                } else if (__value__ == (2845190i32)) {
                    return false;
                    _gotoNext = 2844237i32;
                } else if (__value__ == (2845243i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
