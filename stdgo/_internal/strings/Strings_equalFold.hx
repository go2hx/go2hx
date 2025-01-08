package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2999444:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2998891:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2998888:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2998809:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2998646 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2998659 = @:invalid_type null;
        var _sr_2998653:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2998646 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2998214:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2998201:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2998153:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2998153 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2998161i32;
                } else if (__value__ == (2998161i32)) {
                    if (((_i_2998153 < (_s.length) : Bool) && (_i_2998153 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2998197i32;
                    } else {
                        _gotoNext = 2998586i32;
                    };
                } else if (__value__ == (2998197i32)) {
                    _sr_2998201 = _s[(_i_2998153 : stdgo.GoInt)];
                    _tr_2998214 = _t[(_i_2998153 : stdgo.GoInt)];
                    if (((_sr_2998201 | _tr_2998214 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2998253i32;
                    } else {
                        _gotoNext = 2998297i32;
                    };
                } else if (__value__ == (2998253i32)) {
                    _gotoNext = 2998611i32;
                } else if (__value__ == (2998297i32)) {
                    if (_tr_2998214 == (_sr_2998201)) {
                        _gotoNext = 2998309i32;
                    } else {
                        _gotoNext = 2998374i32;
                    };
                } else if (__value__ == (2998309i32)) {
                    _i_2998153++;
                    _gotoNext = 2998161i32;
                } else if (__value__ == (2998374i32)) {
                    if ((_tr_2998214 < _sr_2998201 : Bool)) {
                        _gotoNext = 2998385i32;
                    } else {
                        _gotoNext = 2998460i32;
                    };
                } else if (__value__ == (2998385i32)) {
                    {
                        final __tmp__0 = _sr_2998201;
                        final __tmp__1 = _tr_2998214;
                        _tr_2998214 = __tmp__0;
                        _sr_2998201 = __tmp__1;
                    };
                    _gotoNext = 2998460i32;
                } else if (__value__ == (2998460i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2998201 : Bool) && (_sr_2998201 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2998214 == ((_sr_2998201 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2998506i32;
                    } else {
                        _gotoNext = 2998526i32;
                    };
                } else if (__value__ == (2998506i32)) {
                    _i_2998153++;
                    _gotoNext = 2998161i32;
                } else if (__value__ == (2998526i32)) {
                    return false;
                    _i_2998153++;
                    _gotoNext = 2998161i32;
                } else if (__value__ == (2998586i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2998611i32;
                } else if (__value__ == (2998611i32)) {
                    _s = (_s.__slice__(_i_2998153) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2998153) : stdgo.GoString)?.__copy__();
                    _keys_2998646 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2998646 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2998646 = (_keys_2998646.__append__(_key));
                        _values_2998646 = (_values_2998646.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2998646.length)) {
                        _gotoNext = 2999577i32;
                    } else {
                        _gotoNext = 2999651i32;
                    };
                } else if (__value__ == (2998667i32)) {
                    _sr_2998653 = _values_2998646[@:invalid_index_invalid_type _i_2998659];
                    var __blank__ = _keys_2998646[@:invalid_index_invalid_type _i_2998659];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2998736i32;
                    } else {
                        _gotoNext = 2998805i32;
                    };
                } else if (__value__ == (2998736i32)) {
                    return false;
                    _gotoNext = 2998805i32;
                } else if (__value__ == (2998805i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2998843i32;
                    } else {
                        _gotoNext = 2998883i32;
                    };
                } else if (__value__ == (2998843i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2998809 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2999027i32;
                } else if (__value__ == (2998883i32)) {
                    _gotoNext = 2998883i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2998888 = __tmp__._0;
                        _size_2998891 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2998888;
                        final __tmp__1 = (_t.__slice__(_size_2998891) : stdgo.GoString)?.__copy__();
                        _tr_2998809 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2999027i32;
                } else if (__value__ == (2999027i32)) {
                    if (_tr_2998809 == (_sr_2998653)) {
                        _gotoNext = 2999039i32;
                    } else {
                        _gotoNext = 2999104i32;
                    };
                } else if (__value__ == (2999039i32)) {
                    _i_2998659++;
                    _gotoNext = 2999578i32;
                } else if (__value__ == (2999104i32)) {
                    if ((_tr_2998809 < _sr_2998653 : Bool)) {
                        _gotoNext = 2999115i32;
                    } else {
                        _gotoNext = 2999169i32;
                    };
                } else if (__value__ == (2999115i32)) {
                    {
                        final __tmp__0 = _sr_2998653;
                        final __tmp__1 = _tr_2998809;
                        _tr_2998809 = __tmp__0;
                        _sr_2998653 = __tmp__1;
                    };
                    _gotoNext = 2999169i32;
                } else if (__value__ == (2999169i32)) {
                    if ((_tr_2998809 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2999191i32;
                    } else {
                        _gotoNext = 2999444i32;
                    };
                } else if (__value__ == (2999191i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2998653 : Bool) && (_sr_2998653 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2998809 == ((_sr_2998653 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2999291i32;
                    } else {
                        _gotoNext = 2999314i32;
                    };
                } else if (__value__ == (2999291i32)) {
                    _i_2998659++;
                    _gotoNext = 2999578i32;
                } else if (__value__ == (2999314i32)) {
                    return false;
                    _gotoNext = 2999444i32;
                } else if (__value__ == (2999444i32)) {
                    _r_2999444 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2998653);
                    var __blank__ = 0i32;
                    _gotoNext = 2999474i32;
                } else if (__value__ == (2999474i32)) {
                    if (((_r_2999444 != _sr_2998653) && (_r_2999444 < _tr_2998809 : Bool) : Bool)) {
                        _gotoNext = 2999496i32;
                    } else {
                        _gotoNext = 2999533i32;
                    };
                } else if (__value__ == (2999496i32)) {
                    _r_2999444 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2999444);
                    _gotoNext = 2999474i32;
                } else if (__value__ == (2999533i32)) {
                    if (_r_2999444 == (_tr_2998809)) {
                        _gotoNext = 2999544i32;
                    } else {
                        _gotoNext = 2999564i32;
                    };
                } else if (__value__ == (2999544i32)) {
                    _i_2998659++;
                    _gotoNext = 2999578i32;
                } else if (__value__ == (2999564i32)) {
                    return false;
                    _i_2998659++;
                    _gotoNext = 2999578i32;
                } else if (__value__ == (2999577i32)) {
                    _i_2998659 = 0i32;
                    _gotoNext = 2999578i32;
                } else if (__value__ == (2999578i32)) {
                    if (_i_2998659 < (_keys_2998646.length)) {
                        _gotoNext = 2998667i32;
                    } else {
                        _gotoNext = 2999651i32;
                    };
                } else if (__value__ == (2999651i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
