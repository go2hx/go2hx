package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2933028 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_2933041 = @:invalid_type null;
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2933028 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2932543i32;
                } else if (__value__ == (2932543i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2932579i32;
                    } else {
                        _gotoNext = 2932968i32;
                    };
                } else if (__value__ == (2932579i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2932635i32;
                    } else {
                        _gotoNext = 2932679i32;
                    };
                } else if (__value__ == (2932635i32)) {
                    _gotoNext = 2932993i32;
                } else if (__value__ == (2932679i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2932691i32;
                    } else {
                        _gotoNext = 2932756i32;
                    };
                } else if (__value__ == (2932691i32)) {
                    _i_0++;
                    _gotoNext = 2932543i32;
                } else if (__value__ == (2932756i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2932767i32;
                    } else {
                        _gotoNext = 2932842i32;
                    };
                } else if (__value__ == (2932767i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2932842i32;
                } else if (__value__ == (2932842i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2932888i32;
                    } else {
                        _gotoNext = 2932908i32;
                    };
                } else if (__value__ == (2932888i32)) {
                    _i_0++;
                    _gotoNext = 2932543i32;
                } else if (__value__ == (2932908i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2932543i32;
                } else if (__value__ == (2932968i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2932993i32;
                } else if (__value__ == (2932993i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2933028 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2933028 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2933028 = _keys_2933028.__append__(_key);
                        _values_2933028 = _values_2933028.__append__(_value);
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2933028.length)) {
                        _gotoNext = 2933959i32;
                    } else {
                        _gotoNext = 2934033i32;
                    };
                } else if (__value__ == (2933049i32)) {
                    _sr_3 = _values_2933028[@:invalid_index_invalid_type _iterator_2933041];
                    _keys_2933028[@:invalid_index_invalid_type _iterator_2933041];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2933118i32;
                    } else {
                        _gotoNext = 2933187i32;
                    };
                } else if (__value__ == (2933118i32)) {
                    return false;
                    _gotoNext = 2933187i32;
                } else if (__value__ == (2933187i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2933225i32;
                    } else {
                        _gotoNext = 2933265i32;
                    };
                } else if (__value__ == (2933225i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2933409i32;
                } else if (__value__ == (2933265i32)) {
                    _gotoNext = 2933265i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 2933409i32;
                } else if (__value__ == (2933409i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2933421i32;
                    } else {
                        _gotoNext = 2933486i32;
                    };
                } else if (__value__ == (2933421i32)) {
                    _iterator_2933041++;
                    _gotoNext = 2933960i32;
                } else if (__value__ == (2933486i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2933497i32;
                    } else {
                        _gotoNext = 2933551i32;
                    };
                } else if (__value__ == (2933497i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2933551i32;
                } else if (__value__ == (2933551i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2933573i32;
                    } else {
                        _gotoNext = 2933826i32;
                    };
                } else if (__value__ == (2933573i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2933673i32;
                    } else {
                        _gotoNext = 2933696i32;
                    };
                } else if (__value__ == (2933673i32)) {
                    _iterator_2933041++;
                    _gotoNext = 2933960i32;
                } else if (__value__ == (2933696i32)) {
                    return false;
                    _gotoNext = 2933826i32;
                } else if (__value__ == (2933826i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2933856i32;
                } else if (__value__ == (2933856i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2933878i32;
                    } else {
                        _gotoNext = 2933915i32;
                    };
                } else if (__value__ == (2933878i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2933856i32;
                } else if (__value__ == (2933915i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2933926i32;
                    } else {
                        _gotoNext = 2933946i32;
                    };
                } else if (__value__ == (2933926i32)) {
                    _iterator_2933041++;
                    _gotoNext = 2933960i32;
                } else if (__value__ == (2933946i32)) {
                    return false;
                    _iterator_2933041++;
                    _gotoNext = 2933960i32;
                } else if (__value__ == (2933959i32)) {
                    _iterator_2933041 = 0i32;
                    _gotoNext = 2933960i32;
                } else if (__value__ == (2933960i32)) {
                    if (_iterator_2933041 < (_keys_2933028.length)) {
                        _gotoNext = 2933049i32;
                    } else {
                        _gotoNext = 2934033i32;
                    };
                } else if (__value__ == (2934033i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
