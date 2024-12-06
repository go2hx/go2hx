package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2846591:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _values_2847036 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2847036 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2847049 = @:invalid_type null;
        var _i_2846543:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2847834:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2847281:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2847278:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2847199:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2847043:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2846604:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2846543 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2846551i32;
                } else if (__value__ == (2846551i32)) {
                    if (((_i_2846543 < (_s.length) : Bool) && (_i_2846543 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2846587i32;
                    } else {
                        _gotoNext = 2846976i32;
                    };
                } else if (__value__ == (2846587i32)) {
                    _sr_2846591 = _s[(_i_2846543 : stdgo.GoInt)];
                    _tr_2846604 = _t[(_i_2846543 : stdgo.GoInt)];
                    if (((_sr_2846591 | _tr_2846604 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2846643i32;
                    } else {
                        _gotoNext = 2846687i32;
                    };
                } else if (__value__ == (2846643i32)) {
                    _gotoNext = 2847001i32;
                } else if (__value__ == (2846687i32)) {
                    if (_tr_2846604 == (_sr_2846591)) {
                        _gotoNext = 2846699i32;
                    } else {
                        _gotoNext = 2846764i32;
                    };
                } else if (__value__ == (2846699i32)) {
                    _i_2846543++;
                    _gotoNext = 2846551i32;
                } else if (__value__ == (2846764i32)) {
                    if ((_tr_2846604 < _sr_2846591 : Bool)) {
                        _gotoNext = 2846775i32;
                    } else {
                        _gotoNext = 2846850i32;
                    };
                } else if (__value__ == (2846775i32)) {
                    {
                        final __tmp__0 = _sr_2846591;
                        final __tmp__1 = _tr_2846604;
                        _tr_2846604 = __tmp__0;
                        _sr_2846591 = __tmp__1;
                    };
                    _gotoNext = 2846850i32;
                } else if (__value__ == (2846850i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2846591 : Bool) && (_sr_2846591 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2846604 == ((_sr_2846591 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2846896i32;
                    } else {
                        _gotoNext = 2846916i32;
                    };
                } else if (__value__ == (2846896i32)) {
                    _i_2846543++;
                    _gotoNext = 2846551i32;
                } else if (__value__ == (2846916i32)) {
                    return false;
                    _i_2846543++;
                    _gotoNext = 2846551i32;
                } else if (__value__ == (2846976i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2847001i32;
                } else if (__value__ == (2847001i32)) {
                    _s = (_s.__slice__(_i_2846543) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2846543) : stdgo.GoString)?.__copy__();
                    _keys_2847036 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2847036 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2847036 = (_keys_2847036.__append__(_key));
                        _values_2847036 = (_values_2847036.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2847036.length)) {
                        _gotoNext = 2847967i32;
                    } else {
                        _gotoNext = 2848041i32;
                    };
                } else if (__value__ == (2847057i32)) {
                    _sr_2847043 = _values_2847036[@:invalid_index_invalid_type _i_2847049];
                    var __blank__ = _keys_2847036[@:invalid_index_invalid_type _i_2847049];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2847126i32;
                    } else {
                        _gotoNext = 2847195i32;
                    };
                } else if (__value__ == (2847126i32)) {
                    return false;
                    _gotoNext = 2847195i32;
                } else if (__value__ == (2847195i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2847233i32;
                    } else {
                        _gotoNext = 2847273i32;
                    };
                } else if (__value__ == (2847233i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2847199 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2847417i32;
                } else if (__value__ == (2847273i32)) {
                    _gotoNext = 2847273i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2847278 = __tmp__._0;
                        _size_2847281 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2847278;
                        final __tmp__1 = (_t.__slice__(_size_2847281) : stdgo.GoString)?.__copy__();
                        _tr_2847199 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2847417i32;
                } else if (__value__ == (2847417i32)) {
                    if (_tr_2847199 == (_sr_2847043)) {
                        _gotoNext = 2847429i32;
                    } else {
                        _gotoNext = 2847494i32;
                    };
                } else if (__value__ == (2847429i32)) {
                    _i_2847049++;
                    _gotoNext = 2847968i32;
                } else if (__value__ == (2847494i32)) {
                    if ((_tr_2847199 < _sr_2847043 : Bool)) {
                        _gotoNext = 2847505i32;
                    } else {
                        _gotoNext = 2847559i32;
                    };
                } else if (__value__ == (2847505i32)) {
                    {
                        final __tmp__0 = _sr_2847043;
                        final __tmp__1 = _tr_2847199;
                        _tr_2847199 = __tmp__0;
                        _sr_2847043 = __tmp__1;
                    };
                    _gotoNext = 2847559i32;
                } else if (__value__ == (2847559i32)) {
                    if ((_tr_2847199 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2847581i32;
                    } else {
                        _gotoNext = 2847834i32;
                    };
                } else if (__value__ == (2847581i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2847043 : Bool) && (_sr_2847043 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2847199 == ((_sr_2847043 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2847681i32;
                    } else {
                        _gotoNext = 2847704i32;
                    };
                } else if (__value__ == (2847681i32)) {
                    _i_2847049++;
                    _gotoNext = 2847968i32;
                } else if (__value__ == (2847704i32)) {
                    return false;
                    _gotoNext = 2847834i32;
                } else if (__value__ == (2847834i32)) {
                    _r_2847834 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2847043);
                    var __blank__ = 0i32;
                    _gotoNext = 2847864i32;
                } else if (__value__ == (2847864i32)) {
                    if (((_r_2847834 != _sr_2847043) && (_r_2847834 < _tr_2847199 : Bool) : Bool)) {
                        _gotoNext = 2847886i32;
                    } else {
                        _gotoNext = 2847923i32;
                    };
                } else if (__value__ == (2847886i32)) {
                    _r_2847834 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2847834);
                    _gotoNext = 2847864i32;
                } else if (__value__ == (2847923i32)) {
                    if (_r_2847834 == (_tr_2847199)) {
                        _gotoNext = 2847934i32;
                    } else {
                        _gotoNext = 2847954i32;
                    };
                } else if (__value__ == (2847934i32)) {
                    _i_2847049++;
                    _gotoNext = 2847968i32;
                } else if (__value__ == (2847954i32)) {
                    return false;
                    _i_2847049++;
                    _gotoNext = 2847968i32;
                } else if (__value__ == (2847967i32)) {
                    _i_2847049 = 0i32;
                    _gotoNext = 2847968i32;
                } else if (__value__ == (2847968i32)) {
                    if (_i_2847049 < (_keys_2847036.length)) {
                        _gotoNext = 2847057i32;
                    } else {
                        _gotoNext = 2848041i32;
                    };
                } else if (__value__ == (2848041i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
