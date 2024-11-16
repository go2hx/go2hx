package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2952388:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2952238 = @:invalid_type null;
        var _tr_2951793:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2951780:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2951732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2953023:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2952470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2952467:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2952232:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2952225 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2952225 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2951732 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2951740i32;
                } else if (__value__ == (2951740i32)) {
                    if (((_i_2951732 < (_s.length) : Bool) && (_i_2951732 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2951776i32;
                    } else {
                        _gotoNext = 2952165i32;
                    };
                } else if (__value__ == (2951776i32)) {
                    _sr_2951780 = _s[(_i_2951732 : stdgo.GoInt)];
                    _tr_2951793 = _t[(_i_2951732 : stdgo.GoInt)];
                    if (((_sr_2951780 | _tr_2951793 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2951832i32;
                    } else {
                        _gotoNext = 2951876i32;
                    };
                } else if (__value__ == (2951832i32)) {
                    _gotoNext = 2952190i32;
                } else if (__value__ == (2951876i32)) {
                    if (_tr_2951793 == (_sr_2951780)) {
                        _gotoNext = 2951888i32;
                    } else {
                        _gotoNext = 2951953i32;
                    };
                } else if (__value__ == (2951888i32)) {
                    _i_2951732++;
                    _gotoNext = 2951740i32;
                } else if (__value__ == (2951953i32)) {
                    if ((_tr_2951793 < _sr_2951780 : Bool)) {
                        _gotoNext = 2951964i32;
                    } else {
                        _gotoNext = 2952039i32;
                    };
                } else if (__value__ == (2951964i32)) {
                    {
                        final __tmp__0 = _sr_2951780;
                        final __tmp__1 = _tr_2951793;
                        _tr_2951793 = __tmp__0;
                        _sr_2951780 = __tmp__1;
                    };
                    _gotoNext = 2952039i32;
                } else if (__value__ == (2952039i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2951780 : Bool) && (_sr_2951780 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2951793 == ((_sr_2951780 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2952085i32;
                    } else {
                        _gotoNext = 2952105i32;
                    };
                } else if (__value__ == (2952085i32)) {
                    _i_2951732++;
                    _gotoNext = 2951740i32;
                } else if (__value__ == (2952105i32)) {
                    return false;
                    _i_2951732++;
                    _gotoNext = 2951740i32;
                } else if (__value__ == (2952165i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2952190i32;
                } else if (__value__ == (2952190i32)) {
                    _s = (_s.__slice__(_i_2951732) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2951732) : stdgo.GoString)?.__copy__();
                    _keys_2952225 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2952225 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2952225 = (_keys_2952225.__append__(_key));
                        _values_2952225 = (_values_2952225.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2952225.length)) {
                        _gotoNext = 2953156i32;
                    } else {
                        _gotoNext = 2953230i32;
                    };
                } else if (__value__ == (2952246i32)) {
                    _sr_2952232 = _values_2952225[@:invalid_index_invalid_type _i_2952238];
                    var __blank__ = _keys_2952225[@:invalid_index_invalid_type _i_2952238];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2952315i32;
                    } else {
                        _gotoNext = 2952384i32;
                    };
                } else if (__value__ == (2952315i32)) {
                    return false;
                    _gotoNext = 2952384i32;
                } else if (__value__ == (2952384i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2952422i32;
                    } else {
                        _gotoNext = 2952462i32;
                    };
                } else if (__value__ == (2952422i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2952388 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2952606i32;
                } else if (__value__ == (2952462i32)) {
                    _gotoNext = 2952462i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2952467 = __tmp__._0;
                        _size_2952470 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2952467;
                        final __tmp__1 = (_t.__slice__(_size_2952470) : stdgo.GoString)?.__copy__();
                        _tr_2952388 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2952606i32;
                } else if (__value__ == (2952606i32)) {
                    if (_tr_2952388 == (_sr_2952232)) {
                        _gotoNext = 2952618i32;
                    } else {
                        _gotoNext = 2952683i32;
                    };
                } else if (__value__ == (2952618i32)) {
                    _i_2952238++;
                    _gotoNext = 2953157i32;
                } else if (__value__ == (2952683i32)) {
                    if ((_tr_2952388 < _sr_2952232 : Bool)) {
                        _gotoNext = 2952694i32;
                    } else {
                        _gotoNext = 2952748i32;
                    };
                } else if (__value__ == (2952694i32)) {
                    {
                        final __tmp__0 = _sr_2952232;
                        final __tmp__1 = _tr_2952388;
                        _tr_2952388 = __tmp__0;
                        _sr_2952232 = __tmp__1;
                    };
                    _gotoNext = 2952748i32;
                } else if (__value__ == (2952748i32)) {
                    if ((_tr_2952388 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2952770i32;
                    } else {
                        _gotoNext = 2953023i32;
                    };
                } else if (__value__ == (2952770i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2952232 : Bool) && (_sr_2952232 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2952388 == ((_sr_2952232 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2952870i32;
                    } else {
                        _gotoNext = 2952893i32;
                    };
                } else if (__value__ == (2952870i32)) {
                    _i_2952238++;
                    _gotoNext = 2953157i32;
                } else if (__value__ == (2952893i32)) {
                    return false;
                    _gotoNext = 2953023i32;
                } else if (__value__ == (2953023i32)) {
                    _r_2953023 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2952232);
                    var __blank__ = 0i32;
                    _gotoNext = 2953053i32;
                } else if (__value__ == (2953053i32)) {
                    if (((_r_2953023 != _sr_2952232) && (_r_2953023 < _tr_2952388 : Bool) : Bool)) {
                        _gotoNext = 2953075i32;
                    } else {
                        _gotoNext = 2953112i32;
                    };
                } else if (__value__ == (2953075i32)) {
                    _r_2953023 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2953023);
                    _gotoNext = 2953053i32;
                } else if (__value__ == (2953112i32)) {
                    if (_r_2953023 == (_tr_2952388)) {
                        _gotoNext = 2953123i32;
                    } else {
                        _gotoNext = 2953143i32;
                    };
                } else if (__value__ == (2953123i32)) {
                    _i_2952238++;
                    _gotoNext = 2953157i32;
                } else if (__value__ == (2953143i32)) {
                    return false;
                    _i_2952238++;
                    _gotoNext = 2953157i32;
                } else if (__value__ == (2953156i32)) {
                    _i_2952238 = 0i32;
                    _gotoNext = 2953157i32;
                } else if (__value__ == (2953157i32)) {
                    if (_i_2952238 < (_keys_2952225.length)) {
                        _gotoNext = 2952246i32;
                    } else {
                        _gotoNext = 2953230i32;
                    };
                } else if (__value__ == (2953230i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
