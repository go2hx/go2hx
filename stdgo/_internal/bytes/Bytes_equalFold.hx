package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2953804:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2953597:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2953087:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2953026:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2954352:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2953679:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2953676:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2953593:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2953074:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2953807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2953026 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2953034i32;
                } else if (__value__ == (2953034i32)) {
                    if (((_i_2953026 < (_s.length) : Bool) && (_i_2953026 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2953070i32;
                    } else {
                        _gotoNext = 2953459i32;
                    };
                } else if (__value__ == (2953070i32)) {
                    _sr_2953074 = _s[(_i_2953026 : stdgo.GoInt)];
                    _tr_2953087 = _t[(_i_2953026 : stdgo.GoInt)];
                    if (((_sr_2953074 | _tr_2953087 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2953126i32;
                    } else {
                        _gotoNext = 2953170i32;
                    };
                } else if (__value__ == (2953126i32)) {
                    _gotoNext = 2953484i32;
                } else if (__value__ == (2953170i32)) {
                    if (_tr_2953087 == (_sr_2953074)) {
                        _gotoNext = 2953182i32;
                    } else {
                        _gotoNext = 2953247i32;
                    };
                } else if (__value__ == (2953182i32)) {
                    _i_2953026++;
                    _gotoNext = 2953034i32;
                } else if (__value__ == (2953247i32)) {
                    if ((_tr_2953087 < _sr_2953074 : Bool)) {
                        _gotoNext = 2953258i32;
                    } else {
                        _gotoNext = 2953333i32;
                    };
                } else if (__value__ == (2953258i32)) {
                    {
                        final __tmp__0 = _sr_2953074;
                        final __tmp__1 = _tr_2953087;
                        _tr_2953087 = __tmp__0;
                        _sr_2953074 = __tmp__1;
                    };
                    _gotoNext = 2953333i32;
                } else if (__value__ == (2953333i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2953074 : Bool) && (_sr_2953074 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2953087 == ((_sr_2953074 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2953379i32;
                    } else {
                        _gotoNext = 2953399i32;
                    };
                } else if (__value__ == (2953379i32)) {
                    _i_2953026++;
                    _gotoNext = 2953034i32;
                } else if (__value__ == (2953399i32)) {
                    return false;
                    _i_2953026++;
                    _gotoNext = 2953034i32;
                } else if (__value__ == (2953459i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2953484i32;
                } else if (__value__ == (2953484i32)) {
                    _s = (_s.__slice__(_i_2953026) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2953026) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2953519i32;
                } else if (__value__ == (2953519i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2953550i32;
                    } else {
                        _gotoNext = 2954525i32;
                    };
                } else if (__value__ == (2953550i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2953631i32;
                    } else {
                        _gotoNext = 2953671i32;
                    };
                } else if (__value__ == (2953631i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2953593 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2953735i32;
                } else if (__value__ == (2953671i32)) {
                    _gotoNext = 2953671i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2953676 = @:tmpset0 __tmp__._0;
                        _size_2953679 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2953676;
                        final __tmp__1 = (_s.__slice__(_size_2953679) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2953593 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2953735i32;
                } else if (__value__ == (2953735i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2953759i32;
                    } else {
                        _gotoNext = 2953799i32;
                    };
                } else if (__value__ == (2953759i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2953597 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2953935i32;
                } else if (__value__ == (2953799i32)) {
                    _gotoNext = 2953799i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2953804 = @:tmpset0 __tmp__._0;
                        _size_2953807 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2953804;
                        final __tmp__1 = (_t.__slice__(_size_2953807) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2953597 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2953935i32;
                } else if (__value__ == (2953935i32)) {
                    if (_tr_2953597 == (_sr_2953593)) {
                        _gotoNext = 2953947i32;
                    } else {
                        _gotoNext = 2954012i32;
                    };
                } else if (__value__ == (2953947i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2953519i32;
                } else if (__value__ == (2954012i32)) {
                    if ((_tr_2953597 < _sr_2953593 : Bool)) {
                        _gotoNext = 2954023i32;
                    } else {
                        _gotoNext = 2954077i32;
                    };
                } else if (__value__ == (2954023i32)) {
                    {
                        final __tmp__0 = _sr_2953593;
                        final __tmp__1 = _tr_2953597;
                        _tr_2953597 = __tmp__0;
                        _sr_2953593 = __tmp__1;
                    };
                    _gotoNext = 2954077i32;
                } else if (__value__ == (2954077i32)) {
                    if ((_tr_2953597 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2954099i32;
                    } else {
                        _gotoNext = 2954352i32;
                    };
                } else if (__value__ == (2954099i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2953593 : Bool) && (_sr_2953593 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2953597 == ((_sr_2953593 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2954199i32;
                    } else {
                        _gotoNext = 2954222i32;
                    };
                } else if (__value__ == (2954199i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2953519i32;
                } else if (__value__ == (2954222i32)) {
                    return false;
                    _gotoNext = 2954352i32;
                } else if (__value__ == (2954352i32)) {
                    _r_2954352 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2953593);
                    var __blank__ = 0i32;
                    _gotoNext = 2954382i32;
                } else if (__value__ == (2954382i32)) {
                    if (((_r_2954352 != _sr_2953593) && (_r_2954352 < _tr_2953597 : Bool) : Bool)) {
                        _gotoNext = 2954404i32;
                    } else {
                        _gotoNext = 2954441i32;
                    };
                } else if (__value__ == (2954404i32)) {
                    _r_2954352 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2954352);
                    _gotoNext = 2954382i32;
                } else if (__value__ == (2954441i32)) {
                    if (_r_2954352 == (_tr_2953597)) {
                        _gotoNext = 2954452i32;
                    } else {
                        _gotoNext = 2954472i32;
                    };
                } else if (__value__ == (2954452i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2953519i32;
                } else if (__value__ == (2954472i32)) {
                    return false;
                    _gotoNext = 2953519i32;
                } else if (__value__ == (2954525i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
