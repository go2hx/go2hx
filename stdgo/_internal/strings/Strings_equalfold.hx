package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2750905 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2750905 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2750918 = @:invalid_type null;
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2750420i32;
                } else if (__value__ == (2750420i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2750456i32;
                    } else {
                        _gotoNext = 2750845i32;
                    };
                } else if (__value__ == (2750456i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2750512i32;
                    } else {
                        _gotoNext = 2750556i32;
                    };
                } else if (__value__ == (2750512i32)) {
                    _gotoNext = 2750870i32;
                } else if (__value__ == (2750556i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2750568i32;
                    } else {
                        _gotoNext = 2750633i32;
                    };
                } else if (__value__ == (2750568i32)) {
                    _i_0++;
                    _gotoNext = 2750420i32;
                } else if (__value__ == (2750633i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2750644i32;
                    } else {
                        _gotoNext = 2750719i32;
                    };
                } else if (__value__ == (2750644i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2750719i32;
                } else if (__value__ == (2750719i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2750765i32;
                    } else {
                        _gotoNext = 2750785i32;
                    };
                } else if (__value__ == (2750765i32)) {
                    _i_0++;
                    _gotoNext = 2750420i32;
                } else if (__value__ == (2750785i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2750420i32;
                } else if (__value__ == (2750845i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2750870i32;
                } else if (__value__ == (2750870i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2750905 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2750905 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2750905 = (_keys_2750905.__append__(_key));
                        _values_2750905 = (_values_2750905.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2750905.length)) {
                        _gotoNext = 2751836i32;
                    } else {
                        _gotoNext = 2751910i32;
                    };
                } else if (__value__ == (2750926i32)) {
                    _sr_3 = _values_2750905[@:invalid_index_invalid_type _i_2750918];
                    var __blank__ = _keys_2750905[@:invalid_index_invalid_type _i_2750918];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2750995i32;
                    } else {
                        _gotoNext = 2751064i32;
                    };
                } else if (__value__ == (2750995i32)) {
                    return false;
                    _gotoNext = 2751064i32;
                } else if (__value__ == (2751064i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2751102i32;
                    } else {
                        _gotoNext = 2751142i32;
                    };
                } else if (__value__ == (2751102i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2751286i32;
                } else if (__value__ == (2751142i32)) {
                    _gotoNext = 2751142i32;
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
                    _gotoNext = 2751286i32;
                } else if (__value__ == (2751286i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2751298i32;
                    } else {
                        _gotoNext = 2751363i32;
                    };
                } else if (__value__ == (2751298i32)) {
                    _i_2750918++;
                    _gotoNext = 2751837i32;
                } else if (__value__ == (2751363i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2751374i32;
                    } else {
                        _gotoNext = 2751428i32;
                    };
                } else if (__value__ == (2751374i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2751428i32;
                } else if (__value__ == (2751428i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2751450i32;
                    } else {
                        _gotoNext = 2751703i32;
                    };
                } else if (__value__ == (2751450i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2751550i32;
                    } else {
                        _gotoNext = 2751573i32;
                    };
                } else if (__value__ == (2751550i32)) {
                    _i_2750918++;
                    _gotoNext = 2751837i32;
                } else if (__value__ == (2751573i32)) {
                    return false;
                    _gotoNext = 2751703i32;
                } else if (__value__ == (2751703i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2751733i32;
                } else if (__value__ == (2751733i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2751755i32;
                    } else {
                        _gotoNext = 2751792i32;
                    };
                } else if (__value__ == (2751755i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2751733i32;
                } else if (__value__ == (2751792i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2751803i32;
                    } else {
                        _gotoNext = 2751823i32;
                    };
                } else if (__value__ == (2751803i32)) {
                    _i_2750918++;
                    _gotoNext = 2751837i32;
                } else if (__value__ == (2751823i32)) {
                    return false;
                    _i_2750918++;
                    _gotoNext = 2751837i32;
                } else if (__value__ == (2751836i32)) {
                    _i_2750918 = 0i32;
                    _gotoNext = 2751837i32;
                } else if (__value__ == (2751837i32)) {
                    if (_i_2750918 < (_keys_2750905.length)) {
                        _gotoNext = 2750926i32;
                    } else {
                        _gotoNext = 2751910i32;
                    };
                } else if (__value__ == (2751910i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
