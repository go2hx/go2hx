package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2771132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2771129:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2770894:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2770887 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2770900 = @:invalid_type null;
        var _tr_2770455:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2771685:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2771050:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2770887 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2770442:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2770394:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2770394 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2770402i32;
                } else if (__value__ == (2770402i32)) {
                    if (((_i_2770394 < (_s.length) : Bool) && (_i_2770394 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2770438i32;
                    } else {
                        _gotoNext = 2770827i32;
                    };
                } else if (__value__ == (2770438i32)) {
                    _sr_2770442 = _s[(_i_2770394 : stdgo.GoInt)];
                    _tr_2770455 = _t[(_i_2770394 : stdgo.GoInt)];
                    if (((_sr_2770442 | _tr_2770455 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2770494i32;
                    } else {
                        _gotoNext = 2770538i32;
                    };
                } else if (__value__ == (2770494i32)) {
                    _gotoNext = 2770852i32;
                } else if (__value__ == (2770538i32)) {
                    if (_tr_2770455 == (_sr_2770442)) {
                        _gotoNext = 2770550i32;
                    } else {
                        _gotoNext = 2770615i32;
                    };
                } else if (__value__ == (2770550i32)) {
                    _i_2770394++;
                    _gotoNext = 2770402i32;
                } else if (__value__ == (2770615i32)) {
                    if ((_tr_2770455 < _sr_2770442 : Bool)) {
                        _gotoNext = 2770626i32;
                    } else {
                        _gotoNext = 2770701i32;
                    };
                } else if (__value__ == (2770626i32)) {
                    {
                        final __tmp__0 = _sr_2770442;
                        final __tmp__1 = _tr_2770455;
                        _tr_2770455 = __tmp__0;
                        _sr_2770442 = __tmp__1;
                    };
                    _gotoNext = 2770701i32;
                } else if (__value__ == (2770701i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2770442 : Bool) && (_sr_2770442 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2770455 == ((_sr_2770442 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2770747i32;
                    } else {
                        _gotoNext = 2770767i32;
                    };
                } else if (__value__ == (2770747i32)) {
                    _i_2770394++;
                    _gotoNext = 2770402i32;
                } else if (__value__ == (2770767i32)) {
                    return false;
                    _i_2770394++;
                    _gotoNext = 2770402i32;
                } else if (__value__ == (2770827i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2770852i32;
                } else if (__value__ == (2770852i32)) {
                    _s = (_s.__slice__(_i_2770394) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2770394) : stdgo.GoString)?.__copy__();
                    _keys_2770887 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2770887 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2770887 = (_keys_2770887.__append__(_key));
                        _values_2770887 = (_values_2770887.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2770887.length)) {
                        _gotoNext = 2771818i32;
                    } else {
                        _gotoNext = 2771892i32;
                    };
                } else if (__value__ == (2770908i32)) {
                    _sr_2770894 = _values_2770887[@:invalid_index_invalid_type _i_2770900];
                    var __blank__ = _keys_2770887[@:invalid_index_invalid_type _i_2770900];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2770977i32;
                    } else {
                        _gotoNext = 2771046i32;
                    };
                } else if (__value__ == (2770977i32)) {
                    return false;
                    _gotoNext = 2771046i32;
                } else if (__value__ == (2771046i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2771084i32;
                    } else {
                        _gotoNext = 2771124i32;
                    };
                } else if (__value__ == (2771084i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2771050 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2771268i32;
                } else if (__value__ == (2771124i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2771129 = __tmp__._0;
                        _size_2771132 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2771129;
                        final __tmp__1 = (_t.__slice__(_size_2771132) : stdgo.GoString)?.__copy__();
                        _tr_2771050 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2771268i32;
                } else if (__value__ == (2771268i32)) {
                    if (_tr_2771050 == (_sr_2770894)) {
                        _gotoNext = 2771280i32;
                    } else {
                        _gotoNext = 2771345i32;
                    };
                } else if (__value__ == (2771280i32)) {
                    _i_2770900++;
                    _gotoNext = 2771819i32;
                } else if (__value__ == (2771345i32)) {
                    if ((_tr_2771050 < _sr_2770894 : Bool)) {
                        _gotoNext = 2771356i32;
                    } else {
                        _gotoNext = 2771410i32;
                    };
                } else if (__value__ == (2771356i32)) {
                    {
                        final __tmp__0 = _sr_2770894;
                        final __tmp__1 = _tr_2771050;
                        _tr_2771050 = __tmp__0;
                        _sr_2770894 = __tmp__1;
                    };
                    _gotoNext = 2771410i32;
                } else if (__value__ == (2771410i32)) {
                    if ((_tr_2771050 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2771432i32;
                    } else {
                        _gotoNext = 2771685i32;
                    };
                } else if (__value__ == (2771432i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2770894 : Bool) && (_sr_2770894 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2771050 == ((_sr_2770894 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2771532i32;
                    } else {
                        _gotoNext = 2771555i32;
                    };
                } else if (__value__ == (2771532i32)) {
                    _i_2770900++;
                    _gotoNext = 2771819i32;
                } else if (__value__ == (2771555i32)) {
                    return false;
                    _gotoNext = 2771685i32;
                } else if (__value__ == (2771685i32)) {
                    _r_2771685 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2770894);
                    var __blank__ = 0i32;
                    _gotoNext = 2771715i32;
                } else if (__value__ == (2771715i32)) {
                    if (((_r_2771685 != _sr_2770894) && (_r_2771685 < _tr_2771050 : Bool) : Bool)) {
                        _gotoNext = 2771737i32;
                    } else {
                        _gotoNext = 2771774i32;
                    };
                } else if (__value__ == (2771737i32)) {
                    _r_2771685 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2771685);
                    _gotoNext = 2771715i32;
                } else if (__value__ == (2771774i32)) {
                    if (_r_2771685 == (_tr_2771050)) {
                        _gotoNext = 2771785i32;
                    } else {
                        _gotoNext = 2771805i32;
                    };
                } else if (__value__ == (2771785i32)) {
                    _i_2770900++;
                    _gotoNext = 2771819i32;
                } else if (__value__ == (2771805i32)) {
                    return false;
                    _i_2770900++;
                    _gotoNext = 2771819i32;
                } else if (__value__ == (2771818i32)) {
                    _i_2770900 = 0i32;
                    _gotoNext = 2771819i32;
                } else if (__value__ == (2771819i32)) {
                    if (_i_2770900 < (_keys_2770887.length)) {
                        _gotoNext = 2770908i32;
                    } else {
                        _gotoNext = 2771892i32;
                    };
                } else if (__value__ == (2771892i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
