package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2980703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2981994:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2981441:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2981359:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2981203:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2981196 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2981196 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2981209 = @:invalid_type null;
        var _tr_2980764:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2980751:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2981438:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2980703 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2980711i32;
                } else if (__value__ == (2980711i32)) {
                    if (((_i_2980703 < (_s.length) : Bool) && (_i_2980703 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2980747i32;
                    } else {
                        _gotoNext = 2981136i32;
                    };
                } else if (__value__ == (2980747i32)) {
                    _sr_2980751 = _s[(_i_2980703 : stdgo.GoInt)];
                    _tr_2980764 = _t[(_i_2980703 : stdgo.GoInt)];
                    if (((_sr_2980751 | _tr_2980764 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2980803i32;
                    } else {
                        _gotoNext = 2980847i32;
                    };
                } else if (__value__ == (2980803i32)) {
                    _gotoNext = 2981161i32;
                } else if (__value__ == (2980847i32)) {
                    if (_tr_2980764 == (_sr_2980751)) {
                        _gotoNext = 2980859i32;
                    } else {
                        _gotoNext = 2980924i32;
                    };
                } else if (__value__ == (2980859i32)) {
                    _i_2980703++;
                    _gotoNext = 2980711i32;
                } else if (__value__ == (2980924i32)) {
                    if ((_tr_2980764 < _sr_2980751 : Bool)) {
                        _gotoNext = 2980935i32;
                    } else {
                        _gotoNext = 2981010i32;
                    };
                } else if (__value__ == (2980935i32)) {
                    {
                        final __tmp__0 = _sr_2980751;
                        final __tmp__1 = _tr_2980764;
                        _tr_2980764 = __tmp__0;
                        _sr_2980751 = __tmp__1;
                    };
                    _gotoNext = 2981010i32;
                } else if (__value__ == (2981010i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2980751 : Bool) && (_sr_2980751 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2980764 == ((_sr_2980751 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2981056i32;
                    } else {
                        _gotoNext = 2981076i32;
                    };
                } else if (__value__ == (2981056i32)) {
                    _i_2980703++;
                    _gotoNext = 2980711i32;
                } else if (__value__ == (2981076i32)) {
                    return false;
                    _i_2980703++;
                    _gotoNext = 2980711i32;
                } else if (__value__ == (2981136i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2981161i32;
                } else if (__value__ == (2981161i32)) {
                    _s = (_s.__slice__(_i_2980703) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2980703) : stdgo.GoString)?.__copy__();
                    _keys_2981196 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2981196 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2981196 = (_keys_2981196.__append__(_key));
                        _values_2981196 = (_values_2981196.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2981196.length)) {
                        _gotoNext = 2982127i32;
                    } else {
                        _gotoNext = 2982201i32;
                    };
                } else if (__value__ == (2981217i32)) {
                    _sr_2981203 = _values_2981196[@:invalid_index_invalid_type _i_2981209];
                    var __blank__ = _keys_2981196[@:invalid_index_invalid_type _i_2981209];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2981286i32;
                    } else {
                        _gotoNext = 2981355i32;
                    };
                } else if (__value__ == (2981286i32)) {
                    return false;
                    _gotoNext = 2981355i32;
                } else if (__value__ == (2981355i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2981393i32;
                    } else {
                        _gotoNext = 2981433i32;
                    };
                } else if (__value__ == (2981393i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2981359 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2981577i32;
                } else if (__value__ == (2981433i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2981438 = __tmp__._0;
                        _size_2981441 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2981438;
                        final __tmp__1 = (_t.__slice__(_size_2981441) : stdgo.GoString)?.__copy__();
                        _tr_2981359 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2981577i32;
                } else if (__value__ == (2981577i32)) {
                    if (_tr_2981359 == (_sr_2981203)) {
                        _gotoNext = 2981589i32;
                    } else {
                        _gotoNext = 2981654i32;
                    };
                } else if (__value__ == (2981589i32)) {
                    _i_2981209++;
                    _gotoNext = 2982128i32;
                } else if (__value__ == (2981654i32)) {
                    if ((_tr_2981359 < _sr_2981203 : Bool)) {
                        _gotoNext = 2981665i32;
                    } else {
                        _gotoNext = 2981719i32;
                    };
                } else if (__value__ == (2981665i32)) {
                    {
                        final __tmp__0 = _sr_2981203;
                        final __tmp__1 = _tr_2981359;
                        _tr_2981359 = __tmp__0;
                        _sr_2981203 = __tmp__1;
                    };
                    _gotoNext = 2981719i32;
                } else if (__value__ == (2981719i32)) {
                    if ((_tr_2981359 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2981741i32;
                    } else {
                        _gotoNext = 2981994i32;
                    };
                } else if (__value__ == (2981741i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2981203 : Bool) && (_sr_2981203 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2981359 == ((_sr_2981203 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2981841i32;
                    } else {
                        _gotoNext = 2981864i32;
                    };
                } else if (__value__ == (2981841i32)) {
                    _i_2981209++;
                    _gotoNext = 2982128i32;
                } else if (__value__ == (2981864i32)) {
                    return false;
                    _gotoNext = 2981994i32;
                } else if (__value__ == (2981994i32)) {
                    _r_2981994 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2981203);
                    var __blank__ = 0i32;
                    _gotoNext = 2982024i32;
                } else if (__value__ == (2982024i32)) {
                    if (((_r_2981994 != _sr_2981203) && (_r_2981994 < _tr_2981359 : Bool) : Bool)) {
                        _gotoNext = 2982046i32;
                    } else {
                        _gotoNext = 2982083i32;
                    };
                } else if (__value__ == (2982046i32)) {
                    _r_2981994 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2981994);
                    _gotoNext = 2982024i32;
                } else if (__value__ == (2982083i32)) {
                    if (_r_2981994 == (_tr_2981359)) {
                        _gotoNext = 2982094i32;
                    } else {
                        _gotoNext = 2982114i32;
                    };
                } else if (__value__ == (2982094i32)) {
                    _i_2981209++;
                    _gotoNext = 2982128i32;
                } else if (__value__ == (2982114i32)) {
                    return false;
                    _i_2981209++;
                    _gotoNext = 2982128i32;
                } else if (__value__ == (2982127i32)) {
                    _i_2981209 = 0i32;
                    _gotoNext = 2982128i32;
                } else if (__value__ == (2982128i32)) {
                    if (_i_2981209 < (_keys_2981196.length)) {
                        _gotoNext = 2981217i32;
                    } else {
                        _gotoNext = 2982201i32;
                    };
                } else if (__value__ == (2982201i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
