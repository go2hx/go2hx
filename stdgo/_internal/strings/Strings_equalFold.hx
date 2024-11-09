package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2943060:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2942452:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2942404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2943142:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2943139:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2942904:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2942897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2942897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2942910 = @:invalid_type null;
        var _tr_2942465:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2943695:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2942404 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2942412i32;
                } else if (__value__ == (2942412i32)) {
                    if (((_i_2942404 < (_s.length) : Bool) && (_i_2942404 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2942448i32;
                    } else {
                        _gotoNext = 2942837i32;
                    };
                } else if (__value__ == (2942448i32)) {
                    _sr_2942452 = _s[(_i_2942404 : stdgo.GoInt)];
                    _tr_2942465 = _t[(_i_2942404 : stdgo.GoInt)];
                    if (((_sr_2942452 | _tr_2942465 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942504i32;
                    } else {
                        _gotoNext = 2942548i32;
                    };
                } else if (__value__ == (2942504i32)) {
                    _gotoNext = 2942862i32;
                } else if (__value__ == (2942548i32)) {
                    if (_tr_2942465 == (_sr_2942452)) {
                        _gotoNext = 2942560i32;
                    } else {
                        _gotoNext = 2942625i32;
                    };
                } else if (__value__ == (2942560i32)) {
                    _i_2942404++;
                    _gotoNext = 2942412i32;
                } else if (__value__ == (2942625i32)) {
                    if ((_tr_2942465 < _sr_2942452 : Bool)) {
                        _gotoNext = 2942636i32;
                    } else {
                        _gotoNext = 2942711i32;
                    };
                } else if (__value__ == (2942636i32)) {
                    {
                        final __tmp__0 = _sr_2942452;
                        final __tmp__1 = _tr_2942465;
                        _tr_2942465 = __tmp__0;
                        _sr_2942452 = __tmp__1;
                    };
                    _gotoNext = 2942711i32;
                } else if (__value__ == (2942711i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2942452 : Bool) && (_sr_2942452 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2942465 == ((_sr_2942452 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2942757i32;
                    } else {
                        _gotoNext = 2942777i32;
                    };
                } else if (__value__ == (2942757i32)) {
                    _i_2942404++;
                    _gotoNext = 2942412i32;
                } else if (__value__ == (2942777i32)) {
                    return false;
                    _i_2942404++;
                    _gotoNext = 2942412i32;
                } else if (__value__ == (2942837i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2942862i32;
                } else if (__value__ == (2942862i32)) {
                    _s = (_s.__slice__(_i_2942404) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2942404) : stdgo.GoString)?.__copy__();
                    _keys_2942897 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2942897 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2942897 = (_keys_2942897.__append__(_key));
                        _values_2942897 = (_values_2942897.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2942897.length)) {
                        _gotoNext = 2943828i32;
                    } else {
                        _gotoNext = 2943902i32;
                    };
                } else if (__value__ == (2942918i32)) {
                    _sr_2942904 = _values_2942897[@:invalid_index_invalid_type _i_2942910];
                    var __blank__ = _keys_2942897[@:invalid_index_invalid_type _i_2942910];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2942987i32;
                    } else {
                        _gotoNext = 2943056i32;
                    };
                } else if (__value__ == (2942987i32)) {
                    return false;
                    _gotoNext = 2943056i32;
                } else if (__value__ == (2943056i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2943094i32;
                    } else {
                        _gotoNext = 2943134i32;
                    };
                } else if (__value__ == (2943094i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2943060 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2943278i32;
                } else if (__value__ == (2943134i32)) {
                    _gotoNext = 2943134i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2943139 = __tmp__._0;
                        _size_2943142 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2943139;
                        final __tmp__1 = (_t.__slice__(_size_2943142) : stdgo.GoString)?.__copy__();
                        _tr_2943060 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2943278i32;
                } else if (__value__ == (2943278i32)) {
                    if (_tr_2943060 == (_sr_2942904)) {
                        _gotoNext = 2943290i32;
                    } else {
                        _gotoNext = 2943355i32;
                    };
                } else if (__value__ == (2943290i32)) {
                    _i_2942910++;
                    _gotoNext = 2943829i32;
                } else if (__value__ == (2943355i32)) {
                    if ((_tr_2943060 < _sr_2942904 : Bool)) {
                        _gotoNext = 2943366i32;
                    } else {
                        _gotoNext = 2943420i32;
                    };
                } else if (__value__ == (2943366i32)) {
                    {
                        final __tmp__0 = _sr_2942904;
                        final __tmp__1 = _tr_2943060;
                        _tr_2943060 = __tmp__0;
                        _sr_2942904 = __tmp__1;
                    };
                    _gotoNext = 2943420i32;
                } else if (__value__ == (2943420i32)) {
                    if ((_tr_2943060 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2943442i32;
                    } else {
                        _gotoNext = 2943695i32;
                    };
                } else if (__value__ == (2943442i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2942904 : Bool) && (_sr_2942904 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2943060 == ((_sr_2942904 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2943542i32;
                    } else {
                        _gotoNext = 2943565i32;
                    };
                } else if (__value__ == (2943542i32)) {
                    _i_2942910++;
                    _gotoNext = 2943829i32;
                } else if (__value__ == (2943565i32)) {
                    return false;
                    _gotoNext = 2943695i32;
                } else if (__value__ == (2943695i32)) {
                    _r_2943695 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2942904);
                    var __blank__ = 0i32;
                    _gotoNext = 2943725i32;
                } else if (__value__ == (2943725i32)) {
                    if (((_r_2943695 != _sr_2942904) && (_r_2943695 < _tr_2943060 : Bool) : Bool)) {
                        _gotoNext = 2943747i32;
                    } else {
                        _gotoNext = 2943784i32;
                    };
                } else if (__value__ == (2943747i32)) {
                    _r_2943695 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2943695);
                    _gotoNext = 2943725i32;
                } else if (__value__ == (2943784i32)) {
                    if (_r_2943695 == (_tr_2943060)) {
                        _gotoNext = 2943795i32;
                    } else {
                        _gotoNext = 2943815i32;
                    };
                } else if (__value__ == (2943795i32)) {
                    _i_2942910++;
                    _gotoNext = 2943829i32;
                } else if (__value__ == (2943815i32)) {
                    return false;
                    _i_2942910++;
                    _gotoNext = 2943829i32;
                } else if (__value__ == (2943828i32)) {
                    _i_2942910 = 0i32;
                    _gotoNext = 2943829i32;
                } else if (__value__ == (2943829i32)) {
                    if (_i_2942910 < (_keys_2942897.length)) {
                        _gotoNext = 2942918i32;
                    } else {
                        _gotoNext = 2943902i32;
                    };
                } else if (__value__ == (2943902i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
