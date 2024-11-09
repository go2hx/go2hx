package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_3058886:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3058873:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3058825:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3060116:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3059318 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3059318 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3059481:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3059325:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3059331 = @:invalid_type null;
        var _size_3059563:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3059560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3058825 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3058833i32;
                } else if (__value__ == (3058833i32)) {
                    if (((_i_3058825 < (_s.length) : Bool) && (_i_3058825 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3058869i32;
                    } else {
                        _gotoNext = 3059258i32;
                    };
                } else if (__value__ == (3058869i32)) {
                    _sr_3058873 = _s[(_i_3058825 : stdgo.GoInt)];
                    _tr_3058886 = _t[(_i_3058825 : stdgo.GoInt)];
                    if (((_sr_3058873 | _tr_3058886 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3058925i32;
                    } else {
                        _gotoNext = 3058969i32;
                    };
                } else if (__value__ == (3058925i32)) {
                    _gotoNext = 3059283i32;
                } else if (__value__ == (3058969i32)) {
                    if (_tr_3058886 == (_sr_3058873)) {
                        _gotoNext = 3058981i32;
                    } else {
                        _gotoNext = 3059046i32;
                    };
                } else if (__value__ == (3058981i32)) {
                    _i_3058825++;
                    _gotoNext = 3058833i32;
                } else if (__value__ == (3059046i32)) {
                    if ((_tr_3058886 < _sr_3058873 : Bool)) {
                        _gotoNext = 3059057i32;
                    } else {
                        _gotoNext = 3059132i32;
                    };
                } else if (__value__ == (3059057i32)) {
                    {
                        final __tmp__0 = _sr_3058873;
                        final __tmp__1 = _tr_3058886;
                        _tr_3058886 = __tmp__0;
                        _sr_3058873 = __tmp__1;
                    };
                    _gotoNext = 3059132i32;
                } else if (__value__ == (3059132i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3058873 : Bool) && (_sr_3058873 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3058886 == ((_sr_3058873 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3059178i32;
                    } else {
                        _gotoNext = 3059198i32;
                    };
                } else if (__value__ == (3059178i32)) {
                    _i_3058825++;
                    _gotoNext = 3058833i32;
                } else if (__value__ == (3059198i32)) {
                    return false;
                    _i_3058825++;
                    _gotoNext = 3058833i32;
                } else if (__value__ == (3059258i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3059283i32;
                } else if (__value__ == (3059283i32)) {
                    _s = (_s.__slice__(_i_3058825) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3058825) : stdgo.GoString)?.__copy__();
                    _keys_3059318 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3059318 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3059318 = (_keys_3059318.__append__(_key));
                        _values_3059318 = (_values_3059318.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3059318.length)) {
                        _gotoNext = 3060249i32;
                    } else {
                        _gotoNext = 3060323i32;
                    };
                } else if (__value__ == (3059339i32)) {
                    _sr_3059325 = _values_3059318[@:invalid_index_invalid_type _i_3059331];
                    var __blank__ = _keys_3059318[@:invalid_index_invalid_type _i_3059331];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3059408i32;
                    } else {
                        _gotoNext = 3059477i32;
                    };
                } else if (__value__ == (3059408i32)) {
                    return false;
                    _gotoNext = 3059477i32;
                } else if (__value__ == (3059477i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3059515i32;
                    } else {
                        _gotoNext = 3059555i32;
                    };
                } else if (__value__ == (3059515i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3059481 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3059699i32;
                } else if (__value__ == (3059555i32)) {
                    _gotoNext = 3059555i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3059560 = __tmp__._0;
                        _size_3059563 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3059560;
                        final __tmp__1 = (_t.__slice__(_size_3059563) : stdgo.GoString)?.__copy__();
                        _tr_3059481 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3059699i32;
                } else if (__value__ == (3059699i32)) {
                    if (_tr_3059481 == (_sr_3059325)) {
                        _gotoNext = 3059711i32;
                    } else {
                        _gotoNext = 3059776i32;
                    };
                } else if (__value__ == (3059711i32)) {
                    _i_3059331++;
                    _gotoNext = 3060250i32;
                } else if (__value__ == (3059776i32)) {
                    if ((_tr_3059481 < _sr_3059325 : Bool)) {
                        _gotoNext = 3059787i32;
                    } else {
                        _gotoNext = 3059841i32;
                    };
                } else if (__value__ == (3059787i32)) {
                    {
                        final __tmp__0 = _sr_3059325;
                        final __tmp__1 = _tr_3059481;
                        _tr_3059481 = __tmp__0;
                        _sr_3059325 = __tmp__1;
                    };
                    _gotoNext = 3059841i32;
                } else if (__value__ == (3059841i32)) {
                    if ((_tr_3059481 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3059863i32;
                    } else {
                        _gotoNext = 3060116i32;
                    };
                } else if (__value__ == (3059863i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3059325 : Bool) && (_sr_3059325 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3059481 == ((_sr_3059325 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3059963i32;
                    } else {
                        _gotoNext = 3059986i32;
                    };
                } else if (__value__ == (3059963i32)) {
                    _i_3059331++;
                    _gotoNext = 3060250i32;
                } else if (__value__ == (3059986i32)) {
                    return false;
                    _gotoNext = 3060116i32;
                } else if (__value__ == (3060116i32)) {
                    _r_3060116 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3059325);
                    var __blank__ = 0i32;
                    _gotoNext = 3060146i32;
                } else if (__value__ == (3060146i32)) {
                    if (((_r_3060116 != _sr_3059325) && (_r_3060116 < _tr_3059481 : Bool) : Bool)) {
                        _gotoNext = 3060168i32;
                    } else {
                        _gotoNext = 3060205i32;
                    };
                } else if (__value__ == (3060168i32)) {
                    _r_3060116 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3060116);
                    _gotoNext = 3060146i32;
                } else if (__value__ == (3060205i32)) {
                    if (_r_3060116 == (_tr_3059481)) {
                        _gotoNext = 3060216i32;
                    } else {
                        _gotoNext = 3060236i32;
                    };
                } else if (__value__ == (3060216i32)) {
                    _i_3059331++;
                    _gotoNext = 3060250i32;
                } else if (__value__ == (3060236i32)) {
                    return false;
                    _i_3059331++;
                    _gotoNext = 3060250i32;
                } else if (__value__ == (3060249i32)) {
                    _i_3059331 = 0i32;
                    _gotoNext = 3060250i32;
                } else if (__value__ == (3060250i32)) {
                    if (_i_3059331 < (_keys_3059318.length)) {
                        _gotoNext = 3059339i32;
                    } else {
                        _gotoNext = 3060323i32;
                    };
                } else if (__value__ == (3060323i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
