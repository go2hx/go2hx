package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2777379:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2776823:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2776744:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2776149:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2776581 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2776581 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2776594 = @:invalid_type null;
        var _sr_2776136:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2776088:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2776826:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2776588:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2776088 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2776096i32;
                } else if (__value__ == (2776096i32)) {
                    if (((_i_2776088 < (_s.length) : Bool) && (_i_2776088 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2776132i32;
                    } else {
                        _gotoNext = 2776521i32;
                    };
                } else if (__value__ == (2776132i32)) {
                    _sr_2776136 = _s[(_i_2776088 : stdgo.GoInt)];
                    _tr_2776149 = _t[(_i_2776088 : stdgo.GoInt)];
                    if (((_sr_2776136 | _tr_2776149 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2776188i32;
                    } else {
                        _gotoNext = 2776232i32;
                    };
                } else if (__value__ == (2776188i32)) {
                    _gotoNext = 2776546i32;
                } else if (__value__ == (2776232i32)) {
                    if (_tr_2776149 == (_sr_2776136)) {
                        _gotoNext = 2776244i32;
                    } else {
                        _gotoNext = 2776309i32;
                    };
                } else if (__value__ == (2776244i32)) {
                    _i_2776088++;
                    _gotoNext = 2776096i32;
                } else if (__value__ == (2776309i32)) {
                    if ((_tr_2776149 < _sr_2776136 : Bool)) {
                        _gotoNext = 2776320i32;
                    } else {
                        _gotoNext = 2776395i32;
                    };
                } else if (__value__ == (2776320i32)) {
                    {
                        final __tmp__0 = _sr_2776136;
                        final __tmp__1 = _tr_2776149;
                        _tr_2776149 = __tmp__0;
                        _sr_2776136 = __tmp__1;
                    };
                    _gotoNext = 2776395i32;
                } else if (__value__ == (2776395i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2776136 : Bool) && (_sr_2776136 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2776149 == ((_sr_2776136 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2776441i32;
                    } else {
                        _gotoNext = 2776461i32;
                    };
                } else if (__value__ == (2776441i32)) {
                    _i_2776088++;
                    _gotoNext = 2776096i32;
                } else if (__value__ == (2776461i32)) {
                    return false;
                    _i_2776088++;
                    _gotoNext = 2776096i32;
                } else if (__value__ == (2776521i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2776546i32;
                } else if (__value__ == (2776546i32)) {
                    _s = (_s.__slice__(_i_2776088) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2776088) : stdgo.GoString)?.__copy__();
                    _keys_2776581 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2776581 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2776581 = (_keys_2776581.__append__(_key));
                        _values_2776581 = (_values_2776581.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2776581.length)) {
                        _gotoNext = 2777512i32;
                    } else {
                        _gotoNext = 2777586i32;
                    };
                } else if (__value__ == (2776602i32)) {
                    _sr_2776588 = _values_2776581[@:invalid_index_invalid_type _i_2776594];
                    var __blank__ = _keys_2776581[@:invalid_index_invalid_type _i_2776594];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2776671i32;
                    } else {
                        _gotoNext = 2776740i32;
                    };
                } else if (__value__ == (2776671i32)) {
                    return false;
                    _gotoNext = 2776740i32;
                } else if (__value__ == (2776740i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2776778i32;
                    } else {
                        _gotoNext = 2776818i32;
                    };
                } else if (__value__ == (2776778i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2776744 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2776962i32;
                } else if (__value__ == (2776818i32)) {
                    _gotoNext = 2776818i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2776823 = __tmp__._0;
                        _size_2776826 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2776823;
                        final __tmp__1 = (_t.__slice__(_size_2776826) : stdgo.GoString)?.__copy__();
                        _tr_2776744 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2776962i32;
                } else if (__value__ == (2776962i32)) {
                    if (_tr_2776744 == (_sr_2776588)) {
                        _gotoNext = 2776974i32;
                    } else {
                        _gotoNext = 2777039i32;
                    };
                } else if (__value__ == (2776974i32)) {
                    _i_2776594++;
                    _gotoNext = 2777513i32;
                } else if (__value__ == (2777039i32)) {
                    if ((_tr_2776744 < _sr_2776588 : Bool)) {
                        _gotoNext = 2777050i32;
                    } else {
                        _gotoNext = 2777104i32;
                    };
                } else if (__value__ == (2777050i32)) {
                    {
                        final __tmp__0 = _sr_2776588;
                        final __tmp__1 = _tr_2776744;
                        _tr_2776744 = __tmp__0;
                        _sr_2776588 = __tmp__1;
                    };
                    _gotoNext = 2777104i32;
                } else if (__value__ == (2777104i32)) {
                    if ((_tr_2776744 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2777126i32;
                    } else {
                        _gotoNext = 2777379i32;
                    };
                } else if (__value__ == (2777126i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2776588 : Bool) && (_sr_2776588 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2776744 == ((_sr_2776588 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2777226i32;
                    } else {
                        _gotoNext = 2777249i32;
                    };
                } else if (__value__ == (2777226i32)) {
                    _i_2776594++;
                    _gotoNext = 2777513i32;
                } else if (__value__ == (2777249i32)) {
                    return false;
                    _gotoNext = 2777379i32;
                } else if (__value__ == (2777379i32)) {
                    _r_2777379 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2776588);
                    var __blank__ = 0i32;
                    _gotoNext = 2777409i32;
                } else if (__value__ == (2777409i32)) {
                    if (((_r_2777379 != _sr_2776588) && (_r_2777379 < _tr_2776744 : Bool) : Bool)) {
                        _gotoNext = 2777431i32;
                    } else {
                        _gotoNext = 2777468i32;
                    };
                } else if (__value__ == (2777431i32)) {
                    _r_2777379 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2777379);
                    _gotoNext = 2777409i32;
                } else if (__value__ == (2777468i32)) {
                    if (_r_2777379 == (_tr_2776744)) {
                        _gotoNext = 2777479i32;
                    } else {
                        _gotoNext = 2777499i32;
                    };
                } else if (__value__ == (2777479i32)) {
                    _i_2776594++;
                    _gotoNext = 2777513i32;
                } else if (__value__ == (2777499i32)) {
                    return false;
                    _i_2776594++;
                    _gotoNext = 2777513i32;
                } else if (__value__ == (2777512i32)) {
                    _i_2776594 = 0i32;
                    _gotoNext = 2777513i32;
                } else if (__value__ == (2777513i32)) {
                    if (_i_2776594 < (_keys_2776581.length)) {
                        _gotoNext = 2776602i32;
                    } else {
                        _gotoNext = 2777586i32;
                    };
                } else if (__value__ == (2777586i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
