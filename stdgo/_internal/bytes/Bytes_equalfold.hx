package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2942597:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2942078:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2943356:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2942808:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2942601:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2942091:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2942030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2942811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2942683:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2942680:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2942030 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2942038i32;
                } else if (__value__ == (2942038i32)) {
                    if (((_i_2942030 < (_s.length) : Bool) && (_i_2942030 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2942074i32;
                    } else {
                        _gotoNext = 2942463i32;
                    };
                } else if (__value__ == (2942074i32)) {
                    _sr_2942078 = _s[(_i_2942030 : stdgo.GoInt)];
                    _tr_2942091 = _t[(_i_2942030 : stdgo.GoInt)];
                    if (((_sr_2942078 | _tr_2942091 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942130i32;
                    } else {
                        _gotoNext = 2942174i32;
                    };
                } else if (__value__ == (2942130i32)) {
                    _gotoNext = 2942488i32;
                } else if (__value__ == (2942174i32)) {
                    if (_tr_2942091 == (_sr_2942078)) {
                        _gotoNext = 2942186i32;
                    } else {
                        _gotoNext = 2942251i32;
                    };
                } else if (__value__ == (2942186i32)) {
                    _i_2942030++;
                    _gotoNext = 2942038i32;
                } else if (__value__ == (2942251i32)) {
                    if ((_tr_2942091 < _sr_2942078 : Bool)) {
                        _gotoNext = 2942262i32;
                    } else {
                        _gotoNext = 2942337i32;
                    };
                } else if (__value__ == (2942262i32)) {
                    {
                        final __tmp__0 = _sr_2942078;
                        final __tmp__1 = _tr_2942091;
                        _tr_2942091 = __tmp__0;
                        _sr_2942078 = __tmp__1;
                    };
                    _gotoNext = 2942337i32;
                } else if (__value__ == (2942337i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2942078 : Bool) && (_sr_2942078 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2942091 == ((_sr_2942078 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2942383i32;
                    } else {
                        _gotoNext = 2942403i32;
                    };
                } else if (__value__ == (2942383i32)) {
                    _i_2942030++;
                    _gotoNext = 2942038i32;
                } else if (__value__ == (2942403i32)) {
                    return false;
                    _i_2942030++;
                    _gotoNext = 2942038i32;
                } else if (__value__ == (2942463i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2942488i32;
                } else if (__value__ == (2942488i32)) {
                    _s = (_s.__slice__(_i_2942030) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2942030) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2942523i32;
                } else if (__value__ == (2942523i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2942554i32;
                    } else {
                        _gotoNext = 2943529i32;
                    };
                } else if (__value__ == (2942554i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942635i32;
                    } else {
                        _gotoNext = 2942675i32;
                    };
                } else if (__value__ == (2942635i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2942597 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2942739i32;
                } else if (__value__ == (2942675i32)) {
                    _gotoNext = 2942675i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_2942680 = @:tmpset0 __tmp__._0;
                        _size_2942683 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2942680;
                        final __tmp__1 = (_s.__slice__(_size_2942683) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2942597 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2942739i32;
                } else if (__value__ == (2942739i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942763i32;
                    } else {
                        _gotoNext = 2942803i32;
                    };
                } else if (__value__ == (2942763i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2942601 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2942939i32;
                } else if (__value__ == (2942803i32)) {
                    _gotoNext = 2942803i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_2942808 = @:tmpset0 __tmp__._0;
                        _size_2942811 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2942808;
                        final __tmp__1 = (_t.__slice__(_size_2942811) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2942601 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2942939i32;
                } else if (__value__ == (2942939i32)) {
                    if (_tr_2942601 == (_sr_2942597)) {
                        _gotoNext = 2942951i32;
                    } else {
                        _gotoNext = 2943016i32;
                    };
                } else if (__value__ == (2942951i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942523i32;
                } else if (__value__ == (2943016i32)) {
                    if ((_tr_2942601 < _sr_2942597 : Bool)) {
                        _gotoNext = 2943027i32;
                    } else {
                        _gotoNext = 2943081i32;
                    };
                } else if (__value__ == (2943027i32)) {
                    {
                        final __tmp__0 = _sr_2942597;
                        final __tmp__1 = _tr_2942601;
                        _tr_2942601 = __tmp__0;
                        _sr_2942597 = __tmp__1;
                    };
                    _gotoNext = 2943081i32;
                } else if (__value__ == (2943081i32)) {
                    if ((_tr_2942601 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2943103i32;
                    } else {
                        _gotoNext = 2943356i32;
                    };
                } else if (__value__ == (2943103i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2942597 : Bool) && (_sr_2942597 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2942601 == ((_sr_2942597 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2943203i32;
                    } else {
                        _gotoNext = 2943226i32;
                    };
                } else if (__value__ == (2943203i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942523i32;
                } else if (__value__ == (2943226i32)) {
                    return false;
                    _gotoNext = 2943356i32;
                } else if (__value__ == (2943356i32)) {
                    _r_2943356 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2942597);
                    var __blank__ = 0i32;
                    _gotoNext = 2943386i32;
                } else if (__value__ == (2943386i32)) {
                    if (((_r_2943356 != _sr_2942597) && (_r_2943356 < _tr_2942601 : Bool) : Bool)) {
                        _gotoNext = 2943408i32;
                    } else {
                        _gotoNext = 2943445i32;
                    };
                } else if (__value__ == (2943408i32)) {
                    _r_2943356 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2943356);
                    _gotoNext = 2943386i32;
                } else if (__value__ == (2943445i32)) {
                    if (_r_2943356 == (_tr_2942601)) {
                        _gotoNext = 2943456i32;
                    } else {
                        _gotoNext = 2943476i32;
                    };
                } else if (__value__ == (2943456i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942523i32;
                } else if (__value__ == (2943476i32)) {
                    return false;
                    _gotoNext = 2942523i32;
                } else if (__value__ == (2943529i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
