package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2854794:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2854241:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2854159:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2854003:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2853996 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2853996 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2854009 = @:invalid_type null;
        var _tr_2853564:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2853551:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2854238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2853503:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2853503 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2853511i32;
                } else if (__value__ == (2853511i32)) {
                    if (((_i_2853503 < (_s.length) : Bool) && (_i_2853503 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2853547i32;
                    } else {
                        _gotoNext = 2853936i32;
                    };
                } else if (__value__ == (2853547i32)) {
                    _sr_2853551 = _s[(_i_2853503 : stdgo.GoInt)];
                    _tr_2853564 = _t[(_i_2853503 : stdgo.GoInt)];
                    if (((_sr_2853551 | _tr_2853564 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2853603i32;
                    } else {
                        _gotoNext = 2853647i32;
                    };
                } else if (__value__ == (2853603i32)) {
                    _gotoNext = 2853961i32;
                } else if (__value__ == (2853647i32)) {
                    if (_tr_2853564 == (_sr_2853551)) {
                        _gotoNext = 2853659i32;
                    } else {
                        _gotoNext = 2853724i32;
                    };
                } else if (__value__ == (2853659i32)) {
                    _i_2853503++;
                    _gotoNext = 2853511i32;
                } else if (__value__ == (2853724i32)) {
                    if ((_tr_2853564 < _sr_2853551 : Bool)) {
                        _gotoNext = 2853735i32;
                    } else {
                        _gotoNext = 2853810i32;
                    };
                } else if (__value__ == (2853735i32)) {
                    {
                        final __tmp__0 = _sr_2853551;
                        final __tmp__1 = _tr_2853564;
                        _tr_2853564 = __tmp__0;
                        _sr_2853551 = __tmp__1;
                    };
                    _gotoNext = 2853810i32;
                } else if (__value__ == (2853810i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2853551 : Bool) && (_sr_2853551 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2853564 == ((_sr_2853551 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2853856i32;
                    } else {
                        _gotoNext = 2853876i32;
                    };
                } else if (__value__ == (2853856i32)) {
                    _i_2853503++;
                    _gotoNext = 2853511i32;
                } else if (__value__ == (2853876i32)) {
                    return false;
                    _i_2853503++;
                    _gotoNext = 2853511i32;
                } else if (__value__ == (2853936i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2853961i32;
                } else if (__value__ == (2853961i32)) {
                    _s = (_s.__slice__(_i_2853503) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2853503) : stdgo.GoString)?.__copy__();
                    _keys_2853996 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2853996 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2853996 = (_keys_2853996.__append__(_key));
                        _values_2853996 = (_values_2853996.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2853996.length)) {
                        _gotoNext = 2854927i32;
                    } else {
                        _gotoNext = 2855001i32;
                    };
                } else if (__value__ == (2854017i32)) {
                    _sr_2854003 = _values_2853996[@:invalid_index_invalid_type _i_2854009];
                    var __blank__ = _keys_2853996[@:invalid_index_invalid_type _i_2854009];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2854086i32;
                    } else {
                        _gotoNext = 2854155i32;
                    };
                } else if (__value__ == (2854086i32)) {
                    return false;
                    _gotoNext = 2854155i32;
                } else if (__value__ == (2854155i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2854193i32;
                    } else {
                        _gotoNext = 2854233i32;
                    };
                } else if (__value__ == (2854193i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2854159 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2854377i32;
                } else if (__value__ == (2854233i32)) {
                    _gotoNext = 2854233i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2854238 = __tmp__._0;
                        _size_2854241 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2854238;
                        final __tmp__1 = (_t.__slice__(_size_2854241) : stdgo.GoString)?.__copy__();
                        _tr_2854159 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2854377i32;
                } else if (__value__ == (2854377i32)) {
                    if (_tr_2854159 == (_sr_2854003)) {
                        _gotoNext = 2854389i32;
                    } else {
                        _gotoNext = 2854454i32;
                    };
                } else if (__value__ == (2854389i32)) {
                    _i_2854009++;
                    _gotoNext = 2854928i32;
                } else if (__value__ == (2854454i32)) {
                    if ((_tr_2854159 < _sr_2854003 : Bool)) {
                        _gotoNext = 2854465i32;
                    } else {
                        _gotoNext = 2854519i32;
                    };
                } else if (__value__ == (2854465i32)) {
                    {
                        final __tmp__0 = _sr_2854003;
                        final __tmp__1 = _tr_2854159;
                        _tr_2854159 = __tmp__0;
                        _sr_2854003 = __tmp__1;
                    };
                    _gotoNext = 2854519i32;
                } else if (__value__ == (2854519i32)) {
                    if ((_tr_2854159 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2854541i32;
                    } else {
                        _gotoNext = 2854794i32;
                    };
                } else if (__value__ == (2854541i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2854003 : Bool) && (_sr_2854003 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2854159 == ((_sr_2854003 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2854641i32;
                    } else {
                        _gotoNext = 2854664i32;
                    };
                } else if (__value__ == (2854641i32)) {
                    _i_2854009++;
                    _gotoNext = 2854928i32;
                } else if (__value__ == (2854664i32)) {
                    return false;
                    _gotoNext = 2854794i32;
                } else if (__value__ == (2854794i32)) {
                    _r_2854794 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2854003);
                    var __blank__ = 0i32;
                    _gotoNext = 2854824i32;
                } else if (__value__ == (2854824i32)) {
                    if (((_r_2854794 != _sr_2854003) && (_r_2854794 < _tr_2854159 : Bool) : Bool)) {
                        _gotoNext = 2854846i32;
                    } else {
                        _gotoNext = 2854883i32;
                    };
                } else if (__value__ == (2854846i32)) {
                    _r_2854794 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2854794);
                    _gotoNext = 2854824i32;
                } else if (__value__ == (2854883i32)) {
                    if (_r_2854794 == (_tr_2854159)) {
                        _gotoNext = 2854894i32;
                    } else {
                        _gotoNext = 2854914i32;
                    };
                } else if (__value__ == (2854894i32)) {
                    _i_2854009++;
                    _gotoNext = 2854928i32;
                } else if (__value__ == (2854914i32)) {
                    return false;
                    _i_2854009++;
                    _gotoNext = 2854928i32;
                } else if (__value__ == (2854927i32)) {
                    _i_2854009 = 0i32;
                    _gotoNext = 2854928i32;
                } else if (__value__ == (2854928i32)) {
                    if (_i_2854009 < (_keys_2853996.length)) {
                        _gotoNext = 2854017i32;
                    } else {
                        _gotoNext = 2855001i32;
                    };
                } else if (__value__ == (2855001i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
