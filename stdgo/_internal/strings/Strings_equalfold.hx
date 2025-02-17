package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3053859 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3053846 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3053846 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3053361i32;
                } else if (__value__ == (3053361i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3053397i32;
                    } else {
                        _gotoNext = 3053786i32;
                    };
                } else if (__value__ == (3053397i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3053453i32;
                    } else {
                        _gotoNext = 3053497i32;
                    };
                } else if (__value__ == (3053453i32)) {
                    _gotoNext = 3053811i32;
                } else if (__value__ == (3053497i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3053509i32;
                    } else {
                        _gotoNext = 3053574i32;
                    };
                } else if (__value__ == (3053509i32)) {
                    _i_0++;
                    _gotoNext = 3053361i32;
                } else if (__value__ == (3053574i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3053585i32;
                    } else {
                        _gotoNext = 3053660i32;
                    };
                } else if (__value__ == (3053585i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 3053660i32;
                } else if (__value__ == (3053660i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3053706i32;
                    } else {
                        _gotoNext = 3053726i32;
                    };
                } else if (__value__ == (3053706i32)) {
                    _i_0++;
                    _gotoNext = 3053361i32;
                } else if (__value__ == (3053726i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 3053361i32;
                } else if (__value__ == (3053786i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3053811i32;
                } else if (__value__ == (3053811i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_3053846 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3053846 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3053846 = (_keys_3053846.__append__(_key));
                        _values_3053846 = (_values_3053846.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3053846.length)) {
                        _gotoNext = 3054777i32;
                    } else {
                        _gotoNext = 3054851i32;
                    };
                } else if (__value__ == (3053867i32)) {
                    _sr_3 = _values_3053846[@:invalid_index_invalid_type _i_3053859];
                    var __blank__ = _keys_3053846[@:invalid_index_invalid_type _i_3053859];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3053936i32;
                    } else {
                        _gotoNext = 3054005i32;
                    };
                } else if (__value__ == (3053936i32)) {
                    return false;
                    _gotoNext = 3054005i32;
                } else if (__value__ == (3054005i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3054043i32;
                    } else {
                        _gotoNext = 3054083i32;
                    };
                } else if (__value__ == (3054043i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3054227i32;
                } else if (__value__ == (3054083i32)) {
                    _gotoNext = 3054083i32;
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
                    _gotoNext = 3054227i32;
                } else if (__value__ == (3054227i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3054239i32;
                    } else {
                        _gotoNext = 3054304i32;
                    };
                } else if (__value__ == (3054239i32)) {
                    _i_3053859++;
                    _gotoNext = 3054778i32;
                } else if (__value__ == (3054304i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3054315i32;
                    } else {
                        _gotoNext = 3054369i32;
                    };
                } else if (__value__ == (3054315i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 3054369i32;
                } else if (__value__ == (3054369i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3054391i32;
                    } else {
                        _gotoNext = 3054644i32;
                    };
                } else if (__value__ == (3054391i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3054491i32;
                    } else {
                        _gotoNext = 3054514i32;
                    };
                } else if (__value__ == (3054491i32)) {
                    _i_3053859++;
                    _gotoNext = 3054778i32;
                } else if (__value__ == (3054514i32)) {
                    return false;
                    _gotoNext = 3054644i32;
                } else if (__value__ == (3054644i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 3054674i32;
                } else if (__value__ == (3054674i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3054696i32;
                    } else {
                        _gotoNext = 3054733i32;
                    };
                } else if (__value__ == (3054696i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 3054674i32;
                } else if (__value__ == (3054733i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 3054744i32;
                    } else {
                        _gotoNext = 3054764i32;
                    };
                } else if (__value__ == (3054744i32)) {
                    _i_3053859++;
                    _gotoNext = 3054778i32;
                } else if (__value__ == (3054764i32)) {
                    return false;
                    _i_3053859++;
                    _gotoNext = 3054778i32;
                } else if (__value__ == (3054777i32)) {
                    _i_3053859 = 0i32;
                    _gotoNext = 3054778i32;
                } else if (__value__ == (3054778i32)) {
                    if (_i_3053859 < (_keys_3053846.length)) {
                        _gotoNext = 3053867i32;
                    } else {
                        _gotoNext = 3054851i32;
                    };
                } else if (__value__ == (3054851i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
