package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2852454:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2853697:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2853141:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2852906:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2852912 = @:invalid_type null;
        var _tr_2852467:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2852406:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2853144:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2853062:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2852899 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2852899 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2852406 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2852414i32;
                } else if (__value__ == (2852414i32)) {
                    if (((_i_2852406 < (_s.length) : Bool) && (_i_2852406 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2852450i32;
                    } else {
                        _gotoNext = 2852839i32;
                    };
                } else if (__value__ == (2852450i32)) {
                    _sr_2852454 = _s[(_i_2852406 : stdgo.GoInt)];
                    _tr_2852467 = _t[(_i_2852406 : stdgo.GoInt)];
                    if (((_sr_2852454 | _tr_2852467 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2852506i32;
                    } else {
                        _gotoNext = 2852550i32;
                    };
                } else if (__value__ == (2852506i32)) {
                    _gotoNext = 2852864i32;
                } else if (__value__ == (2852550i32)) {
                    if (_tr_2852467 == (_sr_2852454)) {
                        _gotoNext = 2852562i32;
                    } else {
                        _gotoNext = 2852627i32;
                    };
                } else if (__value__ == (2852562i32)) {
                    _i_2852406++;
                    _gotoNext = 2852414i32;
                } else if (__value__ == (2852627i32)) {
                    if ((_tr_2852467 < _sr_2852454 : Bool)) {
                        _gotoNext = 2852638i32;
                    } else {
                        _gotoNext = 2852713i32;
                    };
                } else if (__value__ == (2852638i32)) {
                    {
                        final __tmp__0 = _sr_2852454;
                        final __tmp__1 = _tr_2852467;
                        _tr_2852467 = __tmp__0;
                        _sr_2852454 = __tmp__1;
                    };
                    _gotoNext = 2852713i32;
                } else if (__value__ == (2852713i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2852454 : Bool) && (_sr_2852454 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2852467 == ((_sr_2852454 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2852759i32;
                    } else {
                        _gotoNext = 2852779i32;
                    };
                } else if (__value__ == (2852759i32)) {
                    _i_2852406++;
                    _gotoNext = 2852414i32;
                } else if (__value__ == (2852779i32)) {
                    return false;
                    _i_2852406++;
                    _gotoNext = 2852414i32;
                } else if (__value__ == (2852839i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2852864i32;
                } else if (__value__ == (2852864i32)) {
                    _s = (_s.__slice__(_i_2852406) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2852406) : stdgo.GoString)?.__copy__();
                    _keys_2852899 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2852899 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2852899 = (_keys_2852899.__append__(_key));
                        _values_2852899 = (_values_2852899.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2852899.length)) {
                        _gotoNext = 2853830i32;
                    } else {
                        _gotoNext = 2853904i32;
                    };
                } else if (__value__ == (2852920i32)) {
                    _sr_2852906 = _values_2852899[@:invalid_index_invalid_type _i_2852912];
                    var __blank__ = _keys_2852899[@:invalid_index_invalid_type _i_2852912];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2852989i32;
                    } else {
                        _gotoNext = 2853058i32;
                    };
                } else if (__value__ == (2852989i32)) {
                    return false;
                    _gotoNext = 2853058i32;
                } else if (__value__ == (2853058i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2853096i32;
                    } else {
                        _gotoNext = 2853136i32;
                    };
                } else if (__value__ == (2853096i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2853062 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2853280i32;
                } else if (__value__ == (2853136i32)) {
                    _gotoNext = 2853136i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2853141 = __tmp__._0;
                        _size_2853144 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2853141;
                        final __tmp__1 = (_t.__slice__(_size_2853144) : stdgo.GoString)?.__copy__();
                        _tr_2853062 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2853280i32;
                } else if (__value__ == (2853280i32)) {
                    if (_tr_2853062 == (_sr_2852906)) {
                        _gotoNext = 2853292i32;
                    } else {
                        _gotoNext = 2853357i32;
                    };
                } else if (__value__ == (2853292i32)) {
                    _i_2852912++;
                    _gotoNext = 2853831i32;
                } else if (__value__ == (2853357i32)) {
                    if ((_tr_2853062 < _sr_2852906 : Bool)) {
                        _gotoNext = 2853368i32;
                    } else {
                        _gotoNext = 2853422i32;
                    };
                } else if (__value__ == (2853368i32)) {
                    {
                        final __tmp__0 = _sr_2852906;
                        final __tmp__1 = _tr_2853062;
                        _tr_2853062 = __tmp__0;
                        _sr_2852906 = __tmp__1;
                    };
                    _gotoNext = 2853422i32;
                } else if (__value__ == (2853422i32)) {
                    if ((_tr_2853062 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2853444i32;
                    } else {
                        _gotoNext = 2853697i32;
                    };
                } else if (__value__ == (2853444i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2852906 : Bool) && (_sr_2852906 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2853062 == ((_sr_2852906 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2853544i32;
                    } else {
                        _gotoNext = 2853567i32;
                    };
                } else if (__value__ == (2853544i32)) {
                    _i_2852912++;
                    _gotoNext = 2853831i32;
                } else if (__value__ == (2853567i32)) {
                    return false;
                    _gotoNext = 2853697i32;
                } else if (__value__ == (2853697i32)) {
                    _r_2853697 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2852906);
                    var __blank__ = 0i32;
                    _gotoNext = 2853727i32;
                } else if (__value__ == (2853727i32)) {
                    if (((_r_2853697 != _sr_2852906) && (_r_2853697 < _tr_2853062 : Bool) : Bool)) {
                        _gotoNext = 2853749i32;
                    } else {
                        _gotoNext = 2853786i32;
                    };
                } else if (__value__ == (2853749i32)) {
                    _r_2853697 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2853697);
                    _gotoNext = 2853727i32;
                } else if (__value__ == (2853786i32)) {
                    if (_r_2853697 == (_tr_2853062)) {
                        _gotoNext = 2853797i32;
                    } else {
                        _gotoNext = 2853817i32;
                    };
                } else if (__value__ == (2853797i32)) {
                    _i_2852912++;
                    _gotoNext = 2853831i32;
                } else if (__value__ == (2853817i32)) {
                    return false;
                    _i_2852912++;
                    _gotoNext = 2853831i32;
                } else if (__value__ == (2853830i32)) {
                    _i_2852912 = 0i32;
                    _gotoNext = 2853831i32;
                } else if (__value__ == (2853831i32)) {
                    if (_i_2852912 < (_keys_2852899.length)) {
                        _gotoNext = 2852920i32;
                    } else {
                        _gotoNext = 2853904i32;
                    };
                } else if (__value__ == (2853904i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
