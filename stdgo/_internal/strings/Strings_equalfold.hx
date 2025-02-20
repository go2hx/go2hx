package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2916818 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2916831 = @:invalid_type null;
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2916818 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2916333i32;
                } else if (__value__ == (2916333i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2916369i32;
                    } else {
                        _gotoNext = 2916758i32;
                    };
                } else if (__value__ == (2916369i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2916425i32;
                    } else {
                        _gotoNext = 2916469i32;
                    };
                } else if (__value__ == (2916425i32)) {
                    _gotoNext = 2916783i32;
                } else if (__value__ == (2916469i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2916481i32;
                    } else {
                        _gotoNext = 2916546i32;
                    };
                } else if (__value__ == (2916481i32)) {
                    _i_0++;
                    _gotoNext = 2916333i32;
                } else if (__value__ == (2916546i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2916557i32;
                    } else {
                        _gotoNext = 2916632i32;
                    };
                } else if (__value__ == (2916557i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2916632i32;
                } else if (__value__ == (2916632i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2916678i32;
                    } else {
                        _gotoNext = 2916698i32;
                    };
                } else if (__value__ == (2916678i32)) {
                    _i_0++;
                    _gotoNext = 2916333i32;
                } else if (__value__ == (2916698i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2916333i32;
                } else if (__value__ == (2916758i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2916783i32;
                } else if (__value__ == (2916783i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2916818 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2916818 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2916818 = (_keys_2916818.__append__(_key));
                        _values_2916818 = (_values_2916818.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2916818.length)) {
                        _gotoNext = 2917749i32;
                    } else {
                        _gotoNext = 2917823i32;
                    };
                } else if (__value__ == (2916839i32)) {
                    _sr_3 = _values_2916818[@:invalid_index_invalid_type _i_2916831];
                    var __blank__ = _keys_2916818[@:invalid_index_invalid_type _i_2916831];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2916908i32;
                    } else {
                        _gotoNext = 2916977i32;
                    };
                } else if (__value__ == (2916908i32)) {
                    return false;
                    _gotoNext = 2916977i32;
                } else if (__value__ == (2916977i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2917015i32;
                    } else {
                        _gotoNext = 2917055i32;
                    };
                } else if (__value__ == (2917015i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2917199i32;
                } else if (__value__ == (2917055i32)) {
                    _gotoNext = 2917055i32;
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
                    _gotoNext = 2917199i32;
                } else if (__value__ == (2917199i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2917211i32;
                    } else {
                        _gotoNext = 2917276i32;
                    };
                } else if (__value__ == (2917211i32)) {
                    _i_2916831++;
                    _gotoNext = 2917750i32;
                } else if (__value__ == (2917276i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2917287i32;
                    } else {
                        _gotoNext = 2917341i32;
                    };
                } else if (__value__ == (2917287i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2917341i32;
                } else if (__value__ == (2917341i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2917363i32;
                    } else {
                        _gotoNext = 2917616i32;
                    };
                } else if (__value__ == (2917363i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2917463i32;
                    } else {
                        _gotoNext = 2917486i32;
                    };
                } else if (__value__ == (2917463i32)) {
                    _i_2916831++;
                    _gotoNext = 2917750i32;
                } else if (__value__ == (2917486i32)) {
                    return false;
                    _gotoNext = 2917616i32;
                } else if (__value__ == (2917616i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2917646i32;
                } else if (__value__ == (2917646i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2917668i32;
                    } else {
                        _gotoNext = 2917705i32;
                    };
                } else if (__value__ == (2917668i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2917646i32;
                } else if (__value__ == (2917705i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2917716i32;
                    } else {
                        _gotoNext = 2917736i32;
                    };
                } else if (__value__ == (2917716i32)) {
                    _i_2916831++;
                    _gotoNext = 2917750i32;
                } else if (__value__ == (2917736i32)) {
                    return false;
                    _i_2916831++;
                    _gotoNext = 2917750i32;
                } else if (__value__ == (2917749i32)) {
                    _i_2916831 = 0i32;
                    _gotoNext = 2917750i32;
                } else if (__value__ == (2917750i32)) {
                    if (_i_2916831 < (_keys_2916818.length)) {
                        _gotoNext = 2916839i32;
                    } else {
                        _gotoNext = 2917823i32;
                    };
                } else if (__value__ == (2917823i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
