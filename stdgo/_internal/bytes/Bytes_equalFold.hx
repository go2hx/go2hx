package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2934952:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2934824:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2934174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2934955:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2934741:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2934235:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2934222:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2935500:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2934827:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2934745:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2934174 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2934182i32;
                } else if (__value__ == (2934182i32)) {
                    if (((_i_2934174 < (_s.length) : Bool) && (_i_2934174 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2934218i32;
                    } else {
                        _gotoNext = 2934607i32;
                    };
                } else if (__value__ == (2934218i32)) {
                    _sr_2934222 = _s[(_i_2934174 : stdgo.GoInt)];
                    _tr_2934235 = _t[(_i_2934174 : stdgo.GoInt)];
                    if (((_sr_2934222 | _tr_2934235 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934274i32;
                    } else {
                        _gotoNext = 2934318i32;
                    };
                } else if (__value__ == (2934274i32)) {
                    _gotoNext = 2934632i32;
                } else if (__value__ == (2934318i32)) {
                    if (_tr_2934235 == (_sr_2934222)) {
                        _gotoNext = 2934330i32;
                    } else {
                        _gotoNext = 2934395i32;
                    };
                } else if (__value__ == (2934330i32)) {
                    _i_2934174++;
                    _gotoNext = 2934182i32;
                } else if (__value__ == (2934395i32)) {
                    if ((_tr_2934235 < _sr_2934222 : Bool)) {
                        _gotoNext = 2934406i32;
                    } else {
                        _gotoNext = 2934481i32;
                    };
                } else if (__value__ == (2934406i32)) {
                    {
                        final __tmp__0 = _sr_2934222;
                        final __tmp__1 = _tr_2934235;
                        _tr_2934235 = __tmp__0;
                        _sr_2934222 = __tmp__1;
                    };
                    _gotoNext = 2934481i32;
                } else if (__value__ == (2934481i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2934222 : Bool) && (_sr_2934222 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2934235 == ((_sr_2934222 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2934527i32;
                    } else {
                        _gotoNext = 2934547i32;
                    };
                } else if (__value__ == (2934527i32)) {
                    _i_2934174++;
                    _gotoNext = 2934182i32;
                } else if (__value__ == (2934547i32)) {
                    return false;
                    _i_2934174++;
                    _gotoNext = 2934182i32;
                } else if (__value__ == (2934607i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2934632i32;
                } else if (__value__ == (2934632i32)) {
                    _s = (_s.__slice__(_i_2934174) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2934174) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2934667i32;
                } else if (__value__ == (2934667i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2934698i32;
                    } else {
                        _gotoNext = 2935673i32;
                    };
                } else if (__value__ == (2934698i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934779i32;
                    } else {
                        _gotoNext = 2934819i32;
                    };
                } else if (__value__ == (2934779i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2934741 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2934883i32;
                } else if (__value__ == (2934819i32)) {
                    _gotoNext = 2934819i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2934824 = @:tmpset0 __tmp__._0;
                        _size_2934827 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2934824;
                        final __tmp__1 = (_s.__slice__(_size_2934827) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2934741 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2934883i32;
                } else if (__value__ == (2934883i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934907i32;
                    } else {
                        _gotoNext = 2934947i32;
                    };
                } else if (__value__ == (2934907i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2934745 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2935083i32;
                } else if (__value__ == (2934947i32)) {
                    _gotoNext = 2934947i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2934952 = @:tmpset0 __tmp__._0;
                        _size_2934955 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2934952;
                        final __tmp__1 = (_t.__slice__(_size_2934955) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2934745 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2935083i32;
                } else if (__value__ == (2935083i32)) {
                    if (_tr_2934745 == (_sr_2934741)) {
                        _gotoNext = 2935095i32;
                    } else {
                        _gotoNext = 2935160i32;
                    };
                } else if (__value__ == (2935095i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934667i32;
                } else if (__value__ == (2935160i32)) {
                    if ((_tr_2934745 < _sr_2934741 : Bool)) {
                        _gotoNext = 2935171i32;
                    } else {
                        _gotoNext = 2935225i32;
                    };
                } else if (__value__ == (2935171i32)) {
                    {
                        final __tmp__0 = _sr_2934741;
                        final __tmp__1 = _tr_2934745;
                        _tr_2934745 = __tmp__0;
                        _sr_2934741 = __tmp__1;
                    };
                    _gotoNext = 2935225i32;
                } else if (__value__ == (2935225i32)) {
                    if ((_tr_2934745 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2935247i32;
                    } else {
                        _gotoNext = 2935500i32;
                    };
                } else if (__value__ == (2935247i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2934741 : Bool) && (_sr_2934741 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2934745 == ((_sr_2934741 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2935347i32;
                    } else {
                        _gotoNext = 2935370i32;
                    };
                } else if (__value__ == (2935347i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934667i32;
                } else if (__value__ == (2935370i32)) {
                    return false;
                    _gotoNext = 2935500i32;
                } else if (__value__ == (2935500i32)) {
                    _r_2935500 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2934741);
                    var __blank__ = 0i32;
                    _gotoNext = 2935530i32;
                } else if (__value__ == (2935530i32)) {
                    if (((_r_2935500 != _sr_2934741) && (_r_2935500 < _tr_2934745 : Bool) : Bool)) {
                        _gotoNext = 2935552i32;
                    } else {
                        _gotoNext = 2935589i32;
                    };
                } else if (__value__ == (2935552i32)) {
                    _r_2935500 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2935500);
                    _gotoNext = 2935530i32;
                } else if (__value__ == (2935589i32)) {
                    if (_r_2935500 == (_tr_2934745)) {
                        _gotoNext = 2935600i32;
                    } else {
                        _gotoNext = 2935620i32;
                    };
                } else if (__value__ == (2935600i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2934667i32;
                } else if (__value__ == (2935620i32)) {
                    return false;
                    _gotoNext = 2934667i32;
                } else if (__value__ == (2935673i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
