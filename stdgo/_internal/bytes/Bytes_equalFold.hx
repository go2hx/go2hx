package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2942346:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2942218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2942215:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2942132:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2941613:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2942891:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2942343:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2942136:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2941626:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2941565:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2941565 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2941573i32;
                } else if (__value__ == (2941573i32)) {
                    if (((_i_2941565 < (_s.length) : Bool) && (_i_2941565 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2941609i32;
                    } else {
                        _gotoNext = 2941998i32;
                    };
                } else if (__value__ == (2941609i32)) {
                    _sr_2941613 = _s[(_i_2941565 : stdgo.GoInt)];
                    _tr_2941626 = _t[(_i_2941565 : stdgo.GoInt)];
                    if (((_sr_2941613 | _tr_2941626 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2941665i32;
                    } else {
                        _gotoNext = 2941709i32;
                    };
                } else if (__value__ == (2941665i32)) {
                    _gotoNext = 2942023i32;
                } else if (__value__ == (2941709i32)) {
                    if (_tr_2941626 == (_sr_2941613)) {
                        _gotoNext = 2941721i32;
                    } else {
                        _gotoNext = 2941786i32;
                    };
                } else if (__value__ == (2941721i32)) {
                    _i_2941565++;
                    _gotoNext = 2941573i32;
                } else if (__value__ == (2941786i32)) {
                    if ((_tr_2941626 < _sr_2941613 : Bool)) {
                        _gotoNext = 2941797i32;
                    } else {
                        _gotoNext = 2941872i32;
                    };
                } else if (__value__ == (2941797i32)) {
                    {
                        final __tmp__0 = _sr_2941613;
                        final __tmp__1 = _tr_2941626;
                        _tr_2941626 = __tmp__0;
                        _sr_2941613 = __tmp__1;
                    };
                    _gotoNext = 2941872i32;
                } else if (__value__ == (2941872i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2941613 : Bool) && (_sr_2941613 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2941626 == ((_sr_2941613 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2941918i32;
                    } else {
                        _gotoNext = 2941938i32;
                    };
                } else if (__value__ == (2941918i32)) {
                    _i_2941565++;
                    _gotoNext = 2941573i32;
                } else if (__value__ == (2941938i32)) {
                    return false;
                    _i_2941565++;
                    _gotoNext = 2941573i32;
                } else if (__value__ == (2941998i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2942023i32;
                } else if (__value__ == (2942023i32)) {
                    _s = (_s.__slice__(_i_2941565) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2941565) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2942058i32;
                } else if (__value__ == (2942058i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2942089i32;
                    } else {
                        _gotoNext = 2943064i32;
                    };
                } else if (__value__ == (2942089i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942170i32;
                    } else {
                        _gotoNext = 2942210i32;
                    };
                } else if (__value__ == (2942170i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2942132 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2942274i32;
                } else if (__value__ == (2942210i32)) {
                    _gotoNext = 2942210i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2942215 = __tmp__._0;
                        _size_2942218 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2942215;
                        final __tmp__1 = (_s.__slice__(_size_2942218) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2942132 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2942274i32;
                } else if (__value__ == (2942274i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2942298i32;
                    } else {
                        _gotoNext = 2942338i32;
                    };
                } else if (__value__ == (2942298i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2942136 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2942474i32;
                } else if (__value__ == (2942338i32)) {
                    _gotoNext = 2942338i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2942343 = __tmp__._0;
                        _size_2942346 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2942343;
                        final __tmp__1 = (_t.__slice__(_size_2942346) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2942136 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2942474i32;
                } else if (__value__ == (2942474i32)) {
                    if (_tr_2942136 == (_sr_2942132)) {
                        _gotoNext = 2942486i32;
                    } else {
                        _gotoNext = 2942551i32;
                    };
                } else if (__value__ == (2942486i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942058i32;
                } else if (__value__ == (2942551i32)) {
                    if ((_tr_2942136 < _sr_2942132 : Bool)) {
                        _gotoNext = 2942562i32;
                    } else {
                        _gotoNext = 2942616i32;
                    };
                } else if (__value__ == (2942562i32)) {
                    {
                        final __tmp__0 = _sr_2942132;
                        final __tmp__1 = _tr_2942136;
                        _tr_2942136 = __tmp__0;
                        _sr_2942132 = __tmp__1;
                    };
                    _gotoNext = 2942616i32;
                } else if (__value__ == (2942616i32)) {
                    if ((_tr_2942136 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2942638i32;
                    } else {
                        _gotoNext = 2942891i32;
                    };
                } else if (__value__ == (2942638i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2942132 : Bool) && (_sr_2942132 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2942136 == ((_sr_2942132 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2942738i32;
                    } else {
                        _gotoNext = 2942761i32;
                    };
                } else if (__value__ == (2942738i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942058i32;
                } else if (__value__ == (2942761i32)) {
                    return false;
                    _gotoNext = 2942891i32;
                } else if (__value__ == (2942891i32)) {
                    _r_2942891 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2942132);
                    var __blank__ = 0i32;
                    _gotoNext = 2942921i32;
                } else if (__value__ == (2942921i32)) {
                    if (((_r_2942891 != _sr_2942132) && (_r_2942891 < _tr_2942136 : Bool) : Bool)) {
                        _gotoNext = 2942943i32;
                    } else {
                        _gotoNext = 2942980i32;
                    };
                } else if (__value__ == (2942943i32)) {
                    _r_2942891 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2942891);
                    _gotoNext = 2942921i32;
                } else if (__value__ == (2942980i32)) {
                    if (_r_2942891 == (_tr_2942136)) {
                        _gotoNext = 2942991i32;
                    } else {
                        _gotoNext = 2943011i32;
                    };
                } else if (__value__ == (2942991i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2942058i32;
                } else if (__value__ == (2943011i32)) {
                    return false;
                    _gotoNext = 2942058i32;
                } else if (__value__ == (2943064i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
