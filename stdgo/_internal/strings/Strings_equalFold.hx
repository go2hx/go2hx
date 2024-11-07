package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_3210820:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3210807:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3212050:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3211497:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3211415:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3211252 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_3211265 = @:invalid_type null;
        var _keys_3211252 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3210759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3211494:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3211259:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3210759 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3210767i32;
                } else if (__value__ == (3210767i32)) {
                    if (((_i_3210759 < (_s.length) : Bool) && (_i_3210759 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3210803i32;
                    } else {
                        _gotoNext = 3211192i32;
                    };
                } else if (__value__ == (3210803i32)) {
                    _sr_3210807 = _s[(_i_3210759 : stdgo.GoInt)];
                    _tr_3210820 = _t[(_i_3210759 : stdgo.GoInt)];
                    if (((_sr_3210807 | _tr_3210820 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3210859i32;
                    } else {
                        _gotoNext = 3210903i32;
                    };
                } else if (__value__ == (3210859i32)) {
                    _gotoNext = 3211217i32;
                } else if (__value__ == (3210903i32)) {
                    if (_tr_3210820 == (_sr_3210807)) {
                        _gotoNext = 3210915i32;
                    } else {
                        _gotoNext = 3210980i32;
                    };
                } else if (__value__ == (3210915i32)) {
                    _i_3210759++;
                    _gotoNext = 3210767i32;
                } else if (__value__ == (3210980i32)) {
                    if ((_tr_3210820 < _sr_3210807 : Bool)) {
                        _gotoNext = 3210991i32;
                    } else {
                        _gotoNext = 3211066i32;
                    };
                } else if (__value__ == (3210991i32)) {
                    {
                        final __tmp__0 = _sr_3210807;
                        final __tmp__1 = _tr_3210820;
                        _tr_3210820 = __tmp__0;
                        _sr_3210807 = __tmp__1;
                    };
                    _gotoNext = 3211066i32;
                } else if (__value__ == (3211066i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3210807 : Bool) && (_sr_3210807 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3210820 == ((_sr_3210807 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3211112i32;
                    } else {
                        _gotoNext = 3211132i32;
                    };
                } else if (__value__ == (3211112i32)) {
                    _i_3210759++;
                    _gotoNext = 3210767i32;
                } else if (__value__ == (3211132i32)) {
                    return false;
                    _i_3210759++;
                    _gotoNext = 3210767i32;
                } else if (__value__ == (3211192i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3211217i32;
                } else if (__value__ == (3211217i32)) {
                    _s = (_s.__slice__(_i_3210759) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3210759) : stdgo.GoString)?.__copy__();
                    _keys_3211252 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3211252 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3211252 = (_keys_3211252.__append__(_key));
                        _values_3211252 = (_values_3211252.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3211252.length)) {
                        _gotoNext = 3212183i32;
                    } else {
                        _gotoNext = 3212257i32;
                    };
                } else if (__value__ == (3211273i32)) {
                    _sr_3211259 = _values_3211252[@:invalid_index_invalid_type _i_3211265];
                    var __blank__ = _keys_3211252[@:invalid_index_invalid_type _i_3211265];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3211342i32;
                    } else {
                        _gotoNext = 3211411i32;
                    };
                } else if (__value__ == (3211342i32)) {
                    return false;
                    _gotoNext = 3211411i32;
                } else if (__value__ == (3211411i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3211449i32;
                    } else {
                        _gotoNext = 3211489i32;
                    };
                } else if (__value__ == (3211449i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3211415 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3211633i32;
                } else if (__value__ == (3211489i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3211494 = __tmp__._0;
                        _size_3211497 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3211494;
                        final __tmp__1 = (_t.__slice__(_size_3211497) : stdgo.GoString)?.__copy__();
                        _tr_3211415 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3211633i32;
                } else if (__value__ == (3211633i32)) {
                    if (_tr_3211415 == (_sr_3211259)) {
                        _gotoNext = 3211645i32;
                    } else {
                        _gotoNext = 3211710i32;
                    };
                } else if (__value__ == (3211645i32)) {
                    _i_3211265++;
                    _gotoNext = 3212184i32;
                } else if (__value__ == (3211710i32)) {
                    if ((_tr_3211415 < _sr_3211259 : Bool)) {
                        _gotoNext = 3211721i32;
                    } else {
                        _gotoNext = 3211775i32;
                    };
                } else if (__value__ == (3211721i32)) {
                    {
                        final __tmp__0 = _sr_3211259;
                        final __tmp__1 = _tr_3211415;
                        _tr_3211415 = __tmp__0;
                        _sr_3211259 = __tmp__1;
                    };
                    _gotoNext = 3211775i32;
                } else if (__value__ == (3211775i32)) {
                    if ((_tr_3211415 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3211797i32;
                    } else {
                        _gotoNext = 3212050i32;
                    };
                } else if (__value__ == (3211797i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3211259 : Bool) && (_sr_3211259 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3211415 == ((_sr_3211259 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3211897i32;
                    } else {
                        _gotoNext = 3211920i32;
                    };
                } else if (__value__ == (3211897i32)) {
                    _i_3211265++;
                    _gotoNext = 3212184i32;
                } else if (__value__ == (3211920i32)) {
                    return false;
                    _gotoNext = 3212050i32;
                } else if (__value__ == (3212050i32)) {
                    _r_3212050 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3211259);
                    var __blank__ = 0i32;
                    _gotoNext = 3212080i32;
                } else if (__value__ == (3212080i32)) {
                    if (((_r_3212050 != _sr_3211259) && (_r_3212050 < _tr_3211415 : Bool) : Bool)) {
                        _gotoNext = 3212102i32;
                    } else {
                        _gotoNext = 3212139i32;
                    };
                } else if (__value__ == (3212102i32)) {
                    _r_3212050 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3212050);
                    _gotoNext = 3212080i32;
                } else if (__value__ == (3212139i32)) {
                    if (_r_3212050 == (_tr_3211415)) {
                        _gotoNext = 3212150i32;
                    } else {
                        _gotoNext = 3212170i32;
                    };
                } else if (__value__ == (3212150i32)) {
                    _i_3211265++;
                    _gotoNext = 3212184i32;
                } else if (__value__ == (3212170i32)) {
                    return false;
                    _i_3211265++;
                    _gotoNext = 3212184i32;
                } else if (__value__ == (3212183i32)) {
                    _i_3211265 = 0i32;
                    _gotoNext = 3212184i32;
                } else if (__value__ == (3212184i32)) {
                    if (_i_3211265 < (_keys_3211252.length)) {
                        _gotoNext = 3211273i32;
                    } else {
                        _gotoNext = 3212257i32;
                    };
                } else if (__value__ == (3212257i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
