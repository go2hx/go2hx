package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2981102:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2980549:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2980311:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2979872:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2980546:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2980467:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2980304 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2980304 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2980317 = @:invalid_type null;
        var _sr_2979859:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2979811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2979811 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2979819i32;
                } else if (__value__ == (2979819i32)) {
                    if (((_i_2979811 < (_s.length) : Bool) && (_i_2979811 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2979855i32;
                    } else {
                        _gotoNext = 2980244i32;
                    };
                } else if (__value__ == (2979855i32)) {
                    _sr_2979859 = _s[(_i_2979811 : stdgo.GoInt)];
                    _tr_2979872 = _t[(_i_2979811 : stdgo.GoInt)];
                    if (((_sr_2979859 | _tr_2979872 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2979911i32;
                    } else {
                        _gotoNext = 2979955i32;
                    };
                } else if (__value__ == (2979911i32)) {
                    _gotoNext = 2980269i32;
                } else if (__value__ == (2979955i32)) {
                    if (_tr_2979872 == (_sr_2979859)) {
                        _gotoNext = 2979967i32;
                    } else {
                        _gotoNext = 2980032i32;
                    };
                } else if (__value__ == (2979967i32)) {
                    _i_2979811++;
                    _gotoNext = 2979819i32;
                } else if (__value__ == (2980032i32)) {
                    if ((_tr_2979872 < _sr_2979859 : Bool)) {
                        _gotoNext = 2980043i32;
                    } else {
                        _gotoNext = 2980118i32;
                    };
                } else if (__value__ == (2980043i32)) {
                    {
                        final __tmp__0 = _sr_2979859;
                        final __tmp__1 = _tr_2979872;
                        _tr_2979872 = __tmp__0;
                        _sr_2979859 = __tmp__1;
                    };
                    _gotoNext = 2980118i32;
                } else if (__value__ == (2980118i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2979859 : Bool) && (_sr_2979859 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2979872 == ((_sr_2979859 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2980164i32;
                    } else {
                        _gotoNext = 2980184i32;
                    };
                } else if (__value__ == (2980164i32)) {
                    _i_2979811++;
                    _gotoNext = 2979819i32;
                } else if (__value__ == (2980184i32)) {
                    return false;
                    _i_2979811++;
                    _gotoNext = 2979819i32;
                } else if (__value__ == (2980244i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2980269i32;
                } else if (__value__ == (2980269i32)) {
                    _s = (_s.__slice__(_i_2979811) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2979811) : stdgo.GoString)?.__copy__();
                    _keys_2980304 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2980304 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2980304 = (_keys_2980304.__append__(_key));
                        _values_2980304 = (_values_2980304.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2980304.length)) {
                        _gotoNext = 2981235i32;
                    } else {
                        _gotoNext = 2981309i32;
                    };
                } else if (__value__ == (2980325i32)) {
                    _sr_2980311 = _values_2980304[@:invalid_index_invalid_type _i_2980317];
                    var __blank__ = _keys_2980304[@:invalid_index_invalid_type _i_2980317];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2980394i32;
                    } else {
                        _gotoNext = 2980463i32;
                    };
                } else if (__value__ == (2980394i32)) {
                    return false;
                    _gotoNext = 2980463i32;
                } else if (__value__ == (2980463i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2980501i32;
                    } else {
                        _gotoNext = 2980541i32;
                    };
                } else if (__value__ == (2980501i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2980467 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2980685i32;
                } else if (__value__ == (2980541i32)) {
                    _gotoNext = 2980541i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2980546 = __tmp__._0;
                        _size_2980549 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2980546;
                        final __tmp__1 = (_t.__slice__(_size_2980549) : stdgo.GoString)?.__copy__();
                        _tr_2980467 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2980685i32;
                } else if (__value__ == (2980685i32)) {
                    if (_tr_2980467 == (_sr_2980311)) {
                        _gotoNext = 2980697i32;
                    } else {
                        _gotoNext = 2980762i32;
                    };
                } else if (__value__ == (2980697i32)) {
                    _i_2980317++;
                    _gotoNext = 2981236i32;
                } else if (__value__ == (2980762i32)) {
                    if ((_tr_2980467 < _sr_2980311 : Bool)) {
                        _gotoNext = 2980773i32;
                    } else {
                        _gotoNext = 2980827i32;
                    };
                } else if (__value__ == (2980773i32)) {
                    {
                        final __tmp__0 = _sr_2980311;
                        final __tmp__1 = _tr_2980467;
                        _tr_2980467 = __tmp__0;
                        _sr_2980311 = __tmp__1;
                    };
                    _gotoNext = 2980827i32;
                } else if (__value__ == (2980827i32)) {
                    if ((_tr_2980467 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2980849i32;
                    } else {
                        _gotoNext = 2981102i32;
                    };
                } else if (__value__ == (2980849i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2980311 : Bool) && (_sr_2980311 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2980467 == ((_sr_2980311 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2980949i32;
                    } else {
                        _gotoNext = 2980972i32;
                    };
                } else if (__value__ == (2980949i32)) {
                    _i_2980317++;
                    _gotoNext = 2981236i32;
                } else if (__value__ == (2980972i32)) {
                    return false;
                    _gotoNext = 2981102i32;
                } else if (__value__ == (2981102i32)) {
                    _r_2981102 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2980311);
                    var __blank__ = 0i32;
                    _gotoNext = 2981132i32;
                } else if (__value__ == (2981132i32)) {
                    if (((_r_2981102 != _sr_2980311) && (_r_2981102 < _tr_2980467 : Bool) : Bool)) {
                        _gotoNext = 2981154i32;
                    } else {
                        _gotoNext = 2981191i32;
                    };
                } else if (__value__ == (2981154i32)) {
                    _r_2981102 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2981102);
                    _gotoNext = 2981132i32;
                } else if (__value__ == (2981191i32)) {
                    if (_r_2981102 == (_tr_2980467)) {
                        _gotoNext = 2981202i32;
                    } else {
                        _gotoNext = 2981222i32;
                    };
                } else if (__value__ == (2981202i32)) {
                    _i_2980317++;
                    _gotoNext = 2981236i32;
                } else if (__value__ == (2981222i32)) {
                    return false;
                    _i_2980317++;
                    _gotoNext = 2981236i32;
                } else if (__value__ == (2981235i32)) {
                    _i_2980317 = 0i32;
                    _gotoNext = 2981236i32;
                } else if (__value__ == (2981236i32)) {
                    if (_i_2980317 < (_keys_2980304.length)) {
                        _gotoNext = 2980325i32;
                    } else {
                        _gotoNext = 2981309i32;
                    };
                } else if (__value__ == (2981309i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
