package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_2788053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2788050:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2787815:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2787808 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2787821 = @:invalid_type null;
        var _i_2787315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2788606:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2787971:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2787808 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2787376:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2787363:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2787315 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2787323i32;
                } else if (__value__ == (2787323i32)) {
                    if (((_i_2787315 < (_s.length) : Bool) && (_i_2787315 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2787359i32;
                    } else {
                        _gotoNext = 2787748i32;
                    };
                } else if (__value__ == (2787359i32)) {
                    _sr_2787363 = _s[(_i_2787315 : stdgo.GoInt)];
                    _tr_2787376 = _t[(_i_2787315 : stdgo.GoInt)];
                    if (((_sr_2787363 | _tr_2787376 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2787415i32;
                    } else {
                        _gotoNext = 2787459i32;
                    };
                } else if (__value__ == (2787415i32)) {
                    _gotoNext = 2787773i32;
                } else if (__value__ == (2787459i32)) {
                    if (_tr_2787376 == (_sr_2787363)) {
                        _gotoNext = 2787471i32;
                    } else {
                        _gotoNext = 2787536i32;
                    };
                } else if (__value__ == (2787471i32)) {
                    _i_2787315++;
                    _gotoNext = 2787323i32;
                } else if (__value__ == (2787536i32)) {
                    if ((_tr_2787376 < _sr_2787363 : Bool)) {
                        _gotoNext = 2787547i32;
                    } else {
                        _gotoNext = 2787622i32;
                    };
                } else if (__value__ == (2787547i32)) {
                    {
                        final __tmp__0 = _sr_2787363;
                        final __tmp__1 = _tr_2787376;
                        _tr_2787376 = __tmp__0;
                        _sr_2787363 = __tmp__1;
                    };
                    _gotoNext = 2787622i32;
                } else if (__value__ == (2787622i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2787363 : Bool) && (_sr_2787363 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2787376 == ((_sr_2787363 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2787668i32;
                    } else {
                        _gotoNext = 2787688i32;
                    };
                } else if (__value__ == (2787668i32)) {
                    _i_2787315++;
                    _gotoNext = 2787323i32;
                } else if (__value__ == (2787688i32)) {
                    return false;
                    _i_2787315++;
                    _gotoNext = 2787323i32;
                } else if (__value__ == (2787748i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2787773i32;
                } else if (__value__ == (2787773i32)) {
                    _s = (_s.__slice__(_i_2787315) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2787315) : stdgo.GoString)?.__copy__();
                    _keys_2787808 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2787808 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2787808 = (_keys_2787808.__append__(_key));
                        _values_2787808 = (_values_2787808.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2787808.length)) {
                        _gotoNext = 2788739i32;
                    } else {
                        _gotoNext = 2788813i32;
                    };
                } else if (__value__ == (2787829i32)) {
                    _sr_2787815 = _values_2787808[@:invalid_index_invalid_type _i_2787821];
                    var __blank__ = _keys_2787808[@:invalid_index_invalid_type _i_2787821];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2787898i32;
                    } else {
                        _gotoNext = 2787967i32;
                    };
                } else if (__value__ == (2787898i32)) {
                    return false;
                    _gotoNext = 2787967i32;
                } else if (__value__ == (2787967i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2788005i32;
                    } else {
                        _gotoNext = 2788045i32;
                    };
                } else if (__value__ == (2788005i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2787971 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2788189i32;
                } else if (__value__ == (2788045i32)) {
                    _gotoNext = 2788045i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2788050 = @:tmpset0 __tmp__._0;
                        _size_2788053 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2788050;
                        final __tmp__1 = (_t.__slice__(_size_2788053) : stdgo.GoString)?.__copy__();
                        _tr_2787971 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2788189i32;
                } else if (__value__ == (2788189i32)) {
                    if (_tr_2787971 == (_sr_2787815)) {
                        _gotoNext = 2788201i32;
                    } else {
                        _gotoNext = 2788266i32;
                    };
                } else if (__value__ == (2788201i32)) {
                    _i_2787821++;
                    _gotoNext = 2788740i32;
                } else if (__value__ == (2788266i32)) {
                    if ((_tr_2787971 < _sr_2787815 : Bool)) {
                        _gotoNext = 2788277i32;
                    } else {
                        _gotoNext = 2788331i32;
                    };
                } else if (__value__ == (2788277i32)) {
                    {
                        final __tmp__0 = _sr_2787815;
                        final __tmp__1 = _tr_2787971;
                        _tr_2787971 = __tmp__0;
                        _sr_2787815 = __tmp__1;
                    };
                    _gotoNext = 2788331i32;
                } else if (__value__ == (2788331i32)) {
                    if ((_tr_2787971 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2788353i32;
                    } else {
                        _gotoNext = 2788606i32;
                    };
                } else if (__value__ == (2788353i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2787815 : Bool) && (_sr_2787815 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2787971 == ((_sr_2787815 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2788453i32;
                    } else {
                        _gotoNext = 2788476i32;
                    };
                } else if (__value__ == (2788453i32)) {
                    _i_2787821++;
                    _gotoNext = 2788740i32;
                } else if (__value__ == (2788476i32)) {
                    return false;
                    _gotoNext = 2788606i32;
                } else if (__value__ == (2788606i32)) {
                    _r_2788606 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2787815);
                    var __blank__ = 0i32;
                    _gotoNext = 2788636i32;
                } else if (__value__ == (2788636i32)) {
                    if (((_r_2788606 != _sr_2787815) && (_r_2788606 < _tr_2787971 : Bool) : Bool)) {
                        _gotoNext = 2788658i32;
                    } else {
                        _gotoNext = 2788695i32;
                    };
                } else if (__value__ == (2788658i32)) {
                    _r_2788606 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2788606);
                    _gotoNext = 2788636i32;
                } else if (__value__ == (2788695i32)) {
                    if (_r_2788606 == (_tr_2787971)) {
                        _gotoNext = 2788706i32;
                    } else {
                        _gotoNext = 2788726i32;
                    };
                } else if (__value__ == (2788706i32)) {
                    _i_2787821++;
                    _gotoNext = 2788740i32;
                } else if (__value__ == (2788726i32)) {
                    return false;
                    _i_2787821++;
                    _gotoNext = 2788740i32;
                } else if (__value__ == (2788739i32)) {
                    _i_2787821 = 0i32;
                    _gotoNext = 2788740i32;
                } else if (__value__ == (2788740i32)) {
                    if (_i_2787821 < (_keys_2787808.length)) {
                        _gotoNext = 2787829i32;
                    } else {
                        _gotoNext = 2788813i32;
                    };
                } else if (__value__ == (2788813i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
