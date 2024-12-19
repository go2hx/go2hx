package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2923029:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2922394:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2922238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2922231 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2922244 = @:invalid_type null;
        var _size_2922476:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2922473:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2922231 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2921799:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2921786:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2921738:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2921738 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2921746i32;
                } else if (__value__ == (2921746i32)) {
                    if (((_i_2921738 < (_s.length) : Bool) && (_i_2921738 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2921782i32;
                    } else {
                        _gotoNext = 2922171i32;
                    };
                } else if (__value__ == (2921782i32)) {
                    _sr_2921786 = _s[(_i_2921738 : stdgo.GoInt)];
                    _tr_2921799 = _t[(_i_2921738 : stdgo.GoInt)];
                    if (((_sr_2921786 | _tr_2921799 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2921838i32;
                    } else {
                        _gotoNext = 2921882i32;
                    };
                } else if (__value__ == (2921838i32)) {
                    _gotoNext = 2922196i32;
                } else if (__value__ == (2921882i32)) {
                    if (_tr_2921799 == (_sr_2921786)) {
                        _gotoNext = 2921894i32;
                    } else {
                        _gotoNext = 2921959i32;
                    };
                } else if (__value__ == (2921894i32)) {
                    _i_2921738++;
                    _gotoNext = 2921746i32;
                } else if (__value__ == (2921959i32)) {
                    if ((_tr_2921799 < _sr_2921786 : Bool)) {
                        _gotoNext = 2921970i32;
                    } else {
                        _gotoNext = 2922045i32;
                    };
                } else if (__value__ == (2921970i32)) {
                    {
                        final __tmp__0 = _sr_2921786;
                        final __tmp__1 = _tr_2921799;
                        _tr_2921799 = __tmp__0;
                        _sr_2921786 = __tmp__1;
                    };
                    _gotoNext = 2922045i32;
                } else if (__value__ == (2922045i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2921786 : Bool) && (_sr_2921786 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2921799 == ((_sr_2921786 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2922091i32;
                    } else {
                        _gotoNext = 2922111i32;
                    };
                } else if (__value__ == (2922091i32)) {
                    _i_2921738++;
                    _gotoNext = 2921746i32;
                } else if (__value__ == (2922111i32)) {
                    return false;
                    _i_2921738++;
                    _gotoNext = 2921746i32;
                } else if (__value__ == (2922171i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2922196i32;
                } else if (__value__ == (2922196i32)) {
                    _s = (_s.__slice__(_i_2921738) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2921738) : stdgo.GoString)?.__copy__();
                    _keys_2922231 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2922231 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2922231 = (_keys_2922231.__append__(_key));
                        _values_2922231 = (_values_2922231.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2922231.length)) {
                        _gotoNext = 2923162i32;
                    } else {
                        _gotoNext = 2923236i32;
                    };
                } else if (__value__ == (2922252i32)) {
                    _sr_2922238 = _values_2922231[@:invalid_index_invalid_type _i_2922244];
                    var __blank__ = _keys_2922231[@:invalid_index_invalid_type _i_2922244];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2922321i32;
                    } else {
                        _gotoNext = 2922390i32;
                    };
                } else if (__value__ == (2922321i32)) {
                    return false;
                    _gotoNext = 2922390i32;
                } else if (__value__ == (2922390i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2922428i32;
                    } else {
                        _gotoNext = 2922468i32;
                    };
                } else if (__value__ == (2922428i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2922394 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2922612i32;
                } else if (__value__ == (2922468i32)) {
                    _gotoNext = 2922468i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2922473 = __tmp__._0;
                        _size_2922476 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2922473;
                        final __tmp__1 = (_t.__slice__(_size_2922476) : stdgo.GoString)?.__copy__();
                        _tr_2922394 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2922612i32;
                } else if (__value__ == (2922612i32)) {
                    if (_tr_2922394 == (_sr_2922238)) {
                        _gotoNext = 2922624i32;
                    } else {
                        _gotoNext = 2922689i32;
                    };
                } else if (__value__ == (2922624i32)) {
                    _i_2922244++;
                    _gotoNext = 2923163i32;
                } else if (__value__ == (2922689i32)) {
                    if ((_tr_2922394 < _sr_2922238 : Bool)) {
                        _gotoNext = 2922700i32;
                    } else {
                        _gotoNext = 2922754i32;
                    };
                } else if (__value__ == (2922700i32)) {
                    {
                        final __tmp__0 = _sr_2922238;
                        final __tmp__1 = _tr_2922394;
                        _tr_2922394 = __tmp__0;
                        _sr_2922238 = __tmp__1;
                    };
                    _gotoNext = 2922754i32;
                } else if (__value__ == (2922754i32)) {
                    if ((_tr_2922394 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2922776i32;
                    } else {
                        _gotoNext = 2923029i32;
                    };
                } else if (__value__ == (2922776i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2922238 : Bool) && (_sr_2922238 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2922394 == ((_sr_2922238 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2922876i32;
                    } else {
                        _gotoNext = 2922899i32;
                    };
                } else if (__value__ == (2922876i32)) {
                    _i_2922244++;
                    _gotoNext = 2923163i32;
                } else if (__value__ == (2922899i32)) {
                    return false;
                    _gotoNext = 2923029i32;
                } else if (__value__ == (2923029i32)) {
                    _r_2923029 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2922238);
                    var __blank__ = 0i32;
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923059i32)) {
                    if (((_r_2923029 != _sr_2922238) && (_r_2923029 < _tr_2922394 : Bool) : Bool)) {
                        _gotoNext = 2923081i32;
                    } else {
                        _gotoNext = 2923118i32;
                    };
                } else if (__value__ == (2923081i32)) {
                    _r_2923029 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2923029);
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923118i32)) {
                    if (_r_2923029 == (_tr_2922394)) {
                        _gotoNext = 2923129i32;
                    } else {
                        _gotoNext = 2923149i32;
                    };
                } else if (__value__ == (2923129i32)) {
                    _i_2922244++;
                    _gotoNext = 2923163i32;
                } else if (__value__ == (2923149i32)) {
                    return false;
                    _i_2922244++;
                    _gotoNext = 2923163i32;
                } else if (__value__ == (2923162i32)) {
                    _i_2922244 = 0i32;
                    _gotoNext = 2923163i32;
                } else if (__value__ == (2923163i32)) {
                    if (_i_2922244 < (_keys_2922231.length)) {
                        _gotoNext = 2922252i32;
                    } else {
                        _gotoNext = 2923236i32;
                    };
                } else if (__value__ == (2923236i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
