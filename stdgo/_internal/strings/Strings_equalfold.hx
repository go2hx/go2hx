package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2945728 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2945728 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2945741 = @:invalid_type null;
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2945243i32;
                } else if (__value__ == (2945243i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2945279i32;
                    } else {
                        _gotoNext = 2945668i32;
                    };
                } else if (__value__ == (2945279i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2945335i32;
                    } else {
                        _gotoNext = 2945379i32;
                    };
                } else if (__value__ == (2945335i32)) {
                    _gotoNext = 2945693i32;
                } else if (__value__ == (2945379i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2945391i32;
                    } else {
                        _gotoNext = 2945456i32;
                    };
                } else if (__value__ == (2945391i32)) {
                    _i_0++;
                    _gotoNext = 2945243i32;
                } else if (__value__ == (2945456i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2945467i32;
                    } else {
                        _gotoNext = 2945542i32;
                    };
                } else if (__value__ == (2945467i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2945542i32;
                } else if (__value__ == (2945542i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2945588i32;
                    } else {
                        _gotoNext = 2945608i32;
                    };
                } else if (__value__ == (2945588i32)) {
                    _i_0++;
                    _gotoNext = 2945243i32;
                } else if (__value__ == (2945608i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2945243i32;
                } else if (__value__ == (2945668i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2945693i32;
                } else if (__value__ == (2945693i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2945728 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2945728 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2945728 = (_keys_2945728.__append__(_key));
                        _values_2945728 = (_values_2945728.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2945728.length)) {
                        _gotoNext = 2946659i32;
                    } else {
                        _gotoNext = 2946733i32;
                    };
                } else if (__value__ == (2945749i32)) {
                    _sr_3 = _values_2945728[@:invalid_index_invalid_type _i_2945741];
                    var __blank__ = _keys_2945728[@:invalid_index_invalid_type _i_2945741];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2945818i32;
                    } else {
                        _gotoNext = 2945887i32;
                    };
                } else if (__value__ == (2945818i32)) {
                    return false;
                    _gotoNext = 2945887i32;
                } else if (__value__ == (2945887i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2945925i32;
                    } else {
                        _gotoNext = 2945965i32;
                    };
                } else if (__value__ == (2945925i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2946109i32;
                } else if (__value__ == (2945965i32)) {
                    _gotoNext = 2945965i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2946109i32;
                } else if (__value__ == (2946109i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2946121i32;
                    } else {
                        _gotoNext = 2946186i32;
                    };
                } else if (__value__ == (2946121i32)) {
                    _i_2945741++;
                    _gotoNext = 2946660i32;
                } else if (__value__ == (2946186i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2946197i32;
                    } else {
                        _gotoNext = 2946251i32;
                    };
                } else if (__value__ == (2946197i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2946251i32;
                } else if (__value__ == (2946251i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2946273i32;
                    } else {
                        _gotoNext = 2946526i32;
                    };
                } else if (__value__ == (2946273i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2946373i32;
                    } else {
                        _gotoNext = 2946396i32;
                    };
                } else if (__value__ == (2946373i32)) {
                    _i_2945741++;
                    _gotoNext = 2946660i32;
                } else if (__value__ == (2946396i32)) {
                    return false;
                    _gotoNext = 2946526i32;
                } else if (__value__ == (2946526i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2946556i32;
                } else if (__value__ == (2946556i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2946578i32;
                    } else {
                        _gotoNext = 2946615i32;
                    };
                } else if (__value__ == (2946578i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2946556i32;
                } else if (__value__ == (2946615i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2946626i32;
                    } else {
                        _gotoNext = 2946646i32;
                    };
                } else if (__value__ == (2946626i32)) {
                    _i_2945741++;
                    _gotoNext = 2946660i32;
                } else if (__value__ == (2946646i32)) {
                    return false;
                    _i_2945741++;
                    _gotoNext = 2946660i32;
                } else if (__value__ == (2946659i32)) {
                    _i_2945741 = 0i32;
                    _gotoNext = 2946660i32;
                } else if (__value__ == (2946660i32)) {
                    if (_i_2945741 < (_keys_2945728.length)) {
                        _gotoNext = 2945749i32;
                    } else {
                        _gotoNext = 2946733i32;
                    };
                } else if (__value__ == (2946733i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
