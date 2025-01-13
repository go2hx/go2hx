package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2808344:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2807791:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2807788:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2807553:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2807114:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2807053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2807709:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2807546 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2807546 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2807559 = @:invalid_type null;
        var _sr_2807101:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2807053 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2807061i32;
                } else if (__value__ == (2807061i32)) {
                    if (((_i_2807053 < (_s.length) : Bool) && (_i_2807053 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2807097i32;
                    } else {
                        _gotoNext = 2807486i32;
                    };
                } else if (__value__ == (2807097i32)) {
                    _sr_2807101 = _s[(_i_2807053 : stdgo.GoInt)];
                    _tr_2807114 = _t[(_i_2807053 : stdgo.GoInt)];
                    if (((_sr_2807101 | _tr_2807114 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2807153i32;
                    } else {
                        _gotoNext = 2807197i32;
                    };
                } else if (__value__ == (2807153i32)) {
                    _gotoNext = 2807511i32;
                } else if (__value__ == (2807197i32)) {
                    if (_tr_2807114 == (_sr_2807101)) {
                        _gotoNext = 2807209i32;
                    } else {
                        _gotoNext = 2807274i32;
                    };
                } else if (__value__ == (2807209i32)) {
                    _i_2807053++;
                    _gotoNext = 2807061i32;
                } else if (__value__ == (2807274i32)) {
                    if ((_tr_2807114 < _sr_2807101 : Bool)) {
                        _gotoNext = 2807285i32;
                    } else {
                        _gotoNext = 2807360i32;
                    };
                } else if (__value__ == (2807285i32)) {
                    {
                        final __tmp__0 = _sr_2807101;
                        final __tmp__1 = _tr_2807114;
                        _tr_2807114 = __tmp__0;
                        _sr_2807101 = __tmp__1;
                    };
                    _gotoNext = 2807360i32;
                } else if (__value__ == (2807360i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2807101 : Bool) && (_sr_2807101 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2807114 == ((_sr_2807101 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2807406i32;
                    } else {
                        _gotoNext = 2807426i32;
                    };
                } else if (__value__ == (2807406i32)) {
                    _i_2807053++;
                    _gotoNext = 2807061i32;
                } else if (__value__ == (2807426i32)) {
                    return false;
                    _i_2807053++;
                    _gotoNext = 2807061i32;
                } else if (__value__ == (2807486i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2807511i32;
                } else if (__value__ == (2807511i32)) {
                    _s = (_s.__slice__(_i_2807053) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2807053) : stdgo.GoString)?.__copy__();
                    _keys_2807546 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2807546 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2807546 = (_keys_2807546.__append__(_key));
                        _values_2807546 = (_values_2807546.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2807546.length)) {
                        _gotoNext = 2808477i32;
                    } else {
                        _gotoNext = 2808551i32;
                    };
                } else if (__value__ == (2807567i32)) {
                    _sr_2807553 = _values_2807546[@:invalid_index_invalid_type _i_2807559];
                    var __blank__ = _keys_2807546[@:invalid_index_invalid_type _i_2807559];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2807636i32;
                    } else {
                        _gotoNext = 2807705i32;
                    };
                } else if (__value__ == (2807636i32)) {
                    return false;
                    _gotoNext = 2807705i32;
                } else if (__value__ == (2807705i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2807743i32;
                    } else {
                        _gotoNext = 2807783i32;
                    };
                } else if (__value__ == (2807743i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2807709 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2807927i32;
                } else if (__value__ == (2807783i32)) {
                    _gotoNext = 2807783i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2807788 = __tmp__._0;
                        _size_2807791 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2807788;
                        final __tmp__1 = (_t.__slice__(_size_2807791) : stdgo.GoString)?.__copy__();
                        _tr_2807709 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2807927i32;
                } else if (__value__ == (2807927i32)) {
                    if (_tr_2807709 == (_sr_2807553)) {
                        _gotoNext = 2807939i32;
                    } else {
                        _gotoNext = 2808004i32;
                    };
                } else if (__value__ == (2807939i32)) {
                    _i_2807559++;
                    _gotoNext = 2808478i32;
                } else if (__value__ == (2808004i32)) {
                    if ((_tr_2807709 < _sr_2807553 : Bool)) {
                        _gotoNext = 2808015i32;
                    } else {
                        _gotoNext = 2808069i32;
                    };
                } else if (__value__ == (2808015i32)) {
                    {
                        final __tmp__0 = _sr_2807553;
                        final __tmp__1 = _tr_2807709;
                        _tr_2807709 = __tmp__0;
                        _sr_2807553 = __tmp__1;
                    };
                    _gotoNext = 2808069i32;
                } else if (__value__ == (2808069i32)) {
                    if ((_tr_2807709 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2808091i32;
                    } else {
                        _gotoNext = 2808344i32;
                    };
                } else if (__value__ == (2808091i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2807553 : Bool) && (_sr_2807553 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2807709 == ((_sr_2807553 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2808191i32;
                    } else {
                        _gotoNext = 2808214i32;
                    };
                } else if (__value__ == (2808191i32)) {
                    _i_2807559++;
                    _gotoNext = 2808478i32;
                } else if (__value__ == (2808214i32)) {
                    return false;
                    _gotoNext = 2808344i32;
                } else if (__value__ == (2808344i32)) {
                    _r_2808344 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2807553);
                    var __blank__ = 0i32;
                    _gotoNext = 2808374i32;
                } else if (__value__ == (2808374i32)) {
                    if (((_r_2808344 != _sr_2807553) && (_r_2808344 < _tr_2807709 : Bool) : Bool)) {
                        _gotoNext = 2808396i32;
                    } else {
                        _gotoNext = 2808433i32;
                    };
                } else if (__value__ == (2808396i32)) {
                    _r_2808344 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2808344);
                    _gotoNext = 2808374i32;
                } else if (__value__ == (2808433i32)) {
                    if (_r_2808344 == (_tr_2807709)) {
                        _gotoNext = 2808444i32;
                    } else {
                        _gotoNext = 2808464i32;
                    };
                } else if (__value__ == (2808444i32)) {
                    _i_2807559++;
                    _gotoNext = 2808478i32;
                } else if (__value__ == (2808464i32)) {
                    return false;
                    _i_2807559++;
                    _gotoNext = 2808478i32;
                } else if (__value__ == (2808477i32)) {
                    _i_2807559 = 0i32;
                    _gotoNext = 2808478i32;
                } else if (__value__ == (2808478i32)) {
                    if (_i_2807559 < (_keys_2807546.length)) {
                        _gotoNext = 2807567i32;
                    } else {
                        _gotoNext = 2808551i32;
                    };
                } else if (__value__ == (2808551i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
