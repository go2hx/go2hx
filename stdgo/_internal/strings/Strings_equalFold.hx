package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2888625:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2889315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2889233:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2889077:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2889070 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2889070 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2889083 = @:invalid_type null;
        var _tr_2888638:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2888577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2889868:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2889312:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2888577 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2888585i32;
                } else if (__value__ == (2888585i32)) {
                    if (((_i_2888577 < (_s.length) : Bool) && (_i_2888577 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2888621i32;
                    } else {
                        _gotoNext = 2889010i32;
                    };
                } else if (__value__ == (2888621i32)) {
                    _sr_2888625 = _s[(_i_2888577 : stdgo.GoInt)];
                    _tr_2888638 = _t[(_i_2888577 : stdgo.GoInt)];
                    if (((_sr_2888625 | _tr_2888638 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2888677i32;
                    } else {
                        _gotoNext = 2888721i32;
                    };
                } else if (__value__ == (2888677i32)) {
                    _gotoNext = 2889035i32;
                } else if (__value__ == (2888721i32)) {
                    if (_tr_2888638 == (_sr_2888625)) {
                        _gotoNext = 2888733i32;
                    } else {
                        _gotoNext = 2888798i32;
                    };
                } else if (__value__ == (2888733i32)) {
                    _i_2888577++;
                    _gotoNext = 2888585i32;
                } else if (__value__ == (2888798i32)) {
                    if ((_tr_2888638 < _sr_2888625 : Bool)) {
                        _gotoNext = 2888809i32;
                    } else {
                        _gotoNext = 2888884i32;
                    };
                } else if (__value__ == (2888809i32)) {
                    {
                        final __tmp__0 = _sr_2888625;
                        final __tmp__1 = _tr_2888638;
                        _tr_2888638 = __tmp__0;
                        _sr_2888625 = __tmp__1;
                    };
                    _gotoNext = 2888884i32;
                } else if (__value__ == (2888884i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2888625 : Bool) && (_sr_2888625 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2888638 == ((_sr_2888625 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2888930i32;
                    } else {
                        _gotoNext = 2888950i32;
                    };
                } else if (__value__ == (2888930i32)) {
                    _i_2888577++;
                    _gotoNext = 2888585i32;
                } else if (__value__ == (2888950i32)) {
                    return false;
                    _i_2888577++;
                    _gotoNext = 2888585i32;
                } else if (__value__ == (2889010i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2889035i32;
                } else if (__value__ == (2889035i32)) {
                    _s = (_s.__slice__(_i_2888577) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2888577) : stdgo.GoString)?.__copy__();
                    _keys_2889070 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2889070 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2889070 = (_keys_2889070.__append__(_key));
                        _values_2889070 = (_values_2889070.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2889070.length)) {
                        _gotoNext = 2890001i32;
                    } else {
                        _gotoNext = 2890075i32;
                    };
                } else if (__value__ == (2889091i32)) {
                    _sr_2889077 = _values_2889070[@:invalid_index_invalid_type _i_2889083];
                    var __blank__ = _keys_2889070[@:invalid_index_invalid_type _i_2889083];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2889160i32;
                    } else {
                        _gotoNext = 2889229i32;
                    };
                } else if (__value__ == (2889160i32)) {
                    return false;
                    _gotoNext = 2889229i32;
                } else if (__value__ == (2889229i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2889267i32;
                    } else {
                        _gotoNext = 2889307i32;
                    };
                } else if (__value__ == (2889267i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2889233 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2889451i32;
                } else if (__value__ == (2889307i32)) {
                    _gotoNext = 2889307i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2889312 = @:tmpset0 __tmp__._0;
                        _size_2889315 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2889312;
                        final __tmp__1 = (_t.__slice__(_size_2889315) : stdgo.GoString)?.__copy__();
                        _tr_2889233 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2889451i32;
                } else if (__value__ == (2889451i32)) {
                    if (_tr_2889233 == (_sr_2889077)) {
                        _gotoNext = 2889463i32;
                    } else {
                        _gotoNext = 2889528i32;
                    };
                } else if (__value__ == (2889463i32)) {
                    _i_2889083++;
                    _gotoNext = 2890002i32;
                } else if (__value__ == (2889528i32)) {
                    if ((_tr_2889233 < _sr_2889077 : Bool)) {
                        _gotoNext = 2889539i32;
                    } else {
                        _gotoNext = 2889593i32;
                    };
                } else if (__value__ == (2889539i32)) {
                    {
                        final __tmp__0 = _sr_2889077;
                        final __tmp__1 = _tr_2889233;
                        _tr_2889233 = __tmp__0;
                        _sr_2889077 = __tmp__1;
                    };
                    _gotoNext = 2889593i32;
                } else if (__value__ == (2889593i32)) {
                    if ((_tr_2889233 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2889615i32;
                    } else {
                        _gotoNext = 2889868i32;
                    };
                } else if (__value__ == (2889615i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2889077 : Bool) && (_sr_2889077 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2889233 == ((_sr_2889077 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2889715i32;
                    } else {
                        _gotoNext = 2889738i32;
                    };
                } else if (__value__ == (2889715i32)) {
                    _i_2889083++;
                    _gotoNext = 2890002i32;
                } else if (__value__ == (2889738i32)) {
                    return false;
                    _gotoNext = 2889868i32;
                } else if (__value__ == (2889868i32)) {
                    _r_2889868 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2889077);
                    var __blank__ = 0i32;
                    _gotoNext = 2889898i32;
                } else if (__value__ == (2889898i32)) {
                    if (((_r_2889868 != _sr_2889077) && (_r_2889868 < _tr_2889233 : Bool) : Bool)) {
                        _gotoNext = 2889920i32;
                    } else {
                        _gotoNext = 2889957i32;
                    };
                } else if (__value__ == (2889920i32)) {
                    _r_2889868 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2889868);
                    _gotoNext = 2889898i32;
                } else if (__value__ == (2889957i32)) {
                    if (_r_2889868 == (_tr_2889233)) {
                        _gotoNext = 2889968i32;
                    } else {
                        _gotoNext = 2889988i32;
                    };
                } else if (__value__ == (2889968i32)) {
                    _i_2889083++;
                    _gotoNext = 2890002i32;
                } else if (__value__ == (2889988i32)) {
                    return false;
                    _i_2889083++;
                    _gotoNext = 2890002i32;
                } else if (__value__ == (2890001i32)) {
                    _i_2889083 = 0i32;
                    _gotoNext = 2890002i32;
                } else if (__value__ == (2890002i32)) {
                    if (_i_2889083 < (_keys_2889070.length)) {
                        _gotoNext = 2889091i32;
                    } else {
                        _gotoNext = 2890075i32;
                    };
                } else if (__value__ == (2890075i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
