package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2728834:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2728278:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2728199:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2727591:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2728043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2728036 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2728036 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2728049 = @:invalid_type null;
        var _tr_2727604:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2727543:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2728281:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2727543 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2727551i32;
                } else if (__value__ == (2727551i32)) {
                    if (((_i_2727543 < (_s.length) : Bool) && (_i_2727543 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2727587i32;
                    } else {
                        _gotoNext = 2727976i32;
                    };
                } else if (__value__ == (2727587i32)) {
                    _sr_2727591 = _s[(_i_2727543 : stdgo.GoInt)];
                    _tr_2727604 = _t[(_i_2727543 : stdgo.GoInt)];
                    if (((_sr_2727591 | _tr_2727604 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2727643i32;
                    } else {
                        _gotoNext = 2727687i32;
                    };
                } else if (__value__ == (2727643i32)) {
                    _gotoNext = 2728001i32;
                } else if (__value__ == (2727687i32)) {
                    if (_tr_2727604 == (_sr_2727591)) {
                        _gotoNext = 2727699i32;
                    } else {
                        _gotoNext = 2727764i32;
                    };
                } else if (__value__ == (2727699i32)) {
                    _i_2727543++;
                    _gotoNext = 2727551i32;
                } else if (__value__ == (2727764i32)) {
                    if ((_tr_2727604 < _sr_2727591 : Bool)) {
                        _gotoNext = 2727775i32;
                    } else {
                        _gotoNext = 2727850i32;
                    };
                } else if (__value__ == (2727775i32)) {
                    {
                        final __tmp__0 = _sr_2727591;
                        final __tmp__1 = _tr_2727604;
                        _tr_2727604 = __tmp__0;
                        _sr_2727591 = __tmp__1;
                    };
                    _gotoNext = 2727850i32;
                } else if (__value__ == (2727850i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2727591 : Bool) && (_sr_2727591 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2727604 == ((_sr_2727591 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2727896i32;
                    } else {
                        _gotoNext = 2727916i32;
                    };
                } else if (__value__ == (2727896i32)) {
                    _i_2727543++;
                    _gotoNext = 2727551i32;
                } else if (__value__ == (2727916i32)) {
                    return false;
                    _i_2727543++;
                    _gotoNext = 2727551i32;
                } else if (__value__ == (2727976i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2728001i32;
                } else if (__value__ == (2728001i32)) {
                    _s = (_s.__slice__(_i_2727543) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2727543) : stdgo.GoString)?.__copy__();
                    _keys_2728036 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2728036 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2728036 = (_keys_2728036.__append__(_key));
                        _values_2728036 = (_values_2728036.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2728036.length)) {
                        _gotoNext = 2728967i32;
                    } else {
                        _gotoNext = 2729041i32;
                    };
                } else if (__value__ == (2728057i32)) {
                    _sr_2728043 = _values_2728036[@:invalid_index_invalid_type _i_2728049];
                    var __blank__ = _keys_2728036[@:invalid_index_invalid_type _i_2728049];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2728126i32;
                    } else {
                        _gotoNext = 2728195i32;
                    };
                } else if (__value__ == (2728126i32)) {
                    return false;
                    _gotoNext = 2728195i32;
                } else if (__value__ == (2728195i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2728233i32;
                    } else {
                        _gotoNext = 2728273i32;
                    };
                } else if (__value__ == (2728233i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2728199 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2728417i32;
                } else if (__value__ == (2728273i32)) {
                    _gotoNext = 2728273i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2728278 = @:tmpset0 __tmp__._0;
                        _size_2728281 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2728278;
                        final __tmp__1 = (_t.__slice__(_size_2728281) : stdgo.GoString)?.__copy__();
                        _tr_2728199 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2728417i32;
                } else if (__value__ == (2728417i32)) {
                    if (_tr_2728199 == (_sr_2728043)) {
                        _gotoNext = 2728429i32;
                    } else {
                        _gotoNext = 2728494i32;
                    };
                } else if (__value__ == (2728429i32)) {
                    _i_2728049++;
                    _gotoNext = 2728968i32;
                } else if (__value__ == (2728494i32)) {
                    if ((_tr_2728199 < _sr_2728043 : Bool)) {
                        _gotoNext = 2728505i32;
                    } else {
                        _gotoNext = 2728559i32;
                    };
                } else if (__value__ == (2728505i32)) {
                    {
                        final __tmp__0 = _sr_2728043;
                        final __tmp__1 = _tr_2728199;
                        _tr_2728199 = __tmp__0;
                        _sr_2728043 = __tmp__1;
                    };
                    _gotoNext = 2728559i32;
                } else if (__value__ == (2728559i32)) {
                    if ((_tr_2728199 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2728581i32;
                    } else {
                        _gotoNext = 2728834i32;
                    };
                } else if (__value__ == (2728581i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2728043 : Bool) && (_sr_2728043 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2728199 == ((_sr_2728043 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2728681i32;
                    } else {
                        _gotoNext = 2728704i32;
                    };
                } else if (__value__ == (2728681i32)) {
                    _i_2728049++;
                    _gotoNext = 2728968i32;
                } else if (__value__ == (2728704i32)) {
                    return false;
                    _gotoNext = 2728834i32;
                } else if (__value__ == (2728834i32)) {
                    _r_2728834 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2728043);
                    var __blank__ = 0i32;
                    _gotoNext = 2728864i32;
                } else if (__value__ == (2728864i32)) {
                    if (((_r_2728834 != _sr_2728043) && (_r_2728834 < _tr_2728199 : Bool) : Bool)) {
                        _gotoNext = 2728886i32;
                    } else {
                        _gotoNext = 2728923i32;
                    };
                } else if (__value__ == (2728886i32)) {
                    _r_2728834 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2728834);
                    _gotoNext = 2728864i32;
                } else if (__value__ == (2728923i32)) {
                    if (_r_2728834 == (_tr_2728199)) {
                        _gotoNext = 2728934i32;
                    } else {
                        _gotoNext = 2728954i32;
                    };
                } else if (__value__ == (2728934i32)) {
                    _i_2728049++;
                    _gotoNext = 2728968i32;
                } else if (__value__ == (2728954i32)) {
                    return false;
                    _i_2728049++;
                    _gotoNext = 2728968i32;
                } else if (__value__ == (2728967i32)) {
                    _i_2728049 = 0i32;
                    _gotoNext = 2728968i32;
                } else if (__value__ == (2728968i32)) {
                    if (_i_2728049 < (_keys_2728036.length)) {
                        _gotoNext = 2728057i32;
                    } else {
                        _gotoNext = 2729041i32;
                    };
                } else if (__value__ == (2729041i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
