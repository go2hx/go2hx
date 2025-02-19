package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_2828860 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2828860 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2828873 = @:invalid_type null;
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2828375i32;
                } else if (__value__ == (2828375i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2828411i32;
                    } else {
                        _gotoNext = 2828800i32;
                    };
                } else if (__value__ == (2828411i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2828467i32;
                    } else {
                        _gotoNext = 2828511i32;
                    };
                } else if (__value__ == (2828467i32)) {
                    _gotoNext = 2828825i32;
                } else if (__value__ == (2828511i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2828523i32;
                    } else {
                        _gotoNext = 2828588i32;
                    };
                } else if (__value__ == (2828523i32)) {
                    _i_0++;
                    _gotoNext = 2828375i32;
                } else if (__value__ == (2828588i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2828599i32;
                    } else {
                        _gotoNext = 2828674i32;
                    };
                } else if (__value__ == (2828599i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = __tmp__0;
                        _sr_1 = __tmp__1;
                    };
                    _gotoNext = 2828674i32;
                } else if (__value__ == (2828674i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2828720i32;
                    } else {
                        _gotoNext = 2828740i32;
                    };
                } else if (__value__ == (2828720i32)) {
                    _i_0++;
                    _gotoNext = 2828375i32;
                } else if (__value__ == (2828740i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2828375i32;
                } else if (__value__ == (2828800i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2828825i32;
                } else if (__value__ == (2828825i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2828860 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2828860 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2828860 = (_keys_2828860.__append__(_key));
                        _values_2828860 = (_values_2828860.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2828860.length)) {
                        _gotoNext = 2829791i32;
                    } else {
                        _gotoNext = 2829865i32;
                    };
                } else if (__value__ == (2828881i32)) {
                    _sr_3 = _values_2828860[@:invalid_index_invalid_type _i_2828873];
                    var __blank__ = _keys_2828860[@:invalid_index_invalid_type _i_2828873];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2828950i32;
                    } else {
                        _gotoNext = 2829019i32;
                    };
                } else if (__value__ == (2828950i32)) {
                    return false;
                    _gotoNext = 2829019i32;
                } else if (__value__ == (2829019i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2829057i32;
                    } else {
                        _gotoNext = 2829097i32;
                    };
                } else if (__value__ == (2829057i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2829241i32;
                } else if (__value__ == (2829097i32)) {
                    _gotoNext = 2829097i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2829241i32;
                } else if (__value__ == (2829241i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2829253i32;
                    } else {
                        _gotoNext = 2829318i32;
                    };
                } else if (__value__ == (2829253i32)) {
                    _i_2828873++;
                    _gotoNext = 2829792i32;
                } else if (__value__ == (2829318i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2829329i32;
                    } else {
                        _gotoNext = 2829383i32;
                    };
                } else if (__value__ == (2829329i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = __tmp__0;
                        _sr_3 = __tmp__1;
                    };
                    _gotoNext = 2829383i32;
                } else if (__value__ == (2829383i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2829405i32;
                    } else {
                        _gotoNext = 2829658i32;
                    };
                } else if (__value__ == (2829405i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2829505i32;
                    } else {
                        _gotoNext = 2829528i32;
                    };
                } else if (__value__ == (2829505i32)) {
                    _i_2828873++;
                    _gotoNext = 2829792i32;
                } else if (__value__ == (2829528i32)) {
                    return false;
                    _gotoNext = 2829658i32;
                } else if (__value__ == (2829658i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2829688i32;
                } else if (__value__ == (2829688i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2829710i32;
                    } else {
                        _gotoNext = 2829747i32;
                    };
                } else if (__value__ == (2829710i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2829688i32;
                } else if (__value__ == (2829747i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2829758i32;
                    } else {
                        _gotoNext = 2829778i32;
                    };
                } else if (__value__ == (2829758i32)) {
                    _i_2828873++;
                    _gotoNext = 2829792i32;
                } else if (__value__ == (2829778i32)) {
                    return false;
                    _i_2828873++;
                    _gotoNext = 2829792i32;
                } else if (__value__ == (2829791i32)) {
                    _i_2828873 = 0i32;
                    _gotoNext = 2829792i32;
                } else if (__value__ == (2829792i32)) {
                    if (_i_2828873 < (_keys_2828860.length)) {
                        _gotoNext = 2828881i32;
                    } else {
                        _gotoNext = 2829865i32;
                    };
                } else if (__value__ == (2829865i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
