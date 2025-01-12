package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2934941:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2936171:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2935618:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2935615:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2935373 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2934880:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2935536:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2935380:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2935373 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2935386 = @:invalid_type null;
        var _sr_2934928:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2934880 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2934888i32;
                } else if (__value__ == (2934888i32)) {
                    if (((_i_2934880 < (_s.length) : Bool) && (_i_2934880 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2934924i32;
                    } else {
                        _gotoNext = 2935313i32;
                    };
                } else if (__value__ == (2934924i32)) {
                    _sr_2934928 = _s[(_i_2934880 : stdgo.GoInt)];
                    _tr_2934941 = _t[(_i_2934880 : stdgo.GoInt)];
                    if (((_sr_2934928 | _tr_2934941 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934980i32;
                    } else {
                        _gotoNext = 2935024i32;
                    };
                } else if (__value__ == (2934980i32)) {
                    _gotoNext = 2935338i32;
                } else if (__value__ == (2935024i32)) {
                    if (_tr_2934941 == (_sr_2934928)) {
                        _gotoNext = 2935036i32;
                    } else {
                        _gotoNext = 2935101i32;
                    };
                } else if (__value__ == (2935036i32)) {
                    _i_2934880++;
                    _gotoNext = 2934888i32;
                } else if (__value__ == (2935101i32)) {
                    if ((_tr_2934941 < _sr_2934928 : Bool)) {
                        _gotoNext = 2935112i32;
                    } else {
                        _gotoNext = 2935187i32;
                    };
                } else if (__value__ == (2935112i32)) {
                    {
                        final __tmp__0 = _sr_2934928;
                        final __tmp__1 = _tr_2934941;
                        _tr_2934941 = __tmp__0;
                        _sr_2934928 = __tmp__1;
                    };
                    _gotoNext = 2935187i32;
                } else if (__value__ == (2935187i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2934928 : Bool) && (_sr_2934928 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2934941 == ((_sr_2934928 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2935233i32;
                    } else {
                        _gotoNext = 2935253i32;
                    };
                } else if (__value__ == (2935233i32)) {
                    _i_2934880++;
                    _gotoNext = 2934888i32;
                } else if (__value__ == (2935253i32)) {
                    return false;
                    _i_2934880++;
                    _gotoNext = 2934888i32;
                } else if (__value__ == (2935313i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2935338i32;
                } else if (__value__ == (2935338i32)) {
                    _s = (_s.__slice__(_i_2934880) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2934880) : stdgo.GoString)?.__copy__();
                    _keys_2935373 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2935373 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2935373 = (_keys_2935373.__append__(_key));
                        _values_2935373 = (_values_2935373.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2935373.length)) {
                        _gotoNext = 2936304i32;
                    } else {
                        _gotoNext = 2936378i32;
                    };
                } else if (__value__ == (2935394i32)) {
                    _sr_2935380 = _values_2935373[@:invalid_index_invalid_type _i_2935386];
                    var __blank__ = _keys_2935373[@:invalid_index_invalid_type _i_2935386];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2935463i32;
                    } else {
                        _gotoNext = 2935532i32;
                    };
                } else if (__value__ == (2935463i32)) {
                    return false;
                    _gotoNext = 2935532i32;
                } else if (__value__ == (2935532i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935570i32;
                    } else {
                        _gotoNext = 2935610i32;
                    };
                } else if (__value__ == (2935570i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2935536 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2935754i32;
                } else if (__value__ == (2935610i32)) {
                    _gotoNext = 2935610i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2935615 = __tmp__._0;
                        _size_2935618 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2935615;
                        final __tmp__1 = (_t.__slice__(_size_2935618) : stdgo.GoString)?.__copy__();
                        _tr_2935536 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2935754i32;
                } else if (__value__ == (2935754i32)) {
                    if (_tr_2935536 == (_sr_2935380)) {
                        _gotoNext = 2935766i32;
                    } else {
                        _gotoNext = 2935831i32;
                    };
                } else if (__value__ == (2935766i32)) {
                    _i_2935386++;
                    _gotoNext = 2936305i32;
                } else if (__value__ == (2935831i32)) {
                    if ((_tr_2935536 < _sr_2935380 : Bool)) {
                        _gotoNext = 2935842i32;
                    } else {
                        _gotoNext = 2935896i32;
                    };
                } else if (__value__ == (2935842i32)) {
                    {
                        final __tmp__0 = _sr_2935380;
                        final __tmp__1 = _tr_2935536;
                        _tr_2935536 = __tmp__0;
                        _sr_2935380 = __tmp__1;
                    };
                    _gotoNext = 2935896i32;
                } else if (__value__ == (2935896i32)) {
                    if ((_tr_2935536 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2935918i32;
                    } else {
                        _gotoNext = 2936171i32;
                    };
                } else if (__value__ == (2935918i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2935380 : Bool) && (_sr_2935380 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2935536 == ((_sr_2935380 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2936018i32;
                    } else {
                        _gotoNext = 2936041i32;
                    };
                } else if (__value__ == (2936018i32)) {
                    _i_2935386++;
                    _gotoNext = 2936305i32;
                } else if (__value__ == (2936041i32)) {
                    return false;
                    _gotoNext = 2936171i32;
                } else if (__value__ == (2936171i32)) {
                    _r_2936171 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2935380);
                    var __blank__ = 0i32;
                    _gotoNext = 2936201i32;
                } else if (__value__ == (2936201i32)) {
                    if (((_r_2936171 != _sr_2935380) && (_r_2936171 < _tr_2935536 : Bool) : Bool)) {
                        _gotoNext = 2936223i32;
                    } else {
                        _gotoNext = 2936260i32;
                    };
                } else if (__value__ == (2936223i32)) {
                    _r_2936171 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2936171);
                    _gotoNext = 2936201i32;
                } else if (__value__ == (2936260i32)) {
                    if (_r_2936171 == (_tr_2935536)) {
                        _gotoNext = 2936271i32;
                    } else {
                        _gotoNext = 2936291i32;
                    };
                } else if (__value__ == (2936271i32)) {
                    _i_2935386++;
                    _gotoNext = 2936305i32;
                } else if (__value__ == (2936291i32)) {
                    return false;
                    _i_2935386++;
                    _gotoNext = 2936305i32;
                } else if (__value__ == (2936304i32)) {
                    _i_2935386 = 0i32;
                    _gotoNext = 2936305i32;
                } else if (__value__ == (2936305i32)) {
                    if (_i_2935386 < (_keys_2935373.length)) {
                        _gotoNext = 2935394i32;
                    } else {
                        _gotoNext = 2936378i32;
                    };
                } else if (__value__ == (2936378i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
