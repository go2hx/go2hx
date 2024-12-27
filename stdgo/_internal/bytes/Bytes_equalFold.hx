package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2820887:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2820762:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2820680:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2820676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2820170:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2820109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2821435:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2820890:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2820759:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2820157:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2820109 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2820117i32;
                } else if (__value__ == (2820117i32)) {
                    if (((_i_2820109 < (_s.length) : Bool) && (_i_2820109 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2820153i32;
                    } else {
                        _gotoNext = 2820542i32;
                    };
                } else if (__value__ == (2820153i32)) {
                    _sr_2820157 = _s[(_i_2820109 : stdgo.GoInt)];
                    _tr_2820170 = _t[(_i_2820109 : stdgo.GoInt)];
                    if (((_sr_2820157 | _tr_2820170 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2820209i32;
                    } else {
                        _gotoNext = 2820253i32;
                    };
                } else if (__value__ == (2820209i32)) {
                    _gotoNext = 2820567i32;
                } else if (__value__ == (2820253i32)) {
                    if (_tr_2820170 == (_sr_2820157)) {
                        _gotoNext = 2820265i32;
                    } else {
                        _gotoNext = 2820330i32;
                    };
                } else if (__value__ == (2820265i32)) {
                    _i_2820109++;
                    _gotoNext = 2820117i32;
                } else if (__value__ == (2820330i32)) {
                    if ((_tr_2820170 < _sr_2820157 : Bool)) {
                        _gotoNext = 2820341i32;
                    } else {
                        _gotoNext = 2820416i32;
                    };
                } else if (__value__ == (2820341i32)) {
                    {
                        final __tmp__0 = _sr_2820157;
                        final __tmp__1 = _tr_2820170;
                        _tr_2820170 = __tmp__0;
                        _sr_2820157 = __tmp__1;
                    };
                    _gotoNext = 2820416i32;
                } else if (__value__ == (2820416i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2820157 : Bool) && (_sr_2820157 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2820170 == ((_sr_2820157 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2820462i32;
                    } else {
                        _gotoNext = 2820482i32;
                    };
                } else if (__value__ == (2820462i32)) {
                    _i_2820109++;
                    _gotoNext = 2820117i32;
                } else if (__value__ == (2820482i32)) {
                    return false;
                    _i_2820109++;
                    _gotoNext = 2820117i32;
                } else if (__value__ == (2820542i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2820567i32;
                } else if (__value__ == (2820567i32)) {
                    _s = (_s.__slice__(_i_2820109) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2820109) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2820602i32;
                } else if (__value__ == (2820602i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2820633i32;
                    } else {
                        _gotoNext = 2821608i32;
                    };
                } else if (__value__ == (2820633i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2820714i32;
                    } else {
                        _gotoNext = 2820754i32;
                    };
                } else if (__value__ == (2820714i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2820676 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2820818i32;
                } else if (__value__ == (2820754i32)) {
                    _gotoNext = 2820754i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2820759 = __tmp__._0;
                        _size_2820762 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2820759;
                        final __tmp__1 = (_s.__slice__(_size_2820762) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2820676 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2820818i32;
                } else if (__value__ == (2820818i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2820842i32;
                    } else {
                        _gotoNext = 2820882i32;
                    };
                } else if (__value__ == (2820842i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2820680 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2821018i32;
                } else if (__value__ == (2820882i32)) {
                    _gotoNext = 2820882i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2820887 = __tmp__._0;
                        _size_2820890 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2820887;
                        final __tmp__1 = (_t.__slice__(_size_2820890) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2820680 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2821018i32;
                } else if (__value__ == (2821018i32)) {
                    if (_tr_2820680 == (_sr_2820676)) {
                        _gotoNext = 2821030i32;
                    } else {
                        _gotoNext = 2821095i32;
                    };
                } else if (__value__ == (2821030i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2820602i32;
                } else if (__value__ == (2821095i32)) {
                    if ((_tr_2820680 < _sr_2820676 : Bool)) {
                        _gotoNext = 2821106i32;
                    } else {
                        _gotoNext = 2821160i32;
                    };
                } else if (__value__ == (2821106i32)) {
                    {
                        final __tmp__0 = _sr_2820676;
                        final __tmp__1 = _tr_2820680;
                        _tr_2820680 = __tmp__0;
                        _sr_2820676 = __tmp__1;
                    };
                    _gotoNext = 2821160i32;
                } else if (__value__ == (2821160i32)) {
                    if ((_tr_2820680 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2821182i32;
                    } else {
                        _gotoNext = 2821435i32;
                    };
                } else if (__value__ == (2821182i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2820676 : Bool) && (_sr_2820676 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2820680 == ((_sr_2820676 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2821282i32;
                    } else {
                        _gotoNext = 2821305i32;
                    };
                } else if (__value__ == (2821282i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2820602i32;
                } else if (__value__ == (2821305i32)) {
                    return false;
                    _gotoNext = 2821435i32;
                } else if (__value__ == (2821435i32)) {
                    _r_2821435 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2820676);
                    var __blank__ = 0i32;
                    _gotoNext = 2821465i32;
                } else if (__value__ == (2821465i32)) {
                    if (((_r_2821435 != _sr_2820676) && (_r_2821435 < _tr_2820680 : Bool) : Bool)) {
                        _gotoNext = 2821487i32;
                    } else {
                        _gotoNext = 2821524i32;
                    };
                } else if (__value__ == (2821487i32)) {
                    _r_2821435 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2821435);
                    _gotoNext = 2821465i32;
                } else if (__value__ == (2821524i32)) {
                    if (_r_2821435 == (_tr_2820680)) {
                        _gotoNext = 2821535i32;
                    } else {
                        _gotoNext = 2821555i32;
                    };
                } else if (__value__ == (2821535i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2820602i32;
                } else if (__value__ == (2821555i32)) {
                    return false;
                    _gotoNext = 2820602i32;
                } else if (__value__ == (2821608i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
