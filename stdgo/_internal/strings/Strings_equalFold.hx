package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2768944:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_2768699 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2768267:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2768254:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2768206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2768941:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2768862:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2768706:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2768699 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2768712 = @:invalid_type null;
        var _r_2769497:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2768206 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2768214i32;
                } else if (__value__ == (2768214i32)) {
                    if (((_i_2768206 < (_s.length) : Bool) && (_i_2768206 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2768250i32;
                    } else {
                        _gotoNext = 2768639i32;
                    };
                } else if (__value__ == (2768250i32)) {
                    _sr_2768254 = _s[(_i_2768206 : stdgo.GoInt)];
                    _tr_2768267 = _t[(_i_2768206 : stdgo.GoInt)];
                    if (((_sr_2768254 | _tr_2768267 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2768306i32;
                    } else {
                        _gotoNext = 2768350i32;
                    };
                } else if (__value__ == (2768306i32)) {
                    _gotoNext = 2768664i32;
                } else if (__value__ == (2768350i32)) {
                    if (_tr_2768267 == (_sr_2768254)) {
                        _gotoNext = 2768362i32;
                    } else {
                        _gotoNext = 2768427i32;
                    };
                } else if (__value__ == (2768362i32)) {
                    _i_2768206++;
                    _gotoNext = 2768214i32;
                } else if (__value__ == (2768427i32)) {
                    if ((_tr_2768267 < _sr_2768254 : Bool)) {
                        _gotoNext = 2768438i32;
                    } else {
                        _gotoNext = 2768513i32;
                    };
                } else if (__value__ == (2768438i32)) {
                    {
                        final __tmp__0 = _sr_2768254;
                        final __tmp__1 = _tr_2768267;
                        _tr_2768267 = __tmp__0;
                        _sr_2768254 = __tmp__1;
                    };
                    _gotoNext = 2768513i32;
                } else if (__value__ == (2768513i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2768254 : Bool) && (_sr_2768254 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2768267 == ((_sr_2768254 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2768559i32;
                    } else {
                        _gotoNext = 2768579i32;
                    };
                } else if (__value__ == (2768559i32)) {
                    _i_2768206++;
                    _gotoNext = 2768214i32;
                } else if (__value__ == (2768579i32)) {
                    return false;
                    _i_2768206++;
                    _gotoNext = 2768214i32;
                } else if (__value__ == (2768639i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2768664i32;
                } else if (__value__ == (2768664i32)) {
                    _s = (_s.__slice__(_i_2768206) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2768206) : stdgo.GoString)?.__copy__();
                    _keys_2768699 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2768699 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2768699 = (_keys_2768699.__append__(_key));
                        _values_2768699 = (_values_2768699.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2768699.length)) {
                        _gotoNext = 2769630i32;
                    } else {
                        _gotoNext = 2769704i32;
                    };
                } else if (__value__ == (2768720i32)) {
                    _sr_2768706 = _values_2768699[@:invalid_index_invalid_type _i_2768712];
                    var __blank__ = _keys_2768699[@:invalid_index_invalid_type _i_2768712];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2768789i32;
                    } else {
                        _gotoNext = 2768858i32;
                    };
                } else if (__value__ == (2768789i32)) {
                    return false;
                    _gotoNext = 2768858i32;
                } else if (__value__ == (2768858i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2768896i32;
                    } else {
                        _gotoNext = 2768936i32;
                    };
                } else if (__value__ == (2768896i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2768862 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2769080i32;
                } else if (__value__ == (2768936i32)) {
                    _gotoNext = 2768936i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2768941 = __tmp__._0;
                        _size_2768944 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2768941;
                        final __tmp__1 = (_t.__slice__(_size_2768944) : stdgo.GoString)?.__copy__();
                        _tr_2768862 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2769080i32;
                } else if (__value__ == (2769080i32)) {
                    if (_tr_2768862 == (_sr_2768706)) {
                        _gotoNext = 2769092i32;
                    } else {
                        _gotoNext = 2769157i32;
                    };
                } else if (__value__ == (2769092i32)) {
                    _i_2768712++;
                    _gotoNext = 2769631i32;
                } else if (__value__ == (2769157i32)) {
                    if ((_tr_2768862 < _sr_2768706 : Bool)) {
                        _gotoNext = 2769168i32;
                    } else {
                        _gotoNext = 2769222i32;
                    };
                } else if (__value__ == (2769168i32)) {
                    {
                        final __tmp__0 = _sr_2768706;
                        final __tmp__1 = _tr_2768862;
                        _tr_2768862 = __tmp__0;
                        _sr_2768706 = __tmp__1;
                    };
                    _gotoNext = 2769222i32;
                } else if (__value__ == (2769222i32)) {
                    if ((_tr_2768862 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2769244i32;
                    } else {
                        _gotoNext = 2769497i32;
                    };
                } else if (__value__ == (2769244i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2768706 : Bool) && (_sr_2768706 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2768862 == ((_sr_2768706 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2769344i32;
                    } else {
                        _gotoNext = 2769367i32;
                    };
                } else if (__value__ == (2769344i32)) {
                    _i_2768712++;
                    _gotoNext = 2769631i32;
                } else if (__value__ == (2769367i32)) {
                    return false;
                    _gotoNext = 2769497i32;
                } else if (__value__ == (2769497i32)) {
                    _r_2769497 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2768706);
                    var __blank__ = 0i32;
                    _gotoNext = 2769527i32;
                } else if (__value__ == (2769527i32)) {
                    if (((_r_2769497 != _sr_2768706) && (_r_2769497 < _tr_2768862 : Bool) : Bool)) {
                        _gotoNext = 2769549i32;
                    } else {
                        _gotoNext = 2769586i32;
                    };
                } else if (__value__ == (2769549i32)) {
                    _r_2769497 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2769497);
                    _gotoNext = 2769527i32;
                } else if (__value__ == (2769586i32)) {
                    if (_r_2769497 == (_tr_2768862)) {
                        _gotoNext = 2769597i32;
                    } else {
                        _gotoNext = 2769617i32;
                    };
                } else if (__value__ == (2769597i32)) {
                    _i_2768712++;
                    _gotoNext = 2769631i32;
                } else if (__value__ == (2769617i32)) {
                    return false;
                    _i_2768712++;
                    _gotoNext = 2769631i32;
                } else if (__value__ == (2769630i32)) {
                    _i_2768712 = 0i32;
                    _gotoNext = 2769631i32;
                } else if (__value__ == (2769631i32)) {
                    if (_i_2768712 < (_keys_2768699.length)) {
                        _gotoNext = 2768720i32;
                    } else {
                        _gotoNext = 2769704i32;
                    };
                } else if (__value__ == (2769704i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
