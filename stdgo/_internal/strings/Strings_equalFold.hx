package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2887397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2887410 = @:invalid_type null;
        var _sr_2886952:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2886904:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2887560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2887397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _size_2887642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2887639:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2887404:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2886965:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2888195:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2886904 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2886912i32;
                } else if (__value__ == (2886912i32)) {
                    if (((_i_2886904 < (_s.length) : Bool) && (_i_2886904 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2886948i32;
                    } else {
                        _gotoNext = 2887337i32;
                    };
                } else if (__value__ == (2886948i32)) {
                    _sr_2886952 = _s[(_i_2886904 : stdgo.GoInt)];
                    _tr_2886965 = _t[(_i_2886904 : stdgo.GoInt)];
                    if (((_sr_2886952 | _tr_2886965 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2887004i32;
                    } else {
                        _gotoNext = 2887048i32;
                    };
                } else if (__value__ == (2887004i32)) {
                    _gotoNext = 2887362i32;
                } else if (__value__ == (2887048i32)) {
                    if (_tr_2886965 == (_sr_2886952)) {
                        _gotoNext = 2887060i32;
                    } else {
                        _gotoNext = 2887125i32;
                    };
                } else if (__value__ == (2887060i32)) {
                    _i_2886904++;
                    _gotoNext = 2886912i32;
                } else if (__value__ == (2887125i32)) {
                    if ((_tr_2886965 < _sr_2886952 : Bool)) {
                        _gotoNext = 2887136i32;
                    } else {
                        _gotoNext = 2887211i32;
                    };
                } else if (__value__ == (2887136i32)) {
                    {
                        final __tmp__0 = _sr_2886952;
                        final __tmp__1 = _tr_2886965;
                        _tr_2886965 = __tmp__0;
                        _sr_2886952 = __tmp__1;
                    };
                    _gotoNext = 2887211i32;
                } else if (__value__ == (2887211i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2886952 : Bool) && (_sr_2886952 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2886965 == ((_sr_2886952 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2887257i32;
                    } else {
                        _gotoNext = 2887277i32;
                    };
                } else if (__value__ == (2887257i32)) {
                    _i_2886904++;
                    _gotoNext = 2886912i32;
                } else if (__value__ == (2887277i32)) {
                    return false;
                    _i_2886904++;
                    _gotoNext = 2886912i32;
                } else if (__value__ == (2887337i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2887362i32;
                } else if (__value__ == (2887362i32)) {
                    _s = (_s.__slice__(_i_2886904) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2886904) : stdgo.GoString)?.__copy__();
                    _keys_2887397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2887397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2887397 = (_keys_2887397.__append__(_key));
                        _values_2887397 = (_values_2887397.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2887397.length)) {
                        _gotoNext = 2888328i32;
                    } else {
                        _gotoNext = 2888402i32;
                    };
                } else if (__value__ == (2887418i32)) {
                    _sr_2887404 = _values_2887397[@:invalid_index_invalid_type _i_2887410];
                    var __blank__ = _keys_2887397[@:invalid_index_invalid_type _i_2887410];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2887487i32;
                    } else {
                        _gotoNext = 2887556i32;
                    };
                } else if (__value__ == (2887487i32)) {
                    return false;
                    _gotoNext = 2887556i32;
                } else if (__value__ == (2887556i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2887594i32;
                    } else {
                        _gotoNext = 2887634i32;
                    };
                } else if (__value__ == (2887594i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2887560 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2887778i32;
                } else if (__value__ == (2887634i32)) {
                    _gotoNext = 2887634i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2887639 = __tmp__._0;
                        _size_2887642 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2887639;
                        final __tmp__1 = (_t.__slice__(_size_2887642) : stdgo.GoString)?.__copy__();
                        _tr_2887560 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2887778i32;
                } else if (__value__ == (2887778i32)) {
                    if (_tr_2887560 == (_sr_2887404)) {
                        _gotoNext = 2887790i32;
                    } else {
                        _gotoNext = 2887855i32;
                    };
                } else if (__value__ == (2887790i32)) {
                    _i_2887410++;
                    _gotoNext = 2888329i32;
                } else if (__value__ == (2887855i32)) {
                    if ((_tr_2887560 < _sr_2887404 : Bool)) {
                        _gotoNext = 2887866i32;
                    } else {
                        _gotoNext = 2887920i32;
                    };
                } else if (__value__ == (2887866i32)) {
                    {
                        final __tmp__0 = _sr_2887404;
                        final __tmp__1 = _tr_2887560;
                        _tr_2887560 = __tmp__0;
                        _sr_2887404 = __tmp__1;
                    };
                    _gotoNext = 2887920i32;
                } else if (__value__ == (2887920i32)) {
                    if ((_tr_2887560 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2887942i32;
                    } else {
                        _gotoNext = 2888195i32;
                    };
                } else if (__value__ == (2887942i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2887404 : Bool) && (_sr_2887404 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2887560 == ((_sr_2887404 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2888042i32;
                    } else {
                        _gotoNext = 2888065i32;
                    };
                } else if (__value__ == (2888042i32)) {
                    _i_2887410++;
                    _gotoNext = 2888329i32;
                } else if (__value__ == (2888065i32)) {
                    return false;
                    _gotoNext = 2888195i32;
                } else if (__value__ == (2888195i32)) {
                    _r_2888195 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2887404);
                    var __blank__ = 0i32;
                    _gotoNext = 2888225i32;
                } else if (__value__ == (2888225i32)) {
                    if (((_r_2888195 != _sr_2887404) && (_r_2888195 < _tr_2887560 : Bool) : Bool)) {
                        _gotoNext = 2888247i32;
                    } else {
                        _gotoNext = 2888284i32;
                    };
                } else if (__value__ == (2888247i32)) {
                    _r_2888195 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2888195);
                    _gotoNext = 2888225i32;
                } else if (__value__ == (2888284i32)) {
                    if (_r_2888195 == (_tr_2887560)) {
                        _gotoNext = 2888295i32;
                    } else {
                        _gotoNext = 2888315i32;
                    };
                } else if (__value__ == (2888295i32)) {
                    _i_2887410++;
                    _gotoNext = 2888329i32;
                } else if (__value__ == (2888315i32)) {
                    return false;
                    _i_2887410++;
                    _gotoNext = 2888329i32;
                } else if (__value__ == (2888328i32)) {
                    _i_2887410 = 0i32;
                    _gotoNext = 2888329i32;
                } else if (__value__ == (2888329i32)) {
                    if (_i_2887410 < (_keys_2887397.length)) {
                        _gotoNext = 2887418i32;
                    } else {
                        _gotoNext = 2888402i32;
                    };
                } else if (__value__ == (2888402i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
