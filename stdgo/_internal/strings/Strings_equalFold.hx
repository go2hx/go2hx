package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2918078:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2917922:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2917915 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2917915 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2917483:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2917470:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2918713:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2918160:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2918157:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2917928 = @:invalid_type null;
        var _i_2917422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2917422 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2917430i32;
                } else if (__value__ == (2917430i32)) {
                    if (((_i_2917422 < (_s.length) : Bool) && (_i_2917422 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2917466i32;
                    } else {
                        _gotoNext = 2917855i32;
                    };
                } else if (__value__ == (2917466i32)) {
                    _sr_2917470 = _s[(_i_2917422 : stdgo.GoInt)];
                    _tr_2917483 = _t[(_i_2917422 : stdgo.GoInt)];
                    if (((_sr_2917470 | _tr_2917483 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2917522i32;
                    } else {
                        _gotoNext = 2917566i32;
                    };
                } else if (__value__ == (2917522i32)) {
                    _gotoNext = 2917880i32;
                } else if (__value__ == (2917566i32)) {
                    if (_tr_2917483 == (_sr_2917470)) {
                        _gotoNext = 2917578i32;
                    } else {
                        _gotoNext = 2917643i32;
                    };
                } else if (__value__ == (2917578i32)) {
                    _i_2917422++;
                    _gotoNext = 2917430i32;
                } else if (__value__ == (2917643i32)) {
                    if ((_tr_2917483 < _sr_2917470 : Bool)) {
                        _gotoNext = 2917654i32;
                    } else {
                        _gotoNext = 2917729i32;
                    };
                } else if (__value__ == (2917654i32)) {
                    {
                        final __tmp__0 = _sr_2917470;
                        final __tmp__1 = _tr_2917483;
                        _tr_2917483 = __tmp__0;
                        _sr_2917470 = __tmp__1;
                    };
                    _gotoNext = 2917729i32;
                } else if (__value__ == (2917729i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2917470 : Bool) && (_sr_2917470 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2917483 == ((_sr_2917470 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2917775i32;
                    } else {
                        _gotoNext = 2917795i32;
                    };
                } else if (__value__ == (2917775i32)) {
                    _i_2917422++;
                    _gotoNext = 2917430i32;
                } else if (__value__ == (2917795i32)) {
                    return false;
                    _i_2917422++;
                    _gotoNext = 2917430i32;
                } else if (__value__ == (2917855i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2917880i32;
                } else if (__value__ == (2917880i32)) {
                    _s = (_s.__slice__(_i_2917422) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2917422) : stdgo.GoString)?.__copy__();
                    _keys_2917915 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2917915 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2917915 = (_keys_2917915.__append__(_key));
                        _values_2917915 = (_values_2917915.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2917915.length)) {
                        _gotoNext = 2918846i32;
                    } else {
                        _gotoNext = 2918920i32;
                    };
                } else if (__value__ == (2917936i32)) {
                    _sr_2917922 = _values_2917915[@:invalid_index_invalid_type _i_2917928];
                    var __blank__ = _keys_2917915[@:invalid_index_invalid_type _i_2917928];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2918005i32;
                    } else {
                        _gotoNext = 2918074i32;
                    };
                } else if (__value__ == (2918005i32)) {
                    return false;
                    _gotoNext = 2918074i32;
                } else if (__value__ == (2918074i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2918112i32;
                    } else {
                        _gotoNext = 2918152i32;
                    };
                } else if (__value__ == (2918112i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2918078 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2918296i32;
                } else if (__value__ == (2918152i32)) {
                    _gotoNext = 2918152i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2918157 = __tmp__._0;
                        _size_2918160 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2918157;
                        final __tmp__1 = (_t.__slice__(_size_2918160) : stdgo.GoString)?.__copy__();
                        _tr_2918078 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2918296i32;
                } else if (__value__ == (2918296i32)) {
                    if (_tr_2918078 == (_sr_2917922)) {
                        _gotoNext = 2918308i32;
                    } else {
                        _gotoNext = 2918373i32;
                    };
                } else if (__value__ == (2918308i32)) {
                    _i_2917928++;
                    _gotoNext = 2918847i32;
                } else if (__value__ == (2918373i32)) {
                    if ((_tr_2918078 < _sr_2917922 : Bool)) {
                        _gotoNext = 2918384i32;
                    } else {
                        _gotoNext = 2918438i32;
                    };
                } else if (__value__ == (2918384i32)) {
                    {
                        final __tmp__0 = _sr_2917922;
                        final __tmp__1 = _tr_2918078;
                        _tr_2918078 = __tmp__0;
                        _sr_2917922 = __tmp__1;
                    };
                    _gotoNext = 2918438i32;
                } else if (__value__ == (2918438i32)) {
                    if ((_tr_2918078 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2918460i32;
                    } else {
                        _gotoNext = 2918713i32;
                    };
                } else if (__value__ == (2918460i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2917922 : Bool) && (_sr_2917922 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2918078 == ((_sr_2917922 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2918560i32;
                    } else {
                        _gotoNext = 2918583i32;
                    };
                } else if (__value__ == (2918560i32)) {
                    _i_2917928++;
                    _gotoNext = 2918847i32;
                } else if (__value__ == (2918583i32)) {
                    return false;
                    _gotoNext = 2918713i32;
                } else if (__value__ == (2918713i32)) {
                    _r_2918713 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2917922);
                    var __blank__ = 0i32;
                    _gotoNext = 2918743i32;
                } else if (__value__ == (2918743i32)) {
                    if (((_r_2918713 != _sr_2917922) && (_r_2918713 < _tr_2918078 : Bool) : Bool)) {
                        _gotoNext = 2918765i32;
                    } else {
                        _gotoNext = 2918802i32;
                    };
                } else if (__value__ == (2918765i32)) {
                    _r_2918713 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2918713);
                    _gotoNext = 2918743i32;
                } else if (__value__ == (2918802i32)) {
                    if (_r_2918713 == (_tr_2918078)) {
                        _gotoNext = 2918813i32;
                    } else {
                        _gotoNext = 2918833i32;
                    };
                } else if (__value__ == (2918813i32)) {
                    _i_2917928++;
                    _gotoNext = 2918847i32;
                } else if (__value__ == (2918833i32)) {
                    return false;
                    _i_2917928++;
                    _gotoNext = 2918847i32;
                } else if (__value__ == (2918846i32)) {
                    _i_2917928 = 0i32;
                    _gotoNext = 2918847i32;
                } else if (__value__ == (2918847i32)) {
                    if (_i_2917928 < (_keys_2917915.length)) {
                        _gotoNext = 2917936i32;
                    } else {
                        _gotoNext = 2918920i32;
                    };
                } else if (__value__ == (2918920i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
