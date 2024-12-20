package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2703575:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2702777 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2702332:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2702284:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2702784:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2702777 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2702790 = @:invalid_type null;
        var _tr_2702345:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2703022:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2703019:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2702940:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2702284 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2702292i32;
                } else if (__value__ == (2702292i32)) {
                    if (((_i_2702284 < (_s.length) : Bool) && (_i_2702284 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2702328i32;
                    } else {
                        _gotoNext = 2702717i32;
                    };
                } else if (__value__ == (2702328i32)) {
                    _sr_2702332 = _s[(_i_2702284 : stdgo.GoInt)];
                    _tr_2702345 = _t[(_i_2702284 : stdgo.GoInt)];
                    if (((_sr_2702332 | _tr_2702345 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2702384i32;
                    } else {
                        _gotoNext = 2702428i32;
                    };
                } else if (__value__ == (2702384i32)) {
                    _gotoNext = 2702742i32;
                } else if (__value__ == (2702428i32)) {
                    if (_tr_2702345 == (_sr_2702332)) {
                        _gotoNext = 2702440i32;
                    } else {
                        _gotoNext = 2702505i32;
                    };
                } else if (__value__ == (2702440i32)) {
                    _i_2702284++;
                    _gotoNext = 2702292i32;
                } else if (__value__ == (2702505i32)) {
                    if ((_tr_2702345 < _sr_2702332 : Bool)) {
                        _gotoNext = 2702516i32;
                    } else {
                        _gotoNext = 2702591i32;
                    };
                } else if (__value__ == (2702516i32)) {
                    {
                        final __tmp__0 = _sr_2702332;
                        final __tmp__1 = _tr_2702345;
                        _tr_2702345 = __tmp__0;
                        _sr_2702332 = __tmp__1;
                    };
                    _gotoNext = 2702591i32;
                } else if (__value__ == (2702591i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2702332 : Bool) && (_sr_2702332 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2702345 == ((_sr_2702332 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2702637i32;
                    } else {
                        _gotoNext = 2702657i32;
                    };
                } else if (__value__ == (2702637i32)) {
                    _i_2702284++;
                    _gotoNext = 2702292i32;
                } else if (__value__ == (2702657i32)) {
                    return false;
                    _i_2702284++;
                    _gotoNext = 2702292i32;
                } else if (__value__ == (2702717i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2702742i32;
                } else if (__value__ == (2702742i32)) {
                    _s = (_s.__slice__(_i_2702284) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2702284) : stdgo.GoString)?.__copy__();
                    _keys_2702777 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2702777 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2702777 = (_keys_2702777.__append__(_key));
                        _values_2702777 = (_values_2702777.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2702777.length)) {
                        _gotoNext = 2703708i32;
                    } else {
                        _gotoNext = 2703782i32;
                    };
                } else if (__value__ == (2702798i32)) {
                    _sr_2702784 = _values_2702777[@:invalid_index_invalid_type _i_2702790];
                    var __blank__ = _keys_2702777[@:invalid_index_invalid_type _i_2702790];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2702867i32;
                    } else {
                        _gotoNext = 2702936i32;
                    };
                } else if (__value__ == (2702867i32)) {
                    return false;
                    _gotoNext = 2702936i32;
                } else if (__value__ == (2702936i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2702974i32;
                    } else {
                        _gotoNext = 2703014i32;
                    };
                } else if (__value__ == (2702974i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2702940 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2703158i32;
                } else if (__value__ == (2703014i32)) {
                    _gotoNext = 2703014i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2703019 = __tmp__._0;
                        _size_2703022 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2703019;
                        final __tmp__1 = (_t.__slice__(_size_2703022) : stdgo.GoString)?.__copy__();
                        _tr_2702940 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2703158i32;
                } else if (__value__ == (2703158i32)) {
                    if (_tr_2702940 == (_sr_2702784)) {
                        _gotoNext = 2703170i32;
                    } else {
                        _gotoNext = 2703235i32;
                    };
                } else if (__value__ == (2703170i32)) {
                    _i_2702790++;
                    _gotoNext = 2703709i32;
                } else if (__value__ == (2703235i32)) {
                    if ((_tr_2702940 < _sr_2702784 : Bool)) {
                        _gotoNext = 2703246i32;
                    } else {
                        _gotoNext = 2703300i32;
                    };
                } else if (__value__ == (2703246i32)) {
                    {
                        final __tmp__0 = _sr_2702784;
                        final __tmp__1 = _tr_2702940;
                        _tr_2702940 = __tmp__0;
                        _sr_2702784 = __tmp__1;
                    };
                    _gotoNext = 2703300i32;
                } else if (__value__ == (2703300i32)) {
                    if ((_tr_2702940 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2703322i32;
                    } else {
                        _gotoNext = 2703575i32;
                    };
                } else if (__value__ == (2703322i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2702784 : Bool) && (_sr_2702784 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2702940 == ((_sr_2702784 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2703422i32;
                    } else {
                        _gotoNext = 2703445i32;
                    };
                } else if (__value__ == (2703422i32)) {
                    _i_2702790++;
                    _gotoNext = 2703709i32;
                } else if (__value__ == (2703445i32)) {
                    return false;
                    _gotoNext = 2703575i32;
                } else if (__value__ == (2703575i32)) {
                    _r_2703575 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2702784);
                    var __blank__ = 0i32;
                    _gotoNext = 2703605i32;
                } else if (__value__ == (2703605i32)) {
                    if (((_r_2703575 != _sr_2702784) && (_r_2703575 < _tr_2702940 : Bool) : Bool)) {
                        _gotoNext = 2703627i32;
                    } else {
                        _gotoNext = 2703664i32;
                    };
                } else if (__value__ == (2703627i32)) {
                    _r_2703575 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2703575);
                    _gotoNext = 2703605i32;
                } else if (__value__ == (2703664i32)) {
                    if (_r_2703575 == (_tr_2702940)) {
                        _gotoNext = 2703675i32;
                    } else {
                        _gotoNext = 2703695i32;
                    };
                } else if (__value__ == (2703675i32)) {
                    _i_2702790++;
                    _gotoNext = 2703709i32;
                } else if (__value__ == (2703695i32)) {
                    return false;
                    _i_2702790++;
                    _gotoNext = 2703709i32;
                } else if (__value__ == (2703708i32)) {
                    _i_2702790 = 0i32;
                    _gotoNext = 2703709i32;
                } else if (__value__ == (2703709i32)) {
                    if (_i_2702790 < (_keys_2702777.length)) {
                        _gotoNext = 2702798i32;
                    } else {
                        _gotoNext = 2703782i32;
                    };
                } else if (__value__ == (2703782i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
