package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2793667 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2793667 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _iterator_2793680 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2793182i32;
                } else if (__value__ == (2793182i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2793218i32;
                    } else {
                        _gotoNext = 2793607i32;
                    };
                } else if (__value__ == (2793218i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2793274i32;
                    } else {
                        _gotoNext = 2793318i32;
                    };
                } else if (__value__ == (2793274i32)) {
                    _gotoNext = 2793632i32;
                } else if (__value__ == (2793318i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2793330i32;
                    } else {
                        _gotoNext = 2793395i32;
                    };
                } else if (__value__ == (2793330i32)) {
                    _i_0++;
                    _gotoNext = 2793182i32;
                } else if (__value__ == (2793395i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2793406i32;
                    } else {
                        _gotoNext = 2793481i32;
                    };
                } else if (__value__ == (2793406i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2793481i32;
                } else if (__value__ == (2793481i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2793527i32;
                    } else {
                        _gotoNext = 2793547i32;
                    };
                } else if (__value__ == (2793527i32)) {
                    _i_0++;
                    _gotoNext = 2793182i32;
                } else if (__value__ == (2793547i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2793182i32;
                } else if (__value__ == (2793607i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2793632i32;
                } else if (__value__ == (2793632i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2793667 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2793667 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2793667 = _keys_2793667.__append__(_key);
                        _values_2793667 = _values_2793667.__append__(_value);
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2793667.length)) {
                        _gotoNext = 2794598i32;
                    } else {
                        _gotoNext = 2794672i32;
                    };
                } else if (__value__ == (2793688i32)) {
                    _sr_3 = _values_2793667[@:invalid_index_invalid_type _iterator_2793680];
                    _keys_2793667[@:invalid_index_invalid_type _iterator_2793680];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2793757i32;
                    } else {
                        _gotoNext = 2793826i32;
                    };
                } else if (__value__ == (2793757i32)) {
                    return false;
                    _gotoNext = 2793826i32;
                } else if (__value__ == (2793826i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2793864i32;
                    } else {
                        _gotoNext = 2793904i32;
                    };
                } else if (__value__ == (2793864i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2794048i32;
                } else if (__value__ == (2793904i32)) {
                    _gotoNext = 2793904i32;
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
                    _gotoNext = 2794048i32;
                } else if (__value__ == (2794048i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2794060i32;
                    } else {
                        _gotoNext = 2794125i32;
                    };
                } else if (__value__ == (2794060i32)) {
                    _iterator_2793680++;
                    _gotoNext = 2794599i32;
                } else if (__value__ == (2794125i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2794136i32;
                    } else {
                        _gotoNext = 2794190i32;
                    };
                } else if (__value__ == (2794136i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2794190i32;
                } else if (__value__ == (2794190i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2794212i32;
                    } else {
                        _gotoNext = 2794465i32;
                    };
                } else if (__value__ == (2794212i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2794312i32;
                    } else {
                        _gotoNext = 2794335i32;
                    };
                } else if (__value__ == (2794312i32)) {
                    _iterator_2793680++;
                    _gotoNext = 2794599i32;
                } else if (__value__ == (2794335i32)) {
                    return false;
                    _gotoNext = 2794465i32;
                } else if (__value__ == (2794465i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2794495i32;
                } else if (__value__ == (2794495i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2794517i32;
                    } else {
                        _gotoNext = 2794554i32;
                    };
                } else if (__value__ == (2794517i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2794495i32;
                } else if (__value__ == (2794554i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2794565i32;
                    } else {
                        _gotoNext = 2794585i32;
                    };
                } else if (__value__ == (2794565i32)) {
                    _iterator_2793680++;
                    _gotoNext = 2794599i32;
                } else if (__value__ == (2794585i32)) {
                    return false;
                    _iterator_2793680++;
                    _gotoNext = 2794599i32;
                } else if (__value__ == (2794598i32)) {
                    _iterator_2793680 = 0i32;
                    _gotoNext = 2794599i32;
                } else if (__value__ == (2794599i32)) {
                    if (_iterator_2793680 < (_keys_2793667.length)) {
                        _gotoNext = 2793688i32;
                    } else {
                        _gotoNext = 2794672i32;
                    };
                } else if (__value__ == (2794672i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
