package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2730432:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2731170:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2731167:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2731088:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2730932:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2730925 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2730938 = @:invalid_type null;
        var _tr_2730493:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2730480:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2731723:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2730925 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2730432 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2730440i32;
                } else if (__value__ == (2730440i32)) {
                    if (((_i_2730432 < (_s.length) : Bool) && (_i_2730432 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2730476i32;
                    } else {
                        _gotoNext = 2730865i32;
                    };
                } else if (__value__ == (2730476i32)) {
                    _sr_2730480 = _s[(_i_2730432 : stdgo.GoInt)];
                    _tr_2730493 = _t[(_i_2730432 : stdgo.GoInt)];
                    if (((_sr_2730480 | _tr_2730493 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2730532i32;
                    } else {
                        _gotoNext = 2730576i32;
                    };
                } else if (__value__ == (2730532i32)) {
                    _gotoNext = 2730890i32;
                } else if (__value__ == (2730576i32)) {
                    if (_tr_2730493 == (_sr_2730480)) {
                        _gotoNext = 2730588i32;
                    } else {
                        _gotoNext = 2730653i32;
                    };
                } else if (__value__ == (2730588i32)) {
                    _i_2730432++;
                    _gotoNext = 2730440i32;
                } else if (__value__ == (2730653i32)) {
                    if ((_tr_2730493 < _sr_2730480 : Bool)) {
                        _gotoNext = 2730664i32;
                    } else {
                        _gotoNext = 2730739i32;
                    };
                } else if (__value__ == (2730664i32)) {
                    {
                        final __tmp__0 = _sr_2730480;
                        final __tmp__1 = _tr_2730493;
                        _tr_2730493 = __tmp__0;
                        _sr_2730480 = __tmp__1;
                    };
                    _gotoNext = 2730739i32;
                } else if (__value__ == (2730739i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2730480 : Bool) && (_sr_2730480 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2730493 == ((_sr_2730480 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2730785i32;
                    } else {
                        _gotoNext = 2730805i32;
                    };
                } else if (__value__ == (2730785i32)) {
                    _i_2730432++;
                    _gotoNext = 2730440i32;
                } else if (__value__ == (2730805i32)) {
                    return false;
                    _i_2730432++;
                    _gotoNext = 2730440i32;
                } else if (__value__ == (2730865i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2730890i32;
                } else if (__value__ == (2730890i32)) {
                    _s = (_s.__slice__(_i_2730432) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2730432) : stdgo.GoString)?.__copy__();
                    _keys_2730925 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2730925 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2730925 = (_keys_2730925.__append__(_key));
                        _values_2730925 = (_values_2730925.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2730925.length)) {
                        _gotoNext = 2731856i32;
                    } else {
                        _gotoNext = 2731930i32;
                    };
                } else if (__value__ == (2730946i32)) {
                    _sr_2730932 = _values_2730925[@:invalid_index_invalid_type _i_2730938];
                    var __blank__ = _keys_2730925[@:invalid_index_invalid_type _i_2730938];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2731015i32;
                    } else {
                        _gotoNext = 2731084i32;
                    };
                } else if (__value__ == (2731015i32)) {
                    return false;
                    _gotoNext = 2731084i32;
                } else if (__value__ == (2731084i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2731122i32;
                    } else {
                        _gotoNext = 2731162i32;
                    };
                } else if (__value__ == (2731122i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2731088 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2731306i32;
                } else if (__value__ == (2731162i32)) {
                    _gotoNext = 2731162i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2731167 = @:tmpset0 __tmp__._0;
                        _size_2731170 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2731167;
                        final __tmp__1 = (_t.__slice__(_size_2731170) : stdgo.GoString)?.__copy__();
                        _tr_2731088 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2731306i32;
                } else if (__value__ == (2731306i32)) {
                    if (_tr_2731088 == (_sr_2730932)) {
                        _gotoNext = 2731318i32;
                    } else {
                        _gotoNext = 2731383i32;
                    };
                } else if (__value__ == (2731318i32)) {
                    _i_2730938++;
                    _gotoNext = 2731857i32;
                } else if (__value__ == (2731383i32)) {
                    if ((_tr_2731088 < _sr_2730932 : Bool)) {
                        _gotoNext = 2731394i32;
                    } else {
                        _gotoNext = 2731448i32;
                    };
                } else if (__value__ == (2731394i32)) {
                    {
                        final __tmp__0 = _sr_2730932;
                        final __tmp__1 = _tr_2731088;
                        _tr_2731088 = __tmp__0;
                        _sr_2730932 = __tmp__1;
                    };
                    _gotoNext = 2731448i32;
                } else if (__value__ == (2731448i32)) {
                    if ((_tr_2731088 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2731470i32;
                    } else {
                        _gotoNext = 2731723i32;
                    };
                } else if (__value__ == (2731470i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2730932 : Bool) && (_sr_2730932 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2731088 == ((_sr_2730932 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2731570i32;
                    } else {
                        _gotoNext = 2731593i32;
                    };
                } else if (__value__ == (2731570i32)) {
                    _i_2730938++;
                    _gotoNext = 2731857i32;
                } else if (__value__ == (2731593i32)) {
                    return false;
                    _gotoNext = 2731723i32;
                } else if (__value__ == (2731723i32)) {
                    _r_2731723 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2730932);
                    var __blank__ = 0i32;
                    _gotoNext = 2731753i32;
                } else if (__value__ == (2731753i32)) {
                    if (((_r_2731723 != _sr_2730932) && (_r_2731723 < _tr_2731088 : Bool) : Bool)) {
                        _gotoNext = 2731775i32;
                    } else {
                        _gotoNext = 2731812i32;
                    };
                } else if (__value__ == (2731775i32)) {
                    _r_2731723 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2731723);
                    _gotoNext = 2731753i32;
                } else if (__value__ == (2731812i32)) {
                    if (_r_2731723 == (_tr_2731088)) {
                        _gotoNext = 2731823i32;
                    } else {
                        _gotoNext = 2731843i32;
                    };
                } else if (__value__ == (2731823i32)) {
                    _i_2730938++;
                    _gotoNext = 2731857i32;
                } else if (__value__ == (2731843i32)) {
                    return false;
                    _i_2730938++;
                    _gotoNext = 2731857i32;
                } else if (__value__ == (2731856i32)) {
                    _i_2730938 = 0i32;
                    _gotoNext = 2731857i32;
                } else if (__value__ == (2731857i32)) {
                    if (_i_2730938 < (_keys_2730925.length)) {
                        _gotoNext = 2730946i32;
                    } else {
                        _gotoNext = 2731930i32;
                    };
                } else if (__value__ == (2731930i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
