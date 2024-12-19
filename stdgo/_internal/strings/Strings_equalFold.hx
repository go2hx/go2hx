package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2865056:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2864821:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2864827 = @:invalid_type null;
        var _r_2865612:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2865059:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2864382:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2864369:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2864321:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2864977:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2864814 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2864814 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2864321 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2864329i32;
                } else if (__value__ == (2864329i32)) {
                    if (((_i_2864321 < (_s.length) : Bool) && (_i_2864321 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2864365i32;
                    } else {
                        _gotoNext = 2864754i32;
                    };
                } else if (__value__ == (2864365i32)) {
                    _sr_2864369 = _s[(_i_2864321 : stdgo.GoInt)];
                    _tr_2864382 = _t[(_i_2864321 : stdgo.GoInt)];
                    if (((_sr_2864369 | _tr_2864382 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2864421i32;
                    } else {
                        _gotoNext = 2864465i32;
                    };
                } else if (__value__ == (2864421i32)) {
                    _gotoNext = 2864779i32;
                } else if (__value__ == (2864465i32)) {
                    if (_tr_2864382 == (_sr_2864369)) {
                        _gotoNext = 2864477i32;
                    } else {
                        _gotoNext = 2864542i32;
                    };
                } else if (__value__ == (2864477i32)) {
                    _i_2864321++;
                    _gotoNext = 2864329i32;
                } else if (__value__ == (2864542i32)) {
                    if ((_tr_2864382 < _sr_2864369 : Bool)) {
                        _gotoNext = 2864553i32;
                    } else {
                        _gotoNext = 2864628i32;
                    };
                } else if (__value__ == (2864553i32)) {
                    {
                        final __tmp__0 = _sr_2864369;
                        final __tmp__1 = _tr_2864382;
                        _tr_2864382 = __tmp__0;
                        _sr_2864369 = __tmp__1;
                    };
                    _gotoNext = 2864628i32;
                } else if (__value__ == (2864628i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2864369 : Bool) && (_sr_2864369 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2864382 == ((_sr_2864369 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2864674i32;
                    } else {
                        _gotoNext = 2864694i32;
                    };
                } else if (__value__ == (2864674i32)) {
                    _i_2864321++;
                    _gotoNext = 2864329i32;
                } else if (__value__ == (2864694i32)) {
                    return false;
                    _i_2864321++;
                    _gotoNext = 2864329i32;
                } else if (__value__ == (2864754i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2864779i32;
                } else if (__value__ == (2864779i32)) {
                    _s = (_s.__slice__(_i_2864321) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2864321) : stdgo.GoString)?.__copy__();
                    _keys_2864814 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2864814 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2864814 = (_keys_2864814.__append__(_key));
                        _values_2864814 = (_values_2864814.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2864814.length)) {
                        _gotoNext = 2865745i32;
                    } else {
                        _gotoNext = 2865819i32;
                    };
                } else if (__value__ == (2864835i32)) {
                    _sr_2864821 = _values_2864814[@:invalid_index_invalid_type _i_2864827];
                    var __blank__ = _keys_2864814[@:invalid_index_invalid_type _i_2864827];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2864904i32;
                    } else {
                        _gotoNext = 2864973i32;
                    };
                } else if (__value__ == (2864904i32)) {
                    return false;
                    _gotoNext = 2864973i32;
                } else if (__value__ == (2864973i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2865011i32;
                    } else {
                        _gotoNext = 2865051i32;
                    };
                } else if (__value__ == (2865011i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2864977 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2865195i32;
                } else if (__value__ == (2865051i32)) {
                    _gotoNext = 2865051i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2865056 = __tmp__._0;
                        _size_2865059 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2865056;
                        final __tmp__1 = (_t.__slice__(_size_2865059) : stdgo.GoString)?.__copy__();
                        _tr_2864977 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2865195i32;
                } else if (__value__ == (2865195i32)) {
                    if (_tr_2864977 == (_sr_2864821)) {
                        _gotoNext = 2865207i32;
                    } else {
                        _gotoNext = 2865272i32;
                    };
                } else if (__value__ == (2865207i32)) {
                    _i_2864827++;
                    _gotoNext = 2865746i32;
                } else if (__value__ == (2865272i32)) {
                    if ((_tr_2864977 < _sr_2864821 : Bool)) {
                        _gotoNext = 2865283i32;
                    } else {
                        _gotoNext = 2865337i32;
                    };
                } else if (__value__ == (2865283i32)) {
                    {
                        final __tmp__0 = _sr_2864821;
                        final __tmp__1 = _tr_2864977;
                        _tr_2864977 = __tmp__0;
                        _sr_2864821 = __tmp__1;
                    };
                    _gotoNext = 2865337i32;
                } else if (__value__ == (2865337i32)) {
                    if ((_tr_2864977 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2865359i32;
                    } else {
                        _gotoNext = 2865612i32;
                    };
                } else if (__value__ == (2865359i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2864821 : Bool) && (_sr_2864821 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2864977 == ((_sr_2864821 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2865459i32;
                    } else {
                        _gotoNext = 2865482i32;
                    };
                } else if (__value__ == (2865459i32)) {
                    _i_2864827++;
                    _gotoNext = 2865746i32;
                } else if (__value__ == (2865482i32)) {
                    return false;
                    _gotoNext = 2865612i32;
                } else if (__value__ == (2865612i32)) {
                    _r_2865612 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2864821);
                    var __blank__ = 0i32;
                    _gotoNext = 2865642i32;
                } else if (__value__ == (2865642i32)) {
                    if (((_r_2865612 != _sr_2864821) && (_r_2865612 < _tr_2864977 : Bool) : Bool)) {
                        _gotoNext = 2865664i32;
                    } else {
                        _gotoNext = 2865701i32;
                    };
                } else if (__value__ == (2865664i32)) {
                    _r_2865612 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2865612);
                    _gotoNext = 2865642i32;
                } else if (__value__ == (2865701i32)) {
                    if (_r_2865612 == (_tr_2864977)) {
                        _gotoNext = 2865712i32;
                    } else {
                        _gotoNext = 2865732i32;
                    };
                } else if (__value__ == (2865712i32)) {
                    _i_2864827++;
                    _gotoNext = 2865746i32;
                } else if (__value__ == (2865732i32)) {
                    return false;
                    _i_2864827++;
                    _gotoNext = 2865746i32;
                } else if (__value__ == (2865745i32)) {
                    _i_2864827 = 0i32;
                    _gotoNext = 2865746i32;
                } else if (__value__ == (2865746i32)) {
                    if (_i_2864827 < (_keys_2864814.length)) {
                        _gotoNext = 2864835i32;
                    } else {
                        _gotoNext = 2865819i32;
                    };
                } else if (__value__ == (2865819i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
