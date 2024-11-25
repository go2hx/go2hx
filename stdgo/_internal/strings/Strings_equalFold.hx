package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2878014 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2878027 = @:invalid_type null;
        var _tr_2877582:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2877569:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2878812:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2878259:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2878256:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2878177:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2878021:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2878014 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2877521:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2877521 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2877529i32;
                } else if (__value__ == (2877529i32)) {
                    if (((_i_2877521 < (_s.length) : Bool) && (_i_2877521 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2877565i32;
                    } else {
                        _gotoNext = 2877954i32;
                    };
                } else if (__value__ == (2877565i32)) {
                    _sr_2877569 = _s[(_i_2877521 : stdgo.GoInt)];
                    _tr_2877582 = _t[(_i_2877521 : stdgo.GoInt)];
                    if (((_sr_2877569 | _tr_2877582 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2877621i32;
                    } else {
                        _gotoNext = 2877665i32;
                    };
                } else if (__value__ == (2877621i32)) {
                    _gotoNext = 2877979i32;
                } else if (__value__ == (2877665i32)) {
                    if (_tr_2877582 == (_sr_2877569)) {
                        _gotoNext = 2877677i32;
                    } else {
                        _gotoNext = 2877742i32;
                    };
                } else if (__value__ == (2877677i32)) {
                    _i_2877521++;
                    _gotoNext = 2877529i32;
                } else if (__value__ == (2877742i32)) {
                    if ((_tr_2877582 < _sr_2877569 : Bool)) {
                        _gotoNext = 2877753i32;
                    } else {
                        _gotoNext = 2877828i32;
                    };
                } else if (__value__ == (2877753i32)) {
                    {
                        final __tmp__0 = _sr_2877569;
                        final __tmp__1 = _tr_2877582;
                        _tr_2877582 = __tmp__0;
                        _sr_2877569 = __tmp__1;
                    };
                    _gotoNext = 2877828i32;
                } else if (__value__ == (2877828i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2877569 : Bool) && (_sr_2877569 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2877582 == ((_sr_2877569 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2877874i32;
                    } else {
                        _gotoNext = 2877894i32;
                    };
                } else if (__value__ == (2877874i32)) {
                    _i_2877521++;
                    _gotoNext = 2877529i32;
                } else if (__value__ == (2877894i32)) {
                    return false;
                    _i_2877521++;
                    _gotoNext = 2877529i32;
                } else if (__value__ == (2877954i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2877979i32;
                } else if (__value__ == (2877979i32)) {
                    _s = (_s.__slice__(_i_2877521) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2877521) : stdgo.GoString)?.__copy__();
                    _keys_2878014 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2878014 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2878014 = (_keys_2878014.__append__(_key));
                        _values_2878014 = (_values_2878014.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2878014.length)) {
                        _gotoNext = 2878945i32;
                    } else {
                        _gotoNext = 2879019i32;
                    };
                } else if (__value__ == (2878035i32)) {
                    _sr_2878021 = _values_2878014[@:invalid_index_invalid_type _i_2878027];
                    var __blank__ = _keys_2878014[@:invalid_index_invalid_type _i_2878027];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2878104i32;
                    } else {
                        _gotoNext = 2878173i32;
                    };
                } else if (__value__ == (2878104i32)) {
                    return false;
                    _gotoNext = 2878173i32;
                } else if (__value__ == (2878173i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2878211i32;
                    } else {
                        _gotoNext = 2878251i32;
                    };
                } else if (__value__ == (2878211i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2878177 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2878395i32;
                } else if (__value__ == (2878251i32)) {
                    _gotoNext = 2878251i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2878256 = __tmp__._0;
                        _size_2878259 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2878256;
                        final __tmp__1 = (_t.__slice__(_size_2878259) : stdgo.GoString)?.__copy__();
                        _tr_2878177 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2878395i32;
                } else if (__value__ == (2878395i32)) {
                    if (_tr_2878177 == (_sr_2878021)) {
                        _gotoNext = 2878407i32;
                    } else {
                        _gotoNext = 2878472i32;
                    };
                } else if (__value__ == (2878407i32)) {
                    _i_2878027++;
                    _gotoNext = 2878946i32;
                } else if (__value__ == (2878472i32)) {
                    if ((_tr_2878177 < _sr_2878021 : Bool)) {
                        _gotoNext = 2878483i32;
                    } else {
                        _gotoNext = 2878537i32;
                    };
                } else if (__value__ == (2878483i32)) {
                    {
                        final __tmp__0 = _sr_2878021;
                        final __tmp__1 = _tr_2878177;
                        _tr_2878177 = __tmp__0;
                        _sr_2878021 = __tmp__1;
                    };
                    _gotoNext = 2878537i32;
                } else if (__value__ == (2878537i32)) {
                    if ((_tr_2878177 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2878559i32;
                    } else {
                        _gotoNext = 2878812i32;
                    };
                } else if (__value__ == (2878559i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2878021 : Bool) && (_sr_2878021 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2878177 == ((_sr_2878021 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2878659i32;
                    } else {
                        _gotoNext = 2878682i32;
                    };
                } else if (__value__ == (2878659i32)) {
                    _i_2878027++;
                    _gotoNext = 2878946i32;
                } else if (__value__ == (2878682i32)) {
                    return false;
                    _gotoNext = 2878812i32;
                } else if (__value__ == (2878812i32)) {
                    _r_2878812 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2878021);
                    var __blank__ = 0i32;
                    _gotoNext = 2878842i32;
                } else if (__value__ == (2878842i32)) {
                    if (((_r_2878812 != _sr_2878021) && (_r_2878812 < _tr_2878177 : Bool) : Bool)) {
                        _gotoNext = 2878864i32;
                    } else {
                        _gotoNext = 2878901i32;
                    };
                } else if (__value__ == (2878864i32)) {
                    _r_2878812 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2878812);
                    _gotoNext = 2878842i32;
                } else if (__value__ == (2878901i32)) {
                    if (_r_2878812 == (_tr_2878177)) {
                        _gotoNext = 2878912i32;
                    } else {
                        _gotoNext = 2878932i32;
                    };
                } else if (__value__ == (2878912i32)) {
                    _i_2878027++;
                    _gotoNext = 2878946i32;
                } else if (__value__ == (2878932i32)) {
                    return false;
                    _i_2878027++;
                    _gotoNext = 2878946i32;
                } else if (__value__ == (2878945i32)) {
                    _i_2878027 = 0i32;
                    _gotoNext = 2878946i32;
                } else if (__value__ == (2878946i32)) {
                    if (_i_2878027 < (_keys_2878014.length)) {
                        _gotoNext = 2878035i32;
                    } else {
                        _gotoNext = 2879019i32;
                    };
                } else if (__value__ == (2879019i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
