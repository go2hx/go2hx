package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _size_3025694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3025691:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3025449 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_3025462 = @:invalid_type null;
        var _tr_3025017:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3025004:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3024956:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3026247:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3025612:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3025456:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_3025449 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3024956 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3024964i32;
                } else if (__value__ == (3024964i32)) {
                    if (((_i_3024956 < (_s.length) : Bool) && (_i_3024956 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3025000i32;
                    } else {
                        _gotoNext = 3025389i32;
                    };
                } else if (__value__ == (3025000i32)) {
                    _sr_3025004 = _s[(_i_3024956 : stdgo.GoInt)];
                    _tr_3025017 = _t[(_i_3024956 : stdgo.GoInt)];
                    if (((_sr_3025004 | _tr_3025017 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3025056i32;
                    } else {
                        _gotoNext = 3025100i32;
                    };
                } else if (__value__ == (3025056i32)) {
                    _gotoNext = 3025414i32;
                } else if (__value__ == (3025100i32)) {
                    if (_tr_3025017 == (_sr_3025004)) {
                        _gotoNext = 3025112i32;
                    } else {
                        _gotoNext = 3025177i32;
                    };
                } else if (__value__ == (3025112i32)) {
                    _i_3024956++;
                    _gotoNext = 3024964i32;
                } else if (__value__ == (3025177i32)) {
                    if ((_tr_3025017 < _sr_3025004 : Bool)) {
                        _gotoNext = 3025188i32;
                    } else {
                        _gotoNext = 3025263i32;
                    };
                } else if (__value__ == (3025188i32)) {
                    {
                        final __tmp__0 = _sr_3025004;
                        final __tmp__1 = _tr_3025017;
                        _tr_3025017 = __tmp__0;
                        _sr_3025004 = __tmp__1;
                    };
                    _gotoNext = 3025263i32;
                } else if (__value__ == (3025263i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3025004 : Bool) && (_sr_3025004 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3025017 == ((_sr_3025004 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3025309i32;
                    } else {
                        _gotoNext = 3025329i32;
                    };
                } else if (__value__ == (3025309i32)) {
                    _i_3024956++;
                    _gotoNext = 3024964i32;
                } else if (__value__ == (3025329i32)) {
                    return false;
                    _i_3024956++;
                    _gotoNext = 3024964i32;
                } else if (__value__ == (3025389i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3025414i32;
                } else if (__value__ == (3025414i32)) {
                    _s = (_s.__slice__(_i_3024956) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3024956) : stdgo.GoString)?.__copy__();
                    _keys_3025449 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3025449 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3025449 = (_keys_3025449.__append__(_key));
                        _values_3025449 = (_values_3025449.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3025449.length)) {
                        _gotoNext = 3026380i32;
                    } else {
                        _gotoNext = 3026454i32;
                    };
                } else if (__value__ == (3025470i32)) {
                    _sr_3025456 = _values_3025449[@:invalid_index_invalid_type _i_3025462];
                    var __blank__ = _keys_3025449[@:invalid_index_invalid_type _i_3025462];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3025539i32;
                    } else {
                        _gotoNext = 3025608i32;
                    };
                } else if (__value__ == (3025539i32)) {
                    return false;
                    _gotoNext = 3025608i32;
                } else if (__value__ == (3025608i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3025646i32;
                    } else {
                        _gotoNext = 3025686i32;
                    };
                } else if (__value__ == (3025646i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3025612 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3025830i32;
                } else if (__value__ == (3025686i32)) {
                    _gotoNext = 3025686i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3025691 = @:tmpset0 __tmp__._0;
                        _size_3025694 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3025691;
                        final __tmp__1 = (_t.__slice__(_size_3025694) : stdgo.GoString)?.__copy__();
                        _tr_3025612 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3025830i32;
                } else if (__value__ == (3025830i32)) {
                    if (_tr_3025612 == (_sr_3025456)) {
                        _gotoNext = 3025842i32;
                    } else {
                        _gotoNext = 3025907i32;
                    };
                } else if (__value__ == (3025842i32)) {
                    _i_3025462++;
                    _gotoNext = 3026381i32;
                } else if (__value__ == (3025907i32)) {
                    if ((_tr_3025612 < _sr_3025456 : Bool)) {
                        _gotoNext = 3025918i32;
                    } else {
                        _gotoNext = 3025972i32;
                    };
                } else if (__value__ == (3025918i32)) {
                    {
                        final __tmp__0 = _sr_3025456;
                        final __tmp__1 = _tr_3025612;
                        _tr_3025612 = __tmp__0;
                        _sr_3025456 = __tmp__1;
                    };
                    _gotoNext = 3025972i32;
                } else if (__value__ == (3025972i32)) {
                    if ((_tr_3025612 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3025994i32;
                    } else {
                        _gotoNext = 3026247i32;
                    };
                } else if (__value__ == (3025994i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3025456 : Bool) && (_sr_3025456 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3025612 == ((_sr_3025456 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3026094i32;
                    } else {
                        _gotoNext = 3026117i32;
                    };
                } else if (__value__ == (3026094i32)) {
                    _i_3025462++;
                    _gotoNext = 3026381i32;
                } else if (__value__ == (3026117i32)) {
                    return false;
                    _gotoNext = 3026247i32;
                } else if (__value__ == (3026247i32)) {
                    _r_3026247 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3025456);
                    var __blank__ = 0i32;
                    _gotoNext = 3026277i32;
                } else if (__value__ == (3026277i32)) {
                    if (((_r_3026247 != _sr_3025456) && (_r_3026247 < _tr_3025612 : Bool) : Bool)) {
                        _gotoNext = 3026299i32;
                    } else {
                        _gotoNext = 3026336i32;
                    };
                } else if (__value__ == (3026299i32)) {
                    _r_3026247 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3026247);
                    _gotoNext = 3026277i32;
                } else if (__value__ == (3026336i32)) {
                    if (_r_3026247 == (_tr_3025612)) {
                        _gotoNext = 3026347i32;
                    } else {
                        _gotoNext = 3026367i32;
                    };
                } else if (__value__ == (3026347i32)) {
                    _i_3025462++;
                    _gotoNext = 3026381i32;
                } else if (__value__ == (3026367i32)) {
                    return false;
                    _i_3025462++;
                    _gotoNext = 3026381i32;
                } else if (__value__ == (3026380i32)) {
                    _i_3025462 = 0i32;
                    _gotoNext = 3026381i32;
                } else if (__value__ == (3026381i32)) {
                    if (_i_3025462 < (_keys_3025449.length)) {
                        _gotoNext = 3025470i32;
                    } else {
                        _gotoNext = 3026454i32;
                    };
                } else if (__value__ == (3026454i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
