package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2939690:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2939683 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2939683 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2939251:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2939190:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2939928:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2939925:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2940481:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2939846:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2939696 = @:invalid_type null;
        var _sr_2939238:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2939190 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2939198i32;
                } else if (__value__ == (2939198i32)) {
                    if (((_i_2939190 < (_s.length) : Bool) && (_i_2939190 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2939234i32;
                    } else {
                        _gotoNext = 2939623i32;
                    };
                } else if (__value__ == (2939234i32)) {
                    _sr_2939238 = _s[(_i_2939190 : stdgo.GoInt)];
                    _tr_2939251 = _t[(_i_2939190 : stdgo.GoInt)];
                    if (((_sr_2939238 | _tr_2939251 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2939290i32;
                    } else {
                        _gotoNext = 2939334i32;
                    };
                } else if (__value__ == (2939290i32)) {
                    _gotoNext = 2939648i32;
                } else if (__value__ == (2939334i32)) {
                    if (_tr_2939251 == (_sr_2939238)) {
                        _gotoNext = 2939346i32;
                    } else {
                        _gotoNext = 2939411i32;
                    };
                } else if (__value__ == (2939346i32)) {
                    _i_2939190++;
                    _gotoNext = 2939198i32;
                } else if (__value__ == (2939411i32)) {
                    if ((_tr_2939251 < _sr_2939238 : Bool)) {
                        _gotoNext = 2939422i32;
                    } else {
                        _gotoNext = 2939497i32;
                    };
                } else if (__value__ == (2939422i32)) {
                    {
                        final __tmp__0 = _sr_2939238;
                        final __tmp__1 = _tr_2939251;
                        _tr_2939251 = __tmp__0;
                        _sr_2939238 = __tmp__1;
                    };
                    _gotoNext = 2939497i32;
                } else if (__value__ == (2939497i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2939238 : Bool) && (_sr_2939238 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2939251 == ((_sr_2939238 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2939543i32;
                    } else {
                        _gotoNext = 2939563i32;
                    };
                } else if (__value__ == (2939543i32)) {
                    _i_2939190++;
                    _gotoNext = 2939198i32;
                } else if (__value__ == (2939563i32)) {
                    return false;
                    _i_2939190++;
                    _gotoNext = 2939198i32;
                } else if (__value__ == (2939623i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2939648i32;
                } else if (__value__ == (2939648i32)) {
                    _s = (_s.__slice__(_i_2939190) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2939190) : stdgo.GoString)?.__copy__();
                    _keys_2939683 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2939683 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2939683 = (_keys_2939683.__append__(_key));
                        _values_2939683 = (_values_2939683.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2939683.length)) {
                        _gotoNext = 2940614i32;
                    } else {
                        _gotoNext = 2940688i32;
                    };
                } else if (__value__ == (2939704i32)) {
                    _sr_2939690 = _values_2939683[@:invalid_index_invalid_type _i_2939696];
                    var __blank__ = _keys_2939683[@:invalid_index_invalid_type _i_2939696];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2939773i32;
                    } else {
                        _gotoNext = 2939842i32;
                    };
                } else if (__value__ == (2939773i32)) {
                    return false;
                    _gotoNext = 2939842i32;
                } else if (__value__ == (2939842i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2939880i32;
                    } else {
                        _gotoNext = 2939920i32;
                    };
                } else if (__value__ == (2939880i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2939846 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2940064i32;
                } else if (__value__ == (2939920i32)) {
                    _gotoNext = 2939920i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2939925 = __tmp__._0;
                        _size_2939928 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2939925;
                        final __tmp__1 = (_t.__slice__(_size_2939928) : stdgo.GoString)?.__copy__();
                        _tr_2939846 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2940064i32;
                } else if (__value__ == (2940064i32)) {
                    if (_tr_2939846 == (_sr_2939690)) {
                        _gotoNext = 2940076i32;
                    } else {
                        _gotoNext = 2940141i32;
                    };
                } else if (__value__ == (2940076i32)) {
                    _i_2939696++;
                    _gotoNext = 2940615i32;
                } else if (__value__ == (2940141i32)) {
                    if ((_tr_2939846 < _sr_2939690 : Bool)) {
                        _gotoNext = 2940152i32;
                    } else {
                        _gotoNext = 2940206i32;
                    };
                } else if (__value__ == (2940152i32)) {
                    {
                        final __tmp__0 = _sr_2939690;
                        final __tmp__1 = _tr_2939846;
                        _tr_2939846 = __tmp__0;
                        _sr_2939690 = __tmp__1;
                    };
                    _gotoNext = 2940206i32;
                } else if (__value__ == (2940206i32)) {
                    if ((_tr_2939846 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2940228i32;
                    } else {
                        _gotoNext = 2940481i32;
                    };
                } else if (__value__ == (2940228i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2939690 : Bool) && (_sr_2939690 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2939846 == ((_sr_2939690 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2940328i32;
                    } else {
                        _gotoNext = 2940351i32;
                    };
                } else if (__value__ == (2940328i32)) {
                    _i_2939696++;
                    _gotoNext = 2940615i32;
                } else if (__value__ == (2940351i32)) {
                    return false;
                    _gotoNext = 2940481i32;
                } else if (__value__ == (2940481i32)) {
                    _r_2940481 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2939690);
                    var __blank__ = 0i32;
                    _gotoNext = 2940511i32;
                } else if (__value__ == (2940511i32)) {
                    if (((_r_2940481 != _sr_2939690) && (_r_2940481 < _tr_2939846 : Bool) : Bool)) {
                        _gotoNext = 2940533i32;
                    } else {
                        _gotoNext = 2940570i32;
                    };
                } else if (__value__ == (2940533i32)) {
                    _r_2940481 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2940481);
                    _gotoNext = 2940511i32;
                } else if (__value__ == (2940570i32)) {
                    if (_r_2940481 == (_tr_2939846)) {
                        _gotoNext = 2940581i32;
                    } else {
                        _gotoNext = 2940601i32;
                    };
                } else if (__value__ == (2940581i32)) {
                    _i_2939696++;
                    _gotoNext = 2940615i32;
                } else if (__value__ == (2940601i32)) {
                    return false;
                    _i_2939696++;
                    _gotoNext = 2940615i32;
                } else if (__value__ == (2940614i32)) {
                    _i_2939696 = 0i32;
                    _gotoNext = 2940615i32;
                } else if (__value__ == (2940615i32)) {
                    if (_i_2939696 < (_keys_2939683.length)) {
                        _gotoNext = 2939704i32;
                    } else {
                        _gotoNext = 2940688i32;
                    };
                } else if (__value__ == (2940688i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
