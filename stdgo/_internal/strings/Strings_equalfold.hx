package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3118813 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3118813 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3118826 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3118328i32;
                } else if (__value__ == (3118328i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3118364i32;
                    } else {
                        _gotoNext = 3118753i32;
                    };
                } else if (__value__ == (3118364i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3118420i32;
                    } else {
                        _gotoNext = 3118464i32;
                    };
                } else if (__value__ == (3118420i32)) {
                    _gotoNext = 3118778i32;
                } else if (__value__ == (3118464i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3118476i32;
                    } else {
                        _gotoNext = 3118541i32;
                    };
                } else if (__value__ == (3118476i32)) {
                    _i_0++;
                    _gotoNext = 3118328i32;
                } else if (__value__ == (3118541i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3118552i32;
                    } else {
                        _gotoNext = 3118627i32;
                    };
                } else if (__value__ == (3118552i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3118627i32;
                } else if (__value__ == (3118627i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3118673i32;
                    } else {
                        _gotoNext = 3118693i32;
                    };
                } else if (__value__ == (3118673i32)) {
                    _i_0++;
                    _gotoNext = 3118328i32;
                } else if (__value__ == (3118693i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 3118328i32;
                } else if (__value__ == (3118753i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3118778i32;
                } else if (__value__ == (3118778i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_3118813 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3118813 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3118813 = (_keys_3118813.__append__(_key));
                        _values_3118813 = (_values_3118813.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3118813.length)) {
                        _gotoNext = 3119744i32;
                    } else {
                        _gotoNext = 3119818i32;
                    };
                } else if (__value__ == (3118834i32)) {
                    _sr_3 = _values_3118813[@:invalid_index_invalid_type _i_3118826];
                    var __blank__ = _keys_3118813[@:invalid_index_invalid_type _i_3118826];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3118903i32;
                    } else {
                        _gotoNext = 3118972i32;
                    };
                } else if (__value__ == (3118903i32)) {
                    return false;
                    _gotoNext = 3118972i32;
                } else if (__value__ == (3118972i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3119010i32;
                    } else {
                        _gotoNext = 3119050i32;
                    };
                } else if (__value__ == (3119010i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3119194i32;
                } else if (__value__ == (3119050i32)) {
                    _gotoNext = 3119050i32;
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
                    _gotoNext = 3119194i32;
                } else if (__value__ == (3119194i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3119206i32;
                    } else {
                        _gotoNext = 3119271i32;
                    };
                } else if (__value__ == (3119206i32)) {
                    _i_3118826++;
                    _gotoNext = 3119745i32;
                } else if (__value__ == (3119271i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3119282i32;
                    } else {
                        _gotoNext = 3119336i32;
                    };
                } else if (__value__ == (3119282i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3119336i32;
                } else if (__value__ == (3119336i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3119358i32;
                    } else {
                        _gotoNext = 3119611i32;
                    };
                } else if (__value__ == (3119358i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3119458i32;
                    } else {
                        _gotoNext = 3119481i32;
                    };
                } else if (__value__ == (3119458i32)) {
                    _i_3118826++;
                    _gotoNext = 3119745i32;
                } else if (__value__ == (3119481i32)) {
                    return false;
                    _gotoNext = 3119611i32;
                } else if (__value__ == (3119611i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 3119641i32;
                } else if (__value__ == (3119641i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3119663i32;
                    } else {
                        _gotoNext = 3119700i32;
                    };
                } else if (__value__ == (3119663i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 3119641i32;
                } else if (__value__ == (3119700i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 3119711i32;
                    } else {
                        _gotoNext = 3119731i32;
                    };
                } else if (__value__ == (3119711i32)) {
                    _i_3118826++;
                    _gotoNext = 3119745i32;
                } else if (__value__ == (3119731i32)) {
                    return false;
                    _i_3118826++;
                    _gotoNext = 3119745i32;
                } else if (__value__ == (3119744i32)) {
                    _i_3118826 = 0i32;
                    _gotoNext = 3119745i32;
                } else if (__value__ == (3119745i32)) {
                    if (_i_3118826 < (_keys_3118813.length)) {
                        _gotoNext = 3118834i32;
                    } else {
                        _gotoNext = 3119818i32;
                    };
                } else if (__value__ == (3119818i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
