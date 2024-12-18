package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3139987:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3139908:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3139300:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3139252:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_3139745 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3139745 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3139758 = @:invalid_type null;
        var _tr_3139313:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3140543:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3139990:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3139752:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3139252 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3139260i32;
                } else if (__value__ == (3139260i32)) {
                    if (((_i_3139252 < (_s.length) : Bool) && (_i_3139252 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3139296i32;
                    } else {
                        _gotoNext = 3139685i32;
                    };
                } else if (__value__ == (3139296i32)) {
                    _sr_3139300 = _s[(_i_3139252 : stdgo.GoInt)];
                    _tr_3139313 = _t[(_i_3139252 : stdgo.GoInt)];
                    if (((_sr_3139300 | _tr_3139313 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3139352i32;
                    } else {
                        _gotoNext = 3139396i32;
                    };
                } else if (__value__ == (3139352i32)) {
                    _gotoNext = 3139710i32;
                } else if (__value__ == (3139396i32)) {
                    if (_tr_3139313 == (_sr_3139300)) {
                        _gotoNext = 3139408i32;
                    } else {
                        _gotoNext = 3139473i32;
                    };
                } else if (__value__ == (3139408i32)) {
                    _i_3139252++;
                    _gotoNext = 3139260i32;
                } else if (__value__ == (3139473i32)) {
                    if ((_tr_3139313 < _sr_3139300 : Bool)) {
                        _gotoNext = 3139484i32;
                    } else {
                        _gotoNext = 3139559i32;
                    };
                } else if (__value__ == (3139484i32)) {
                    {
                        final __tmp__0 = _sr_3139300;
                        final __tmp__1 = _tr_3139313;
                        _tr_3139313 = __tmp__0;
                        _sr_3139300 = __tmp__1;
                    };
                    _gotoNext = 3139559i32;
                } else if (__value__ == (3139559i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3139300 : Bool) && (_sr_3139300 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3139313 == ((_sr_3139300 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3139605i32;
                    } else {
                        _gotoNext = 3139625i32;
                    };
                } else if (__value__ == (3139605i32)) {
                    _i_3139252++;
                    _gotoNext = 3139260i32;
                } else if (__value__ == (3139625i32)) {
                    return false;
                    _i_3139252++;
                    _gotoNext = 3139260i32;
                } else if (__value__ == (3139685i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3139710i32;
                } else if (__value__ == (3139710i32)) {
                    _s = (_s.__slice__(_i_3139252) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3139252) : stdgo.GoString)?.__copy__();
                    _keys_3139745 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3139745 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3139745 = (_keys_3139745.__append__(_key));
                        _values_3139745 = (_values_3139745.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3139745.length)) {
                        _gotoNext = 3140676i32;
                    } else {
                        _gotoNext = 3140750i32;
                    };
                } else if (__value__ == (3139766i32)) {
                    _sr_3139752 = _values_3139745[@:invalid_index_invalid_type _i_3139758];
                    var __blank__ = _keys_3139745[@:invalid_index_invalid_type _i_3139758];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3139835i32;
                    } else {
                        _gotoNext = 3139904i32;
                    };
                } else if (__value__ == (3139835i32)) {
                    return false;
                    _gotoNext = 3139904i32;
                } else if (__value__ == (3139904i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3139942i32;
                    } else {
                        _gotoNext = 3139982i32;
                    };
                } else if (__value__ == (3139942i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3139908 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3140126i32;
                } else if (__value__ == (3139982i32)) {
                    _gotoNext = 3139982i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3139987 = __tmp__._0;
                        _size_3139990 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3139987;
                        final __tmp__1 = (_t.__slice__(_size_3139990) : stdgo.GoString)?.__copy__();
                        _tr_3139908 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3140126i32;
                } else if (__value__ == (3140126i32)) {
                    if (_tr_3139908 == (_sr_3139752)) {
                        _gotoNext = 3140138i32;
                    } else {
                        _gotoNext = 3140203i32;
                    };
                } else if (__value__ == (3140138i32)) {
                    _i_3139758++;
                    _gotoNext = 3140677i32;
                } else if (__value__ == (3140203i32)) {
                    if ((_tr_3139908 < _sr_3139752 : Bool)) {
                        _gotoNext = 3140214i32;
                    } else {
                        _gotoNext = 3140268i32;
                    };
                } else if (__value__ == (3140214i32)) {
                    {
                        final __tmp__0 = _sr_3139752;
                        final __tmp__1 = _tr_3139908;
                        _tr_3139908 = __tmp__0;
                        _sr_3139752 = __tmp__1;
                    };
                    _gotoNext = 3140268i32;
                } else if (__value__ == (3140268i32)) {
                    if ((_tr_3139908 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3140290i32;
                    } else {
                        _gotoNext = 3140543i32;
                    };
                } else if (__value__ == (3140290i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3139752 : Bool) && (_sr_3139752 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3139908 == ((_sr_3139752 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3140390i32;
                    } else {
                        _gotoNext = 3140413i32;
                    };
                } else if (__value__ == (3140390i32)) {
                    _i_3139758++;
                    _gotoNext = 3140677i32;
                } else if (__value__ == (3140413i32)) {
                    return false;
                    _gotoNext = 3140543i32;
                } else if (__value__ == (3140543i32)) {
                    _r_3140543 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3139752);
                    var __blank__ = 0i32;
                    _gotoNext = 3140573i32;
                } else if (__value__ == (3140573i32)) {
                    if (((_r_3140543 != _sr_3139752) && (_r_3140543 < _tr_3139908 : Bool) : Bool)) {
                        _gotoNext = 3140595i32;
                    } else {
                        _gotoNext = 3140632i32;
                    };
                } else if (__value__ == (3140595i32)) {
                    _r_3140543 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3140543);
                    _gotoNext = 3140573i32;
                } else if (__value__ == (3140632i32)) {
                    if (_r_3140543 == (_tr_3139908)) {
                        _gotoNext = 3140643i32;
                    } else {
                        _gotoNext = 3140663i32;
                    };
                } else if (__value__ == (3140643i32)) {
                    _i_3139758++;
                    _gotoNext = 3140677i32;
                } else if (__value__ == (3140663i32)) {
                    return false;
                    _i_3139758++;
                    _gotoNext = 3140677i32;
                } else if (__value__ == (3140676i32)) {
                    _i_3139758 = 0i32;
                    _gotoNext = 3140677i32;
                } else if (__value__ == (3140677i32)) {
                    if (_i_3139758 < (_keys_3139745.length)) {
                        _gotoNext = 3139766i32;
                    } else {
                        _gotoNext = 3140750i32;
                    };
                } else if (__value__ == (3140750i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
