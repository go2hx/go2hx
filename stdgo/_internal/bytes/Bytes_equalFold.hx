package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2981413:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2981409:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2980890:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2980842:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2982168:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2981623:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2981492:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2981620:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2981495:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2980903:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2980842 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2980850i32;
                } else if (__value__ == (2980850i32)) {
                    if (((_i_2980842 < (_s.length) : Bool) && (_i_2980842 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2980886i32;
                    } else {
                        _gotoNext = 2981275i32;
                    };
                } else if (__value__ == (2980886i32)) {
                    _sr_2980890 = _s[(_i_2980842 : stdgo.GoInt)];
                    _tr_2980903 = _t[(_i_2980842 : stdgo.GoInt)];
                    if (((_sr_2980890 | _tr_2980903 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2980942i32;
                    } else {
                        _gotoNext = 2980986i32;
                    };
                } else if (__value__ == (2980942i32)) {
                    _gotoNext = 2981300i32;
                } else if (__value__ == (2980986i32)) {
                    if (_tr_2980903 == (_sr_2980890)) {
                        _gotoNext = 2980998i32;
                    } else {
                        _gotoNext = 2981063i32;
                    };
                } else if (__value__ == (2980998i32)) {
                    _i_2980842++;
                    _gotoNext = 2980850i32;
                } else if (__value__ == (2981063i32)) {
                    if ((_tr_2980903 < _sr_2980890 : Bool)) {
                        _gotoNext = 2981074i32;
                    } else {
                        _gotoNext = 2981149i32;
                    };
                } else if (__value__ == (2981074i32)) {
                    {
                        final __tmp__0 = _sr_2980890;
                        final __tmp__1 = _tr_2980903;
                        _tr_2980903 = __tmp__0;
                        _sr_2980890 = __tmp__1;
                    };
                    _gotoNext = 2981149i32;
                } else if (__value__ == (2981149i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2980890 : Bool) && (_sr_2980890 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2980903 == ((_sr_2980890 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2981195i32;
                    } else {
                        _gotoNext = 2981215i32;
                    };
                } else if (__value__ == (2981195i32)) {
                    _i_2980842++;
                    _gotoNext = 2980850i32;
                } else if (__value__ == (2981215i32)) {
                    return false;
                    _i_2980842++;
                    _gotoNext = 2980850i32;
                } else if (__value__ == (2981275i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2981300i32;
                } else if (__value__ == (2981300i32)) {
                    _s = (_s.__slice__(_i_2980842) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2980842) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2981335i32;
                } else if (__value__ == (2981335i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2981366i32;
                    } else {
                        _gotoNext = 2982341i32;
                    };
                } else if (__value__ == (2981366i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2981447i32;
                    } else {
                        _gotoNext = 2981487i32;
                    };
                } else if (__value__ == (2981447i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2981409 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2981551i32;
                } else if (__value__ == (2981487i32)) {
                    _gotoNext = 2981487i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2981492 = __tmp__._0;
                        _size_2981495 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2981492;
                        final __tmp__1 = (_s.__slice__(_size_2981495) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2981409 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2981551i32;
                } else if (__value__ == (2981551i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2981575i32;
                    } else {
                        _gotoNext = 2981615i32;
                    };
                } else if (__value__ == (2981575i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2981413 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2981751i32;
                } else if (__value__ == (2981615i32)) {
                    _gotoNext = 2981615i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2981620 = __tmp__._0;
                        _size_2981623 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2981620;
                        final __tmp__1 = (_t.__slice__(_size_2981623) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2981413 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2981751i32;
                } else if (__value__ == (2981751i32)) {
                    if (_tr_2981413 == (_sr_2981409)) {
                        _gotoNext = 2981763i32;
                    } else {
                        _gotoNext = 2981828i32;
                    };
                } else if (__value__ == (2981763i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2981335i32;
                } else if (__value__ == (2981828i32)) {
                    if ((_tr_2981413 < _sr_2981409 : Bool)) {
                        _gotoNext = 2981839i32;
                    } else {
                        _gotoNext = 2981893i32;
                    };
                } else if (__value__ == (2981839i32)) {
                    {
                        final __tmp__0 = _sr_2981409;
                        final __tmp__1 = _tr_2981413;
                        _tr_2981413 = __tmp__0;
                        _sr_2981409 = __tmp__1;
                    };
                    _gotoNext = 2981893i32;
                } else if (__value__ == (2981893i32)) {
                    if ((_tr_2981413 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2981915i32;
                    } else {
                        _gotoNext = 2982168i32;
                    };
                } else if (__value__ == (2981915i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2981409 : Bool) && (_sr_2981409 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2981413 == ((_sr_2981409 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2982015i32;
                    } else {
                        _gotoNext = 2982038i32;
                    };
                } else if (__value__ == (2982015i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2981335i32;
                } else if (__value__ == (2982038i32)) {
                    return false;
                    _gotoNext = 2982168i32;
                } else if (__value__ == (2982168i32)) {
                    _r_2982168 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2981409);
                    var __blank__ = 0i32;
                    _gotoNext = 2982198i32;
                } else if (__value__ == (2982198i32)) {
                    if (((_r_2982168 != _sr_2981409) && (_r_2982168 < _tr_2981413 : Bool) : Bool)) {
                        _gotoNext = 2982220i32;
                    } else {
                        _gotoNext = 2982257i32;
                    };
                } else if (__value__ == (2982220i32)) {
                    _r_2982168 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2982168);
                    _gotoNext = 2982198i32;
                } else if (__value__ == (2982257i32)) {
                    if (_r_2982168 == (_tr_2981413)) {
                        _gotoNext = 2982268i32;
                    } else {
                        _gotoNext = 2982288i32;
                    };
                } else if (__value__ == (2982268i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2981335i32;
                } else if (__value__ == (2982288i32)) {
                    return false;
                    _gotoNext = 2981335i32;
                } else if (__value__ == (2982341i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
