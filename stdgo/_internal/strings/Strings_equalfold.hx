package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2915685:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2915450:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2915443 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2915443 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2915456 = @:invalid_type null;
        var _sr_2914998:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2914950:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2916241:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2915688:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2915606:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2915011:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2914950 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2914958i32;
                } else if (__value__ == (2914958i32)) {
                    if (((_i_2914950 < (_s.length) : Bool) && (_i_2914950 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2914994i32;
                    } else {
                        _gotoNext = 2915383i32;
                    };
                } else if (__value__ == (2914994i32)) {
                    _sr_2914998 = _s[(_i_2914950 : stdgo.GoInt)];
                    _tr_2915011 = _t[(_i_2914950 : stdgo.GoInt)];
                    if (((_sr_2914998 | _tr_2915011 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2915050i32;
                    } else {
                        _gotoNext = 2915094i32;
                    };
                } else if (__value__ == (2915050i32)) {
                    _gotoNext = 2915408i32;
                } else if (__value__ == (2915094i32)) {
                    if (_tr_2915011 == (_sr_2914998)) {
                        _gotoNext = 2915106i32;
                    } else {
                        _gotoNext = 2915171i32;
                    };
                } else if (__value__ == (2915106i32)) {
                    _i_2914950++;
                    _gotoNext = 2914958i32;
                } else if (__value__ == (2915171i32)) {
                    if ((_tr_2915011 < _sr_2914998 : Bool)) {
                        _gotoNext = 2915182i32;
                    } else {
                        _gotoNext = 2915257i32;
                    };
                } else if (__value__ == (2915182i32)) {
                    {
                        final __tmp__0 = _sr_2914998;
                        final __tmp__1 = _tr_2915011;
                        _tr_2915011 = __tmp__0;
                        _sr_2914998 = __tmp__1;
                    };
                    _gotoNext = 2915257i32;
                } else if (__value__ == (2915257i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2914998 : Bool) && (_sr_2914998 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2915011 == ((_sr_2914998 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2915303i32;
                    } else {
                        _gotoNext = 2915323i32;
                    };
                } else if (__value__ == (2915303i32)) {
                    _i_2914950++;
                    _gotoNext = 2914958i32;
                } else if (__value__ == (2915323i32)) {
                    return false;
                    _i_2914950++;
                    _gotoNext = 2914958i32;
                } else if (__value__ == (2915383i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2915408i32;
                } else if (__value__ == (2915408i32)) {
                    _s = (_s.__slice__(_i_2914950) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2914950) : stdgo.GoString)?.__copy__();
                    _keys_2915443 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2915443 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2915443 = (_keys_2915443.__append__(_key));
                        _values_2915443 = (_values_2915443.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2915443.length)) {
                        _gotoNext = 2916374i32;
                    } else {
                        _gotoNext = 2916448i32;
                    };
                } else if (__value__ == (2915464i32)) {
                    _sr_2915450 = _values_2915443[@:invalid_index_invalid_type _i_2915456];
                    var __blank__ = _keys_2915443[@:invalid_index_invalid_type _i_2915456];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2915533i32;
                    } else {
                        _gotoNext = 2915602i32;
                    };
                } else if (__value__ == (2915533i32)) {
                    return false;
                    _gotoNext = 2915602i32;
                } else if (__value__ == (2915602i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2915640i32;
                    } else {
                        _gotoNext = 2915680i32;
                    };
                } else if (__value__ == (2915640i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2915606 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2915824i32;
                } else if (__value__ == (2915680i32)) {
                    _gotoNext = 2915680i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2915685 = @:tmpset0 __tmp__._0;
                        _size_2915688 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2915685;
                        final __tmp__1 = (_t.__slice__(_size_2915688) : stdgo.GoString)?.__copy__();
                        _tr_2915606 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2915824i32;
                } else if (__value__ == (2915824i32)) {
                    if (_tr_2915606 == (_sr_2915450)) {
                        _gotoNext = 2915836i32;
                    } else {
                        _gotoNext = 2915901i32;
                    };
                } else if (__value__ == (2915836i32)) {
                    _i_2915456++;
                    _gotoNext = 2916375i32;
                } else if (__value__ == (2915901i32)) {
                    if ((_tr_2915606 < _sr_2915450 : Bool)) {
                        _gotoNext = 2915912i32;
                    } else {
                        _gotoNext = 2915966i32;
                    };
                } else if (__value__ == (2915912i32)) {
                    {
                        final __tmp__0 = _sr_2915450;
                        final __tmp__1 = _tr_2915606;
                        _tr_2915606 = __tmp__0;
                        _sr_2915450 = __tmp__1;
                    };
                    _gotoNext = 2915966i32;
                } else if (__value__ == (2915966i32)) {
                    if ((_tr_2915606 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2915988i32;
                    } else {
                        _gotoNext = 2916241i32;
                    };
                } else if (__value__ == (2915988i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2915450 : Bool) && (_sr_2915450 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2915606 == ((_sr_2915450 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2916088i32;
                    } else {
                        _gotoNext = 2916111i32;
                    };
                } else if (__value__ == (2916088i32)) {
                    _i_2915456++;
                    _gotoNext = 2916375i32;
                } else if (__value__ == (2916111i32)) {
                    return false;
                    _gotoNext = 2916241i32;
                } else if (__value__ == (2916241i32)) {
                    _r_2916241 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2915450);
                    var __blank__ = 0i32;
                    _gotoNext = 2916271i32;
                } else if (__value__ == (2916271i32)) {
                    if (((_r_2916241 != _sr_2915450) && (_r_2916241 < _tr_2915606 : Bool) : Bool)) {
                        _gotoNext = 2916293i32;
                    } else {
                        _gotoNext = 2916330i32;
                    };
                } else if (__value__ == (2916293i32)) {
                    _r_2916241 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2916241);
                    _gotoNext = 2916271i32;
                } else if (__value__ == (2916330i32)) {
                    if (_r_2916241 == (_tr_2915606)) {
                        _gotoNext = 2916341i32;
                    } else {
                        _gotoNext = 2916361i32;
                    };
                } else if (__value__ == (2916341i32)) {
                    _i_2915456++;
                    _gotoNext = 2916375i32;
                } else if (__value__ == (2916361i32)) {
                    return false;
                    _i_2915456++;
                    _gotoNext = 2916375i32;
                } else if (__value__ == (2916374i32)) {
                    _i_2915456 = 0i32;
                    _gotoNext = 2916375i32;
                } else if (__value__ == (2916375i32)) {
                    if (_i_2915456 < (_keys_2915443.length)) {
                        _gotoNext = 2915464i32;
                    } else {
                        _gotoNext = 2916448i32;
                    };
                } else if (__value__ == (2916448i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
