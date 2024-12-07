package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2940535:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2941255:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2941124:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2941041:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2940474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2941800:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2941252:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2941127:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2941045:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2940522:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2940474 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2940482i32;
                } else if (__value__ == (2940482i32)) {
                    if (((_i_2940474 < (_s.length) : Bool) && (_i_2940474 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2940518i32;
                    } else {
                        _gotoNext = 2940907i32;
                    };
                } else if (__value__ == (2940518i32)) {
                    _sr_2940522 = _s[(_i_2940474 : stdgo.GoInt)];
                    _tr_2940535 = _t[(_i_2940474 : stdgo.GoInt)];
                    if (((_sr_2940522 | _tr_2940535 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2940574i32;
                    } else {
                        _gotoNext = 2940618i32;
                    };
                } else if (__value__ == (2940574i32)) {
                    _gotoNext = 2940932i32;
                } else if (__value__ == (2940618i32)) {
                    if (_tr_2940535 == (_sr_2940522)) {
                        _gotoNext = 2940630i32;
                    } else {
                        _gotoNext = 2940695i32;
                    };
                } else if (__value__ == (2940630i32)) {
                    _i_2940474++;
                    _gotoNext = 2940482i32;
                } else if (__value__ == (2940695i32)) {
                    if ((_tr_2940535 < _sr_2940522 : Bool)) {
                        _gotoNext = 2940706i32;
                    } else {
                        _gotoNext = 2940781i32;
                    };
                } else if (__value__ == (2940706i32)) {
                    {
                        final __tmp__0 = _sr_2940522;
                        final __tmp__1 = _tr_2940535;
                        _tr_2940535 = __tmp__0;
                        _sr_2940522 = __tmp__1;
                    };
                    _gotoNext = 2940781i32;
                } else if (__value__ == (2940781i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2940522 : Bool) && (_sr_2940522 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2940535 == ((_sr_2940522 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2940827i32;
                    } else {
                        _gotoNext = 2940847i32;
                    };
                } else if (__value__ == (2940827i32)) {
                    _i_2940474++;
                    _gotoNext = 2940482i32;
                } else if (__value__ == (2940847i32)) {
                    return false;
                    _i_2940474++;
                    _gotoNext = 2940482i32;
                } else if (__value__ == (2940907i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2940932i32;
                } else if (__value__ == (2940932i32)) {
                    _s = (_s.__slice__(_i_2940474) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2940474) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2940967i32;
                } else if (__value__ == (2940967i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2940998i32;
                    } else {
                        _gotoNext = 2941973i32;
                    };
                } else if (__value__ == (2940998i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2941079i32;
                    } else {
                        _gotoNext = 2941119i32;
                    };
                } else if (__value__ == (2941079i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2941041 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2941183i32;
                } else if (__value__ == (2941119i32)) {
                    _gotoNext = 2941119i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2941124 = __tmp__._0;
                        _size_2941127 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2941124;
                        final __tmp__1 = (_s.__slice__(_size_2941127) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2941041 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2941183i32;
                } else if (__value__ == (2941183i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2941207i32;
                    } else {
                        _gotoNext = 2941247i32;
                    };
                } else if (__value__ == (2941207i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2941045 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2941383i32;
                } else if (__value__ == (2941247i32)) {
                    _gotoNext = 2941247i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2941252 = __tmp__._0;
                        _size_2941255 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2941252;
                        final __tmp__1 = (_t.__slice__(_size_2941255) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2941045 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2941383i32;
                } else if (__value__ == (2941383i32)) {
                    if (_tr_2941045 == (_sr_2941041)) {
                        _gotoNext = 2941395i32;
                    } else {
                        _gotoNext = 2941460i32;
                    };
                } else if (__value__ == (2941395i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2940967i32;
                } else if (__value__ == (2941460i32)) {
                    if ((_tr_2941045 < _sr_2941041 : Bool)) {
                        _gotoNext = 2941471i32;
                    } else {
                        _gotoNext = 2941525i32;
                    };
                } else if (__value__ == (2941471i32)) {
                    {
                        final __tmp__0 = _sr_2941041;
                        final __tmp__1 = _tr_2941045;
                        _tr_2941045 = __tmp__0;
                        _sr_2941041 = __tmp__1;
                    };
                    _gotoNext = 2941525i32;
                } else if (__value__ == (2941525i32)) {
                    if ((_tr_2941045 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2941547i32;
                    } else {
                        _gotoNext = 2941800i32;
                    };
                } else if (__value__ == (2941547i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2941041 : Bool) && (_sr_2941041 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2941045 == ((_sr_2941041 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2941647i32;
                    } else {
                        _gotoNext = 2941670i32;
                    };
                } else if (__value__ == (2941647i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2940967i32;
                } else if (__value__ == (2941670i32)) {
                    return false;
                    _gotoNext = 2941800i32;
                } else if (__value__ == (2941800i32)) {
                    _r_2941800 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2941041);
                    var __blank__ = 0i32;
                    _gotoNext = 2941830i32;
                } else if (__value__ == (2941830i32)) {
                    if (((_r_2941800 != _sr_2941041) && (_r_2941800 < _tr_2941045 : Bool) : Bool)) {
                        _gotoNext = 2941852i32;
                    } else {
                        _gotoNext = 2941889i32;
                    };
                } else if (__value__ == (2941852i32)) {
                    _r_2941800 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2941800);
                    _gotoNext = 2941830i32;
                } else if (__value__ == (2941889i32)) {
                    if (_r_2941800 == (_tr_2941045)) {
                        _gotoNext = 2941900i32;
                    } else {
                        _gotoNext = 2941920i32;
                    };
                } else if (__value__ == (2941900i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2940967i32;
                } else if (__value__ == (2941920i32)) {
                    return false;
                    _gotoNext = 2940967i32;
                } else if (__value__ == (2941973i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
