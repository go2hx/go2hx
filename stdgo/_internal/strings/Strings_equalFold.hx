package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2936147 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2936160 = @:invalid_type null;
        var _i_2935654:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2936945:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2936147 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2935715:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2935702:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2936392:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2936389:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2936310:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2936154:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2935654 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2935662i32;
                } else if (__value__ == (2935662i32)) {
                    if (((_i_2935654 < (_s.length) : Bool) && (_i_2935654 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2935698i32;
                    } else {
                        _gotoNext = 2936087i32;
                    };
                } else if (__value__ == (2935698i32)) {
                    _sr_2935702 = _s[(_i_2935654 : stdgo.GoInt)];
                    _tr_2935715 = _t[(_i_2935654 : stdgo.GoInt)];
                    if (((_sr_2935702 | _tr_2935715 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935754i32;
                    } else {
                        _gotoNext = 2935798i32;
                    };
                } else if (__value__ == (2935754i32)) {
                    _gotoNext = 2936112i32;
                } else if (__value__ == (2935798i32)) {
                    if (_tr_2935715 == (_sr_2935702)) {
                        _gotoNext = 2935810i32;
                    } else {
                        _gotoNext = 2935875i32;
                    };
                } else if (__value__ == (2935810i32)) {
                    _i_2935654++;
                    _gotoNext = 2935662i32;
                } else if (__value__ == (2935875i32)) {
                    if ((_tr_2935715 < _sr_2935702 : Bool)) {
                        _gotoNext = 2935886i32;
                    } else {
                        _gotoNext = 2935961i32;
                    };
                } else if (__value__ == (2935886i32)) {
                    {
                        final __tmp__0 = _sr_2935702;
                        final __tmp__1 = _tr_2935715;
                        _tr_2935715 = __tmp__0;
                        _sr_2935702 = __tmp__1;
                    };
                    _gotoNext = 2935961i32;
                } else if (__value__ == (2935961i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2935702 : Bool) && (_sr_2935702 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2935715 == ((_sr_2935702 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2936007i32;
                    } else {
                        _gotoNext = 2936027i32;
                    };
                } else if (__value__ == (2936007i32)) {
                    _i_2935654++;
                    _gotoNext = 2935662i32;
                } else if (__value__ == (2936027i32)) {
                    return false;
                    _i_2935654++;
                    _gotoNext = 2935662i32;
                } else if (__value__ == (2936087i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2936112i32;
                } else if (__value__ == (2936112i32)) {
                    _s = (_s.__slice__(_i_2935654) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2935654) : stdgo.GoString)?.__copy__();
                    _keys_2936147 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2936147 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2936147 = (_keys_2936147.__append__(_key));
                        _values_2936147 = (_values_2936147.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2936147.length)) {
                        _gotoNext = 2937078i32;
                    } else {
                        _gotoNext = 2937152i32;
                    };
                } else if (__value__ == (2936168i32)) {
                    _sr_2936154 = _values_2936147[@:invalid_index_invalid_type _i_2936160];
                    var __blank__ = _keys_2936147[@:invalid_index_invalid_type _i_2936160];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2936237i32;
                    } else {
                        _gotoNext = 2936306i32;
                    };
                } else if (__value__ == (2936237i32)) {
                    return false;
                    _gotoNext = 2936306i32;
                } else if (__value__ == (2936306i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2936344i32;
                    } else {
                        _gotoNext = 2936384i32;
                    };
                } else if (__value__ == (2936344i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2936310 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2936528i32;
                } else if (__value__ == (2936384i32)) {
                    _gotoNext = 2936384i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2936389 = __tmp__._0;
                        _size_2936392 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2936389;
                        final __tmp__1 = (_t.__slice__(_size_2936392) : stdgo.GoString)?.__copy__();
                        _tr_2936310 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2936528i32;
                } else if (__value__ == (2936528i32)) {
                    if (_tr_2936310 == (_sr_2936154)) {
                        _gotoNext = 2936540i32;
                    } else {
                        _gotoNext = 2936605i32;
                    };
                } else if (__value__ == (2936540i32)) {
                    _i_2936160++;
                    _gotoNext = 2937079i32;
                } else if (__value__ == (2936605i32)) {
                    if ((_tr_2936310 < _sr_2936154 : Bool)) {
                        _gotoNext = 2936616i32;
                    } else {
                        _gotoNext = 2936670i32;
                    };
                } else if (__value__ == (2936616i32)) {
                    {
                        final __tmp__0 = _sr_2936154;
                        final __tmp__1 = _tr_2936310;
                        _tr_2936310 = __tmp__0;
                        _sr_2936154 = __tmp__1;
                    };
                    _gotoNext = 2936670i32;
                } else if (__value__ == (2936670i32)) {
                    if ((_tr_2936310 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2936692i32;
                    } else {
                        _gotoNext = 2936945i32;
                    };
                } else if (__value__ == (2936692i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2936154 : Bool) && (_sr_2936154 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2936310 == ((_sr_2936154 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2936792i32;
                    } else {
                        _gotoNext = 2936815i32;
                    };
                } else if (__value__ == (2936792i32)) {
                    _i_2936160++;
                    _gotoNext = 2937079i32;
                } else if (__value__ == (2936815i32)) {
                    return false;
                    _gotoNext = 2936945i32;
                } else if (__value__ == (2936945i32)) {
                    _r_2936945 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2936154);
                    var __blank__ = 0i32;
                    _gotoNext = 2936975i32;
                } else if (__value__ == (2936975i32)) {
                    if (((_r_2936945 != _sr_2936154) && (_r_2936945 < _tr_2936310 : Bool) : Bool)) {
                        _gotoNext = 2936997i32;
                    } else {
                        _gotoNext = 2937034i32;
                    };
                } else if (__value__ == (2936997i32)) {
                    _r_2936945 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2936945);
                    _gotoNext = 2936975i32;
                } else if (__value__ == (2937034i32)) {
                    if (_r_2936945 == (_tr_2936310)) {
                        _gotoNext = 2937045i32;
                    } else {
                        _gotoNext = 2937065i32;
                    };
                } else if (__value__ == (2937045i32)) {
                    _i_2936160++;
                    _gotoNext = 2937079i32;
                } else if (__value__ == (2937065i32)) {
                    return false;
                    _i_2936160++;
                    _gotoNext = 2937079i32;
                } else if (__value__ == (2937078i32)) {
                    _i_2936160 = 0i32;
                    _gotoNext = 2937079i32;
                } else if (__value__ == (2937079i32)) {
                    if (_i_2936160 < (_keys_2936147.length)) {
                        _gotoNext = 2936168i32;
                    } else {
                        _gotoNext = 2937152i32;
                    };
                } else if (__value__ == (2937152i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
