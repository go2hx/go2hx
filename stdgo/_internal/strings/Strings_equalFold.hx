package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2899467:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2899225 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2899225 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2899238 = @:invalid_type null;
        var _sr_2898780:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2898732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2900023:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2899470:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2899388:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2899232:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2898793:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2898732 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2898740i32;
                } else if (__value__ == (2898740i32)) {
                    if (((_i_2898732 < (_s.length) : Bool) && (_i_2898732 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2898776i32;
                    } else {
                        _gotoNext = 2899165i32;
                    };
                } else if (__value__ == (2898776i32)) {
                    _sr_2898780 = _s[(_i_2898732 : stdgo.GoInt)];
                    _tr_2898793 = _t[(_i_2898732 : stdgo.GoInt)];
                    if (((_sr_2898780 | _tr_2898793 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2898832i32;
                    } else {
                        _gotoNext = 2898876i32;
                    };
                } else if (__value__ == (2898832i32)) {
                    _gotoNext = 2899190i32;
                } else if (__value__ == (2898876i32)) {
                    if (_tr_2898793 == (_sr_2898780)) {
                        _gotoNext = 2898888i32;
                    } else {
                        _gotoNext = 2898953i32;
                    };
                } else if (__value__ == (2898888i32)) {
                    _i_2898732++;
                    _gotoNext = 2898740i32;
                } else if (__value__ == (2898953i32)) {
                    if ((_tr_2898793 < _sr_2898780 : Bool)) {
                        _gotoNext = 2898964i32;
                    } else {
                        _gotoNext = 2899039i32;
                    };
                } else if (__value__ == (2898964i32)) {
                    {
                        final __tmp__0 = _sr_2898780;
                        final __tmp__1 = _tr_2898793;
                        _tr_2898793 = __tmp__0;
                        _sr_2898780 = __tmp__1;
                    };
                    _gotoNext = 2899039i32;
                } else if (__value__ == (2899039i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2898780 : Bool) && (_sr_2898780 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2898793 == ((_sr_2898780 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2899085i32;
                    } else {
                        _gotoNext = 2899105i32;
                    };
                } else if (__value__ == (2899085i32)) {
                    _i_2898732++;
                    _gotoNext = 2898740i32;
                } else if (__value__ == (2899105i32)) {
                    return false;
                    _i_2898732++;
                    _gotoNext = 2898740i32;
                } else if (__value__ == (2899165i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2899190i32;
                } else if (__value__ == (2899190i32)) {
                    _s = (_s.__slice__(_i_2898732) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2898732) : stdgo.GoString)?.__copy__();
                    _keys_2899225 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2899225 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2899225 = (_keys_2899225.__append__(_key));
                        _values_2899225 = (_values_2899225.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2899225.length)) {
                        _gotoNext = 2900156i32;
                    } else {
                        _gotoNext = 2900230i32;
                    };
                } else if (__value__ == (2899246i32)) {
                    _sr_2899232 = _values_2899225[@:invalid_index_invalid_type _i_2899238];
                    var __blank__ = _keys_2899225[@:invalid_index_invalid_type _i_2899238];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2899315i32;
                    } else {
                        _gotoNext = 2899384i32;
                    };
                } else if (__value__ == (2899315i32)) {
                    return false;
                    _gotoNext = 2899384i32;
                } else if (__value__ == (2899384i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2899422i32;
                    } else {
                        _gotoNext = 2899462i32;
                    };
                } else if (__value__ == (2899422i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2899388 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2899606i32;
                } else if (__value__ == (2899462i32)) {
                    _gotoNext = 2899462i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2899467 = __tmp__._0;
                        _size_2899470 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2899467;
                        final __tmp__1 = (_t.__slice__(_size_2899470) : stdgo.GoString)?.__copy__();
                        _tr_2899388 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2899606i32;
                } else if (__value__ == (2899606i32)) {
                    if (_tr_2899388 == (_sr_2899232)) {
                        _gotoNext = 2899618i32;
                    } else {
                        _gotoNext = 2899683i32;
                    };
                } else if (__value__ == (2899618i32)) {
                    _i_2899238++;
                    _gotoNext = 2900157i32;
                } else if (__value__ == (2899683i32)) {
                    if ((_tr_2899388 < _sr_2899232 : Bool)) {
                        _gotoNext = 2899694i32;
                    } else {
                        _gotoNext = 2899748i32;
                    };
                } else if (__value__ == (2899694i32)) {
                    {
                        final __tmp__0 = _sr_2899232;
                        final __tmp__1 = _tr_2899388;
                        _tr_2899388 = __tmp__0;
                        _sr_2899232 = __tmp__1;
                    };
                    _gotoNext = 2899748i32;
                } else if (__value__ == (2899748i32)) {
                    if ((_tr_2899388 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2899770i32;
                    } else {
                        _gotoNext = 2900023i32;
                    };
                } else if (__value__ == (2899770i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2899232 : Bool) && (_sr_2899232 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2899388 == ((_sr_2899232 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2899870i32;
                    } else {
                        _gotoNext = 2899893i32;
                    };
                } else if (__value__ == (2899870i32)) {
                    _i_2899238++;
                    _gotoNext = 2900157i32;
                } else if (__value__ == (2899893i32)) {
                    return false;
                    _gotoNext = 2900023i32;
                } else if (__value__ == (2900023i32)) {
                    _r_2900023 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2899232);
                    var __blank__ = 0i32;
                    _gotoNext = 2900053i32;
                } else if (__value__ == (2900053i32)) {
                    if (((_r_2900023 != _sr_2899232) && (_r_2900023 < _tr_2899388 : Bool) : Bool)) {
                        _gotoNext = 2900075i32;
                    } else {
                        _gotoNext = 2900112i32;
                    };
                } else if (__value__ == (2900075i32)) {
                    _r_2900023 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2900023);
                    _gotoNext = 2900053i32;
                } else if (__value__ == (2900112i32)) {
                    if (_r_2900023 == (_tr_2899388)) {
                        _gotoNext = 2900123i32;
                    } else {
                        _gotoNext = 2900143i32;
                    };
                } else if (__value__ == (2900123i32)) {
                    _i_2899238++;
                    _gotoNext = 2900157i32;
                } else if (__value__ == (2900143i32)) {
                    return false;
                    _i_2899238++;
                    _gotoNext = 2900157i32;
                } else if (__value__ == (2900156i32)) {
                    _i_2899238 = 0i32;
                    _gotoNext = 2900157i32;
                } else if (__value__ == (2900157i32)) {
                    if (_i_2899238 < (_keys_2899225.length)) {
                        _gotoNext = 2899246i32;
                    } else {
                        _gotoNext = 2900230i32;
                    };
                } else if (__value__ == (2900230i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
