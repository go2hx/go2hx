package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2943356:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2943200:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2943193 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2943193 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2943206 = @:invalid_type null;
        var _r_2943991:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2943438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2943435:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2942761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2942748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2942700:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2942700 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2942708i32;
                } else if (__value__ == (2942708i32)) {
                    if (((_i_2942700 < (_s.length) : Bool) && (_i_2942700 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2942744i32;
                    } else {
                        _gotoNext = 2943133i32;
                    };
                } else if (__value__ == (2942744i32)) {
                    _sr_2942748 = _s[(_i_2942700 : stdgo.GoInt)];
                    _tr_2942761 = _t[(_i_2942700 : stdgo.GoInt)];
                    if (((_sr_2942748 | _tr_2942761 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942800i32;
                    } else {
                        _gotoNext = 2942844i32;
                    };
                } else if (__value__ == (2942800i32)) {
                    _gotoNext = 2943158i32;
                } else if (__value__ == (2942844i32)) {
                    if (_tr_2942761 == (_sr_2942748)) {
                        _gotoNext = 2942856i32;
                    } else {
                        _gotoNext = 2942921i32;
                    };
                } else if (__value__ == (2942856i32)) {
                    _i_2942700++;
                    _gotoNext = 2942708i32;
                } else if (__value__ == (2942921i32)) {
                    if ((_tr_2942761 < _sr_2942748 : Bool)) {
                        _gotoNext = 2942932i32;
                    } else {
                        _gotoNext = 2943007i32;
                    };
                } else if (__value__ == (2942932i32)) {
                    {
                        final __tmp__0 = _sr_2942748;
                        final __tmp__1 = _tr_2942761;
                        _tr_2942761 = __tmp__0;
                        _sr_2942748 = __tmp__1;
                    };
                    _gotoNext = 2943007i32;
                } else if (__value__ == (2943007i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2942748 : Bool) && (_sr_2942748 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2942761 == ((_sr_2942748 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2943053i32;
                    } else {
                        _gotoNext = 2943073i32;
                    };
                } else if (__value__ == (2943053i32)) {
                    _i_2942700++;
                    _gotoNext = 2942708i32;
                } else if (__value__ == (2943073i32)) {
                    return false;
                    _i_2942700++;
                    _gotoNext = 2942708i32;
                } else if (__value__ == (2943133i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2943158i32;
                } else if (__value__ == (2943158i32)) {
                    _s = (_s.__slice__(_i_2942700) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2942700) : stdgo.GoString)?.__copy__();
                    _keys_2943193 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2943193 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2943193 = (_keys_2943193.__append__(_key));
                        _values_2943193 = (_values_2943193.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2943193.length)) {
                        _gotoNext = 2944124i32;
                    } else {
                        _gotoNext = 2944198i32;
                    };
                } else if (__value__ == (2943214i32)) {
                    _sr_2943200 = _values_2943193[@:invalid_index_invalid_type _i_2943206];
                    var __blank__ = _keys_2943193[@:invalid_index_invalid_type _i_2943206];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2943283i32;
                    } else {
                        _gotoNext = 2943352i32;
                    };
                } else if (__value__ == (2943283i32)) {
                    return false;
                    _gotoNext = 2943352i32;
                } else if (__value__ == (2943352i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2943390i32;
                    } else {
                        _gotoNext = 2943430i32;
                    };
                } else if (__value__ == (2943390i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2943356 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2943574i32;
                } else if (__value__ == (2943430i32)) {
                    _gotoNext = 2943430i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2943435 = __tmp__._0;
                        _size_2943438 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2943435;
                        final __tmp__1 = (_t.__slice__(_size_2943438) : stdgo.GoString)?.__copy__();
                        _tr_2943356 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2943574i32;
                } else if (__value__ == (2943574i32)) {
                    if (_tr_2943356 == (_sr_2943200)) {
                        _gotoNext = 2943586i32;
                    } else {
                        _gotoNext = 2943651i32;
                    };
                } else if (__value__ == (2943586i32)) {
                    _i_2943206++;
                    _gotoNext = 2944125i32;
                } else if (__value__ == (2943651i32)) {
                    if ((_tr_2943356 < _sr_2943200 : Bool)) {
                        _gotoNext = 2943662i32;
                    } else {
                        _gotoNext = 2943716i32;
                    };
                } else if (__value__ == (2943662i32)) {
                    {
                        final __tmp__0 = _sr_2943200;
                        final __tmp__1 = _tr_2943356;
                        _tr_2943356 = __tmp__0;
                        _sr_2943200 = __tmp__1;
                    };
                    _gotoNext = 2943716i32;
                } else if (__value__ == (2943716i32)) {
                    if ((_tr_2943356 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2943738i32;
                    } else {
                        _gotoNext = 2943991i32;
                    };
                } else if (__value__ == (2943738i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2943200 : Bool) && (_sr_2943200 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2943356 == ((_sr_2943200 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2943838i32;
                    } else {
                        _gotoNext = 2943861i32;
                    };
                } else if (__value__ == (2943838i32)) {
                    _i_2943206++;
                    _gotoNext = 2944125i32;
                } else if (__value__ == (2943861i32)) {
                    return false;
                    _gotoNext = 2943991i32;
                } else if (__value__ == (2943991i32)) {
                    _r_2943991 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2943200);
                    var __blank__ = 0i32;
                    _gotoNext = 2944021i32;
                } else if (__value__ == (2944021i32)) {
                    if (((_r_2943991 != _sr_2943200) && (_r_2943991 < _tr_2943356 : Bool) : Bool)) {
                        _gotoNext = 2944043i32;
                    } else {
                        _gotoNext = 2944080i32;
                    };
                } else if (__value__ == (2944043i32)) {
                    _r_2943991 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2943991);
                    _gotoNext = 2944021i32;
                } else if (__value__ == (2944080i32)) {
                    if (_r_2943991 == (_tr_2943356)) {
                        _gotoNext = 2944091i32;
                    } else {
                        _gotoNext = 2944111i32;
                    };
                } else if (__value__ == (2944091i32)) {
                    _i_2943206++;
                    _gotoNext = 2944125i32;
                } else if (__value__ == (2944111i32)) {
                    return false;
                    _i_2943206++;
                    _gotoNext = 2944125i32;
                } else if (__value__ == (2944124i32)) {
                    _i_2943206 = 0i32;
                    _gotoNext = 2944125i32;
                } else if (__value__ == (2944125i32)) {
                    if (_i_2943206 < (_keys_2943193.length)) {
                        _gotoNext = 2943214i32;
                    } else {
                        _gotoNext = 2944198i32;
                    };
                } else if (__value__ == (2944198i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
