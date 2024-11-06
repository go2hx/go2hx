package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2735172 = @:invalid_type null;
        var _tr_2734727:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2735401:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2734714:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2734666:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2735957:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2735404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2735322:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2735166:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2735159 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2735159 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2734666 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2734674i32;
                } else if (__value__ == (2734674i32)) {
                    if (((_i_2734666 < (_s.length) : Bool) && (_i_2734666 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2734710i32;
                    } else {
                        _gotoNext = 2735099i32;
                    };
                } else if (__value__ == (2734710i32)) {
                    _sr_2734714 = _s[(_i_2734666 : stdgo.GoInt)];
                    _tr_2734727 = _t[(_i_2734666 : stdgo.GoInt)];
                    if (((_sr_2734714 | _tr_2734727 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2734766i32;
                    } else {
                        _gotoNext = 2734810i32;
                    };
                } else if (__value__ == (2734766i32)) {
                    _gotoNext = 2735124i32;
                } else if (__value__ == (2734810i32)) {
                    if (_tr_2734727 == (_sr_2734714)) {
                        _gotoNext = 2734822i32;
                    } else {
                        _gotoNext = 2734887i32;
                    };
                } else if (__value__ == (2734822i32)) {
                    _i_2734666++;
                    _gotoNext = 2734674i32;
                } else if (__value__ == (2734887i32)) {
                    if ((_tr_2734727 < _sr_2734714 : Bool)) {
                        _gotoNext = 2734898i32;
                    } else {
                        _gotoNext = 2734973i32;
                    };
                } else if (__value__ == (2734898i32)) {
                    {
                        final __tmp__0 = _sr_2734714;
                        final __tmp__1 = _tr_2734727;
                        _tr_2734727 = __tmp__0;
                        _sr_2734714 = __tmp__1;
                    };
                    _gotoNext = 2734973i32;
                } else if (__value__ == (2734973i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2734714 : Bool) && (_sr_2734714 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2734727 == ((_sr_2734714 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2735019i32;
                    } else {
                        _gotoNext = 2735039i32;
                    };
                } else if (__value__ == (2735019i32)) {
                    _i_2734666++;
                    _gotoNext = 2734674i32;
                } else if (__value__ == (2735039i32)) {
                    return false;
                    _i_2734666++;
                    _gotoNext = 2734674i32;
                } else if (__value__ == (2735099i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2735124i32;
                } else if (__value__ == (2735124i32)) {
                    _s = (_s.__slice__(_i_2734666) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2734666) : stdgo.GoString)?.__copy__();
                    _keys_2735159 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2735159 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2735159 = (_keys_2735159.__append__(_key));
                        _values_2735159 = (_values_2735159.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2735159.length)) {
                        _gotoNext = 2736090i32;
                    } else {
                        _gotoNext = 2736164i32;
                    };
                } else if (__value__ == (2735180i32)) {
                    _sr_2735166 = _values_2735159[@:invalid_index_invalid_type _i_2735172];
                    var __blank__ = _keys_2735159[@:invalid_index_invalid_type _i_2735172];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2735249i32;
                    } else {
                        _gotoNext = 2735318i32;
                    };
                } else if (__value__ == (2735249i32)) {
                    return false;
                    _gotoNext = 2735318i32;
                } else if (__value__ == (2735318i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2735356i32;
                    } else {
                        _gotoNext = 2735396i32;
                    };
                } else if (__value__ == (2735356i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2735322 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2735540i32;
                } else if (__value__ == (2735396i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2735401 = __tmp__._0;
                        _size_2735404 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2735401;
                        final __tmp__1 = (_t.__slice__(_size_2735404) : stdgo.GoString)?.__copy__();
                        _tr_2735322 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2735540i32;
                } else if (__value__ == (2735540i32)) {
                    if (_tr_2735322 == (_sr_2735166)) {
                        _gotoNext = 2735552i32;
                    } else {
                        _gotoNext = 2735617i32;
                    };
                } else if (__value__ == (2735552i32)) {
                    _i_2735172++;
                    _gotoNext = 2736091i32;
                } else if (__value__ == (2735617i32)) {
                    if ((_tr_2735322 < _sr_2735166 : Bool)) {
                        _gotoNext = 2735628i32;
                    } else {
                        _gotoNext = 2735682i32;
                    };
                } else if (__value__ == (2735628i32)) {
                    {
                        final __tmp__0 = _sr_2735166;
                        final __tmp__1 = _tr_2735322;
                        _tr_2735322 = __tmp__0;
                        _sr_2735166 = __tmp__1;
                    };
                    _gotoNext = 2735682i32;
                } else if (__value__ == (2735682i32)) {
                    if ((_tr_2735322 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2735704i32;
                    } else {
                        _gotoNext = 2735957i32;
                    };
                } else if (__value__ == (2735704i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2735166 : Bool) && (_sr_2735166 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2735322 == ((_sr_2735166 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2735804i32;
                    } else {
                        _gotoNext = 2735827i32;
                    };
                } else if (__value__ == (2735804i32)) {
                    _i_2735172++;
                    _gotoNext = 2736091i32;
                } else if (__value__ == (2735827i32)) {
                    return false;
                    _gotoNext = 2735957i32;
                } else if (__value__ == (2735957i32)) {
                    _r_2735957 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2735166);
                    var __blank__ = 0i32;
                    _gotoNext = 2735987i32;
                } else if (__value__ == (2735987i32)) {
                    if (((_r_2735957 != _sr_2735166) && (_r_2735957 < _tr_2735322 : Bool) : Bool)) {
                        _gotoNext = 2736009i32;
                    } else {
                        _gotoNext = 2736046i32;
                    };
                } else if (__value__ == (2736009i32)) {
                    _r_2735957 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2735957);
                    _gotoNext = 2735987i32;
                } else if (__value__ == (2736046i32)) {
                    if (_r_2735957 == (_tr_2735322)) {
                        _gotoNext = 2736057i32;
                    } else {
                        _gotoNext = 2736077i32;
                    };
                } else if (__value__ == (2736057i32)) {
                    _i_2735172++;
                    _gotoNext = 2736091i32;
                } else if (__value__ == (2736077i32)) {
                    return false;
                    _i_2735172++;
                    _gotoNext = 2736091i32;
                } else if (__value__ == (2736090i32)) {
                    _i_2735172 = 0i32;
                    _gotoNext = 2736091i32;
                } else if (__value__ == (2736091i32)) {
                    if (_i_2735172 < (_keys_2735159.length)) {
                        _gotoNext = 2735180i32;
                    } else {
                        _gotoNext = 2736164i32;
                    };
                } else if (__value__ == (2736164i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
