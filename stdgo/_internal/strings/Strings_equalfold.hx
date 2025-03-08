package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2685904 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2685904 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2685917 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2685419i32;
                } else if (__value__ == (2685419i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2685455i32;
                    } else {
                        _gotoNext = 2685844i32;
                    };
                } else if (__value__ == (2685455i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2685511i32;
                    } else {
                        _gotoNext = 2685555i32;
                    };
                } else if (__value__ == (2685511i32)) {
                    _gotoNext = 2685869i32;
                } else if (__value__ == (2685555i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2685567i32;
                    } else {
                        _gotoNext = 2685632i32;
                    };
                } else if (__value__ == (2685567i32)) {
                    _i_0++;
                    _gotoNext = 2685419i32;
                } else if (__value__ == (2685632i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2685643i32;
                    } else {
                        _gotoNext = 2685718i32;
                    };
                } else if (__value__ == (2685643i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2685718i32;
                } else if (__value__ == (2685718i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2685764i32;
                    } else {
                        _gotoNext = 2685784i32;
                    };
                } else if (__value__ == (2685764i32)) {
                    _i_0++;
                    _gotoNext = 2685419i32;
                } else if (__value__ == (2685784i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2685419i32;
                } else if (__value__ == (2685844i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2685869i32;
                } else if (__value__ == (2685869i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2685904 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2685904 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2685904 = (_keys_2685904.__append__(_key));
                        _values_2685904 = (_values_2685904.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2685904.length)) {
                        _gotoNext = 2686835i32;
                    } else {
                        _gotoNext = 2686909i32;
                    };
                } else if (__value__ == (2685925i32)) {
                    _sr_3 = _values_2685904[@:invalid_index_invalid_type _i_2685917];
                    var __blank__ = _keys_2685904[@:invalid_index_invalid_type _i_2685917];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2685994i32;
                    } else {
                        _gotoNext = 2686063i32;
                    };
                } else if (__value__ == (2685994i32)) {
                    return false;
                    _gotoNext = 2686063i32;
                } else if (__value__ == (2686063i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2686101i32;
                    } else {
                        _gotoNext = 2686141i32;
                    };
                } else if (__value__ == (2686101i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2686285i32;
                } else if (__value__ == (2686141i32)) {
                    _gotoNext = 2686141i32;
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
                    _gotoNext = 2686285i32;
                } else if (__value__ == (2686285i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2686297i32;
                    } else {
                        _gotoNext = 2686362i32;
                    };
                } else if (__value__ == (2686297i32)) {
                    _i_2685917++;
                    _gotoNext = 2686836i32;
                } else if (__value__ == (2686362i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2686373i32;
                    } else {
                        _gotoNext = 2686427i32;
                    };
                } else if (__value__ == (2686373i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2686427i32;
                } else if (__value__ == (2686427i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2686449i32;
                    } else {
                        _gotoNext = 2686702i32;
                    };
                } else if (__value__ == (2686449i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2686549i32;
                    } else {
                        _gotoNext = 2686572i32;
                    };
                } else if (__value__ == (2686549i32)) {
                    _i_2685917++;
                    _gotoNext = 2686836i32;
                } else if (__value__ == (2686572i32)) {
                    return false;
                    _gotoNext = 2686702i32;
                } else if (__value__ == (2686702i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2686732i32;
                } else if (__value__ == (2686732i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2686754i32;
                    } else {
                        _gotoNext = 2686791i32;
                    };
                } else if (__value__ == (2686754i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2686732i32;
                } else if (__value__ == (2686791i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2686802i32;
                    } else {
                        _gotoNext = 2686822i32;
                    };
                } else if (__value__ == (2686802i32)) {
                    _i_2685917++;
                    _gotoNext = 2686836i32;
                } else if (__value__ == (2686822i32)) {
                    return false;
                    _i_2685917++;
                    _gotoNext = 2686836i32;
                } else if (__value__ == (2686835i32)) {
                    _i_2685917 = 0i32;
                    _gotoNext = 2686836i32;
                } else if (__value__ == (2686836i32)) {
                    if (_i_2685917 < (_keys_2685904.length)) {
                        _gotoNext = 2685925i32;
                    } else {
                        _gotoNext = 2686909i32;
                    };
                } else if (__value__ == (2686909i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
