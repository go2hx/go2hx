package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_3068712:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3070003:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3069450:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3069212:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3069205 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_3068773:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3068760:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3069447:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3069368:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3069205 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3069218 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3068712 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3068720i32;
                } else if (__value__ == (3068720i32)) {
                    if (((_i_3068712 < (_s.length) : Bool) && (_i_3068712 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3068756i32;
                    } else {
                        _gotoNext = 3069145i32;
                    };
                } else if (__value__ == (3068756i32)) {
                    _sr_3068760 = _s[(_i_3068712 : stdgo.GoInt)];
                    _tr_3068773 = _t[(_i_3068712 : stdgo.GoInt)];
                    if (((_sr_3068760 | _tr_3068773 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3068812i32;
                    } else {
                        _gotoNext = 3068856i32;
                    };
                } else if (__value__ == (3068812i32)) {
                    _gotoNext = 3069170i32;
                } else if (__value__ == (3068856i32)) {
                    if (_tr_3068773 == (_sr_3068760)) {
                        _gotoNext = 3068868i32;
                    } else {
                        _gotoNext = 3068933i32;
                    };
                } else if (__value__ == (3068868i32)) {
                    _i_3068712++;
                    _gotoNext = 3068720i32;
                } else if (__value__ == (3068933i32)) {
                    if ((_tr_3068773 < _sr_3068760 : Bool)) {
                        _gotoNext = 3068944i32;
                    } else {
                        _gotoNext = 3069019i32;
                    };
                } else if (__value__ == (3068944i32)) {
                    {
                        final __tmp__0 = _sr_3068760;
                        final __tmp__1 = _tr_3068773;
                        _tr_3068773 = __tmp__0;
                        _sr_3068760 = __tmp__1;
                    };
                    _gotoNext = 3069019i32;
                } else if (__value__ == (3069019i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3068760 : Bool) && (_sr_3068760 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3068773 == ((_sr_3068760 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3069065i32;
                    } else {
                        _gotoNext = 3069085i32;
                    };
                } else if (__value__ == (3069065i32)) {
                    _i_3068712++;
                    _gotoNext = 3068720i32;
                } else if (__value__ == (3069085i32)) {
                    return false;
                    _i_3068712++;
                    _gotoNext = 3068720i32;
                } else if (__value__ == (3069145i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3069170i32;
                } else if (__value__ == (3069170i32)) {
                    _s = (_s.__slice__(_i_3068712) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3068712) : stdgo.GoString)?.__copy__();
                    _keys_3069205 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3069205 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3069205 = (_keys_3069205.__append__(_key));
                        _values_3069205 = (_values_3069205.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3069205.length)) {
                        _gotoNext = 3070136i32;
                    } else {
                        _gotoNext = 3070210i32;
                    };
                } else if (__value__ == (3069226i32)) {
                    _sr_3069212 = _values_3069205[@:invalid_index_invalid_type _i_3069218];
                    var __blank__ = _keys_3069205[@:invalid_index_invalid_type _i_3069218];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3069295i32;
                    } else {
                        _gotoNext = 3069364i32;
                    };
                } else if (__value__ == (3069295i32)) {
                    return false;
                    _gotoNext = 3069364i32;
                } else if (__value__ == (3069364i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3069402i32;
                    } else {
                        _gotoNext = 3069442i32;
                    };
                } else if (__value__ == (3069402i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3069368 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3069586i32;
                } else if (__value__ == (3069442i32)) {
                    _gotoNext = 3069442i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3069447 = __tmp__._0;
                        _size_3069450 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3069447;
                        final __tmp__1 = (_t.__slice__(_size_3069450) : stdgo.GoString)?.__copy__();
                        _tr_3069368 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3069586i32;
                } else if (__value__ == (3069586i32)) {
                    if (_tr_3069368 == (_sr_3069212)) {
                        _gotoNext = 3069598i32;
                    } else {
                        _gotoNext = 3069663i32;
                    };
                } else if (__value__ == (3069598i32)) {
                    _i_3069218++;
                    _gotoNext = 3070137i32;
                } else if (__value__ == (3069663i32)) {
                    if ((_tr_3069368 < _sr_3069212 : Bool)) {
                        _gotoNext = 3069674i32;
                    } else {
                        _gotoNext = 3069728i32;
                    };
                } else if (__value__ == (3069674i32)) {
                    {
                        final __tmp__0 = _sr_3069212;
                        final __tmp__1 = _tr_3069368;
                        _tr_3069368 = __tmp__0;
                        _sr_3069212 = __tmp__1;
                    };
                    _gotoNext = 3069728i32;
                } else if (__value__ == (3069728i32)) {
                    if ((_tr_3069368 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3069750i32;
                    } else {
                        _gotoNext = 3070003i32;
                    };
                } else if (__value__ == (3069750i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3069212 : Bool) && (_sr_3069212 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3069368 == ((_sr_3069212 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3069850i32;
                    } else {
                        _gotoNext = 3069873i32;
                    };
                } else if (__value__ == (3069850i32)) {
                    _i_3069218++;
                    _gotoNext = 3070137i32;
                } else if (__value__ == (3069873i32)) {
                    return false;
                    _gotoNext = 3070003i32;
                } else if (__value__ == (3070003i32)) {
                    _r_3070003 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3069212);
                    var __blank__ = 0i32;
                    _gotoNext = 3070033i32;
                } else if (__value__ == (3070033i32)) {
                    if (((_r_3070003 != _sr_3069212) && (_r_3070003 < _tr_3069368 : Bool) : Bool)) {
                        _gotoNext = 3070055i32;
                    } else {
                        _gotoNext = 3070092i32;
                    };
                } else if (__value__ == (3070055i32)) {
                    _r_3070003 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3070003);
                    _gotoNext = 3070033i32;
                } else if (__value__ == (3070092i32)) {
                    if (_r_3070003 == (_tr_3069368)) {
                        _gotoNext = 3070103i32;
                    } else {
                        _gotoNext = 3070123i32;
                    };
                } else if (__value__ == (3070103i32)) {
                    _i_3069218++;
                    _gotoNext = 3070137i32;
                } else if (__value__ == (3070123i32)) {
                    return false;
                    _i_3069218++;
                    _gotoNext = 3070137i32;
                } else if (__value__ == (3070136i32)) {
                    _i_3069218 = 0i32;
                    _gotoNext = 3070137i32;
                } else if (__value__ == (3070137i32)) {
                    if (_i_3069218 < (_keys_3069205.length)) {
                        _gotoNext = 3069226i32;
                    } else {
                        _gotoNext = 3070210i32;
                    };
                } else if (__value__ == (3070210i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
