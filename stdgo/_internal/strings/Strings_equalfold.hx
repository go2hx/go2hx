package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2907351 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2907351 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2907364 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2906866i32;
                } else if (__value__ == (2906866i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2906902i32;
                    } else {
                        _gotoNext = 2907291i32;
                    };
                } else if (__value__ == (2906902i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2906958i32;
                    } else {
                        _gotoNext = 2907002i32;
                    };
                } else if (__value__ == (2906958i32)) {
                    _gotoNext = 2907316i32;
                } else if (__value__ == (2907002i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2907014i32;
                    } else {
                        _gotoNext = 2907079i32;
                    };
                } else if (__value__ == (2907014i32)) {
                    _i_0++;
                    _gotoNext = 2906866i32;
                } else if (__value__ == (2907079i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2907090i32;
                    } else {
                        _gotoNext = 2907165i32;
                    };
                } else if (__value__ == (2907090i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907165i32;
                } else if (__value__ == (2907165i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907211i32;
                    } else {
                        _gotoNext = 2907231i32;
                    };
                } else if (__value__ == (2907211i32)) {
                    _i_0++;
                    _gotoNext = 2906866i32;
                } else if (__value__ == (2907231i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2906866i32;
                } else if (__value__ == (2907291i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907316i32;
                } else if (__value__ == (2907316i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2907351 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2907351 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2907351 = (_keys_2907351.__append__(_key));
                        _values_2907351 = (_values_2907351.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2907351.length)) {
                        _gotoNext = 2908282i32;
                    } else {
                        _gotoNext = 2908356i32;
                    };
                } else if (__value__ == (2907372i32)) {
                    _sr_3 = _values_2907351[@:invalid_index_invalid_type _i_2907364];
                    var __blank__ = _keys_2907351[@:invalid_index_invalid_type _i_2907364];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2907441i32;
                    } else {
                        _gotoNext = 2907510i32;
                    };
                } else if (__value__ == (2907441i32)) {
                    return false;
                    _gotoNext = 2907510i32;
                } else if (__value__ == (2907510i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907548i32;
                    } else {
                        _gotoNext = 2907588i32;
                    };
                } else if (__value__ == (2907548i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907732i32;
                } else if (__value__ == (2907588i32)) {
                    _gotoNext = 2907588i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2907732i32;
                } else if (__value__ == (2907732i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2907744i32;
                    } else {
                        _gotoNext = 2907809i32;
                    };
                } else if (__value__ == (2907744i32)) {
                    _i_2907364++;
                    _gotoNext = 2908283i32;
                } else if (__value__ == (2907809i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2907820i32;
                    } else {
                        _gotoNext = 2907874i32;
                    };
                } else if (__value__ == (2907820i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907874i32;
                } else if (__value__ == (2907874i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2907896i32;
                    } else {
                        _gotoNext = 2908149i32;
                    };
                } else if (__value__ == (2907896i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2907996i32;
                    } else {
                        _gotoNext = 2908019i32;
                    };
                } else if (__value__ == (2907996i32)) {
                    _i_2907364++;
                    _gotoNext = 2908283i32;
                } else if (__value__ == (2908019i32)) {
                    return false;
                    _gotoNext = 2908149i32;
                } else if (__value__ == (2908149i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2908179i32;
                } else if (__value__ == (2908179i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2908201i32;
                    } else {
                        _gotoNext = 2908238i32;
                    };
                } else if (__value__ == (2908201i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2908179i32;
                } else if (__value__ == (2908238i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2908249i32;
                    } else {
                        _gotoNext = 2908269i32;
                    };
                } else if (__value__ == (2908249i32)) {
                    _i_2907364++;
                    _gotoNext = 2908283i32;
                } else if (__value__ == (2908269i32)) {
                    return false;
                    _i_2907364++;
                    _gotoNext = 2908283i32;
                } else if (__value__ == (2908282i32)) {
                    _i_2907364 = 0i32;
                    _gotoNext = 2908283i32;
                } else if (__value__ == (2908283i32)) {
                    if (_i_2907364 < (_keys_2907351.length)) {
                        _gotoNext = 2907372i32;
                    } else {
                        _gotoNext = 2908356i32;
                    };
                } else if (__value__ == (2908356i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
