package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2848255:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2847620:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2847464:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2847457 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2847470 = @:invalid_type null;
        var _tr_2847025:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2847012:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2847702:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2847699:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2847457 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2846964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2846964 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2846972i32;
                } else if (__value__ == (2846972i32)) {
                    if (((_i_2846964 < (_s.length) : Bool) && (_i_2846964 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2847008i32;
                    } else {
                        _gotoNext = 2847397i32;
                    };
                } else if (__value__ == (2847008i32)) {
                    _sr_2847012 = _s[(_i_2846964 : stdgo.GoInt)];
                    _tr_2847025 = _t[(_i_2846964 : stdgo.GoInt)];
                    if (((_sr_2847012 | _tr_2847025 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847064i32;
                    } else {
                        _gotoNext = 2847108i32;
                    };
                } else if (__value__ == (2847064i32)) {
                    _gotoNext = 2847422i32;
                } else if (__value__ == (2847108i32)) {
                    if (_tr_2847025 == (_sr_2847012)) {
                        _gotoNext = 2847120i32;
                    } else {
                        _gotoNext = 2847185i32;
                    };
                } else if (__value__ == (2847120i32)) {
                    _i_2846964++;
                    _gotoNext = 2846972i32;
                } else if (__value__ == (2847185i32)) {
                    if ((_tr_2847025 < _sr_2847012 : Bool)) {
                        _gotoNext = 2847196i32;
                    } else {
                        _gotoNext = 2847271i32;
                    };
                } else if (__value__ == (2847196i32)) {
                    {
                        final __tmp__0 = _sr_2847012;
                        final __tmp__1 = _tr_2847025;
                        _tr_2847025 = __tmp__0;
                        _sr_2847012 = __tmp__1;
                    };
                    _gotoNext = 2847271i32;
                } else if (__value__ == (2847271i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2847012 : Bool) && (_sr_2847012 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2847025 == ((_sr_2847012 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2847317i32;
                    } else {
                        _gotoNext = 2847337i32;
                    };
                } else if (__value__ == (2847317i32)) {
                    _i_2846964++;
                    _gotoNext = 2846972i32;
                } else if (__value__ == (2847337i32)) {
                    return false;
                    _i_2846964++;
                    _gotoNext = 2846972i32;
                } else if (__value__ == (2847397i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2847422i32;
                } else if (__value__ == (2847422i32)) {
                    _s = (_s.__slice__(_i_2846964) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2846964) : stdgo.GoString)?.__copy__();
                    _keys_2847457 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2847457 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2847457 = (_keys_2847457.__append__(_key));
                        _values_2847457 = (_values_2847457.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2847457.length)) {
                        _gotoNext = 2848388i32;
                    } else {
                        _gotoNext = 2848462i32;
                    };
                } else if (__value__ == (2847478i32)) {
                    _sr_2847464 = _values_2847457[@:invalid_index_invalid_type _i_2847470];
                    var __blank__ = _keys_2847457[@:invalid_index_invalid_type _i_2847470];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2847547i32;
                    } else {
                        _gotoNext = 2847616i32;
                    };
                } else if (__value__ == (2847547i32)) {
                    return false;
                    _gotoNext = 2847616i32;
                } else if (__value__ == (2847616i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847654i32;
                    } else {
                        _gotoNext = 2847694i32;
                    };
                } else if (__value__ == (2847654i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2847620 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2847838i32;
                } else if (__value__ == (2847694i32)) {
                    _gotoNext = 2847694i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2847699 = @:tmpset0 __tmp__._0;
                        _size_2847702 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2847699;
                        final __tmp__1 = (_t.__slice__(_size_2847702) : stdgo.GoString)?.__copy__();
                        _tr_2847620 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2847838i32;
                } else if (__value__ == (2847838i32)) {
                    if (_tr_2847620 == (_sr_2847464)) {
                        _gotoNext = 2847850i32;
                    } else {
                        _gotoNext = 2847915i32;
                    };
                } else if (__value__ == (2847850i32)) {
                    _i_2847470++;
                    _gotoNext = 2848389i32;
                } else if (__value__ == (2847915i32)) {
                    if ((_tr_2847620 < _sr_2847464 : Bool)) {
                        _gotoNext = 2847926i32;
                    } else {
                        _gotoNext = 2847980i32;
                    };
                } else if (__value__ == (2847926i32)) {
                    {
                        final __tmp__0 = _sr_2847464;
                        final __tmp__1 = _tr_2847620;
                        _tr_2847620 = __tmp__0;
                        _sr_2847464 = __tmp__1;
                    };
                    _gotoNext = 2847980i32;
                } else if (__value__ == (2847980i32)) {
                    if ((_tr_2847620 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2848002i32;
                    } else {
                        _gotoNext = 2848255i32;
                    };
                } else if (__value__ == (2848002i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2847464 : Bool) && (_sr_2847464 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2847620 == ((_sr_2847464 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2848102i32;
                    } else {
                        _gotoNext = 2848125i32;
                    };
                } else if (__value__ == (2848102i32)) {
                    _i_2847470++;
                    _gotoNext = 2848389i32;
                } else if (__value__ == (2848125i32)) {
                    return false;
                    _gotoNext = 2848255i32;
                } else if (__value__ == (2848255i32)) {
                    _r_2848255 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2847464);
                    var __blank__ = 0i32;
                    _gotoNext = 2848285i32;
                } else if (__value__ == (2848285i32)) {
                    if (((_r_2848255 != _sr_2847464) && (_r_2848255 < _tr_2847620 : Bool) : Bool)) {
                        _gotoNext = 2848307i32;
                    } else {
                        _gotoNext = 2848344i32;
                    };
                } else if (__value__ == (2848307i32)) {
                    _r_2848255 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2848255);
                    _gotoNext = 2848285i32;
                } else if (__value__ == (2848344i32)) {
                    if (_r_2848255 == (_tr_2847620)) {
                        _gotoNext = 2848355i32;
                    } else {
                        _gotoNext = 2848375i32;
                    };
                } else if (__value__ == (2848355i32)) {
                    _i_2847470++;
                    _gotoNext = 2848389i32;
                } else if (__value__ == (2848375i32)) {
                    return false;
                    _i_2847470++;
                    _gotoNext = 2848389i32;
                } else if (__value__ == (2848388i32)) {
                    _i_2847470 = 0i32;
                    _gotoNext = 2848389i32;
                } else if (__value__ == (2848389i32)) {
                    if (_i_2847470 < (_keys_2847457.length)) {
                        _gotoNext = 2847478i32;
                    } else {
                        _gotoNext = 2848462i32;
                    };
                } else if (__value__ == (2848462i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
