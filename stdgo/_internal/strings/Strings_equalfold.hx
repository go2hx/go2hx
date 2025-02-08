package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2773850 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2773418:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2774648:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2773405:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2773357:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2774095:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2774092:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2774013:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2773857:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2773850 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i_2773863 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2773357 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2773365i32;
                } else if (__value__ == (2773365i32)) {
                    if (((_i_2773357 < (_s.length) : Bool) && (_i_2773357 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2773401i32;
                    } else {
                        _gotoNext = 2773790i32;
                    };
                } else if (__value__ == (2773401i32)) {
                    _sr_2773405 = _s[(_i_2773357 : stdgo.GoInt)];
                    _tr_2773418 = _t[(_i_2773357 : stdgo.GoInt)];
                    if (((_sr_2773405 | _tr_2773418 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2773457i32;
                    } else {
                        _gotoNext = 2773501i32;
                    };
                } else if (__value__ == (2773457i32)) {
                    _gotoNext = 2773815i32;
                } else if (__value__ == (2773501i32)) {
                    if (_tr_2773418 == (_sr_2773405)) {
                        _gotoNext = 2773513i32;
                    } else {
                        _gotoNext = 2773578i32;
                    };
                } else if (__value__ == (2773513i32)) {
                    _i_2773357++;
                    _gotoNext = 2773365i32;
                } else if (__value__ == (2773578i32)) {
                    if ((_tr_2773418 < _sr_2773405 : Bool)) {
                        _gotoNext = 2773589i32;
                    } else {
                        _gotoNext = 2773664i32;
                    };
                } else if (__value__ == (2773589i32)) {
                    {
                        final __tmp__0 = _sr_2773405;
                        final __tmp__1 = _tr_2773418;
                        _tr_2773418 = __tmp__0;
                        _sr_2773405 = __tmp__1;
                    };
                    _gotoNext = 2773664i32;
                } else if (__value__ == (2773664i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2773405 : Bool) && (_sr_2773405 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2773418 == ((_sr_2773405 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2773710i32;
                    } else {
                        _gotoNext = 2773730i32;
                    };
                } else if (__value__ == (2773710i32)) {
                    _i_2773357++;
                    _gotoNext = 2773365i32;
                } else if (__value__ == (2773730i32)) {
                    return false;
                    _i_2773357++;
                    _gotoNext = 2773365i32;
                } else if (__value__ == (2773790i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2773815i32;
                } else if (__value__ == (2773815i32)) {
                    _s = (_s.__slice__(_i_2773357) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2773357) : stdgo.GoString)?.__copy__();
                    _keys_2773850 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2773850 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2773850 = (_keys_2773850.__append__(_key));
                        _values_2773850 = (_values_2773850.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2773850.length)) {
                        _gotoNext = 2774781i32;
                    } else {
                        _gotoNext = 2774855i32;
                    };
                } else if (__value__ == (2773871i32)) {
                    _sr_2773857 = _values_2773850[@:invalid_index_invalid_type _i_2773863];
                    var __blank__ = _keys_2773850[@:invalid_index_invalid_type _i_2773863];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2773940i32;
                    } else {
                        _gotoNext = 2774009i32;
                    };
                } else if (__value__ == (2773940i32)) {
                    return false;
                    _gotoNext = 2774009i32;
                } else if (__value__ == (2774009i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2774047i32;
                    } else {
                        _gotoNext = 2774087i32;
                    };
                } else if (__value__ == (2774047i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2774013 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2774231i32;
                } else if (__value__ == (2774087i32)) {
                    _gotoNext = 2774087i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2774092 = @:tmpset0 __tmp__._0;
                        _size_2774095 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2774092;
                        final __tmp__1 = (_t.__slice__(_size_2774095) : stdgo.GoString)?.__copy__();
                        _tr_2774013 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2774231i32;
                } else if (__value__ == (2774231i32)) {
                    if (_tr_2774013 == (_sr_2773857)) {
                        _gotoNext = 2774243i32;
                    } else {
                        _gotoNext = 2774308i32;
                    };
                } else if (__value__ == (2774243i32)) {
                    _i_2773863++;
                    _gotoNext = 2774782i32;
                } else if (__value__ == (2774308i32)) {
                    if ((_tr_2774013 < _sr_2773857 : Bool)) {
                        _gotoNext = 2774319i32;
                    } else {
                        _gotoNext = 2774373i32;
                    };
                } else if (__value__ == (2774319i32)) {
                    {
                        final __tmp__0 = _sr_2773857;
                        final __tmp__1 = _tr_2774013;
                        _tr_2774013 = __tmp__0;
                        _sr_2773857 = __tmp__1;
                    };
                    _gotoNext = 2774373i32;
                } else if (__value__ == (2774373i32)) {
                    if ((_tr_2774013 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2774395i32;
                    } else {
                        _gotoNext = 2774648i32;
                    };
                } else if (__value__ == (2774395i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2773857 : Bool) && (_sr_2773857 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2774013 == ((_sr_2773857 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2774495i32;
                    } else {
                        _gotoNext = 2774518i32;
                    };
                } else if (__value__ == (2774495i32)) {
                    _i_2773863++;
                    _gotoNext = 2774782i32;
                } else if (__value__ == (2774518i32)) {
                    return false;
                    _gotoNext = 2774648i32;
                } else if (__value__ == (2774648i32)) {
                    _r_2774648 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2773857);
                    var __blank__ = 0i32;
                    _gotoNext = 2774678i32;
                } else if (__value__ == (2774678i32)) {
                    if (((_r_2774648 != _sr_2773857) && (_r_2774648 < _tr_2774013 : Bool) : Bool)) {
                        _gotoNext = 2774700i32;
                    } else {
                        _gotoNext = 2774737i32;
                    };
                } else if (__value__ == (2774700i32)) {
                    _r_2774648 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2774648);
                    _gotoNext = 2774678i32;
                } else if (__value__ == (2774737i32)) {
                    if (_r_2774648 == (_tr_2774013)) {
                        _gotoNext = 2774748i32;
                    } else {
                        _gotoNext = 2774768i32;
                    };
                } else if (__value__ == (2774748i32)) {
                    _i_2773863++;
                    _gotoNext = 2774782i32;
                } else if (__value__ == (2774768i32)) {
                    return false;
                    _i_2773863++;
                    _gotoNext = 2774782i32;
                } else if (__value__ == (2774781i32)) {
                    _i_2773863 = 0i32;
                    _gotoNext = 2774782i32;
                } else if (__value__ == (2774782i32)) {
                    if (_i_2773863 < (_keys_2773850.length)) {
                        _gotoNext = 2773871i32;
                    } else {
                        _gotoNext = 2774855i32;
                    };
                } else if (__value__ == (2774855i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
