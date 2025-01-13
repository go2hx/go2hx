package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2831244:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2831237 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2831250 = @:invalid_type null;
        var _tr_2830805:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2832035:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2831400:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2831237 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2830792:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2830744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2831482:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2831479:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2830744 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2830752i32;
                } else if (__value__ == (2830752i32)) {
                    if (((_i_2830744 < (_s.length) : Bool) && (_i_2830744 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2830788i32;
                    } else {
                        _gotoNext = 2831177i32;
                    };
                } else if (__value__ == (2830788i32)) {
                    _sr_2830792 = _s[(_i_2830744 : stdgo.GoInt)];
                    _tr_2830805 = _t[(_i_2830744 : stdgo.GoInt)];
                    if (((_sr_2830792 | _tr_2830805 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2830844i32;
                    } else {
                        _gotoNext = 2830888i32;
                    };
                } else if (__value__ == (2830844i32)) {
                    _gotoNext = 2831202i32;
                } else if (__value__ == (2830888i32)) {
                    if (_tr_2830805 == (_sr_2830792)) {
                        _gotoNext = 2830900i32;
                    } else {
                        _gotoNext = 2830965i32;
                    };
                } else if (__value__ == (2830900i32)) {
                    _i_2830744++;
                    _gotoNext = 2830752i32;
                } else if (__value__ == (2830965i32)) {
                    if ((_tr_2830805 < _sr_2830792 : Bool)) {
                        _gotoNext = 2830976i32;
                    } else {
                        _gotoNext = 2831051i32;
                    };
                } else if (__value__ == (2830976i32)) {
                    {
                        final __tmp__0 = _sr_2830792;
                        final __tmp__1 = _tr_2830805;
                        _tr_2830805 = __tmp__0;
                        _sr_2830792 = __tmp__1;
                    };
                    _gotoNext = 2831051i32;
                } else if (__value__ == (2831051i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2830792 : Bool) && (_sr_2830792 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2830805 == ((_sr_2830792 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2831097i32;
                    } else {
                        _gotoNext = 2831117i32;
                    };
                } else if (__value__ == (2831097i32)) {
                    _i_2830744++;
                    _gotoNext = 2830752i32;
                } else if (__value__ == (2831117i32)) {
                    return false;
                    _i_2830744++;
                    _gotoNext = 2830752i32;
                } else if (__value__ == (2831177i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2831202i32;
                } else if (__value__ == (2831202i32)) {
                    _s = (_s.__slice__(_i_2830744) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2830744) : stdgo.GoString)?.__copy__();
                    _keys_2831237 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2831237 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2831237 = (_keys_2831237.__append__(_key));
                        _values_2831237 = (_values_2831237.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2831237.length)) {
                        _gotoNext = 2832168i32;
                    } else {
                        _gotoNext = 2832242i32;
                    };
                } else if (__value__ == (2831258i32)) {
                    _sr_2831244 = _values_2831237[@:invalid_index_invalid_type _i_2831250];
                    var __blank__ = _keys_2831237[@:invalid_index_invalid_type _i_2831250];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2831327i32;
                    } else {
                        _gotoNext = 2831396i32;
                    };
                } else if (__value__ == (2831327i32)) {
                    return false;
                    _gotoNext = 2831396i32;
                } else if (__value__ == (2831396i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2831434i32;
                    } else {
                        _gotoNext = 2831474i32;
                    };
                } else if (__value__ == (2831434i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2831400 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2831618i32;
                } else if (__value__ == (2831474i32)) {
                    _gotoNext = 2831474i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2831479 = __tmp__._0;
                        _size_2831482 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2831479;
                        final __tmp__1 = (_t.__slice__(_size_2831482) : stdgo.GoString)?.__copy__();
                        _tr_2831400 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2831618i32;
                } else if (__value__ == (2831618i32)) {
                    if (_tr_2831400 == (_sr_2831244)) {
                        _gotoNext = 2831630i32;
                    } else {
                        _gotoNext = 2831695i32;
                    };
                } else if (__value__ == (2831630i32)) {
                    _i_2831250++;
                    _gotoNext = 2832169i32;
                } else if (__value__ == (2831695i32)) {
                    if ((_tr_2831400 < _sr_2831244 : Bool)) {
                        _gotoNext = 2831706i32;
                    } else {
                        _gotoNext = 2831760i32;
                    };
                } else if (__value__ == (2831706i32)) {
                    {
                        final __tmp__0 = _sr_2831244;
                        final __tmp__1 = _tr_2831400;
                        _tr_2831400 = __tmp__0;
                        _sr_2831244 = __tmp__1;
                    };
                    _gotoNext = 2831760i32;
                } else if (__value__ == (2831760i32)) {
                    if ((_tr_2831400 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2831782i32;
                    } else {
                        _gotoNext = 2832035i32;
                    };
                } else if (__value__ == (2831782i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2831244 : Bool) && (_sr_2831244 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2831400 == ((_sr_2831244 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2831882i32;
                    } else {
                        _gotoNext = 2831905i32;
                    };
                } else if (__value__ == (2831882i32)) {
                    _i_2831250++;
                    _gotoNext = 2832169i32;
                } else if (__value__ == (2831905i32)) {
                    return false;
                    _gotoNext = 2832035i32;
                } else if (__value__ == (2832035i32)) {
                    _r_2832035 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2831244);
                    var __blank__ = 0i32;
                    _gotoNext = 2832065i32;
                } else if (__value__ == (2832065i32)) {
                    if (((_r_2832035 != _sr_2831244) && (_r_2832035 < _tr_2831400 : Bool) : Bool)) {
                        _gotoNext = 2832087i32;
                    } else {
                        _gotoNext = 2832124i32;
                    };
                } else if (__value__ == (2832087i32)) {
                    _r_2832035 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2832035);
                    _gotoNext = 2832065i32;
                } else if (__value__ == (2832124i32)) {
                    if (_r_2832035 == (_tr_2831400)) {
                        _gotoNext = 2832135i32;
                    } else {
                        _gotoNext = 2832155i32;
                    };
                } else if (__value__ == (2832135i32)) {
                    _i_2831250++;
                    _gotoNext = 2832169i32;
                } else if (__value__ == (2832155i32)) {
                    return false;
                    _i_2831250++;
                    _gotoNext = 2832169i32;
                } else if (__value__ == (2832168i32)) {
                    _i_2831250 = 0i32;
                    _gotoNext = 2832169i32;
                } else if (__value__ == (2832169i32)) {
                    if (_i_2831250 < (_keys_2831237.length)) {
                        _gotoNext = 2831258i32;
                    } else {
                        _gotoNext = 2832242i32;
                    };
                } else if (__value__ == (2832242i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
