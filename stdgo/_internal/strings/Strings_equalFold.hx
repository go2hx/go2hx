package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2742969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2742887:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2742724 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2742737 = @:invalid_type null;
        var _tr_2742292:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2742279:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2742231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2743522:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2742966:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2742731:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2742724 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2742231 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2742239i32;
                } else if (__value__ == (2742239i32)) {
                    if (((_i_2742231 < (_s.length) : Bool) && (_i_2742231 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2742275i32;
                    } else {
                        _gotoNext = 2742664i32;
                    };
                } else if (__value__ == (2742275i32)) {
                    _sr_2742279 = _s[(_i_2742231 : stdgo.GoInt)];
                    _tr_2742292 = _t[(_i_2742231 : stdgo.GoInt)];
                    if (((_sr_2742279 | _tr_2742292 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2742331i32;
                    } else {
                        _gotoNext = 2742375i32;
                    };
                } else if (__value__ == (2742331i32)) {
                    _gotoNext = 2742689i32;
                } else if (__value__ == (2742375i32)) {
                    if (_tr_2742292 == (_sr_2742279)) {
                        _gotoNext = 2742387i32;
                    } else {
                        _gotoNext = 2742452i32;
                    };
                } else if (__value__ == (2742387i32)) {
                    _i_2742231++;
                    _gotoNext = 2742239i32;
                } else if (__value__ == (2742452i32)) {
                    if ((_tr_2742292 < _sr_2742279 : Bool)) {
                        _gotoNext = 2742463i32;
                    } else {
                        _gotoNext = 2742538i32;
                    };
                } else if (__value__ == (2742463i32)) {
                    {
                        final __tmp__0 = _sr_2742279;
                        final __tmp__1 = _tr_2742292;
                        _tr_2742292 = __tmp__0;
                        _sr_2742279 = __tmp__1;
                    };
                    _gotoNext = 2742538i32;
                } else if (__value__ == (2742538i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2742279 : Bool) && (_sr_2742279 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2742292 == ((_sr_2742279 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2742584i32;
                    } else {
                        _gotoNext = 2742604i32;
                    };
                } else if (__value__ == (2742584i32)) {
                    _i_2742231++;
                    _gotoNext = 2742239i32;
                } else if (__value__ == (2742604i32)) {
                    return false;
                    _i_2742231++;
                    _gotoNext = 2742239i32;
                } else if (__value__ == (2742664i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2742689i32;
                } else if (__value__ == (2742689i32)) {
                    _s = (_s.__slice__(_i_2742231) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2742231) : stdgo.GoString)?.__copy__();
                    _keys_2742724 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2742724 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2742724 = (_keys_2742724.__append__(_key));
                        _values_2742724 = (_values_2742724.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2742724.length)) {
                        _gotoNext = 2743655i32;
                    } else {
                        _gotoNext = 2743729i32;
                    };
                } else if (__value__ == (2742745i32)) {
                    _sr_2742731 = _values_2742724[@:invalid_index_invalid_type _i_2742737];
                    var __blank__ = _keys_2742724[@:invalid_index_invalid_type _i_2742737];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2742814i32;
                    } else {
                        _gotoNext = 2742883i32;
                    };
                } else if (__value__ == (2742814i32)) {
                    return false;
                    _gotoNext = 2742883i32;
                } else if (__value__ == (2742883i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2742921i32;
                    } else {
                        _gotoNext = 2742961i32;
                    };
                } else if (__value__ == (2742921i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2742887 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2743105i32;
                } else if (__value__ == (2742961i32)) {
                    _gotoNext = 2742961i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2742966 = __tmp__._0;
                        _size_2742969 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2742966;
                        final __tmp__1 = (_t.__slice__(_size_2742969) : stdgo.GoString)?.__copy__();
                        _tr_2742887 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2743105i32;
                } else if (__value__ == (2743105i32)) {
                    if (_tr_2742887 == (_sr_2742731)) {
                        _gotoNext = 2743117i32;
                    } else {
                        _gotoNext = 2743182i32;
                    };
                } else if (__value__ == (2743117i32)) {
                    _i_2742737++;
                    _gotoNext = 2743656i32;
                } else if (__value__ == (2743182i32)) {
                    if ((_tr_2742887 < _sr_2742731 : Bool)) {
                        _gotoNext = 2743193i32;
                    } else {
                        _gotoNext = 2743247i32;
                    };
                } else if (__value__ == (2743193i32)) {
                    {
                        final __tmp__0 = _sr_2742731;
                        final __tmp__1 = _tr_2742887;
                        _tr_2742887 = __tmp__0;
                        _sr_2742731 = __tmp__1;
                    };
                    _gotoNext = 2743247i32;
                } else if (__value__ == (2743247i32)) {
                    if ((_tr_2742887 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2743269i32;
                    } else {
                        _gotoNext = 2743522i32;
                    };
                } else if (__value__ == (2743269i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2742731 : Bool) && (_sr_2742731 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2742887 == ((_sr_2742731 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2743369i32;
                    } else {
                        _gotoNext = 2743392i32;
                    };
                } else if (__value__ == (2743369i32)) {
                    _i_2742737++;
                    _gotoNext = 2743656i32;
                } else if (__value__ == (2743392i32)) {
                    return false;
                    _gotoNext = 2743522i32;
                } else if (__value__ == (2743522i32)) {
                    _r_2743522 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2742731);
                    var __blank__ = 0i32;
                    _gotoNext = 2743552i32;
                } else if (__value__ == (2743552i32)) {
                    if (((_r_2743522 != _sr_2742731) && (_r_2743522 < _tr_2742887 : Bool) : Bool)) {
                        _gotoNext = 2743574i32;
                    } else {
                        _gotoNext = 2743611i32;
                    };
                } else if (__value__ == (2743574i32)) {
                    _r_2743522 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2743522);
                    _gotoNext = 2743552i32;
                } else if (__value__ == (2743611i32)) {
                    if (_r_2743522 == (_tr_2742887)) {
                        _gotoNext = 2743622i32;
                    } else {
                        _gotoNext = 2743642i32;
                    };
                } else if (__value__ == (2743622i32)) {
                    _i_2742737++;
                    _gotoNext = 2743656i32;
                } else if (__value__ == (2743642i32)) {
                    return false;
                    _i_2742737++;
                    _gotoNext = 2743656i32;
                } else if (__value__ == (2743655i32)) {
                    _i_2742737 = 0i32;
                    _gotoNext = 2743656i32;
                } else if (__value__ == (2743656i32)) {
                    if (_i_2742737 < (_keys_2742724.length)) {
                        _gotoNext = 2742745i32;
                    } else {
                        _gotoNext = 2743729i32;
                    };
                } else if (__value__ == (2743729i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
