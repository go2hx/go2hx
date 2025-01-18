package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2735058:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2734408:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2735734:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2735189:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2735061:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2734469:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2734456:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2735186:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2734979:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2734975:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2734408 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2734416i32;
                } else if (__value__ == (2734416i32)) {
                    if (((_i_2734408 < (_s.length) : Bool) && (_i_2734408 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2734452i32;
                    } else {
                        _gotoNext = 2734841i32;
                    };
                } else if (__value__ == (2734452i32)) {
                    _sr_2734456 = _s[(_i_2734408 : stdgo.GoInt)];
                    _tr_2734469 = _t[(_i_2734408 : stdgo.GoInt)];
                    if (((_sr_2734456 | _tr_2734469 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2734508i32;
                    } else {
                        _gotoNext = 2734552i32;
                    };
                } else if (__value__ == (2734508i32)) {
                    _gotoNext = 2734866i32;
                } else if (__value__ == (2734552i32)) {
                    if (_tr_2734469 == (_sr_2734456)) {
                        _gotoNext = 2734564i32;
                    } else {
                        _gotoNext = 2734629i32;
                    };
                } else if (__value__ == (2734564i32)) {
                    _i_2734408++;
                    _gotoNext = 2734416i32;
                } else if (__value__ == (2734629i32)) {
                    if ((_tr_2734469 < _sr_2734456 : Bool)) {
                        _gotoNext = 2734640i32;
                    } else {
                        _gotoNext = 2734715i32;
                    };
                } else if (__value__ == (2734640i32)) {
                    {
                        final __tmp__0 = _sr_2734456;
                        final __tmp__1 = _tr_2734469;
                        _tr_2734469 = __tmp__0;
                        _sr_2734456 = __tmp__1;
                    };
                    _gotoNext = 2734715i32;
                } else if (__value__ == (2734715i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2734456 : Bool) && (_sr_2734456 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2734469 == ((_sr_2734456 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2734761i32;
                    } else {
                        _gotoNext = 2734781i32;
                    };
                } else if (__value__ == (2734761i32)) {
                    _i_2734408++;
                    _gotoNext = 2734416i32;
                } else if (__value__ == (2734781i32)) {
                    return false;
                    _i_2734408++;
                    _gotoNext = 2734416i32;
                } else if (__value__ == (2734841i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2734866i32;
                } else if (__value__ == (2734866i32)) {
                    _s = (_s.__slice__(_i_2734408) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2734408) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2734901i32;
                } else if (__value__ == (2734901i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2734932i32;
                    } else {
                        _gotoNext = 2735907i32;
                    };
                } else if (__value__ == (2734932i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2735013i32;
                    } else {
                        _gotoNext = 2735053i32;
                    };
                } else if (__value__ == (2735013i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2734975 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2735117i32;
                } else if (__value__ == (2735053i32)) {
                    _gotoNext = 2735053i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2735058 = @:tmpset0 __tmp__._0;
                        _size_2735061 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2735058;
                        final __tmp__1 = (_s.__slice__(_size_2735061) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2734975 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2735117i32;
                } else if (__value__ == (2735117i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2735141i32;
                    } else {
                        _gotoNext = 2735181i32;
                    };
                } else if (__value__ == (2735141i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2734979 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2735317i32;
                } else if (__value__ == (2735181i32)) {
                    _gotoNext = 2735181i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2735186 = @:tmpset0 __tmp__._0;
                        _size_2735189 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2735186;
                        final __tmp__1 = (_t.__slice__(_size_2735189) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2734979 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2735317i32;
                } else if (__value__ == (2735317i32)) {
                    if (_tr_2734979 == (_sr_2734975)) {
                        _gotoNext = 2735329i32;
                    } else {
                        _gotoNext = 2735394i32;
                    };
                } else if (__value__ == (2735329i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2734901i32;
                } else if (__value__ == (2735394i32)) {
                    if ((_tr_2734979 < _sr_2734975 : Bool)) {
                        _gotoNext = 2735405i32;
                    } else {
                        _gotoNext = 2735459i32;
                    };
                } else if (__value__ == (2735405i32)) {
                    {
                        final __tmp__0 = _sr_2734975;
                        final __tmp__1 = _tr_2734979;
                        _tr_2734979 = __tmp__0;
                        _sr_2734975 = __tmp__1;
                    };
                    _gotoNext = 2735459i32;
                } else if (__value__ == (2735459i32)) {
                    if ((_tr_2734979 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2735481i32;
                    } else {
                        _gotoNext = 2735734i32;
                    };
                } else if (__value__ == (2735481i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2734975 : Bool) && (_sr_2734975 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2734979 == ((_sr_2734975 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2735581i32;
                    } else {
                        _gotoNext = 2735604i32;
                    };
                } else if (__value__ == (2735581i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2734901i32;
                } else if (__value__ == (2735604i32)) {
                    return false;
                    _gotoNext = 2735734i32;
                } else if (__value__ == (2735734i32)) {
                    _r_2735734 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2734975);
                    var __blank__ = 0i32;
                    _gotoNext = 2735764i32;
                } else if (__value__ == (2735764i32)) {
                    if (((_r_2735734 != _sr_2734975) && (_r_2735734 < _tr_2734979 : Bool) : Bool)) {
                        _gotoNext = 2735786i32;
                    } else {
                        _gotoNext = 2735823i32;
                    };
                } else if (__value__ == (2735786i32)) {
                    _r_2735734 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2735734);
                    _gotoNext = 2735764i32;
                } else if (__value__ == (2735823i32)) {
                    if (_r_2735734 == (_tr_2734979)) {
                        _gotoNext = 2735834i32;
                    } else {
                        _gotoNext = 2735854i32;
                    };
                } else if (__value__ == (2735834i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2734901i32;
                } else if (__value__ == (2735854i32)) {
                    return false;
                    _gotoNext = 2734901i32;
                } else if (__value__ == (2735907i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
