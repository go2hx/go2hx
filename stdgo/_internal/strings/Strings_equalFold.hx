package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2748725:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2749415:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2749412:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2749333:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2749177:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2749170 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2749170 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2748677:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2749968:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2749183 = @:invalid_type null;
        var _tr_2748738:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2748677 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2748685i32;
                } else if (__value__ == (2748685i32)) {
                    if (((_i_2748677 < (_s.length) : Bool) && (_i_2748677 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2748721i32;
                    } else {
                        _gotoNext = 2749110i32;
                    };
                } else if (__value__ == (2748721i32)) {
                    _sr_2748725 = _s[(_i_2748677 : stdgo.GoInt)];
                    _tr_2748738 = _t[(_i_2748677 : stdgo.GoInt)];
                    if (((_sr_2748725 | _tr_2748738 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2748777i32;
                    } else {
                        _gotoNext = 2748821i32;
                    };
                } else if (__value__ == (2748777i32)) {
                    _gotoNext = 2749135i32;
                } else if (__value__ == (2748821i32)) {
                    if (_tr_2748738 == (_sr_2748725)) {
                        _gotoNext = 2748833i32;
                    } else {
                        _gotoNext = 2748898i32;
                    };
                } else if (__value__ == (2748833i32)) {
                    _i_2748677++;
                    _gotoNext = 2748685i32;
                } else if (__value__ == (2748898i32)) {
                    if ((_tr_2748738 < _sr_2748725 : Bool)) {
                        _gotoNext = 2748909i32;
                    } else {
                        _gotoNext = 2748984i32;
                    };
                } else if (__value__ == (2748909i32)) {
                    {
                        final __tmp__0 = _sr_2748725;
                        final __tmp__1 = _tr_2748738;
                        _tr_2748738 = __tmp__0;
                        _sr_2748725 = __tmp__1;
                    };
                    _gotoNext = 2748984i32;
                } else if (__value__ == (2748984i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2748725 : Bool) && (_sr_2748725 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2748738 == ((_sr_2748725 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2749030i32;
                    } else {
                        _gotoNext = 2749050i32;
                    };
                } else if (__value__ == (2749030i32)) {
                    _i_2748677++;
                    _gotoNext = 2748685i32;
                } else if (__value__ == (2749050i32)) {
                    return false;
                    _i_2748677++;
                    _gotoNext = 2748685i32;
                } else if (__value__ == (2749110i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2749135i32;
                } else if (__value__ == (2749135i32)) {
                    _s = (_s.__slice__(_i_2748677) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2748677) : stdgo.GoString)?.__copy__();
                    _keys_2749170 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2749170 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2749170 = (_keys_2749170.__append__(_key));
                        _values_2749170 = (_values_2749170.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2749170.length)) {
                        _gotoNext = 2750101i32;
                    } else {
                        _gotoNext = 2750175i32;
                    };
                } else if (__value__ == (2749191i32)) {
                    _sr_2749177 = _values_2749170[@:invalid_index_invalid_type _i_2749183];
                    var __blank__ = _keys_2749170[@:invalid_index_invalid_type _i_2749183];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2749260i32;
                    } else {
                        _gotoNext = 2749329i32;
                    };
                } else if (__value__ == (2749260i32)) {
                    return false;
                    _gotoNext = 2749329i32;
                } else if (__value__ == (2749329i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2749367i32;
                    } else {
                        _gotoNext = 2749407i32;
                    };
                } else if (__value__ == (2749367i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2749333 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2749551i32;
                } else if (__value__ == (2749407i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2749412 = __tmp__._0;
                        _size_2749415 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2749412;
                        final __tmp__1 = (_t.__slice__(_size_2749415) : stdgo.GoString)?.__copy__();
                        _tr_2749333 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2749551i32;
                } else if (__value__ == (2749551i32)) {
                    if (_tr_2749333 == (_sr_2749177)) {
                        _gotoNext = 2749563i32;
                    } else {
                        _gotoNext = 2749628i32;
                    };
                } else if (__value__ == (2749563i32)) {
                    _i_2749183++;
                    _gotoNext = 2750102i32;
                } else if (__value__ == (2749628i32)) {
                    if ((_tr_2749333 < _sr_2749177 : Bool)) {
                        _gotoNext = 2749639i32;
                    } else {
                        _gotoNext = 2749693i32;
                    };
                } else if (__value__ == (2749639i32)) {
                    {
                        final __tmp__0 = _sr_2749177;
                        final __tmp__1 = _tr_2749333;
                        _tr_2749333 = __tmp__0;
                        _sr_2749177 = __tmp__1;
                    };
                    _gotoNext = 2749693i32;
                } else if (__value__ == (2749693i32)) {
                    if ((_tr_2749333 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2749715i32;
                    } else {
                        _gotoNext = 2749968i32;
                    };
                } else if (__value__ == (2749715i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2749177 : Bool) && (_sr_2749177 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2749333 == ((_sr_2749177 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2749815i32;
                    } else {
                        _gotoNext = 2749838i32;
                    };
                } else if (__value__ == (2749815i32)) {
                    _i_2749183++;
                    _gotoNext = 2750102i32;
                } else if (__value__ == (2749838i32)) {
                    return false;
                    _gotoNext = 2749968i32;
                } else if (__value__ == (2749968i32)) {
                    _r_2749968 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2749177);
                    var __blank__ = 0i32;
                    _gotoNext = 2749998i32;
                } else if (__value__ == (2749998i32)) {
                    if (((_r_2749968 != _sr_2749177) && (_r_2749968 < _tr_2749333 : Bool) : Bool)) {
                        _gotoNext = 2750020i32;
                    } else {
                        _gotoNext = 2750057i32;
                    };
                } else if (__value__ == (2750020i32)) {
                    _r_2749968 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2749968);
                    _gotoNext = 2749998i32;
                } else if (__value__ == (2750057i32)) {
                    if (_r_2749968 == (_tr_2749333)) {
                        _gotoNext = 2750068i32;
                    } else {
                        _gotoNext = 2750088i32;
                    };
                } else if (__value__ == (2750068i32)) {
                    _i_2749183++;
                    _gotoNext = 2750102i32;
                } else if (__value__ == (2750088i32)) {
                    return false;
                    _i_2749183++;
                    _gotoNext = 2750102i32;
                } else if (__value__ == (2750101i32)) {
                    _i_2749183 = 0i32;
                    _gotoNext = 2750102i32;
                } else if (__value__ == (2750102i32)) {
                    if (_i_2749183 < (_keys_2749170.length)) {
                        _gotoNext = 2749191i32;
                    } else {
                        _gotoNext = 2750175i32;
                    };
                } else if (__value__ == (2750175i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
