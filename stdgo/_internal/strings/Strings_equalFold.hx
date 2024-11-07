package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2814904:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2816195:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2815642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2815410 = @:invalid_type null;
        var _sr_2814952:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2815639:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2815560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2815404:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2815397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2815397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2814965:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2814904 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2814912i32;
                } else if (__value__ == (2814912i32)) {
                    if (((_i_2814904 < (_s.length) : Bool) && (_i_2814904 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2814948i32;
                    } else {
                        _gotoNext = 2815337i32;
                    };
                } else if (__value__ == (2814948i32)) {
                    _sr_2814952 = _s[(_i_2814904 : stdgo.GoInt)];
                    _tr_2814965 = _t[(_i_2814904 : stdgo.GoInt)];
                    if (((_sr_2814952 | _tr_2814965 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2815004i32;
                    } else {
                        _gotoNext = 2815048i32;
                    };
                } else if (__value__ == (2815004i32)) {
                    _gotoNext = 2815362i32;
                } else if (__value__ == (2815048i32)) {
                    if (_tr_2814965 == (_sr_2814952)) {
                        _gotoNext = 2815060i32;
                    } else {
                        _gotoNext = 2815125i32;
                    };
                } else if (__value__ == (2815060i32)) {
                    _i_2814904++;
                    _gotoNext = 2814912i32;
                } else if (__value__ == (2815125i32)) {
                    if ((_tr_2814965 < _sr_2814952 : Bool)) {
                        _gotoNext = 2815136i32;
                    } else {
                        _gotoNext = 2815211i32;
                    };
                } else if (__value__ == (2815136i32)) {
                    {
                        final __tmp__0 = _sr_2814952;
                        final __tmp__1 = _tr_2814965;
                        _tr_2814965 = __tmp__0;
                        _sr_2814952 = __tmp__1;
                    };
                    _gotoNext = 2815211i32;
                } else if (__value__ == (2815211i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2814952 : Bool) && (_sr_2814952 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2814965 == ((_sr_2814952 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2815257i32;
                    } else {
                        _gotoNext = 2815277i32;
                    };
                } else if (__value__ == (2815257i32)) {
                    _i_2814904++;
                    _gotoNext = 2814912i32;
                } else if (__value__ == (2815277i32)) {
                    return false;
                    _i_2814904++;
                    _gotoNext = 2814912i32;
                } else if (__value__ == (2815337i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2815362i32;
                } else if (__value__ == (2815362i32)) {
                    _s = (_s.__slice__(_i_2814904) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2814904) : stdgo.GoString)?.__copy__();
                    _keys_2815397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2815397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2815397 = (_keys_2815397.__append__(_key));
                        _values_2815397 = (_values_2815397.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2815397.length)) {
                        _gotoNext = 2816328i32;
                    } else {
                        _gotoNext = 2816402i32;
                    };
                } else if (__value__ == (2815418i32)) {
                    _sr_2815404 = _values_2815397[@:invalid_index_invalid_type _i_2815410];
                    var __blank__ = _keys_2815397[@:invalid_index_invalid_type _i_2815410];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2815487i32;
                    } else {
                        _gotoNext = 2815556i32;
                    };
                } else if (__value__ == (2815487i32)) {
                    return false;
                    _gotoNext = 2815556i32;
                } else if (__value__ == (2815556i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2815594i32;
                    } else {
                        _gotoNext = 2815634i32;
                    };
                } else if (__value__ == (2815594i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2815560 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2815778i32;
                } else if (__value__ == (2815634i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2815639 = __tmp__._0;
                        _size_2815642 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2815639;
                        final __tmp__1 = (_t.__slice__(_size_2815642) : stdgo.GoString)?.__copy__();
                        _tr_2815560 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2815778i32;
                } else if (__value__ == (2815778i32)) {
                    if (_tr_2815560 == (_sr_2815404)) {
                        _gotoNext = 2815790i32;
                    } else {
                        _gotoNext = 2815855i32;
                    };
                } else if (__value__ == (2815790i32)) {
                    _i_2815410++;
                    _gotoNext = 2816329i32;
                } else if (__value__ == (2815855i32)) {
                    if ((_tr_2815560 < _sr_2815404 : Bool)) {
                        _gotoNext = 2815866i32;
                    } else {
                        _gotoNext = 2815920i32;
                    };
                } else if (__value__ == (2815866i32)) {
                    {
                        final __tmp__0 = _sr_2815404;
                        final __tmp__1 = _tr_2815560;
                        _tr_2815560 = __tmp__0;
                        _sr_2815404 = __tmp__1;
                    };
                    _gotoNext = 2815920i32;
                } else if (__value__ == (2815920i32)) {
                    if ((_tr_2815560 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2815942i32;
                    } else {
                        _gotoNext = 2816195i32;
                    };
                } else if (__value__ == (2815942i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2815404 : Bool) && (_sr_2815404 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2815560 == ((_sr_2815404 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2816042i32;
                    } else {
                        _gotoNext = 2816065i32;
                    };
                } else if (__value__ == (2816042i32)) {
                    _i_2815410++;
                    _gotoNext = 2816329i32;
                } else if (__value__ == (2816065i32)) {
                    return false;
                    _gotoNext = 2816195i32;
                } else if (__value__ == (2816195i32)) {
                    _r_2816195 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2815404);
                    var __blank__ = 0i32;
                    _gotoNext = 2816225i32;
                } else if (__value__ == (2816225i32)) {
                    if (((_r_2816195 != _sr_2815404) && (_r_2816195 < _tr_2815560 : Bool) : Bool)) {
                        _gotoNext = 2816247i32;
                    } else {
                        _gotoNext = 2816284i32;
                    };
                } else if (__value__ == (2816247i32)) {
                    _r_2816195 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2816195);
                    _gotoNext = 2816225i32;
                } else if (__value__ == (2816284i32)) {
                    if (_r_2816195 == (_tr_2815560)) {
                        _gotoNext = 2816295i32;
                    } else {
                        _gotoNext = 2816315i32;
                    };
                } else if (__value__ == (2816295i32)) {
                    _i_2815410++;
                    _gotoNext = 2816329i32;
                } else if (__value__ == (2816315i32)) {
                    return false;
                    _i_2815410++;
                    _gotoNext = 2816329i32;
                } else if (__value__ == (2816328i32)) {
                    _i_2815410 = 0i32;
                    _gotoNext = 2816329i32;
                } else if (__value__ == (2816329i32)) {
                    if (_i_2815410 < (_keys_2815397.length)) {
                        _gotoNext = 2815418i32;
                    } else {
                        _gotoNext = 2816402i32;
                    };
                } else if (__value__ == (2816402i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
