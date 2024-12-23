package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_3041893:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3041651 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3041651 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3041664 = @:invalid_type null;
        var _tr_3041219:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3041206:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3041158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3041814:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3041658:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3042449:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3041896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3041158 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3041166i32;
                } else if (__value__ == (3041166i32)) {
                    if (((_i_3041158 < (_s.length) : Bool) && (_i_3041158 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3041202i32;
                    } else {
                        _gotoNext = 3041591i32;
                    };
                } else if (__value__ == (3041202i32)) {
                    _sr_3041206 = _s[(_i_3041158 : stdgo.GoInt)];
                    _tr_3041219 = _t[(_i_3041158 : stdgo.GoInt)];
                    if (((_sr_3041206 | _tr_3041219 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3041258i32;
                    } else {
                        _gotoNext = 3041302i32;
                    };
                } else if (__value__ == (3041258i32)) {
                    _gotoNext = 3041616i32;
                } else if (__value__ == (3041302i32)) {
                    if (_tr_3041219 == (_sr_3041206)) {
                        _gotoNext = 3041314i32;
                    } else {
                        _gotoNext = 3041379i32;
                    };
                } else if (__value__ == (3041314i32)) {
                    _i_3041158++;
                    _gotoNext = 3041166i32;
                } else if (__value__ == (3041379i32)) {
                    if ((_tr_3041219 < _sr_3041206 : Bool)) {
                        _gotoNext = 3041390i32;
                    } else {
                        _gotoNext = 3041465i32;
                    };
                } else if (__value__ == (3041390i32)) {
                    {
                        final __tmp__0 = _sr_3041206;
                        final __tmp__1 = _tr_3041219;
                        _tr_3041219 = __tmp__0;
                        _sr_3041206 = __tmp__1;
                    };
                    _gotoNext = 3041465i32;
                } else if (__value__ == (3041465i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3041206 : Bool) && (_sr_3041206 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3041219 == ((_sr_3041206 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3041511i32;
                    } else {
                        _gotoNext = 3041531i32;
                    };
                } else if (__value__ == (3041511i32)) {
                    _i_3041158++;
                    _gotoNext = 3041166i32;
                } else if (__value__ == (3041531i32)) {
                    return false;
                    _i_3041158++;
                    _gotoNext = 3041166i32;
                } else if (__value__ == (3041591i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3041616i32;
                } else if (__value__ == (3041616i32)) {
                    _s = (_s.__slice__(_i_3041158) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3041158) : stdgo.GoString)?.__copy__();
                    _keys_3041651 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3041651 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3041651 = (_keys_3041651.__append__(_key));
                        _values_3041651 = (_values_3041651.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3041651.length)) {
                        _gotoNext = 3042582i32;
                    } else {
                        _gotoNext = 3042656i32;
                    };
                } else if (__value__ == (3041672i32)) {
                    _sr_3041658 = _values_3041651[@:invalid_index_invalid_type _i_3041664];
                    var __blank__ = _keys_3041651[@:invalid_index_invalid_type _i_3041664];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3041741i32;
                    } else {
                        _gotoNext = 3041810i32;
                    };
                } else if (__value__ == (3041741i32)) {
                    return false;
                    _gotoNext = 3041810i32;
                } else if (__value__ == (3041810i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3041848i32;
                    } else {
                        _gotoNext = 3041888i32;
                    };
                } else if (__value__ == (3041848i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3041814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3042032i32;
                } else if (__value__ == (3041888i32)) {
                    _gotoNext = 3041888i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3041893 = __tmp__._0;
                        _size_3041896 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3041893;
                        final __tmp__1 = (_t.__slice__(_size_3041896) : stdgo.GoString)?.__copy__();
                        _tr_3041814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3042032i32;
                } else if (__value__ == (3042032i32)) {
                    if (_tr_3041814 == (_sr_3041658)) {
                        _gotoNext = 3042044i32;
                    } else {
                        _gotoNext = 3042109i32;
                    };
                } else if (__value__ == (3042044i32)) {
                    _i_3041664++;
                    _gotoNext = 3042583i32;
                } else if (__value__ == (3042109i32)) {
                    if ((_tr_3041814 < _sr_3041658 : Bool)) {
                        _gotoNext = 3042120i32;
                    } else {
                        _gotoNext = 3042174i32;
                    };
                } else if (__value__ == (3042120i32)) {
                    {
                        final __tmp__0 = _sr_3041658;
                        final __tmp__1 = _tr_3041814;
                        _tr_3041814 = __tmp__0;
                        _sr_3041658 = __tmp__1;
                    };
                    _gotoNext = 3042174i32;
                } else if (__value__ == (3042174i32)) {
                    if ((_tr_3041814 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3042196i32;
                    } else {
                        _gotoNext = 3042449i32;
                    };
                } else if (__value__ == (3042196i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3041658 : Bool) && (_sr_3041658 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3041814 == ((_sr_3041658 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3042296i32;
                    } else {
                        _gotoNext = 3042319i32;
                    };
                } else if (__value__ == (3042296i32)) {
                    _i_3041664++;
                    _gotoNext = 3042583i32;
                } else if (__value__ == (3042319i32)) {
                    return false;
                    _gotoNext = 3042449i32;
                } else if (__value__ == (3042449i32)) {
                    _r_3042449 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3041658);
                    var __blank__ = 0i32;
                    _gotoNext = 3042479i32;
                } else if (__value__ == (3042479i32)) {
                    if (((_r_3042449 != _sr_3041658) && (_r_3042449 < _tr_3041814 : Bool) : Bool)) {
                        _gotoNext = 3042501i32;
                    } else {
                        _gotoNext = 3042538i32;
                    };
                } else if (__value__ == (3042501i32)) {
                    _r_3042449 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3042449);
                    _gotoNext = 3042479i32;
                } else if (__value__ == (3042538i32)) {
                    if (_r_3042449 == (_tr_3041814)) {
                        _gotoNext = 3042549i32;
                    } else {
                        _gotoNext = 3042569i32;
                    };
                } else if (__value__ == (3042549i32)) {
                    _i_3041664++;
                    _gotoNext = 3042583i32;
                } else if (__value__ == (3042569i32)) {
                    return false;
                    _i_3041664++;
                    _gotoNext = 3042583i32;
                } else if (__value__ == (3042582i32)) {
                    _i_3041664 = 0i32;
                    _gotoNext = 3042583i32;
                } else if (__value__ == (3042583i32)) {
                    if (_i_3041664 < (_keys_3041651.length)) {
                        _gotoNext = 3041672i32;
                    } else {
                        _gotoNext = 3042656i32;
                    };
                } else if (__value__ == (3042656i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
