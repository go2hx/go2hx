package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2913507:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2913425:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2913269:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2913262 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2913262 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2913275 = @:invalid_type null;
        var _r_2914060:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2913504:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2912830:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2912817:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2912769:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2912769 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2912777i32;
                } else if (__value__ == (2912777i32)) {
                    if (((_i_2912769 < (_s.length) : Bool) && (_i_2912769 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2912813i32;
                    } else {
                        _gotoNext = 2913202i32;
                    };
                } else if (__value__ == (2912813i32)) {
                    _sr_2912817 = _s[(_i_2912769 : stdgo.GoInt)];
                    _tr_2912830 = _t[(_i_2912769 : stdgo.GoInt)];
                    if (((_sr_2912817 | _tr_2912830 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2912869i32;
                    } else {
                        _gotoNext = 2912913i32;
                    };
                } else if (__value__ == (2912869i32)) {
                    _gotoNext = 2913227i32;
                } else if (__value__ == (2912913i32)) {
                    if (_tr_2912830 == (_sr_2912817)) {
                        _gotoNext = 2912925i32;
                    } else {
                        _gotoNext = 2912990i32;
                    };
                } else if (__value__ == (2912925i32)) {
                    _i_2912769++;
                    _gotoNext = 2912777i32;
                } else if (__value__ == (2912990i32)) {
                    if ((_tr_2912830 < _sr_2912817 : Bool)) {
                        _gotoNext = 2913001i32;
                    } else {
                        _gotoNext = 2913076i32;
                    };
                } else if (__value__ == (2913001i32)) {
                    {
                        final __tmp__0 = _sr_2912817;
                        final __tmp__1 = _tr_2912830;
                        _tr_2912830 = __tmp__0;
                        _sr_2912817 = __tmp__1;
                    };
                    _gotoNext = 2913076i32;
                } else if (__value__ == (2913076i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2912817 : Bool) && (_sr_2912817 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2912830 == ((_sr_2912817 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2913122i32;
                    } else {
                        _gotoNext = 2913142i32;
                    };
                } else if (__value__ == (2913122i32)) {
                    _i_2912769++;
                    _gotoNext = 2912777i32;
                } else if (__value__ == (2913142i32)) {
                    return false;
                    _i_2912769++;
                    _gotoNext = 2912777i32;
                } else if (__value__ == (2913202i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2913227i32;
                } else if (__value__ == (2913227i32)) {
                    _s = (_s.__slice__(_i_2912769) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2912769) : stdgo.GoString)?.__copy__();
                    _keys_2913262 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2913262 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2913262 = (_keys_2913262.__append__(_key));
                        _values_2913262 = (_values_2913262.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2913262.length)) {
                        _gotoNext = 2914193i32;
                    } else {
                        _gotoNext = 2914267i32;
                    };
                } else if (__value__ == (2913283i32)) {
                    _sr_2913269 = _values_2913262[@:invalid_index_invalid_type _i_2913275];
                    var __blank__ = _keys_2913262[@:invalid_index_invalid_type _i_2913275];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2913352i32;
                    } else {
                        _gotoNext = 2913421i32;
                    };
                } else if (__value__ == (2913352i32)) {
                    return false;
                    _gotoNext = 2913421i32;
                } else if (__value__ == (2913421i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2913459i32;
                    } else {
                        _gotoNext = 2913499i32;
                    };
                } else if (__value__ == (2913459i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2913425 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2913643i32;
                } else if (__value__ == (2913499i32)) {
                    _gotoNext = 2913499i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2913504 = __tmp__._0;
                        _size_2913507 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2913504;
                        final __tmp__1 = (_t.__slice__(_size_2913507) : stdgo.GoString)?.__copy__();
                        _tr_2913425 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2913643i32;
                } else if (__value__ == (2913643i32)) {
                    if (_tr_2913425 == (_sr_2913269)) {
                        _gotoNext = 2913655i32;
                    } else {
                        _gotoNext = 2913720i32;
                    };
                } else if (__value__ == (2913655i32)) {
                    _i_2913275++;
                    _gotoNext = 2914194i32;
                } else if (__value__ == (2913720i32)) {
                    if ((_tr_2913425 < _sr_2913269 : Bool)) {
                        _gotoNext = 2913731i32;
                    } else {
                        _gotoNext = 2913785i32;
                    };
                } else if (__value__ == (2913731i32)) {
                    {
                        final __tmp__0 = _sr_2913269;
                        final __tmp__1 = _tr_2913425;
                        _tr_2913425 = __tmp__0;
                        _sr_2913269 = __tmp__1;
                    };
                    _gotoNext = 2913785i32;
                } else if (__value__ == (2913785i32)) {
                    if ((_tr_2913425 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2913807i32;
                    } else {
                        _gotoNext = 2914060i32;
                    };
                } else if (__value__ == (2913807i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2913269 : Bool) && (_sr_2913269 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2913425 == ((_sr_2913269 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2913907i32;
                    } else {
                        _gotoNext = 2913930i32;
                    };
                } else if (__value__ == (2913907i32)) {
                    _i_2913275++;
                    _gotoNext = 2914194i32;
                } else if (__value__ == (2913930i32)) {
                    return false;
                    _gotoNext = 2914060i32;
                } else if (__value__ == (2914060i32)) {
                    _r_2914060 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2913269);
                    var __blank__ = 0i32;
                    _gotoNext = 2914090i32;
                } else if (__value__ == (2914090i32)) {
                    if (((_r_2914060 != _sr_2913269) && (_r_2914060 < _tr_2913425 : Bool) : Bool)) {
                        _gotoNext = 2914112i32;
                    } else {
                        _gotoNext = 2914149i32;
                    };
                } else if (__value__ == (2914112i32)) {
                    _r_2914060 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2914060);
                    _gotoNext = 2914090i32;
                } else if (__value__ == (2914149i32)) {
                    if (_r_2914060 == (_tr_2913425)) {
                        _gotoNext = 2914160i32;
                    } else {
                        _gotoNext = 2914180i32;
                    };
                } else if (__value__ == (2914160i32)) {
                    _i_2913275++;
                    _gotoNext = 2914194i32;
                } else if (__value__ == (2914180i32)) {
                    return false;
                    _i_2913275++;
                    _gotoNext = 2914194i32;
                } else if (__value__ == (2914193i32)) {
                    _i_2913275 = 0i32;
                    _gotoNext = 2914194i32;
                } else if (__value__ == (2914194i32)) {
                    if (_i_2913275 < (_keys_2913262.length)) {
                        _gotoNext = 2913283i32;
                    } else {
                        _gotoNext = 2914267i32;
                    };
                } else if (__value__ == (2914267i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
