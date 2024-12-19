package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2773449:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2772904:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2772690:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2772171:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2772123:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2772901:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2772776:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2772773:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2772694:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2772184:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2772123 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2772131i32;
                } else if (__value__ == (2772131i32)) {
                    if (((_i_2772123 < (_s.length) : Bool) && (_i_2772123 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2772167i32;
                    } else {
                        _gotoNext = 2772556i32;
                    };
                } else if (__value__ == (2772167i32)) {
                    _sr_2772171 = _s[(_i_2772123 : stdgo.GoInt)];
                    _tr_2772184 = _t[(_i_2772123 : stdgo.GoInt)];
                    if (((_sr_2772171 | _tr_2772184 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2772223i32;
                    } else {
                        _gotoNext = 2772267i32;
                    };
                } else if (__value__ == (2772223i32)) {
                    _gotoNext = 2772581i32;
                } else if (__value__ == (2772267i32)) {
                    if (_tr_2772184 == (_sr_2772171)) {
                        _gotoNext = 2772279i32;
                    } else {
                        _gotoNext = 2772344i32;
                    };
                } else if (__value__ == (2772279i32)) {
                    _i_2772123++;
                    _gotoNext = 2772131i32;
                } else if (__value__ == (2772344i32)) {
                    if ((_tr_2772184 < _sr_2772171 : Bool)) {
                        _gotoNext = 2772355i32;
                    } else {
                        _gotoNext = 2772430i32;
                    };
                } else if (__value__ == (2772355i32)) {
                    {
                        final __tmp__0 = _sr_2772171;
                        final __tmp__1 = _tr_2772184;
                        _tr_2772184 = __tmp__0;
                        _sr_2772171 = __tmp__1;
                    };
                    _gotoNext = 2772430i32;
                } else if (__value__ == (2772430i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2772171 : Bool) && (_sr_2772171 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2772184 == ((_sr_2772171 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2772476i32;
                    } else {
                        _gotoNext = 2772496i32;
                    };
                } else if (__value__ == (2772476i32)) {
                    _i_2772123++;
                    _gotoNext = 2772131i32;
                } else if (__value__ == (2772496i32)) {
                    return false;
                    _i_2772123++;
                    _gotoNext = 2772131i32;
                } else if (__value__ == (2772556i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2772581i32;
                } else if (__value__ == (2772581i32)) {
                    _s = (_s.__slice__(_i_2772123) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2772123) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2772616i32;
                } else if (__value__ == (2772616i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2772647i32;
                    } else {
                        _gotoNext = 2773622i32;
                    };
                } else if (__value__ == (2772647i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2772728i32;
                    } else {
                        _gotoNext = 2772768i32;
                    };
                } else if (__value__ == (2772728i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2772690 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2772832i32;
                } else if (__value__ == (2772768i32)) {
                    _gotoNext = 2772768i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2772773 = __tmp__._0;
                        _size_2772776 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2772773;
                        final __tmp__1 = (_s.__slice__(_size_2772776) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2772690 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2772832i32;
                } else if (__value__ == (2772832i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2772856i32;
                    } else {
                        _gotoNext = 2772896i32;
                    };
                } else if (__value__ == (2772856i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2772694 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2773032i32;
                } else if (__value__ == (2772896i32)) {
                    _gotoNext = 2772896i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2772901 = __tmp__._0;
                        _size_2772904 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2772901;
                        final __tmp__1 = (_t.__slice__(_size_2772904) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2772694 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2773032i32;
                } else if (__value__ == (2773032i32)) {
                    if (_tr_2772694 == (_sr_2772690)) {
                        _gotoNext = 2773044i32;
                    } else {
                        _gotoNext = 2773109i32;
                    };
                } else if (__value__ == (2773044i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2772616i32;
                } else if (__value__ == (2773109i32)) {
                    if ((_tr_2772694 < _sr_2772690 : Bool)) {
                        _gotoNext = 2773120i32;
                    } else {
                        _gotoNext = 2773174i32;
                    };
                } else if (__value__ == (2773120i32)) {
                    {
                        final __tmp__0 = _sr_2772690;
                        final __tmp__1 = _tr_2772694;
                        _tr_2772694 = __tmp__0;
                        _sr_2772690 = __tmp__1;
                    };
                    _gotoNext = 2773174i32;
                } else if (__value__ == (2773174i32)) {
                    if ((_tr_2772694 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2773196i32;
                    } else {
                        _gotoNext = 2773449i32;
                    };
                } else if (__value__ == (2773196i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2772690 : Bool) && (_sr_2772690 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2772694 == ((_sr_2772690 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2773296i32;
                    } else {
                        _gotoNext = 2773319i32;
                    };
                } else if (__value__ == (2773296i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2772616i32;
                } else if (__value__ == (2773319i32)) {
                    return false;
                    _gotoNext = 2773449i32;
                } else if (__value__ == (2773449i32)) {
                    _r_2773449 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2772690);
                    var __blank__ = 0i32;
                    _gotoNext = 2773479i32;
                } else if (__value__ == (2773479i32)) {
                    if (((_r_2773449 != _sr_2772690) && (_r_2773449 < _tr_2772694 : Bool) : Bool)) {
                        _gotoNext = 2773501i32;
                    } else {
                        _gotoNext = 2773538i32;
                    };
                } else if (__value__ == (2773501i32)) {
                    _r_2773449 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2773449);
                    _gotoNext = 2773479i32;
                } else if (__value__ == (2773538i32)) {
                    if (_r_2773449 == (_tr_2772694)) {
                        _gotoNext = 2773549i32;
                    } else {
                        _gotoNext = 2773569i32;
                    };
                } else if (__value__ == (2773549i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2772616i32;
                } else if (__value__ == (2773569i32)) {
                    return false;
                    _gotoNext = 2772616i32;
                } else if (__value__ == (2773622i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
