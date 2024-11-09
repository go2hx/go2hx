package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2918997:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2920288:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2919497:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2919490 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2919503 = @:invalid_type null;
        var _tr_2919058:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2919045:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _keys_2919490 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _size_2919735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2919732:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2919653:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2918997 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2919005i32;
                } else if (__value__ == (2919005i32)) {
                    if (((_i_2918997 < (_s.length) : Bool) && (_i_2918997 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2919041i32;
                    } else {
                        _gotoNext = 2919430i32;
                    };
                } else if (__value__ == (2919041i32)) {
                    _sr_2919045 = _s[(_i_2918997 : stdgo.GoInt)];
                    _tr_2919058 = _t[(_i_2918997 : stdgo.GoInt)];
                    if (((_sr_2919045 | _tr_2919058 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2919097i32;
                    } else {
                        _gotoNext = 2919141i32;
                    };
                } else if (__value__ == (2919097i32)) {
                    _gotoNext = 2919455i32;
                } else if (__value__ == (2919141i32)) {
                    if (_tr_2919058 == (_sr_2919045)) {
                        _gotoNext = 2919153i32;
                    } else {
                        _gotoNext = 2919218i32;
                    };
                } else if (__value__ == (2919153i32)) {
                    _i_2918997++;
                    _gotoNext = 2919005i32;
                } else if (__value__ == (2919218i32)) {
                    if ((_tr_2919058 < _sr_2919045 : Bool)) {
                        _gotoNext = 2919229i32;
                    } else {
                        _gotoNext = 2919304i32;
                    };
                } else if (__value__ == (2919229i32)) {
                    {
                        final __tmp__0 = _sr_2919045;
                        final __tmp__1 = _tr_2919058;
                        _tr_2919058 = __tmp__0;
                        _sr_2919045 = __tmp__1;
                    };
                    _gotoNext = 2919304i32;
                } else if (__value__ == (2919304i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2919045 : Bool) && (_sr_2919045 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2919058 == ((_sr_2919045 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2919350i32;
                    } else {
                        _gotoNext = 2919370i32;
                    };
                } else if (__value__ == (2919350i32)) {
                    _i_2918997++;
                    _gotoNext = 2919005i32;
                } else if (__value__ == (2919370i32)) {
                    return false;
                    _i_2918997++;
                    _gotoNext = 2919005i32;
                } else if (__value__ == (2919430i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2919455i32;
                } else if (__value__ == (2919455i32)) {
                    _s = (_s.__slice__(_i_2918997) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2918997) : stdgo.GoString)?.__copy__();
                    _keys_2919490 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2919490 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2919490 = (_keys_2919490.__append__(_key));
                        _values_2919490 = (_values_2919490.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2919490.length)) {
                        _gotoNext = 2920421i32;
                    } else {
                        _gotoNext = 2920495i32;
                    };
                } else if (__value__ == (2919511i32)) {
                    _sr_2919497 = _values_2919490[@:invalid_index_invalid_type _i_2919503];
                    var __blank__ = _keys_2919490[@:invalid_index_invalid_type _i_2919503];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2919580i32;
                    } else {
                        _gotoNext = 2919649i32;
                    };
                } else if (__value__ == (2919580i32)) {
                    return false;
                    _gotoNext = 2919649i32;
                } else if (__value__ == (2919649i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2919687i32;
                    } else {
                        _gotoNext = 2919727i32;
                    };
                } else if (__value__ == (2919687i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2919653 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2919871i32;
                } else if (__value__ == (2919727i32)) {
                    _gotoNext = 2919727i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2919732 = __tmp__._0;
                        _size_2919735 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2919732;
                        final __tmp__1 = (_t.__slice__(_size_2919735) : stdgo.GoString)?.__copy__();
                        _tr_2919653 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2919871i32;
                } else if (__value__ == (2919871i32)) {
                    if (_tr_2919653 == (_sr_2919497)) {
                        _gotoNext = 2919883i32;
                    } else {
                        _gotoNext = 2919948i32;
                    };
                } else if (__value__ == (2919883i32)) {
                    _i_2919503++;
                    _gotoNext = 2920422i32;
                } else if (__value__ == (2919948i32)) {
                    if ((_tr_2919653 < _sr_2919497 : Bool)) {
                        _gotoNext = 2919959i32;
                    } else {
                        _gotoNext = 2920013i32;
                    };
                } else if (__value__ == (2919959i32)) {
                    {
                        final __tmp__0 = _sr_2919497;
                        final __tmp__1 = _tr_2919653;
                        _tr_2919653 = __tmp__0;
                        _sr_2919497 = __tmp__1;
                    };
                    _gotoNext = 2920013i32;
                } else if (__value__ == (2920013i32)) {
                    if ((_tr_2919653 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2920035i32;
                    } else {
                        _gotoNext = 2920288i32;
                    };
                } else if (__value__ == (2920035i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2919497 : Bool) && (_sr_2919497 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2919653 == ((_sr_2919497 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2920135i32;
                    } else {
                        _gotoNext = 2920158i32;
                    };
                } else if (__value__ == (2920135i32)) {
                    _i_2919503++;
                    _gotoNext = 2920422i32;
                } else if (__value__ == (2920158i32)) {
                    return false;
                    _gotoNext = 2920288i32;
                } else if (__value__ == (2920288i32)) {
                    _r_2920288 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2919497);
                    var __blank__ = 0i32;
                    _gotoNext = 2920318i32;
                } else if (__value__ == (2920318i32)) {
                    if (((_r_2920288 != _sr_2919497) && (_r_2920288 < _tr_2919653 : Bool) : Bool)) {
                        _gotoNext = 2920340i32;
                    } else {
                        _gotoNext = 2920377i32;
                    };
                } else if (__value__ == (2920340i32)) {
                    _r_2920288 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2920288);
                    _gotoNext = 2920318i32;
                } else if (__value__ == (2920377i32)) {
                    if (_r_2920288 == (_tr_2919653)) {
                        _gotoNext = 2920388i32;
                    } else {
                        _gotoNext = 2920408i32;
                    };
                } else if (__value__ == (2920388i32)) {
                    _i_2919503++;
                    _gotoNext = 2920422i32;
                } else if (__value__ == (2920408i32)) {
                    return false;
                    _i_2919503++;
                    _gotoNext = 2920422i32;
                } else if (__value__ == (2920421i32)) {
                    _i_2919503 = 0i32;
                    _gotoNext = 2920422i32;
                } else if (__value__ == (2920422i32)) {
                    if (_i_2919503 < (_keys_2919490.length)) {
                        _gotoNext = 2919511i32;
                    } else {
                        _gotoNext = 2920495i32;
                    };
                } else if (__value__ == (2920495i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
