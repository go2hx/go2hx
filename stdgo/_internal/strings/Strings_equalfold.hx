package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2854951 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2854951 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2854964 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2854466i32;
                } else if (__value__ == (2854466i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2854502i32;
                    } else {
                        _gotoNext = 2854891i32;
                    };
                } else if (__value__ == (2854502i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2854558i32;
                    } else {
                        _gotoNext = 2854602i32;
                    };
                } else if (__value__ == (2854558i32)) {
                    _gotoNext = 2854916i32;
                } else if (__value__ == (2854602i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2854614i32;
                    } else {
                        _gotoNext = 2854679i32;
                    };
                } else if (__value__ == (2854614i32)) {
                    _i_0++;
                    _gotoNext = 2854466i32;
                } else if (__value__ == (2854679i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2854690i32;
                    } else {
                        _gotoNext = 2854765i32;
                    };
                } else if (__value__ == (2854690i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2854765i32;
                } else if (__value__ == (2854765i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2854811i32;
                    } else {
                        _gotoNext = 2854831i32;
                    };
                } else if (__value__ == (2854811i32)) {
                    _i_0++;
                    _gotoNext = 2854466i32;
                } else if (__value__ == (2854831i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2854466i32;
                } else if (__value__ == (2854891i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2854916i32;
                } else if (__value__ == (2854916i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2854951 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2854951 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2854951 = (_keys_2854951.__append__(_key));
                        _values_2854951 = (_values_2854951.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2854951.length)) {
                        _gotoNext = 2855882i32;
                    } else {
                        _gotoNext = 2855956i32;
                    };
                } else if (__value__ == (2854972i32)) {
                    _sr_3 = _values_2854951[@:invalid_index_invalid_type _i_2854964];
                    var __blank__ = _keys_2854951[@:invalid_index_invalid_type _i_2854964];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2855041i32;
                    } else {
                        _gotoNext = 2855110i32;
                    };
                } else if (__value__ == (2855041i32)) {
                    return false;
                    _gotoNext = 2855110i32;
                } else if (__value__ == (2855110i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855148i32;
                    } else {
                        _gotoNext = 2855188i32;
                    };
                } else if (__value__ == (2855148i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2855332i32;
                } else if (__value__ == (2855188i32)) {
                    _gotoNext = 2855188i32;
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
                    _gotoNext = 2855332i32;
                } else if (__value__ == (2855332i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2855344i32;
                    } else {
                        _gotoNext = 2855409i32;
                    };
                } else if (__value__ == (2855344i32)) {
                    _i_2854964++;
                    _gotoNext = 2855883i32;
                } else if (__value__ == (2855409i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2855420i32;
                    } else {
                        _gotoNext = 2855474i32;
                    };
                } else if (__value__ == (2855420i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2855474i32;
                } else if (__value__ == (2855474i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2855496i32;
                    } else {
                        _gotoNext = 2855749i32;
                    };
                } else if (__value__ == (2855496i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2855596i32;
                    } else {
                        _gotoNext = 2855619i32;
                    };
                } else if (__value__ == (2855596i32)) {
                    _i_2854964++;
                    _gotoNext = 2855883i32;
                } else if (__value__ == (2855619i32)) {
                    return false;
                    _gotoNext = 2855749i32;
                } else if (__value__ == (2855749i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2855779i32;
                } else if (__value__ == (2855779i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2855801i32;
                    } else {
                        _gotoNext = 2855838i32;
                    };
                } else if (__value__ == (2855801i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2855779i32;
                } else if (__value__ == (2855838i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2855849i32;
                    } else {
                        _gotoNext = 2855869i32;
                    };
                } else if (__value__ == (2855849i32)) {
                    _i_2854964++;
                    _gotoNext = 2855883i32;
                } else if (__value__ == (2855869i32)) {
                    return false;
                    _i_2854964++;
                    _gotoNext = 2855883i32;
                } else if (__value__ == (2855882i32)) {
                    _i_2854964 = 0i32;
                    _gotoNext = 2855883i32;
                } else if (__value__ == (2855883i32)) {
                    if (_i_2854964 < (_keys_2854951.length)) {
                        _gotoNext = 2854972i32;
                    } else {
                        _gotoNext = 2855956i32;
                    };
                } else if (__value__ == (2855956i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
