package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2845397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2845410 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2845397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2844912i32;
                } else if (__value__ == (2844912i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2844948i32;
                    } else {
                        _gotoNext = 2845337i32;
                    };
                } else if (__value__ == (2844948i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2845004i32;
                    } else {
                        _gotoNext = 2845048i32;
                    };
                } else if (__value__ == (2845004i32)) {
                    _gotoNext = 2845362i32;
                } else if (__value__ == (2845048i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2845060i32;
                    } else {
                        _gotoNext = 2845125i32;
                    };
                } else if (__value__ == (2845060i32)) {
                    _i_0++;
                    _gotoNext = 2844912i32;
                } else if (__value__ == (2845125i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2845136i32;
                    } else {
                        _gotoNext = 2845211i32;
                    };
                } else if (__value__ == (2845136i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2845211i32;
                } else if (__value__ == (2845211i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2845257i32;
                    } else {
                        _gotoNext = 2845277i32;
                    };
                } else if (__value__ == (2845257i32)) {
                    _i_0++;
                    _gotoNext = 2844912i32;
                } else if (__value__ == (2845277i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2844912i32;
                } else if (__value__ == (2845337i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2845362i32;
                } else if (__value__ == (2845362i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2845397 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2845397 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2845397 = (_keys_2845397.__append__(_key));
                        _values_2845397 = (_values_2845397.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2845397.length)) {
                        _gotoNext = 2846328i32;
                    } else {
                        _gotoNext = 2846402i32;
                    };
                } else if (__value__ == (2845418i32)) {
                    _sr_3 = _values_2845397[@:invalid_index_invalid_type _i_2845410];
                    var __blank__ = _keys_2845397[@:invalid_index_invalid_type _i_2845410];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2845487i32;
                    } else {
                        _gotoNext = 2845556i32;
                    };
                } else if (__value__ == (2845487i32)) {
                    return false;
                    _gotoNext = 2845556i32;
                } else if (__value__ == (2845556i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2845594i32;
                    } else {
                        _gotoNext = 2845634i32;
                    };
                } else if (__value__ == (2845594i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2845778i32;
                } else if (__value__ == (2845634i32)) {
                    _gotoNext = 2845634i32;
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
                    _gotoNext = 2845778i32;
                } else if (__value__ == (2845778i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2845790i32;
                    } else {
                        _gotoNext = 2845855i32;
                    };
                } else if (__value__ == (2845790i32)) {
                    _i_2845410++;
                    _gotoNext = 2846329i32;
                } else if (__value__ == (2845855i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2845866i32;
                    } else {
                        _gotoNext = 2845920i32;
                    };
                } else if (__value__ == (2845866i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2845920i32;
                } else if (__value__ == (2845920i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2845942i32;
                    } else {
                        _gotoNext = 2846195i32;
                    };
                } else if (__value__ == (2845942i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2846042i32;
                    } else {
                        _gotoNext = 2846065i32;
                    };
                } else if (__value__ == (2846042i32)) {
                    _i_2845410++;
                    _gotoNext = 2846329i32;
                } else if (__value__ == (2846065i32)) {
                    return false;
                    _gotoNext = 2846195i32;
                } else if (__value__ == (2846195i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2846225i32;
                } else if (__value__ == (2846225i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2846247i32;
                    } else {
                        _gotoNext = 2846284i32;
                    };
                } else if (__value__ == (2846247i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2846225i32;
                } else if (__value__ == (2846284i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2846295i32;
                    } else {
                        _gotoNext = 2846315i32;
                    };
                } else if (__value__ == (2846295i32)) {
                    _i_2845410++;
                    _gotoNext = 2846329i32;
                } else if (__value__ == (2846315i32)) {
                    return false;
                    _i_2845410++;
                    _gotoNext = 2846329i32;
                } else if (__value__ == (2846328i32)) {
                    _i_2845410 = 0i32;
                    _gotoNext = 2846329i32;
                } else if (__value__ == (2846329i32)) {
                    if (_i_2845410 < (_keys_2845397.length)) {
                        _gotoNext = 2845418i32;
                    } else {
                        _gotoNext = 2846402i32;
                    };
                } else if (__value__ == (2846402i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
