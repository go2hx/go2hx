package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_3031249:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3031242 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3031242 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_3030810:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3030797:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3030749:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3031487:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3031484:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3032040:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3031405:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3031255 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3030749 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3030757i32;
                } else if (__value__ == (3030757i32)) {
                    if (((_i_3030749 < (_s.length) : Bool) && (_i_3030749 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3030793i32;
                    } else {
                        _gotoNext = 3031182i32;
                    };
                } else if (__value__ == (3030793i32)) {
                    _sr_3030797 = _s[(_i_3030749 : stdgo.GoInt)];
                    _tr_3030810 = _t[(_i_3030749 : stdgo.GoInt)];
                    if (((_sr_3030797 | _tr_3030810 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3030849i32;
                    } else {
                        _gotoNext = 3030893i32;
                    };
                } else if (__value__ == (3030849i32)) {
                    _gotoNext = 3031207i32;
                } else if (__value__ == (3030893i32)) {
                    if (_tr_3030810 == (_sr_3030797)) {
                        _gotoNext = 3030905i32;
                    } else {
                        _gotoNext = 3030970i32;
                    };
                } else if (__value__ == (3030905i32)) {
                    _i_3030749++;
                    _gotoNext = 3030757i32;
                } else if (__value__ == (3030970i32)) {
                    if ((_tr_3030810 < _sr_3030797 : Bool)) {
                        _gotoNext = 3030981i32;
                    } else {
                        _gotoNext = 3031056i32;
                    };
                } else if (__value__ == (3030981i32)) {
                    {
                        final __tmp__0 = _sr_3030797;
                        final __tmp__1 = _tr_3030810;
                        _tr_3030810 = __tmp__0;
                        _sr_3030797 = __tmp__1;
                    };
                    _gotoNext = 3031056i32;
                } else if (__value__ == (3031056i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3030797 : Bool) && (_sr_3030797 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3030810 == ((_sr_3030797 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3031102i32;
                    } else {
                        _gotoNext = 3031122i32;
                    };
                } else if (__value__ == (3031102i32)) {
                    _i_3030749++;
                    _gotoNext = 3030757i32;
                } else if (__value__ == (3031122i32)) {
                    return false;
                    _i_3030749++;
                    _gotoNext = 3030757i32;
                } else if (__value__ == (3031182i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3031207i32;
                } else if (__value__ == (3031207i32)) {
                    _s = (_s.__slice__(_i_3030749) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3030749) : stdgo.GoString)?.__copy__();
                    _keys_3031242 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3031242 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3031242 = (_keys_3031242.__append__(_key));
                        _values_3031242 = (_values_3031242.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3031242.length)) {
                        _gotoNext = 3032173i32;
                    } else {
                        _gotoNext = 3032247i32;
                    };
                } else if (__value__ == (3031263i32)) {
                    _sr_3031249 = _values_3031242[@:invalid_index_invalid_type _i_3031255];
                    var __blank__ = _keys_3031242[@:invalid_index_invalid_type _i_3031255];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3031332i32;
                    } else {
                        _gotoNext = 3031401i32;
                    };
                } else if (__value__ == (3031332i32)) {
                    return false;
                    _gotoNext = 3031401i32;
                } else if (__value__ == (3031401i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3031439i32;
                    } else {
                        _gotoNext = 3031479i32;
                    };
                } else if (__value__ == (3031439i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3031405 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3031623i32;
                } else if (__value__ == (3031479i32)) {
                    _gotoNext = 3031479i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3031484 = __tmp__._0;
                        _size_3031487 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3031484;
                        final __tmp__1 = (_t.__slice__(_size_3031487) : stdgo.GoString)?.__copy__();
                        _tr_3031405 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3031623i32;
                } else if (__value__ == (3031623i32)) {
                    if (_tr_3031405 == (_sr_3031249)) {
                        _gotoNext = 3031635i32;
                    } else {
                        _gotoNext = 3031700i32;
                    };
                } else if (__value__ == (3031635i32)) {
                    _i_3031255++;
                    _gotoNext = 3032174i32;
                } else if (__value__ == (3031700i32)) {
                    if ((_tr_3031405 < _sr_3031249 : Bool)) {
                        _gotoNext = 3031711i32;
                    } else {
                        _gotoNext = 3031765i32;
                    };
                } else if (__value__ == (3031711i32)) {
                    {
                        final __tmp__0 = _sr_3031249;
                        final __tmp__1 = _tr_3031405;
                        _tr_3031405 = __tmp__0;
                        _sr_3031249 = __tmp__1;
                    };
                    _gotoNext = 3031765i32;
                } else if (__value__ == (3031765i32)) {
                    if ((_tr_3031405 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3031787i32;
                    } else {
                        _gotoNext = 3032040i32;
                    };
                } else if (__value__ == (3031787i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3031249 : Bool) && (_sr_3031249 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3031405 == ((_sr_3031249 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3031887i32;
                    } else {
                        _gotoNext = 3031910i32;
                    };
                } else if (__value__ == (3031887i32)) {
                    _i_3031255++;
                    _gotoNext = 3032174i32;
                } else if (__value__ == (3031910i32)) {
                    return false;
                    _gotoNext = 3032040i32;
                } else if (__value__ == (3032040i32)) {
                    _r_3032040 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3031249);
                    var __blank__ = 0i32;
                    _gotoNext = 3032070i32;
                } else if (__value__ == (3032070i32)) {
                    if (((_r_3032040 != _sr_3031249) && (_r_3032040 < _tr_3031405 : Bool) : Bool)) {
                        _gotoNext = 3032092i32;
                    } else {
                        _gotoNext = 3032129i32;
                    };
                } else if (__value__ == (3032092i32)) {
                    _r_3032040 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3032040);
                    _gotoNext = 3032070i32;
                } else if (__value__ == (3032129i32)) {
                    if (_r_3032040 == (_tr_3031405)) {
                        _gotoNext = 3032140i32;
                    } else {
                        _gotoNext = 3032160i32;
                    };
                } else if (__value__ == (3032140i32)) {
                    _i_3031255++;
                    _gotoNext = 3032174i32;
                } else if (__value__ == (3032160i32)) {
                    return false;
                    _i_3031255++;
                    _gotoNext = 3032174i32;
                } else if (__value__ == (3032173i32)) {
                    _i_3031255 = 0i32;
                    _gotoNext = 3032174i32;
                } else if (__value__ == (3032174i32)) {
                    if (_i_3031255 < (_keys_3031242.length)) {
                        _gotoNext = 3031263i32;
                    } else {
                        _gotoNext = 3032247i32;
                    };
                } else if (__value__ == (3032247i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
