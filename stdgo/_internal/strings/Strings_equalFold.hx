package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2946750:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2946743 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _size_2946988:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2946298:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2946250:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2947541:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2946985:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2946906:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2946743 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2946756 = @:invalid_type null;
        var _tr_2946311:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2946250 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2946258i32;
                } else if (__value__ == (2946258i32)) {
                    if (((_i_2946250 < (_s.length) : Bool) && (_i_2946250 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2946294i32;
                    } else {
                        _gotoNext = 2946683i32;
                    };
                } else if (__value__ == (2946294i32)) {
                    _sr_2946298 = _s[(_i_2946250 : stdgo.GoInt)];
                    _tr_2946311 = _t[(_i_2946250 : stdgo.GoInt)];
                    if (((_sr_2946298 | _tr_2946311 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2946350i32;
                    } else {
                        _gotoNext = 2946394i32;
                    };
                } else if (__value__ == (2946350i32)) {
                    _gotoNext = 2946708i32;
                } else if (__value__ == (2946394i32)) {
                    if (_tr_2946311 == (_sr_2946298)) {
                        _gotoNext = 2946406i32;
                    } else {
                        _gotoNext = 2946471i32;
                    };
                } else if (__value__ == (2946406i32)) {
                    _i_2946250++;
                    _gotoNext = 2946258i32;
                } else if (__value__ == (2946471i32)) {
                    if ((_tr_2946311 < _sr_2946298 : Bool)) {
                        _gotoNext = 2946482i32;
                    } else {
                        _gotoNext = 2946557i32;
                    };
                } else if (__value__ == (2946482i32)) {
                    {
                        final __tmp__0 = _sr_2946298;
                        final __tmp__1 = _tr_2946311;
                        _tr_2946311 = __tmp__0;
                        _sr_2946298 = __tmp__1;
                    };
                    _gotoNext = 2946557i32;
                } else if (__value__ == (2946557i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2946298 : Bool) && (_sr_2946298 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2946311 == ((_sr_2946298 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2946603i32;
                    } else {
                        _gotoNext = 2946623i32;
                    };
                } else if (__value__ == (2946603i32)) {
                    _i_2946250++;
                    _gotoNext = 2946258i32;
                } else if (__value__ == (2946623i32)) {
                    return false;
                    _i_2946250++;
                    _gotoNext = 2946258i32;
                } else if (__value__ == (2946683i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2946708i32;
                } else if (__value__ == (2946708i32)) {
                    _s = (_s.__slice__(_i_2946250) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2946250) : stdgo.GoString)?.__copy__();
                    _keys_2946743 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2946743 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2946743 = (_keys_2946743.__append__(_key));
                        _values_2946743 = (_values_2946743.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2946743.length)) {
                        _gotoNext = 2947674i32;
                    } else {
                        _gotoNext = 2947748i32;
                    };
                } else if (__value__ == (2946764i32)) {
                    _sr_2946750 = _values_2946743[@:invalid_index_invalid_type _i_2946756];
                    var __blank__ = _keys_2946743[@:invalid_index_invalid_type _i_2946756];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2946833i32;
                    } else {
                        _gotoNext = 2946902i32;
                    };
                } else if (__value__ == (2946833i32)) {
                    return false;
                    _gotoNext = 2946902i32;
                } else if (__value__ == (2946902i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2946940i32;
                    } else {
                        _gotoNext = 2946980i32;
                    };
                } else if (__value__ == (2946940i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2946906 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2947124i32;
                } else if (__value__ == (2946980i32)) {
                    _gotoNext = 2946980i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2946985 = @:tmpset0 __tmp__._0;
                        _size_2946988 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2946985;
                        final __tmp__1 = (_t.__slice__(_size_2946988) : stdgo.GoString)?.__copy__();
                        _tr_2946906 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2947124i32;
                } else if (__value__ == (2947124i32)) {
                    if (_tr_2946906 == (_sr_2946750)) {
                        _gotoNext = 2947136i32;
                    } else {
                        _gotoNext = 2947201i32;
                    };
                } else if (__value__ == (2947136i32)) {
                    _i_2946756++;
                    _gotoNext = 2947675i32;
                } else if (__value__ == (2947201i32)) {
                    if ((_tr_2946906 < _sr_2946750 : Bool)) {
                        _gotoNext = 2947212i32;
                    } else {
                        _gotoNext = 2947266i32;
                    };
                } else if (__value__ == (2947212i32)) {
                    {
                        final __tmp__0 = _sr_2946750;
                        final __tmp__1 = _tr_2946906;
                        _tr_2946906 = __tmp__0;
                        _sr_2946750 = __tmp__1;
                    };
                    _gotoNext = 2947266i32;
                } else if (__value__ == (2947266i32)) {
                    if ((_tr_2946906 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2947288i32;
                    } else {
                        _gotoNext = 2947541i32;
                    };
                } else if (__value__ == (2947288i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2946750 : Bool) && (_sr_2946750 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2946906 == ((_sr_2946750 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2947388i32;
                    } else {
                        _gotoNext = 2947411i32;
                    };
                } else if (__value__ == (2947388i32)) {
                    _i_2946756++;
                    _gotoNext = 2947675i32;
                } else if (__value__ == (2947411i32)) {
                    return false;
                    _gotoNext = 2947541i32;
                } else if (__value__ == (2947541i32)) {
                    _r_2947541 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2946750);
                    var __blank__ = 0i32;
                    _gotoNext = 2947571i32;
                } else if (__value__ == (2947571i32)) {
                    if (((_r_2947541 != _sr_2946750) && (_r_2947541 < _tr_2946906 : Bool) : Bool)) {
                        _gotoNext = 2947593i32;
                    } else {
                        _gotoNext = 2947630i32;
                    };
                } else if (__value__ == (2947593i32)) {
                    _r_2947541 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2947541);
                    _gotoNext = 2947571i32;
                } else if (__value__ == (2947630i32)) {
                    if (_r_2947541 == (_tr_2946906)) {
                        _gotoNext = 2947641i32;
                    } else {
                        _gotoNext = 2947661i32;
                    };
                } else if (__value__ == (2947641i32)) {
                    _i_2946756++;
                    _gotoNext = 2947675i32;
                } else if (__value__ == (2947661i32)) {
                    return false;
                    _i_2946756++;
                    _gotoNext = 2947675i32;
                } else if (__value__ == (2947674i32)) {
                    _i_2946756 = 0i32;
                    _gotoNext = 2947675i32;
                } else if (__value__ == (2947675i32)) {
                    if (_i_2946756 < (_keys_2946743.length)) {
                        _gotoNext = 2946764i32;
                    } else {
                        _gotoNext = 2947748i32;
                    };
                } else if (__value__ == (2947748i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
