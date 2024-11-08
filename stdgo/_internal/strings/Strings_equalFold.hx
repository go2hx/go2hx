package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2872181:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2872099:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2871943:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2871949 = @:invalid_type null;
        var _r_2872734:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2872178:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2871936 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2871936 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2871504:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2871491:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2871443:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2871443 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2871451i32;
                } else if (__value__ == (2871451i32)) {
                    if (((_i_2871443 < (_s.length) : Bool) && (_i_2871443 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2871487i32;
                    } else {
                        _gotoNext = 2871876i32;
                    };
                } else if (__value__ == (2871487i32)) {
                    _sr_2871491 = _s[(_i_2871443 : stdgo.GoInt)];
                    _tr_2871504 = _t[(_i_2871443 : stdgo.GoInt)];
                    if (((_sr_2871491 | _tr_2871504 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2871543i32;
                    } else {
                        _gotoNext = 2871587i32;
                    };
                } else if (__value__ == (2871543i32)) {
                    _gotoNext = 2871901i32;
                } else if (__value__ == (2871587i32)) {
                    if (_tr_2871504 == (_sr_2871491)) {
                        _gotoNext = 2871599i32;
                    } else {
                        _gotoNext = 2871664i32;
                    };
                } else if (__value__ == (2871599i32)) {
                    _i_2871443++;
                    _gotoNext = 2871451i32;
                } else if (__value__ == (2871664i32)) {
                    if ((_tr_2871504 < _sr_2871491 : Bool)) {
                        _gotoNext = 2871675i32;
                    } else {
                        _gotoNext = 2871750i32;
                    };
                } else if (__value__ == (2871675i32)) {
                    {
                        final __tmp__0 = _sr_2871491;
                        final __tmp__1 = _tr_2871504;
                        _tr_2871504 = __tmp__0;
                        _sr_2871491 = __tmp__1;
                    };
                    _gotoNext = 2871750i32;
                } else if (__value__ == (2871750i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2871491 : Bool) && (_sr_2871491 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2871504 == ((_sr_2871491 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2871796i32;
                    } else {
                        _gotoNext = 2871816i32;
                    };
                } else if (__value__ == (2871796i32)) {
                    _i_2871443++;
                    _gotoNext = 2871451i32;
                } else if (__value__ == (2871816i32)) {
                    return false;
                    _i_2871443++;
                    _gotoNext = 2871451i32;
                } else if (__value__ == (2871876i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2871901i32;
                } else if (__value__ == (2871901i32)) {
                    _s = (_s.__slice__(_i_2871443) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2871443) : stdgo.GoString)?.__copy__();
                    _keys_2871936 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2871936 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2871936 = (_keys_2871936.__append__(_key));
                        _values_2871936 = (_values_2871936.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2871936.length)) {
                        _gotoNext = 2872867i32;
                    } else {
                        _gotoNext = 2872941i32;
                    };
                } else if (__value__ == (2871957i32)) {
                    _sr_2871943 = _values_2871936[@:invalid_index_invalid_type _i_2871949];
                    var __blank__ = _keys_2871936[@:invalid_index_invalid_type _i_2871949];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2872026i32;
                    } else {
                        _gotoNext = 2872095i32;
                    };
                } else if (__value__ == (2872026i32)) {
                    return false;
                    _gotoNext = 2872095i32;
                } else if (__value__ == (2872095i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2872133i32;
                    } else {
                        _gotoNext = 2872173i32;
                    };
                } else if (__value__ == (2872133i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2872099 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2872317i32;
                } else if (__value__ == (2872173i32)) {
                    _gotoNext = 2872173i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2872178 = __tmp__._0;
                        _size_2872181 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2872178;
                        final __tmp__1 = (_t.__slice__(_size_2872181) : stdgo.GoString)?.__copy__();
                        _tr_2872099 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2872317i32;
                } else if (__value__ == (2872317i32)) {
                    if (_tr_2872099 == (_sr_2871943)) {
                        _gotoNext = 2872329i32;
                    } else {
                        _gotoNext = 2872394i32;
                    };
                } else if (__value__ == (2872329i32)) {
                    _i_2871949++;
                    _gotoNext = 2872868i32;
                } else if (__value__ == (2872394i32)) {
                    if ((_tr_2872099 < _sr_2871943 : Bool)) {
                        _gotoNext = 2872405i32;
                    } else {
                        _gotoNext = 2872459i32;
                    };
                } else if (__value__ == (2872405i32)) {
                    {
                        final __tmp__0 = _sr_2871943;
                        final __tmp__1 = _tr_2872099;
                        _tr_2872099 = __tmp__0;
                        _sr_2871943 = __tmp__1;
                    };
                    _gotoNext = 2872459i32;
                } else if (__value__ == (2872459i32)) {
                    if ((_tr_2872099 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2872481i32;
                    } else {
                        _gotoNext = 2872734i32;
                    };
                } else if (__value__ == (2872481i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2871943 : Bool) && (_sr_2871943 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2872099 == ((_sr_2871943 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2872581i32;
                    } else {
                        _gotoNext = 2872604i32;
                    };
                } else if (__value__ == (2872581i32)) {
                    _i_2871949++;
                    _gotoNext = 2872868i32;
                } else if (__value__ == (2872604i32)) {
                    return false;
                    _gotoNext = 2872734i32;
                } else if (__value__ == (2872734i32)) {
                    _r_2872734 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2871943);
                    var __blank__ = 0i32;
                    _gotoNext = 2872764i32;
                } else if (__value__ == (2872764i32)) {
                    if (((_r_2872734 != _sr_2871943) && (_r_2872734 < _tr_2872099 : Bool) : Bool)) {
                        _gotoNext = 2872786i32;
                    } else {
                        _gotoNext = 2872823i32;
                    };
                } else if (__value__ == (2872786i32)) {
                    _r_2872734 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2872734);
                    _gotoNext = 2872764i32;
                } else if (__value__ == (2872823i32)) {
                    if (_r_2872734 == (_tr_2872099)) {
                        _gotoNext = 2872834i32;
                    } else {
                        _gotoNext = 2872854i32;
                    };
                } else if (__value__ == (2872834i32)) {
                    _i_2871949++;
                    _gotoNext = 2872868i32;
                } else if (__value__ == (2872854i32)) {
                    return false;
                    _i_2871949++;
                    _gotoNext = 2872868i32;
                } else if (__value__ == (2872867i32)) {
                    _i_2871949 = 0i32;
                    _gotoNext = 2872868i32;
                } else if (__value__ == (2872868i32)) {
                    if (_i_2871949 < (_keys_2871936.length)) {
                        _gotoNext = 2871957i32;
                    } else {
                        _gotoNext = 2872941i32;
                    };
                } else if (__value__ == (2872941i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
