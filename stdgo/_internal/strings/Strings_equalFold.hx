package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2925938 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2925951 = @:invalid_type null;
        var _i_2925445:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2926736:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2926101:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2925945:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2925938 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _r_2926180:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2925506:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2925493:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2926183:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2925445 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2925453i32;
                } else if (__value__ == (2925453i32)) {
                    if (((_i_2925445 < (_s.length) : Bool) && (_i_2925445 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2925489i32;
                    } else {
                        _gotoNext = 2925878i32;
                    };
                } else if (__value__ == (2925489i32)) {
                    _sr_2925493 = _s[(_i_2925445 : stdgo.GoInt)];
                    _tr_2925506 = _t[(_i_2925445 : stdgo.GoInt)];
                    if (((_sr_2925493 | _tr_2925506 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2925545i32;
                    } else {
                        _gotoNext = 2925589i32;
                    };
                } else if (__value__ == (2925545i32)) {
                    _gotoNext = 2925903i32;
                } else if (__value__ == (2925589i32)) {
                    if (_tr_2925506 == (_sr_2925493)) {
                        _gotoNext = 2925601i32;
                    } else {
                        _gotoNext = 2925666i32;
                    };
                } else if (__value__ == (2925601i32)) {
                    _i_2925445++;
                    _gotoNext = 2925453i32;
                } else if (__value__ == (2925666i32)) {
                    if ((_tr_2925506 < _sr_2925493 : Bool)) {
                        _gotoNext = 2925677i32;
                    } else {
                        _gotoNext = 2925752i32;
                    };
                } else if (__value__ == (2925677i32)) {
                    {
                        final __tmp__0 = _sr_2925493;
                        final __tmp__1 = _tr_2925506;
                        _tr_2925506 = __tmp__0;
                        _sr_2925493 = __tmp__1;
                    };
                    _gotoNext = 2925752i32;
                } else if (__value__ == (2925752i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2925493 : Bool) && (_sr_2925493 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2925506 == ((_sr_2925493 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2925798i32;
                    } else {
                        _gotoNext = 2925818i32;
                    };
                } else if (__value__ == (2925798i32)) {
                    _i_2925445++;
                    _gotoNext = 2925453i32;
                } else if (__value__ == (2925818i32)) {
                    return false;
                    _i_2925445++;
                    _gotoNext = 2925453i32;
                } else if (__value__ == (2925878i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2925903i32;
                } else if (__value__ == (2925903i32)) {
                    _s = (_s.__slice__(_i_2925445) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2925445) : stdgo.GoString)?.__copy__();
                    _keys_2925938 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2925938 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2925938 = (_keys_2925938.__append__(_key));
                        _values_2925938 = (_values_2925938.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2925938.length)) {
                        _gotoNext = 2926869i32;
                    } else {
                        _gotoNext = 2926943i32;
                    };
                } else if (__value__ == (2925959i32)) {
                    _sr_2925945 = _values_2925938[@:invalid_index_invalid_type _i_2925951];
                    var __blank__ = _keys_2925938[@:invalid_index_invalid_type _i_2925951];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2926028i32;
                    } else {
                        _gotoNext = 2926097i32;
                    };
                } else if (__value__ == (2926028i32)) {
                    return false;
                    _gotoNext = 2926097i32;
                } else if (__value__ == (2926097i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2926135i32;
                    } else {
                        _gotoNext = 2926175i32;
                    };
                } else if (__value__ == (2926135i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2926101 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2926319i32;
                } else if (__value__ == (2926175i32)) {
                    _gotoNext = 2926175i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2926180 = __tmp__._0;
                        _size_2926183 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2926180;
                        final __tmp__1 = (_t.__slice__(_size_2926183) : stdgo.GoString)?.__copy__();
                        _tr_2926101 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2926319i32;
                } else if (__value__ == (2926319i32)) {
                    if (_tr_2926101 == (_sr_2925945)) {
                        _gotoNext = 2926331i32;
                    } else {
                        _gotoNext = 2926396i32;
                    };
                } else if (__value__ == (2926331i32)) {
                    _i_2925951++;
                    _gotoNext = 2926870i32;
                } else if (__value__ == (2926396i32)) {
                    if ((_tr_2926101 < _sr_2925945 : Bool)) {
                        _gotoNext = 2926407i32;
                    } else {
                        _gotoNext = 2926461i32;
                    };
                } else if (__value__ == (2926407i32)) {
                    {
                        final __tmp__0 = _sr_2925945;
                        final __tmp__1 = _tr_2926101;
                        _tr_2926101 = __tmp__0;
                        _sr_2925945 = __tmp__1;
                    };
                    _gotoNext = 2926461i32;
                } else if (__value__ == (2926461i32)) {
                    if ((_tr_2926101 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2926483i32;
                    } else {
                        _gotoNext = 2926736i32;
                    };
                } else if (__value__ == (2926483i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2925945 : Bool) && (_sr_2925945 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2926101 == ((_sr_2925945 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2926583i32;
                    } else {
                        _gotoNext = 2926606i32;
                    };
                } else if (__value__ == (2926583i32)) {
                    _i_2925951++;
                    _gotoNext = 2926870i32;
                } else if (__value__ == (2926606i32)) {
                    return false;
                    _gotoNext = 2926736i32;
                } else if (__value__ == (2926736i32)) {
                    _r_2926736 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2925945);
                    var __blank__ = 0i32;
                    _gotoNext = 2926766i32;
                } else if (__value__ == (2926766i32)) {
                    if (((_r_2926736 != _sr_2925945) && (_r_2926736 < _tr_2926101 : Bool) : Bool)) {
                        _gotoNext = 2926788i32;
                    } else {
                        _gotoNext = 2926825i32;
                    };
                } else if (__value__ == (2926788i32)) {
                    _r_2926736 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2926736);
                    _gotoNext = 2926766i32;
                } else if (__value__ == (2926825i32)) {
                    if (_r_2926736 == (_tr_2926101)) {
                        _gotoNext = 2926836i32;
                    } else {
                        _gotoNext = 2926856i32;
                    };
                } else if (__value__ == (2926836i32)) {
                    _i_2925951++;
                    _gotoNext = 2926870i32;
                } else if (__value__ == (2926856i32)) {
                    return false;
                    _i_2925951++;
                    _gotoNext = 2926870i32;
                } else if (__value__ == (2926869i32)) {
                    _i_2925951 = 0i32;
                    _gotoNext = 2926870i32;
                } else if (__value__ == (2926870i32)) {
                    if (_i_2925951 < (_keys_2925938.length)) {
                        _gotoNext = 2925959i32;
                    } else {
                        _gotoNext = 2926943i32;
                    };
                } else if (__value__ == (2926943i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
