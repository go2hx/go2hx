package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2871081:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2870528:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2870290:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2870283 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2870283 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2869838:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2870525:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2870446:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2870296 = @:invalid_type null;
        var _tr_2869851:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2869790:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2869790 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2869798i32;
                } else if (__value__ == (2869798i32)) {
                    if (((_i_2869790 < (_s.length) : Bool) && (_i_2869790 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2869834i32;
                    } else {
                        _gotoNext = 2870223i32;
                    };
                } else if (__value__ == (2869834i32)) {
                    _sr_2869838 = _s[(_i_2869790 : stdgo.GoInt)];
                    _tr_2869851 = _t[(_i_2869790 : stdgo.GoInt)];
                    if (((_sr_2869838 | _tr_2869851 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2869890i32;
                    } else {
                        _gotoNext = 2869934i32;
                    };
                } else if (__value__ == (2869890i32)) {
                    _gotoNext = 2870248i32;
                } else if (__value__ == (2869934i32)) {
                    if (_tr_2869851 == (_sr_2869838)) {
                        _gotoNext = 2869946i32;
                    } else {
                        _gotoNext = 2870011i32;
                    };
                } else if (__value__ == (2869946i32)) {
                    _i_2869790++;
                    _gotoNext = 2869798i32;
                } else if (__value__ == (2870011i32)) {
                    if ((_tr_2869851 < _sr_2869838 : Bool)) {
                        _gotoNext = 2870022i32;
                    } else {
                        _gotoNext = 2870097i32;
                    };
                } else if (__value__ == (2870022i32)) {
                    {
                        final __tmp__0 = _sr_2869838;
                        final __tmp__1 = _tr_2869851;
                        _tr_2869851 = __tmp__0;
                        _sr_2869838 = __tmp__1;
                    };
                    _gotoNext = 2870097i32;
                } else if (__value__ == (2870097i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2869838 : Bool) && (_sr_2869838 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2869851 == ((_sr_2869838 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2870143i32;
                    } else {
                        _gotoNext = 2870163i32;
                    };
                } else if (__value__ == (2870143i32)) {
                    _i_2869790++;
                    _gotoNext = 2869798i32;
                } else if (__value__ == (2870163i32)) {
                    return false;
                    _i_2869790++;
                    _gotoNext = 2869798i32;
                } else if (__value__ == (2870223i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2870248i32;
                } else if (__value__ == (2870248i32)) {
                    _s = (_s.__slice__(_i_2869790) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2869790) : stdgo.GoString)?.__copy__();
                    _keys_2870283 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2870283 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2870283 = (_keys_2870283.__append__(_key));
                        _values_2870283 = (_values_2870283.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2870283.length)) {
                        _gotoNext = 2871214i32;
                    } else {
                        _gotoNext = 2871288i32;
                    };
                } else if (__value__ == (2870304i32)) {
                    _sr_2870290 = _values_2870283[@:invalid_index_invalid_type _i_2870296];
                    var __blank__ = _keys_2870283[@:invalid_index_invalid_type _i_2870296];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2870373i32;
                    } else {
                        _gotoNext = 2870442i32;
                    };
                } else if (__value__ == (2870373i32)) {
                    return false;
                    _gotoNext = 2870442i32;
                } else if (__value__ == (2870442i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2870480i32;
                    } else {
                        _gotoNext = 2870520i32;
                    };
                } else if (__value__ == (2870480i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2870446 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2870664i32;
                } else if (__value__ == (2870520i32)) {
                    _gotoNext = 2870520i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2870525 = @:tmpset0 __tmp__._0;
                        _size_2870528 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2870525;
                        final __tmp__1 = (_t.__slice__(_size_2870528) : stdgo.GoString)?.__copy__();
                        _tr_2870446 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2870664i32;
                } else if (__value__ == (2870664i32)) {
                    if (_tr_2870446 == (_sr_2870290)) {
                        _gotoNext = 2870676i32;
                    } else {
                        _gotoNext = 2870741i32;
                    };
                } else if (__value__ == (2870676i32)) {
                    _i_2870296++;
                    _gotoNext = 2871215i32;
                } else if (__value__ == (2870741i32)) {
                    if ((_tr_2870446 < _sr_2870290 : Bool)) {
                        _gotoNext = 2870752i32;
                    } else {
                        _gotoNext = 2870806i32;
                    };
                } else if (__value__ == (2870752i32)) {
                    {
                        final __tmp__0 = _sr_2870290;
                        final __tmp__1 = _tr_2870446;
                        _tr_2870446 = __tmp__0;
                        _sr_2870290 = __tmp__1;
                    };
                    _gotoNext = 2870806i32;
                } else if (__value__ == (2870806i32)) {
                    if ((_tr_2870446 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2870828i32;
                    } else {
                        _gotoNext = 2871081i32;
                    };
                } else if (__value__ == (2870828i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2870290 : Bool) && (_sr_2870290 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2870446 == ((_sr_2870290 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2870928i32;
                    } else {
                        _gotoNext = 2870951i32;
                    };
                } else if (__value__ == (2870928i32)) {
                    _i_2870296++;
                    _gotoNext = 2871215i32;
                } else if (__value__ == (2870951i32)) {
                    return false;
                    _gotoNext = 2871081i32;
                } else if (__value__ == (2871081i32)) {
                    _r_2871081 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2870290);
                    var __blank__ = 0i32;
                    _gotoNext = 2871111i32;
                } else if (__value__ == (2871111i32)) {
                    if (((_r_2871081 != _sr_2870290) && (_r_2871081 < _tr_2870446 : Bool) : Bool)) {
                        _gotoNext = 2871133i32;
                    } else {
                        _gotoNext = 2871170i32;
                    };
                } else if (__value__ == (2871133i32)) {
                    _r_2871081 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2871081);
                    _gotoNext = 2871111i32;
                } else if (__value__ == (2871170i32)) {
                    if (_r_2871081 == (_tr_2870446)) {
                        _gotoNext = 2871181i32;
                    } else {
                        _gotoNext = 2871201i32;
                    };
                } else if (__value__ == (2871181i32)) {
                    _i_2870296++;
                    _gotoNext = 2871215i32;
                } else if (__value__ == (2871201i32)) {
                    return false;
                    _i_2870296++;
                    _gotoNext = 2871215i32;
                } else if (__value__ == (2871214i32)) {
                    _i_2870296 = 0i32;
                    _gotoNext = 2871215i32;
                } else if (__value__ == (2871215i32)) {
                    if (_i_2870296 < (_keys_2870283.length)) {
                        _gotoNext = 2870304i32;
                    } else {
                        _gotoNext = 2871288i32;
                    };
                } else if (__value__ == (2871288i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
