package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2902912:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2902918 = @:invalid_type null;
        var _i_2902412:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2903150:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2902905 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2902473:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2902460:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2903703:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2903147:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2903068:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2902905 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2902412 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2902420i32;
                } else if (__value__ == (2902420i32)) {
                    if (((_i_2902412 < (_s.length) : Bool) && (_i_2902412 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2902456i32;
                    } else {
                        _gotoNext = 2902845i32;
                    };
                } else if (__value__ == (2902456i32)) {
                    _sr_2902460 = _s[(_i_2902412 : stdgo.GoInt)];
                    _tr_2902473 = _t[(_i_2902412 : stdgo.GoInt)];
                    if (((_sr_2902460 | _tr_2902473 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902512i32;
                    } else {
                        _gotoNext = 2902556i32;
                    };
                } else if (__value__ == (2902512i32)) {
                    _gotoNext = 2902870i32;
                } else if (__value__ == (2902556i32)) {
                    if (_tr_2902473 == (_sr_2902460)) {
                        _gotoNext = 2902568i32;
                    } else {
                        _gotoNext = 2902633i32;
                    };
                } else if (__value__ == (2902568i32)) {
                    _i_2902412++;
                    _gotoNext = 2902420i32;
                } else if (__value__ == (2902633i32)) {
                    if ((_tr_2902473 < _sr_2902460 : Bool)) {
                        _gotoNext = 2902644i32;
                    } else {
                        _gotoNext = 2902719i32;
                    };
                } else if (__value__ == (2902644i32)) {
                    {
                        final __tmp__0 = _sr_2902460;
                        final __tmp__1 = _tr_2902473;
                        _tr_2902473 = __tmp__0;
                        _sr_2902460 = __tmp__1;
                    };
                    _gotoNext = 2902719i32;
                } else if (__value__ == (2902719i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2902460 : Bool) && (_sr_2902460 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2902473 == ((_sr_2902460 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2902765i32;
                    } else {
                        _gotoNext = 2902785i32;
                    };
                } else if (__value__ == (2902765i32)) {
                    _i_2902412++;
                    _gotoNext = 2902420i32;
                } else if (__value__ == (2902785i32)) {
                    return false;
                    _i_2902412++;
                    _gotoNext = 2902420i32;
                } else if (__value__ == (2902845i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2902870i32;
                } else if (__value__ == (2902870i32)) {
                    _s = (_s.__slice__(_i_2902412) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2902412) : stdgo.GoString)?.__copy__();
                    _keys_2902905 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2902905 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2902905 = (_keys_2902905.__append__(_key));
                        _values_2902905 = (_values_2902905.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2902905.length)) {
                        _gotoNext = 2903836i32;
                    } else {
                        _gotoNext = 2903910i32;
                    };
                } else if (__value__ == (2902926i32)) {
                    _sr_2902912 = _values_2902905[@:invalid_index_invalid_type _i_2902918];
                    var __blank__ = _keys_2902905[@:invalid_index_invalid_type _i_2902918];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2902995i32;
                    } else {
                        _gotoNext = 2903064i32;
                    };
                } else if (__value__ == (2902995i32)) {
                    return false;
                    _gotoNext = 2903064i32;
                } else if (__value__ == (2903064i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903102i32;
                    } else {
                        _gotoNext = 2903142i32;
                    };
                } else if (__value__ == (2903102i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2903068 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2903286i32;
                } else if (__value__ == (2903142i32)) {
                    _gotoNext = 2903142i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2903147 = __tmp__._0;
                        _size_2903150 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2903147;
                        final __tmp__1 = (_t.__slice__(_size_2903150) : stdgo.GoString)?.__copy__();
                        _tr_2903068 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903286i32;
                } else if (__value__ == (2903286i32)) {
                    if (_tr_2903068 == (_sr_2902912)) {
                        _gotoNext = 2903298i32;
                    } else {
                        _gotoNext = 2903363i32;
                    };
                } else if (__value__ == (2903298i32)) {
                    _i_2902918++;
                    _gotoNext = 2903837i32;
                } else if (__value__ == (2903363i32)) {
                    if ((_tr_2903068 < _sr_2902912 : Bool)) {
                        _gotoNext = 2903374i32;
                    } else {
                        _gotoNext = 2903428i32;
                    };
                } else if (__value__ == (2903374i32)) {
                    {
                        final __tmp__0 = _sr_2902912;
                        final __tmp__1 = _tr_2903068;
                        _tr_2903068 = __tmp__0;
                        _sr_2902912 = __tmp__1;
                    };
                    _gotoNext = 2903428i32;
                } else if (__value__ == (2903428i32)) {
                    if ((_tr_2903068 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2903450i32;
                    } else {
                        _gotoNext = 2903703i32;
                    };
                } else if (__value__ == (2903450i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2902912 : Bool) && (_sr_2902912 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2903068 == ((_sr_2902912 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2903550i32;
                    } else {
                        _gotoNext = 2903573i32;
                    };
                } else if (__value__ == (2903550i32)) {
                    _i_2902918++;
                    _gotoNext = 2903837i32;
                } else if (__value__ == (2903573i32)) {
                    return false;
                    _gotoNext = 2903703i32;
                } else if (__value__ == (2903703i32)) {
                    _r_2903703 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2902912);
                    var __blank__ = 0i32;
                    _gotoNext = 2903733i32;
                } else if (__value__ == (2903733i32)) {
                    if (((_r_2903703 != _sr_2902912) && (_r_2903703 < _tr_2903068 : Bool) : Bool)) {
                        _gotoNext = 2903755i32;
                    } else {
                        _gotoNext = 2903792i32;
                    };
                } else if (__value__ == (2903755i32)) {
                    _r_2903703 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2903703);
                    _gotoNext = 2903733i32;
                } else if (__value__ == (2903792i32)) {
                    if (_r_2903703 == (_tr_2903068)) {
                        _gotoNext = 2903803i32;
                    } else {
                        _gotoNext = 2903823i32;
                    };
                } else if (__value__ == (2903803i32)) {
                    _i_2902918++;
                    _gotoNext = 2903837i32;
                } else if (__value__ == (2903823i32)) {
                    return false;
                    _i_2902918++;
                    _gotoNext = 2903837i32;
                } else if (__value__ == (2903836i32)) {
                    _i_2902918 = 0i32;
                    _gotoNext = 2903837i32;
                } else if (__value__ == (2903837i32)) {
                    if (_i_2902918 < (_keys_2902905.length)) {
                        _gotoNext = 2902926i32;
                    } else {
                        _gotoNext = 2903910i32;
                    };
                } else if (__value__ == (2903910i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
