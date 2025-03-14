package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2739205 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2739205 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _iterator_2739218 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2738720i32;
                } else if (__value__ == (2738720i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2738756i32;
                    } else {
                        _gotoNext = 2739145i32;
                    };
                } else if (__value__ == (2738756i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2738812i32;
                    } else {
                        _gotoNext = 2738856i32;
                    };
                } else if (__value__ == (2738812i32)) {
                    _gotoNext = 2739170i32;
                } else if (__value__ == (2738856i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2738868i32;
                    } else {
                        _gotoNext = 2738933i32;
                    };
                } else if (__value__ == (2738868i32)) {
                    _i_0++;
                    _gotoNext = 2738720i32;
                } else if (__value__ == (2738933i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2738944i32;
                    } else {
                        _gotoNext = 2739019i32;
                    };
                } else if (__value__ == (2738944i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2739019i32;
                } else if (__value__ == (2739019i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2739065i32;
                    } else {
                        _gotoNext = 2739085i32;
                    };
                } else if (__value__ == (2739065i32)) {
                    _i_0++;
                    _gotoNext = 2738720i32;
                } else if (__value__ == (2739085i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2738720i32;
                } else if (__value__ == (2739145i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2739170i32;
                } else if (__value__ == (2739170i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2739205 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2739205 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2739205 = (_keys_2739205.__append__(_key));
                        _values_2739205 = (_values_2739205.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2739205.length)) {
                        _gotoNext = 2740136i32;
                    } else {
                        _gotoNext = 2740210i32;
                    };
                } else if (__value__ == (2739226i32)) {
                    _sr_3 = _values_2739205[@:invalid_index_invalid_type _iterator_2739218];
                    _keys_2739205[@:invalid_index_invalid_type _iterator_2739218];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2739295i32;
                    } else {
                        _gotoNext = 2739364i32;
                    };
                } else if (__value__ == (2739295i32)) {
                    return false;
                    _gotoNext = 2739364i32;
                } else if (__value__ == (2739364i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2739402i32;
                    } else {
                        _gotoNext = 2739442i32;
                    };
                } else if (__value__ == (2739402i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2739586i32;
                } else if (__value__ == (2739442i32)) {
                    _gotoNext = 2739442i32;
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
                    0i32;
                    _gotoNext = 2739586i32;
                } else if (__value__ == (2739586i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2739598i32;
                    } else {
                        _gotoNext = 2739663i32;
                    };
                } else if (__value__ == (2739598i32)) {
                    _iterator_2739218++;
                    _gotoNext = 2740137i32;
                } else if (__value__ == (2739663i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2739674i32;
                    } else {
                        _gotoNext = 2739728i32;
                    };
                } else if (__value__ == (2739674i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2739728i32;
                } else if (__value__ == (2739728i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2739750i32;
                    } else {
                        _gotoNext = 2740003i32;
                    };
                } else if (__value__ == (2739750i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2739850i32;
                    } else {
                        _gotoNext = 2739873i32;
                    };
                } else if (__value__ == (2739850i32)) {
                    _iterator_2739218++;
                    _gotoNext = 2740137i32;
                } else if (__value__ == (2739873i32)) {
                    return false;
                    _gotoNext = 2740003i32;
                } else if (__value__ == (2740003i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2740033i32;
                } else if (__value__ == (2740033i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2740055i32;
                    } else {
                        _gotoNext = 2740092i32;
                    };
                } else if (__value__ == (2740055i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2740033i32;
                } else if (__value__ == (2740092i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2740103i32;
                    } else {
                        _gotoNext = 2740123i32;
                    };
                } else if (__value__ == (2740103i32)) {
                    _iterator_2739218++;
                    _gotoNext = 2740137i32;
                } else if (__value__ == (2740123i32)) {
                    return false;
                    _iterator_2739218++;
                    _gotoNext = 2740137i32;
                } else if (__value__ == (2740136i32)) {
                    _iterator_2739218 = 0i32;
                    _gotoNext = 2740137i32;
                } else if (__value__ == (2740137i32)) {
                    if (_iterator_2739218 < (_keys_2739205.length)) {
                        _gotoNext = 2739226i32;
                    } else {
                        _gotoNext = 2740210i32;
                    };
                } else if (__value__ == (2740210i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
