package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2803602:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2803364:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2803357 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2803370 = @:invalid_type null;
        var _sr_2802912:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2802864:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2804155:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2803599:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2803520:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2803357 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2802925:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2802864 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2802872i32;
                } else if (__value__ == (2802872i32)) {
                    if (((_i_2802864 < (_s.length) : Bool) && (_i_2802864 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2802908i32;
                    } else {
                        _gotoNext = 2803297i32;
                    };
                } else if (__value__ == (2802908i32)) {
                    _sr_2802912 = _s[(_i_2802864 : stdgo.GoInt)];
                    _tr_2802925 = _t[(_i_2802864 : stdgo.GoInt)];
                    if (((_sr_2802912 | _tr_2802925 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2802964i32;
                    } else {
                        _gotoNext = 2803008i32;
                    };
                } else if (__value__ == (2802964i32)) {
                    _gotoNext = 2803322i32;
                } else if (__value__ == (2803008i32)) {
                    if (_tr_2802925 == (_sr_2802912)) {
                        _gotoNext = 2803020i32;
                    } else {
                        _gotoNext = 2803085i32;
                    };
                } else if (__value__ == (2803020i32)) {
                    _i_2802864++;
                    _gotoNext = 2802872i32;
                } else if (__value__ == (2803085i32)) {
                    if ((_tr_2802925 < _sr_2802912 : Bool)) {
                        _gotoNext = 2803096i32;
                    } else {
                        _gotoNext = 2803171i32;
                    };
                } else if (__value__ == (2803096i32)) {
                    {
                        final __tmp__0 = _sr_2802912;
                        final __tmp__1 = _tr_2802925;
                        _tr_2802925 = __tmp__0;
                        _sr_2802912 = __tmp__1;
                    };
                    _gotoNext = 2803171i32;
                } else if (__value__ == (2803171i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2802912 : Bool) && (_sr_2802912 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2802925 == ((_sr_2802912 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2803217i32;
                    } else {
                        _gotoNext = 2803237i32;
                    };
                } else if (__value__ == (2803217i32)) {
                    _i_2802864++;
                    _gotoNext = 2802872i32;
                } else if (__value__ == (2803237i32)) {
                    return false;
                    _i_2802864++;
                    _gotoNext = 2802872i32;
                } else if (__value__ == (2803297i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2803322i32;
                } else if (__value__ == (2803322i32)) {
                    _s = (_s.__slice__(_i_2802864) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2802864) : stdgo.GoString)?.__copy__();
                    _keys_2803357 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2803357 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2803357 = (_keys_2803357.__append__(_key));
                        _values_2803357 = (_values_2803357.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2803357.length)) {
                        _gotoNext = 2804288i32;
                    } else {
                        _gotoNext = 2804362i32;
                    };
                } else if (__value__ == (2803378i32)) {
                    _sr_2803364 = _values_2803357[@:invalid_index_invalid_type _i_2803370];
                    var __blank__ = _keys_2803357[@:invalid_index_invalid_type _i_2803370];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2803447i32;
                    } else {
                        _gotoNext = 2803516i32;
                    };
                } else if (__value__ == (2803447i32)) {
                    return false;
                    _gotoNext = 2803516i32;
                } else if (__value__ == (2803516i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2803554i32;
                    } else {
                        _gotoNext = 2803594i32;
                    };
                } else if (__value__ == (2803554i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2803520 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2803738i32;
                } else if (__value__ == (2803594i32)) {
                    _gotoNext = 2803594i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2803599 = __tmp__._0;
                        _size_2803602 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2803599;
                        final __tmp__1 = (_t.__slice__(_size_2803602) : stdgo.GoString)?.__copy__();
                        _tr_2803520 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2803738i32;
                } else if (__value__ == (2803738i32)) {
                    if (_tr_2803520 == (_sr_2803364)) {
                        _gotoNext = 2803750i32;
                    } else {
                        _gotoNext = 2803815i32;
                    };
                } else if (__value__ == (2803750i32)) {
                    _i_2803370++;
                    _gotoNext = 2804289i32;
                } else if (__value__ == (2803815i32)) {
                    if ((_tr_2803520 < _sr_2803364 : Bool)) {
                        _gotoNext = 2803826i32;
                    } else {
                        _gotoNext = 2803880i32;
                    };
                } else if (__value__ == (2803826i32)) {
                    {
                        final __tmp__0 = _sr_2803364;
                        final __tmp__1 = _tr_2803520;
                        _tr_2803520 = __tmp__0;
                        _sr_2803364 = __tmp__1;
                    };
                    _gotoNext = 2803880i32;
                } else if (__value__ == (2803880i32)) {
                    if ((_tr_2803520 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2803902i32;
                    } else {
                        _gotoNext = 2804155i32;
                    };
                } else if (__value__ == (2803902i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2803364 : Bool) && (_sr_2803364 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2803520 == ((_sr_2803364 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2804002i32;
                    } else {
                        _gotoNext = 2804025i32;
                    };
                } else if (__value__ == (2804002i32)) {
                    _i_2803370++;
                    _gotoNext = 2804289i32;
                } else if (__value__ == (2804025i32)) {
                    return false;
                    _gotoNext = 2804155i32;
                } else if (__value__ == (2804155i32)) {
                    _r_2804155 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2803364);
                    var __blank__ = 0i32;
                    _gotoNext = 2804185i32;
                } else if (__value__ == (2804185i32)) {
                    if (((_r_2804155 != _sr_2803364) && (_r_2804155 < _tr_2803520 : Bool) : Bool)) {
                        _gotoNext = 2804207i32;
                    } else {
                        _gotoNext = 2804244i32;
                    };
                } else if (__value__ == (2804207i32)) {
                    _r_2804155 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2804155);
                    _gotoNext = 2804185i32;
                } else if (__value__ == (2804244i32)) {
                    if (_r_2804155 == (_tr_2803520)) {
                        _gotoNext = 2804255i32;
                    } else {
                        _gotoNext = 2804275i32;
                    };
                } else if (__value__ == (2804255i32)) {
                    _i_2803370++;
                    _gotoNext = 2804289i32;
                } else if (__value__ == (2804275i32)) {
                    return false;
                    _i_2803370++;
                    _gotoNext = 2804289i32;
                } else if (__value__ == (2804288i32)) {
                    _i_2803370 = 0i32;
                    _gotoNext = 2804289i32;
                } else if (__value__ == (2804289i32)) {
                    if (_i_2803370 < (_keys_2803357.length)) {
                        _gotoNext = 2803378i32;
                    } else {
                        _gotoNext = 2804362i32;
                    };
                } else if (__value__ == (2804362i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
