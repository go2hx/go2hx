package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2850320:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2850238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2849643:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2849630:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2850075 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2850075 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2850088 = @:invalid_type null;
        var _i_2849582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2850873:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2850317:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2850082:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2849582 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2849590i32;
                } else if (__value__ == (2849590i32)) {
                    if (((_i_2849582 < (_s.length) : Bool) && (_i_2849582 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2849626i32;
                    } else {
                        _gotoNext = 2850015i32;
                    };
                } else if (__value__ == (2849626i32)) {
                    _sr_2849630 = _s[(_i_2849582 : stdgo.GoInt)];
                    _tr_2849643 = _t[(_i_2849582 : stdgo.GoInt)];
                    if (((_sr_2849630 | _tr_2849643 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2849682i32;
                    } else {
                        _gotoNext = 2849726i32;
                    };
                } else if (__value__ == (2849682i32)) {
                    _gotoNext = 2850040i32;
                } else if (__value__ == (2849726i32)) {
                    if (_tr_2849643 == (_sr_2849630)) {
                        _gotoNext = 2849738i32;
                    } else {
                        _gotoNext = 2849803i32;
                    };
                } else if (__value__ == (2849738i32)) {
                    _i_2849582++;
                    _gotoNext = 2849590i32;
                } else if (__value__ == (2849803i32)) {
                    if ((_tr_2849643 < _sr_2849630 : Bool)) {
                        _gotoNext = 2849814i32;
                    } else {
                        _gotoNext = 2849889i32;
                    };
                } else if (__value__ == (2849814i32)) {
                    {
                        final __tmp__0 = _sr_2849630;
                        final __tmp__1 = _tr_2849643;
                        _tr_2849643 = __tmp__0;
                        _sr_2849630 = __tmp__1;
                    };
                    _gotoNext = 2849889i32;
                } else if (__value__ == (2849889i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2849630 : Bool) && (_sr_2849630 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2849643 == ((_sr_2849630 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2849935i32;
                    } else {
                        _gotoNext = 2849955i32;
                    };
                } else if (__value__ == (2849935i32)) {
                    _i_2849582++;
                    _gotoNext = 2849590i32;
                } else if (__value__ == (2849955i32)) {
                    return false;
                    _i_2849582++;
                    _gotoNext = 2849590i32;
                } else if (__value__ == (2850015i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2850040i32;
                } else if (__value__ == (2850040i32)) {
                    _s = (_s.__slice__(_i_2849582) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2849582) : stdgo.GoString)?.__copy__();
                    _keys_2850075 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2850075 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2850075 = (_keys_2850075.__append__(_key));
                        _values_2850075 = (_values_2850075.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2850075.length)) {
                        _gotoNext = 2851006i32;
                    } else {
                        _gotoNext = 2851080i32;
                    };
                } else if (__value__ == (2850096i32)) {
                    _sr_2850082 = _values_2850075[@:invalid_index_invalid_type _i_2850088];
                    var __blank__ = _keys_2850075[@:invalid_index_invalid_type _i_2850088];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2850165i32;
                    } else {
                        _gotoNext = 2850234i32;
                    };
                } else if (__value__ == (2850165i32)) {
                    return false;
                    _gotoNext = 2850234i32;
                } else if (__value__ == (2850234i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2850272i32;
                    } else {
                        _gotoNext = 2850312i32;
                    };
                } else if (__value__ == (2850272i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2850238 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2850456i32;
                } else if (__value__ == (2850312i32)) {
                    _gotoNext = 2850312i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2850317 = @:tmpset0 __tmp__._0;
                        _size_2850320 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2850317;
                        final __tmp__1 = (_t.__slice__(_size_2850320) : stdgo.GoString)?.__copy__();
                        _tr_2850238 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2850456i32;
                } else if (__value__ == (2850456i32)) {
                    if (_tr_2850238 == (_sr_2850082)) {
                        _gotoNext = 2850468i32;
                    } else {
                        _gotoNext = 2850533i32;
                    };
                } else if (__value__ == (2850468i32)) {
                    _i_2850088++;
                    _gotoNext = 2851007i32;
                } else if (__value__ == (2850533i32)) {
                    if ((_tr_2850238 < _sr_2850082 : Bool)) {
                        _gotoNext = 2850544i32;
                    } else {
                        _gotoNext = 2850598i32;
                    };
                } else if (__value__ == (2850544i32)) {
                    {
                        final __tmp__0 = _sr_2850082;
                        final __tmp__1 = _tr_2850238;
                        _tr_2850238 = __tmp__0;
                        _sr_2850082 = __tmp__1;
                    };
                    _gotoNext = 2850598i32;
                } else if (__value__ == (2850598i32)) {
                    if ((_tr_2850238 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2850620i32;
                    } else {
                        _gotoNext = 2850873i32;
                    };
                } else if (__value__ == (2850620i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2850082 : Bool) && (_sr_2850082 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2850238 == ((_sr_2850082 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2850720i32;
                    } else {
                        _gotoNext = 2850743i32;
                    };
                } else if (__value__ == (2850720i32)) {
                    _i_2850088++;
                    _gotoNext = 2851007i32;
                } else if (__value__ == (2850743i32)) {
                    return false;
                    _gotoNext = 2850873i32;
                } else if (__value__ == (2850873i32)) {
                    _r_2850873 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2850082);
                    var __blank__ = 0i32;
                    _gotoNext = 2850903i32;
                } else if (__value__ == (2850903i32)) {
                    if (((_r_2850873 != _sr_2850082) && (_r_2850873 < _tr_2850238 : Bool) : Bool)) {
                        _gotoNext = 2850925i32;
                    } else {
                        _gotoNext = 2850962i32;
                    };
                } else if (__value__ == (2850925i32)) {
                    _r_2850873 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2850873);
                    _gotoNext = 2850903i32;
                } else if (__value__ == (2850962i32)) {
                    if (_r_2850873 == (_tr_2850238)) {
                        _gotoNext = 2850973i32;
                    } else {
                        _gotoNext = 2850993i32;
                    };
                } else if (__value__ == (2850973i32)) {
                    _i_2850088++;
                    _gotoNext = 2851007i32;
                } else if (__value__ == (2850993i32)) {
                    return false;
                    _i_2850088++;
                    _gotoNext = 2851007i32;
                } else if (__value__ == (2851006i32)) {
                    _i_2850088 = 0i32;
                    _gotoNext = 2851007i32;
                } else if (__value__ == (2851007i32)) {
                    if (_i_2850088 < (_keys_2850075.length)) {
                        _gotoNext = 2850096i32;
                    } else {
                        _gotoNext = 2851080i32;
                    };
                } else if (__value__ == (2851080i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
