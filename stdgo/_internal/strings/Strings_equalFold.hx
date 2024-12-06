package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2918370:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2918367:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2918288:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2918138 = @:invalid_type null;
        var _tr_2917693:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2917680:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2918923:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2918132:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2918125 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2918125 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2917632:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2917632 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2917640i32;
                } else if (__value__ == (2917640i32)) {
                    if (((_i_2917632 < (_s.length) : Bool) && (_i_2917632 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2917676i32;
                    } else {
                        _gotoNext = 2918065i32;
                    };
                } else if (__value__ == (2917676i32)) {
                    _sr_2917680 = _s[(_i_2917632 : stdgo.GoInt)];
                    _tr_2917693 = _t[(_i_2917632 : stdgo.GoInt)];
                    if (((_sr_2917680 | _tr_2917693 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2917732i32;
                    } else {
                        _gotoNext = 2917776i32;
                    };
                } else if (__value__ == (2917732i32)) {
                    _gotoNext = 2918090i32;
                } else if (__value__ == (2917776i32)) {
                    if (_tr_2917693 == (_sr_2917680)) {
                        _gotoNext = 2917788i32;
                    } else {
                        _gotoNext = 2917853i32;
                    };
                } else if (__value__ == (2917788i32)) {
                    _i_2917632++;
                    _gotoNext = 2917640i32;
                } else if (__value__ == (2917853i32)) {
                    if ((_tr_2917693 < _sr_2917680 : Bool)) {
                        _gotoNext = 2917864i32;
                    } else {
                        _gotoNext = 2917939i32;
                    };
                } else if (__value__ == (2917864i32)) {
                    {
                        final __tmp__0 = _sr_2917680;
                        final __tmp__1 = _tr_2917693;
                        _tr_2917693 = __tmp__0;
                        _sr_2917680 = __tmp__1;
                    };
                    _gotoNext = 2917939i32;
                } else if (__value__ == (2917939i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2917680 : Bool) && (_sr_2917680 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2917693 == ((_sr_2917680 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2917985i32;
                    } else {
                        _gotoNext = 2918005i32;
                    };
                } else if (__value__ == (2917985i32)) {
                    _i_2917632++;
                    _gotoNext = 2917640i32;
                } else if (__value__ == (2918005i32)) {
                    return false;
                    _i_2917632++;
                    _gotoNext = 2917640i32;
                } else if (__value__ == (2918065i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2918090i32;
                } else if (__value__ == (2918090i32)) {
                    _s = (_s.__slice__(_i_2917632) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2917632) : stdgo.GoString)?.__copy__();
                    _keys_2918125 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2918125 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2918125 = (_keys_2918125.__append__(_key));
                        _values_2918125 = (_values_2918125.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2918125.length)) {
                        _gotoNext = 2919056i32;
                    } else {
                        _gotoNext = 2919130i32;
                    };
                } else if (__value__ == (2918146i32)) {
                    _sr_2918132 = _values_2918125[@:invalid_index_invalid_type _i_2918138];
                    var __blank__ = _keys_2918125[@:invalid_index_invalid_type _i_2918138];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2918215i32;
                    } else {
                        _gotoNext = 2918284i32;
                    };
                } else if (__value__ == (2918215i32)) {
                    return false;
                    _gotoNext = 2918284i32;
                } else if (__value__ == (2918284i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2918322i32;
                    } else {
                        _gotoNext = 2918362i32;
                    };
                } else if (__value__ == (2918322i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2918288 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2918506i32;
                } else if (__value__ == (2918362i32)) {
                    _gotoNext = 2918362i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2918367 = __tmp__._0;
                        _size_2918370 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2918367;
                        final __tmp__1 = (_t.__slice__(_size_2918370) : stdgo.GoString)?.__copy__();
                        _tr_2918288 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2918506i32;
                } else if (__value__ == (2918506i32)) {
                    if (_tr_2918288 == (_sr_2918132)) {
                        _gotoNext = 2918518i32;
                    } else {
                        _gotoNext = 2918583i32;
                    };
                } else if (__value__ == (2918518i32)) {
                    _i_2918138++;
                    _gotoNext = 2919057i32;
                } else if (__value__ == (2918583i32)) {
                    if ((_tr_2918288 < _sr_2918132 : Bool)) {
                        _gotoNext = 2918594i32;
                    } else {
                        _gotoNext = 2918648i32;
                    };
                } else if (__value__ == (2918594i32)) {
                    {
                        final __tmp__0 = _sr_2918132;
                        final __tmp__1 = _tr_2918288;
                        _tr_2918288 = __tmp__0;
                        _sr_2918132 = __tmp__1;
                    };
                    _gotoNext = 2918648i32;
                } else if (__value__ == (2918648i32)) {
                    if ((_tr_2918288 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2918670i32;
                    } else {
                        _gotoNext = 2918923i32;
                    };
                } else if (__value__ == (2918670i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2918132 : Bool) && (_sr_2918132 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2918288 == ((_sr_2918132 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2918770i32;
                    } else {
                        _gotoNext = 2918793i32;
                    };
                } else if (__value__ == (2918770i32)) {
                    _i_2918138++;
                    _gotoNext = 2919057i32;
                } else if (__value__ == (2918793i32)) {
                    return false;
                    _gotoNext = 2918923i32;
                } else if (__value__ == (2918923i32)) {
                    _r_2918923 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2918132);
                    var __blank__ = 0i32;
                    _gotoNext = 2918953i32;
                } else if (__value__ == (2918953i32)) {
                    if (((_r_2918923 != _sr_2918132) && (_r_2918923 < _tr_2918288 : Bool) : Bool)) {
                        _gotoNext = 2918975i32;
                    } else {
                        _gotoNext = 2919012i32;
                    };
                } else if (__value__ == (2918975i32)) {
                    _r_2918923 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2918923);
                    _gotoNext = 2918953i32;
                } else if (__value__ == (2919012i32)) {
                    if (_r_2918923 == (_tr_2918288)) {
                        _gotoNext = 2919023i32;
                    } else {
                        _gotoNext = 2919043i32;
                    };
                } else if (__value__ == (2919023i32)) {
                    _i_2918138++;
                    _gotoNext = 2919057i32;
                } else if (__value__ == (2919043i32)) {
                    return false;
                    _i_2918138++;
                    _gotoNext = 2919057i32;
                } else if (__value__ == (2919056i32)) {
                    _i_2918138 = 0i32;
                    _gotoNext = 2919057i32;
                } else if (__value__ == (2919057i32)) {
                    if (_i_2918138 < (_keys_2918125.length)) {
                        _gotoNext = 2918146i32;
                    } else {
                        _gotoNext = 2919130i32;
                    };
                } else if (__value__ == (2919130i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
