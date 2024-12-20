package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2874226:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2873467:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2872948:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2872900:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2873681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2873678:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2873553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2873550:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2873471:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2872961:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2872900 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2872908i32;
                } else if (__value__ == (2872908i32)) {
                    if (((_i_2872900 < (_s.length) : Bool) && (_i_2872900 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2872944i32;
                    } else {
                        _gotoNext = 2873333i32;
                    };
                } else if (__value__ == (2872944i32)) {
                    _sr_2872948 = _s[(_i_2872900 : stdgo.GoInt)];
                    _tr_2872961 = _t[(_i_2872900 : stdgo.GoInt)];
                    if (((_sr_2872948 | _tr_2872961 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2873000i32;
                    } else {
                        _gotoNext = 2873044i32;
                    };
                } else if (__value__ == (2873000i32)) {
                    _gotoNext = 2873358i32;
                } else if (__value__ == (2873044i32)) {
                    if (_tr_2872961 == (_sr_2872948)) {
                        _gotoNext = 2873056i32;
                    } else {
                        _gotoNext = 2873121i32;
                    };
                } else if (__value__ == (2873056i32)) {
                    _i_2872900++;
                    _gotoNext = 2872908i32;
                } else if (__value__ == (2873121i32)) {
                    if ((_tr_2872961 < _sr_2872948 : Bool)) {
                        _gotoNext = 2873132i32;
                    } else {
                        _gotoNext = 2873207i32;
                    };
                } else if (__value__ == (2873132i32)) {
                    {
                        final __tmp__0 = _sr_2872948;
                        final __tmp__1 = _tr_2872961;
                        _tr_2872961 = __tmp__0;
                        _sr_2872948 = __tmp__1;
                    };
                    _gotoNext = 2873207i32;
                } else if (__value__ == (2873207i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2872948 : Bool) && (_sr_2872948 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2872961 == ((_sr_2872948 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2873253i32;
                    } else {
                        _gotoNext = 2873273i32;
                    };
                } else if (__value__ == (2873253i32)) {
                    _i_2872900++;
                    _gotoNext = 2872908i32;
                } else if (__value__ == (2873273i32)) {
                    return false;
                    _i_2872900++;
                    _gotoNext = 2872908i32;
                } else if (__value__ == (2873333i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2873358i32;
                } else if (__value__ == (2873358i32)) {
                    _s = (_s.__slice__(_i_2872900) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2872900) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2873393i32;
                } else if (__value__ == (2873393i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2873424i32;
                    } else {
                        _gotoNext = 2874399i32;
                    };
                } else if (__value__ == (2873424i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2873505i32;
                    } else {
                        _gotoNext = 2873545i32;
                    };
                } else if (__value__ == (2873505i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2873467 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2873609i32;
                } else if (__value__ == (2873545i32)) {
                    _gotoNext = 2873545i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2873550 = __tmp__._0;
                        _size_2873553 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2873550;
                        final __tmp__1 = (_s.__slice__(_size_2873553) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2873467 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2873609i32;
                } else if (__value__ == (2873609i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2873633i32;
                    } else {
                        _gotoNext = 2873673i32;
                    };
                } else if (__value__ == (2873633i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2873471 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2873809i32;
                } else if (__value__ == (2873673i32)) {
                    _gotoNext = 2873673i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2873678 = __tmp__._0;
                        _size_2873681 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2873678;
                        final __tmp__1 = (_t.__slice__(_size_2873681) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2873471 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2873809i32;
                } else if (__value__ == (2873809i32)) {
                    if (_tr_2873471 == (_sr_2873467)) {
                        _gotoNext = 2873821i32;
                    } else {
                        _gotoNext = 2873886i32;
                    };
                } else if (__value__ == (2873821i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873393i32;
                } else if (__value__ == (2873886i32)) {
                    if ((_tr_2873471 < _sr_2873467 : Bool)) {
                        _gotoNext = 2873897i32;
                    } else {
                        _gotoNext = 2873951i32;
                    };
                } else if (__value__ == (2873897i32)) {
                    {
                        final __tmp__0 = _sr_2873467;
                        final __tmp__1 = _tr_2873471;
                        _tr_2873471 = __tmp__0;
                        _sr_2873467 = __tmp__1;
                    };
                    _gotoNext = 2873951i32;
                } else if (__value__ == (2873951i32)) {
                    if ((_tr_2873471 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2873973i32;
                    } else {
                        _gotoNext = 2874226i32;
                    };
                } else if (__value__ == (2873973i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2873467 : Bool) && (_sr_2873467 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2873471 == ((_sr_2873467 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2874073i32;
                    } else {
                        _gotoNext = 2874096i32;
                    };
                } else if (__value__ == (2874073i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873393i32;
                } else if (__value__ == (2874096i32)) {
                    return false;
                    _gotoNext = 2874226i32;
                } else if (__value__ == (2874226i32)) {
                    _r_2874226 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2873467);
                    var __blank__ = 0i32;
                    _gotoNext = 2874256i32;
                } else if (__value__ == (2874256i32)) {
                    if (((_r_2874226 != _sr_2873467) && (_r_2874226 < _tr_2873471 : Bool) : Bool)) {
                        _gotoNext = 2874278i32;
                    } else {
                        _gotoNext = 2874315i32;
                    };
                } else if (__value__ == (2874278i32)) {
                    _r_2874226 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2874226);
                    _gotoNext = 2874256i32;
                } else if (__value__ == (2874315i32)) {
                    if (_r_2874226 == (_tr_2873471)) {
                        _gotoNext = 2874326i32;
                    } else {
                        _gotoNext = 2874346i32;
                    };
                } else if (__value__ == (2874326i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2873393i32;
                } else if (__value__ == (2874346i32)) {
                    return false;
                    _gotoNext = 2873393i32;
                } else if (__value__ == (2874399i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
