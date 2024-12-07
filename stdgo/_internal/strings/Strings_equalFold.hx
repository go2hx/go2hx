package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2744570:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2745226:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2745070:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2745063 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2744618:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2744631:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2745861:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2745308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2745305:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2745063 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2745076 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2744570 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2744578i32;
                } else if (__value__ == (2744578i32)) {
                    if (((_i_2744570 < (_s.length) : Bool) && (_i_2744570 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2744614i32;
                    } else {
                        _gotoNext = 2745003i32;
                    };
                } else if (__value__ == (2744614i32)) {
                    _sr_2744618 = _s[(_i_2744570 : stdgo.GoInt)];
                    _tr_2744631 = _t[(_i_2744570 : stdgo.GoInt)];
                    if (((_sr_2744618 | _tr_2744631 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2744670i32;
                    } else {
                        _gotoNext = 2744714i32;
                    };
                } else if (__value__ == (2744670i32)) {
                    _gotoNext = 2745028i32;
                } else if (__value__ == (2744714i32)) {
                    if (_tr_2744631 == (_sr_2744618)) {
                        _gotoNext = 2744726i32;
                    } else {
                        _gotoNext = 2744791i32;
                    };
                } else if (__value__ == (2744726i32)) {
                    _i_2744570++;
                    _gotoNext = 2744578i32;
                } else if (__value__ == (2744791i32)) {
                    if ((_tr_2744631 < _sr_2744618 : Bool)) {
                        _gotoNext = 2744802i32;
                    } else {
                        _gotoNext = 2744877i32;
                    };
                } else if (__value__ == (2744802i32)) {
                    {
                        final __tmp__0 = _sr_2744618;
                        final __tmp__1 = _tr_2744631;
                        _tr_2744631 = __tmp__0;
                        _sr_2744618 = __tmp__1;
                    };
                    _gotoNext = 2744877i32;
                } else if (__value__ == (2744877i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2744618 : Bool) && (_sr_2744618 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2744631 == ((_sr_2744618 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2744923i32;
                    } else {
                        _gotoNext = 2744943i32;
                    };
                } else if (__value__ == (2744923i32)) {
                    _i_2744570++;
                    _gotoNext = 2744578i32;
                } else if (__value__ == (2744943i32)) {
                    return false;
                    _i_2744570++;
                    _gotoNext = 2744578i32;
                } else if (__value__ == (2745003i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2745028i32;
                } else if (__value__ == (2745028i32)) {
                    _s = (_s.__slice__(_i_2744570) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2744570) : stdgo.GoString)?.__copy__();
                    _keys_2745063 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2745063 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2745063 = (_keys_2745063.__append__(_key));
                        _values_2745063 = (_values_2745063.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2745063.length)) {
                        _gotoNext = 2745994i32;
                    } else {
                        _gotoNext = 2746068i32;
                    };
                } else if (__value__ == (2745084i32)) {
                    _sr_2745070 = _values_2745063[@:invalid_index_invalid_type _i_2745076];
                    var __blank__ = _keys_2745063[@:invalid_index_invalid_type _i_2745076];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2745153i32;
                    } else {
                        _gotoNext = 2745222i32;
                    };
                } else if (__value__ == (2745153i32)) {
                    return false;
                    _gotoNext = 2745222i32;
                } else if (__value__ == (2745222i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2745260i32;
                    } else {
                        _gotoNext = 2745300i32;
                    };
                } else if (__value__ == (2745260i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2745226 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2745444i32;
                } else if (__value__ == (2745300i32)) {
                    _gotoNext = 2745300i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2745305 = __tmp__._0;
                        _size_2745308 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2745305;
                        final __tmp__1 = (_t.__slice__(_size_2745308) : stdgo.GoString)?.__copy__();
                        _tr_2745226 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2745444i32;
                } else if (__value__ == (2745444i32)) {
                    if (_tr_2745226 == (_sr_2745070)) {
                        _gotoNext = 2745456i32;
                    } else {
                        _gotoNext = 2745521i32;
                    };
                } else if (__value__ == (2745456i32)) {
                    _i_2745076++;
                    _gotoNext = 2745995i32;
                } else if (__value__ == (2745521i32)) {
                    if ((_tr_2745226 < _sr_2745070 : Bool)) {
                        _gotoNext = 2745532i32;
                    } else {
                        _gotoNext = 2745586i32;
                    };
                } else if (__value__ == (2745532i32)) {
                    {
                        final __tmp__0 = _sr_2745070;
                        final __tmp__1 = _tr_2745226;
                        _tr_2745226 = __tmp__0;
                        _sr_2745070 = __tmp__1;
                    };
                    _gotoNext = 2745586i32;
                } else if (__value__ == (2745586i32)) {
                    if ((_tr_2745226 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2745608i32;
                    } else {
                        _gotoNext = 2745861i32;
                    };
                } else if (__value__ == (2745608i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2745070 : Bool) && (_sr_2745070 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2745226 == ((_sr_2745070 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2745708i32;
                    } else {
                        _gotoNext = 2745731i32;
                    };
                } else if (__value__ == (2745708i32)) {
                    _i_2745076++;
                    _gotoNext = 2745995i32;
                } else if (__value__ == (2745731i32)) {
                    return false;
                    _gotoNext = 2745861i32;
                } else if (__value__ == (2745861i32)) {
                    _r_2745861 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2745070);
                    var __blank__ = 0i32;
                    _gotoNext = 2745891i32;
                } else if (__value__ == (2745891i32)) {
                    if (((_r_2745861 != _sr_2745070) && (_r_2745861 < _tr_2745226 : Bool) : Bool)) {
                        _gotoNext = 2745913i32;
                    } else {
                        _gotoNext = 2745950i32;
                    };
                } else if (__value__ == (2745913i32)) {
                    _r_2745861 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2745861);
                    _gotoNext = 2745891i32;
                } else if (__value__ == (2745950i32)) {
                    if (_r_2745861 == (_tr_2745226)) {
                        _gotoNext = 2745961i32;
                    } else {
                        _gotoNext = 2745981i32;
                    };
                } else if (__value__ == (2745961i32)) {
                    _i_2745076++;
                    _gotoNext = 2745995i32;
                } else if (__value__ == (2745981i32)) {
                    return false;
                    _i_2745076++;
                    _gotoNext = 2745995i32;
                } else if (__value__ == (2745994i32)) {
                    _i_2745076 = 0i32;
                    _gotoNext = 2745995i32;
                } else if (__value__ == (2745995i32)) {
                    if (_i_2745076 < (_keys_2745063.length)) {
                        _gotoNext = 2745084i32;
                    } else {
                        _gotoNext = 2746068i32;
                    };
                } else if (__value__ == (2746068i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
