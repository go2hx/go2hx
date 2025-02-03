package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3020797:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3020562:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3020568 = @:invalid_type null;
        var _r_3021353:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3020123:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3020110:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3020062:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3020800:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3020718:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3020555 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3020555 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3020062 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3020070i32;
                } else if (__value__ == (3020070i32)) {
                    if (((_i_3020062 < (_s.length) : Bool) && (_i_3020062 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3020106i32;
                    } else {
                        _gotoNext = 3020495i32;
                    };
                } else if (__value__ == (3020106i32)) {
                    _sr_3020110 = _s[(_i_3020062 : stdgo.GoInt)];
                    _tr_3020123 = _t[(_i_3020062 : stdgo.GoInt)];
                    if (((_sr_3020110 | _tr_3020123 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020162i32;
                    } else {
                        _gotoNext = 3020206i32;
                    };
                } else if (__value__ == (3020162i32)) {
                    _gotoNext = 3020520i32;
                } else if (__value__ == (3020206i32)) {
                    if (_tr_3020123 == (_sr_3020110)) {
                        _gotoNext = 3020218i32;
                    } else {
                        _gotoNext = 3020283i32;
                    };
                } else if (__value__ == (3020218i32)) {
                    _i_3020062++;
                    _gotoNext = 3020070i32;
                } else if (__value__ == (3020283i32)) {
                    if ((_tr_3020123 < _sr_3020110 : Bool)) {
                        _gotoNext = 3020294i32;
                    } else {
                        _gotoNext = 3020369i32;
                    };
                } else if (__value__ == (3020294i32)) {
                    {
                        final __tmp__0 = _sr_3020110;
                        final __tmp__1 = _tr_3020123;
                        _tr_3020123 = __tmp__0;
                        _sr_3020110 = __tmp__1;
                    };
                    _gotoNext = 3020369i32;
                } else if (__value__ == (3020369i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3020110 : Bool) && (_sr_3020110 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3020123 == ((_sr_3020110 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3020415i32;
                    } else {
                        _gotoNext = 3020435i32;
                    };
                } else if (__value__ == (3020415i32)) {
                    _i_3020062++;
                    _gotoNext = 3020070i32;
                } else if (__value__ == (3020435i32)) {
                    return false;
                    _i_3020062++;
                    _gotoNext = 3020070i32;
                } else if (__value__ == (3020495i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3020520i32;
                } else if (__value__ == (3020520i32)) {
                    _s = (_s.__slice__(_i_3020062) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3020062) : stdgo.GoString)?.__copy__();
                    _keys_3020555 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3020555 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3020555 = (_keys_3020555.__append__(_key));
                        _values_3020555 = (_values_3020555.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3020555.length)) {
                        _gotoNext = 3021486i32;
                    } else {
                        _gotoNext = 3021560i32;
                    };
                } else if (__value__ == (3020576i32)) {
                    _sr_3020562 = _values_3020555[@:invalid_index_invalid_type _i_3020568];
                    var __blank__ = _keys_3020555[@:invalid_index_invalid_type _i_3020568];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3020645i32;
                    } else {
                        _gotoNext = 3020714i32;
                    };
                } else if (__value__ == (3020645i32)) {
                    return false;
                    _gotoNext = 3020714i32;
                } else if (__value__ == (3020714i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020752i32;
                    } else {
                        _gotoNext = 3020792i32;
                    };
                } else if (__value__ == (3020752i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3020718 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3020936i32;
                } else if (__value__ == (3020792i32)) {
                    _gotoNext = 3020792i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3020797 = @:tmpset0 __tmp__._0;
                        _size_3020800 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3020797;
                        final __tmp__1 = (_t.__slice__(_size_3020800) : stdgo.GoString)?.__copy__();
                        _tr_3020718 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3020936i32;
                } else if (__value__ == (3020936i32)) {
                    if (_tr_3020718 == (_sr_3020562)) {
                        _gotoNext = 3020948i32;
                    } else {
                        _gotoNext = 3021013i32;
                    };
                } else if (__value__ == (3020948i32)) {
                    _i_3020568++;
                    _gotoNext = 3021487i32;
                } else if (__value__ == (3021013i32)) {
                    if ((_tr_3020718 < _sr_3020562 : Bool)) {
                        _gotoNext = 3021024i32;
                    } else {
                        _gotoNext = 3021078i32;
                    };
                } else if (__value__ == (3021024i32)) {
                    {
                        final __tmp__0 = _sr_3020562;
                        final __tmp__1 = _tr_3020718;
                        _tr_3020718 = __tmp__0;
                        _sr_3020562 = __tmp__1;
                    };
                    _gotoNext = 3021078i32;
                } else if (__value__ == (3021078i32)) {
                    if ((_tr_3020718 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3021100i32;
                    } else {
                        _gotoNext = 3021353i32;
                    };
                } else if (__value__ == (3021100i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3020562 : Bool) && (_sr_3020562 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3020718 == ((_sr_3020562 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3021200i32;
                    } else {
                        _gotoNext = 3021223i32;
                    };
                } else if (__value__ == (3021200i32)) {
                    _i_3020568++;
                    _gotoNext = 3021487i32;
                } else if (__value__ == (3021223i32)) {
                    return false;
                    _gotoNext = 3021353i32;
                } else if (__value__ == (3021353i32)) {
                    _r_3021353 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3020562);
                    var __blank__ = 0i32;
                    _gotoNext = 3021383i32;
                } else if (__value__ == (3021383i32)) {
                    if (((_r_3021353 != _sr_3020562) && (_r_3021353 < _tr_3020718 : Bool) : Bool)) {
                        _gotoNext = 3021405i32;
                    } else {
                        _gotoNext = 3021442i32;
                    };
                } else if (__value__ == (3021405i32)) {
                    _r_3021353 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3021353);
                    _gotoNext = 3021383i32;
                } else if (__value__ == (3021442i32)) {
                    if (_r_3021353 == (_tr_3020718)) {
                        _gotoNext = 3021453i32;
                    } else {
                        _gotoNext = 3021473i32;
                    };
                } else if (__value__ == (3021453i32)) {
                    _i_3020568++;
                    _gotoNext = 3021487i32;
                } else if (__value__ == (3021473i32)) {
                    return false;
                    _i_3020568++;
                    _gotoNext = 3021487i32;
                } else if (__value__ == (3021486i32)) {
                    _i_3020568 = 0i32;
                    _gotoNext = 3021487i32;
                } else if (__value__ == (3021487i32)) {
                    if (_i_3020568 < (_keys_3020555.length)) {
                        _gotoNext = 3020576i32;
                    } else {
                        _gotoNext = 3021560i32;
                    };
                } else if (__value__ == (3021560i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
