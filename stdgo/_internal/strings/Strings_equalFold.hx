package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2902891:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2902653:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2902646 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2902646 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2902659 = @:invalid_type null;
        var _r_2902888:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2902809:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2902214:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2902201:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2902153:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2903444:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2902153 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2902161i32;
                } else if (__value__ == (2902161i32)) {
                    if (((_i_2902153 < (_s.length) : Bool) && (_i_2902153 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2902197i32;
                    } else {
                        _gotoNext = 2902586i32;
                    };
                } else if (__value__ == (2902197i32)) {
                    _sr_2902201 = _s[(_i_2902153 : stdgo.GoInt)];
                    _tr_2902214 = _t[(_i_2902153 : stdgo.GoInt)];
                    if (((_sr_2902201 | _tr_2902214 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902253i32;
                    } else {
                        _gotoNext = 2902297i32;
                    };
                } else if (__value__ == (2902253i32)) {
                    _gotoNext = 2902611i32;
                } else if (__value__ == (2902297i32)) {
                    if (_tr_2902214 == (_sr_2902201)) {
                        _gotoNext = 2902309i32;
                    } else {
                        _gotoNext = 2902374i32;
                    };
                } else if (__value__ == (2902309i32)) {
                    _i_2902153++;
                    _gotoNext = 2902161i32;
                } else if (__value__ == (2902374i32)) {
                    if ((_tr_2902214 < _sr_2902201 : Bool)) {
                        _gotoNext = 2902385i32;
                    } else {
                        _gotoNext = 2902460i32;
                    };
                } else if (__value__ == (2902385i32)) {
                    {
                        final __tmp__0 = _sr_2902201;
                        final __tmp__1 = _tr_2902214;
                        _tr_2902214 = __tmp__0;
                        _sr_2902201 = __tmp__1;
                    };
                    _gotoNext = 2902460i32;
                } else if (__value__ == (2902460i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2902201 : Bool) && (_sr_2902201 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2902214 == ((_sr_2902201 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2902506i32;
                    } else {
                        _gotoNext = 2902526i32;
                    };
                } else if (__value__ == (2902506i32)) {
                    _i_2902153++;
                    _gotoNext = 2902161i32;
                } else if (__value__ == (2902526i32)) {
                    return false;
                    _i_2902153++;
                    _gotoNext = 2902161i32;
                } else if (__value__ == (2902586i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2902611i32;
                } else if (__value__ == (2902611i32)) {
                    _s = (_s.__slice__(_i_2902153) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2902153) : stdgo.GoString)?.__copy__();
                    _keys_2902646 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2902646 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2902646 = (_keys_2902646.__append__(_key));
                        _values_2902646 = (_values_2902646.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2902646.length)) {
                        _gotoNext = 2903577i32;
                    } else {
                        _gotoNext = 2903651i32;
                    };
                } else if (__value__ == (2902667i32)) {
                    _sr_2902653 = _values_2902646[@:invalid_index_invalid_type _i_2902659];
                    var __blank__ = _keys_2902646[@:invalid_index_invalid_type _i_2902659];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2902736i32;
                    } else {
                        _gotoNext = 2902805i32;
                    };
                } else if (__value__ == (2902736i32)) {
                    return false;
                    _gotoNext = 2902805i32;
                } else if (__value__ == (2902805i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902843i32;
                    } else {
                        _gotoNext = 2902883i32;
                    };
                } else if (__value__ == (2902843i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2902809 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2903027i32;
                } else if (__value__ == (2902883i32)) {
                    _gotoNext = 2902883i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2902888 = __tmp__._0;
                        _size_2902891 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2902888;
                        final __tmp__1 = (_t.__slice__(_size_2902891) : stdgo.GoString)?.__copy__();
                        _tr_2902809 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903027i32;
                } else if (__value__ == (2903027i32)) {
                    if (_tr_2902809 == (_sr_2902653)) {
                        _gotoNext = 2903039i32;
                    } else {
                        _gotoNext = 2903104i32;
                    };
                } else if (__value__ == (2903039i32)) {
                    _i_2902659++;
                    _gotoNext = 2903578i32;
                } else if (__value__ == (2903104i32)) {
                    if ((_tr_2902809 < _sr_2902653 : Bool)) {
                        _gotoNext = 2903115i32;
                    } else {
                        _gotoNext = 2903169i32;
                    };
                } else if (__value__ == (2903115i32)) {
                    {
                        final __tmp__0 = _sr_2902653;
                        final __tmp__1 = _tr_2902809;
                        _tr_2902809 = __tmp__0;
                        _sr_2902653 = __tmp__1;
                    };
                    _gotoNext = 2903169i32;
                } else if (__value__ == (2903169i32)) {
                    if ((_tr_2902809 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2903191i32;
                    } else {
                        _gotoNext = 2903444i32;
                    };
                } else if (__value__ == (2903191i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2902653 : Bool) && (_sr_2902653 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2902809 == ((_sr_2902653 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2903291i32;
                    } else {
                        _gotoNext = 2903314i32;
                    };
                } else if (__value__ == (2903291i32)) {
                    _i_2902659++;
                    _gotoNext = 2903578i32;
                } else if (__value__ == (2903314i32)) {
                    return false;
                    _gotoNext = 2903444i32;
                } else if (__value__ == (2903444i32)) {
                    _r_2903444 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2902653);
                    var __blank__ = 0i32;
                    _gotoNext = 2903474i32;
                } else if (__value__ == (2903474i32)) {
                    if (((_r_2903444 != _sr_2902653) && (_r_2903444 < _tr_2902809 : Bool) : Bool)) {
                        _gotoNext = 2903496i32;
                    } else {
                        _gotoNext = 2903533i32;
                    };
                } else if (__value__ == (2903496i32)) {
                    _r_2903444 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2903444);
                    _gotoNext = 2903474i32;
                } else if (__value__ == (2903533i32)) {
                    if (_r_2903444 == (_tr_2902809)) {
                        _gotoNext = 2903544i32;
                    } else {
                        _gotoNext = 2903564i32;
                    };
                } else if (__value__ == (2903544i32)) {
                    _i_2902659++;
                    _gotoNext = 2903578i32;
                } else if (__value__ == (2903564i32)) {
                    return false;
                    _i_2902659++;
                    _gotoNext = 2903578i32;
                } else if (__value__ == (2903577i32)) {
                    _i_2902659 = 0i32;
                    _gotoNext = 2903578i32;
                } else if (__value__ == (2903578i32)) {
                    if (_i_2902659 < (_keys_2902646.length)) {
                        _gotoNext = 2902667i32;
                    } else {
                        _gotoNext = 2903651i32;
                    };
                } else if (__value__ == (2903651i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
