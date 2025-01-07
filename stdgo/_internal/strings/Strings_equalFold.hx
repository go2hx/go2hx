package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2844909:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2845583:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2845504:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2845348:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2845341 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2845341 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2844848:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2846139:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2845586:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2845354 = @:invalid_type null;
        var _sr_2844896:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2844848 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2844856i32;
                } else if (__value__ == (2844856i32)) {
                    if (((_i_2844848 < (_s.length) : Bool) && (_i_2844848 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2844892i32;
                    } else {
                        _gotoNext = 2845281i32;
                    };
                } else if (__value__ == (2844892i32)) {
                    _sr_2844896 = _s[(_i_2844848 : stdgo.GoInt)];
                    _tr_2844909 = _t[(_i_2844848 : stdgo.GoInt)];
                    if (((_sr_2844896 | _tr_2844909 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2844948i32;
                    } else {
                        _gotoNext = 2844992i32;
                    };
                } else if (__value__ == (2844948i32)) {
                    _gotoNext = 2845306i32;
                } else if (__value__ == (2844992i32)) {
                    if (_tr_2844909 == (_sr_2844896)) {
                        _gotoNext = 2845004i32;
                    } else {
                        _gotoNext = 2845069i32;
                    };
                } else if (__value__ == (2845004i32)) {
                    _i_2844848++;
                    _gotoNext = 2844856i32;
                } else if (__value__ == (2845069i32)) {
                    if ((_tr_2844909 < _sr_2844896 : Bool)) {
                        _gotoNext = 2845080i32;
                    } else {
                        _gotoNext = 2845155i32;
                    };
                } else if (__value__ == (2845080i32)) {
                    {
                        final __tmp__0 = _sr_2844896;
                        final __tmp__1 = _tr_2844909;
                        _tr_2844909 = __tmp__0;
                        _sr_2844896 = __tmp__1;
                    };
                    _gotoNext = 2845155i32;
                } else if (__value__ == (2845155i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2844896 : Bool) && (_sr_2844896 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2844909 == ((_sr_2844896 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2845201i32;
                    } else {
                        _gotoNext = 2845221i32;
                    };
                } else if (__value__ == (2845201i32)) {
                    _i_2844848++;
                    _gotoNext = 2844856i32;
                } else if (__value__ == (2845221i32)) {
                    return false;
                    _i_2844848++;
                    _gotoNext = 2844856i32;
                } else if (__value__ == (2845281i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2845306i32;
                } else if (__value__ == (2845306i32)) {
                    _s = (_s.__slice__(_i_2844848) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2844848) : stdgo.GoString)?.__copy__();
                    _keys_2845341 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2845341 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2845341 = (_keys_2845341.__append__(_key));
                        _values_2845341 = (_values_2845341.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2845341.length)) {
                        _gotoNext = 2846272i32;
                    } else {
                        _gotoNext = 2846346i32;
                    };
                } else if (__value__ == (2845362i32)) {
                    _sr_2845348 = _values_2845341[@:invalid_index_invalid_type _i_2845354];
                    var __blank__ = _keys_2845341[@:invalid_index_invalid_type _i_2845354];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2845431i32;
                    } else {
                        _gotoNext = 2845500i32;
                    };
                } else if (__value__ == (2845431i32)) {
                    return false;
                    _gotoNext = 2845500i32;
                } else if (__value__ == (2845500i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2845538i32;
                    } else {
                        _gotoNext = 2845578i32;
                    };
                } else if (__value__ == (2845538i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2845504 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2845722i32;
                } else if (__value__ == (2845578i32)) {
                    _gotoNext = 2845578i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2845583 = __tmp__._0;
                        _size_2845586 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2845583;
                        final __tmp__1 = (_t.__slice__(_size_2845586) : stdgo.GoString)?.__copy__();
                        _tr_2845504 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2845722i32;
                } else if (__value__ == (2845722i32)) {
                    if (_tr_2845504 == (_sr_2845348)) {
                        _gotoNext = 2845734i32;
                    } else {
                        _gotoNext = 2845799i32;
                    };
                } else if (__value__ == (2845734i32)) {
                    _i_2845354++;
                    _gotoNext = 2846273i32;
                } else if (__value__ == (2845799i32)) {
                    if ((_tr_2845504 < _sr_2845348 : Bool)) {
                        _gotoNext = 2845810i32;
                    } else {
                        _gotoNext = 2845864i32;
                    };
                } else if (__value__ == (2845810i32)) {
                    {
                        final __tmp__0 = _sr_2845348;
                        final __tmp__1 = _tr_2845504;
                        _tr_2845504 = __tmp__0;
                        _sr_2845348 = __tmp__1;
                    };
                    _gotoNext = 2845864i32;
                } else if (__value__ == (2845864i32)) {
                    if ((_tr_2845504 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2845886i32;
                    } else {
                        _gotoNext = 2846139i32;
                    };
                } else if (__value__ == (2845886i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2845348 : Bool) && (_sr_2845348 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2845504 == ((_sr_2845348 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2845986i32;
                    } else {
                        _gotoNext = 2846009i32;
                    };
                } else if (__value__ == (2845986i32)) {
                    _i_2845354++;
                    _gotoNext = 2846273i32;
                } else if (__value__ == (2846009i32)) {
                    return false;
                    _gotoNext = 2846139i32;
                } else if (__value__ == (2846139i32)) {
                    _r_2846139 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2845348);
                    var __blank__ = 0i32;
                    _gotoNext = 2846169i32;
                } else if (__value__ == (2846169i32)) {
                    if (((_r_2846139 != _sr_2845348) && (_r_2846139 < _tr_2845504 : Bool) : Bool)) {
                        _gotoNext = 2846191i32;
                    } else {
                        _gotoNext = 2846228i32;
                    };
                } else if (__value__ == (2846191i32)) {
                    _r_2846139 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2846139);
                    _gotoNext = 2846169i32;
                } else if (__value__ == (2846228i32)) {
                    if (_r_2846139 == (_tr_2845504)) {
                        _gotoNext = 2846239i32;
                    } else {
                        _gotoNext = 2846259i32;
                    };
                } else if (__value__ == (2846239i32)) {
                    _i_2845354++;
                    _gotoNext = 2846273i32;
                } else if (__value__ == (2846259i32)) {
                    return false;
                    _i_2845354++;
                    _gotoNext = 2846273i32;
                } else if (__value__ == (2846272i32)) {
                    _i_2845354 = 0i32;
                    _gotoNext = 2846273i32;
                } else if (__value__ == (2846273i32)) {
                    if (_i_2845354 < (_keys_2845341.length)) {
                        _gotoNext = 2845362i32;
                    } else {
                        _gotoNext = 2846346i32;
                    };
                } else if (__value__ == (2846346i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
