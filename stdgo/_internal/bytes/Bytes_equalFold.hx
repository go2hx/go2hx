package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3034425:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3034300:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3034297:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3033708:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3033695:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3034973:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3034428:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3034218:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3034214:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3033647:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3033647 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3033655i32;
                } else if (__value__ == (3033655i32)) {
                    if (((_i_3033647 < (_s.length) : Bool) && (_i_3033647 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3033691i32;
                    } else {
                        _gotoNext = 3034080i32;
                    };
                } else if (__value__ == (3033691i32)) {
                    _sr_3033695 = _s[(_i_3033647 : stdgo.GoInt)];
                    _tr_3033708 = _t[(_i_3033647 : stdgo.GoInt)];
                    if (((_sr_3033695 | _tr_3033708 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3033747i32;
                    } else {
                        _gotoNext = 3033791i32;
                    };
                } else if (__value__ == (3033747i32)) {
                    _gotoNext = 3034105i32;
                } else if (__value__ == (3033791i32)) {
                    if (_tr_3033708 == (_sr_3033695)) {
                        _gotoNext = 3033803i32;
                    } else {
                        _gotoNext = 3033868i32;
                    };
                } else if (__value__ == (3033803i32)) {
                    _i_3033647++;
                    _gotoNext = 3033655i32;
                } else if (__value__ == (3033868i32)) {
                    if ((_tr_3033708 < _sr_3033695 : Bool)) {
                        _gotoNext = 3033879i32;
                    } else {
                        _gotoNext = 3033954i32;
                    };
                } else if (__value__ == (3033879i32)) {
                    {
                        final __tmp__0 = _sr_3033695;
                        final __tmp__1 = _tr_3033708;
                        _tr_3033708 = __tmp__0;
                        _sr_3033695 = __tmp__1;
                    };
                    _gotoNext = 3033954i32;
                } else if (__value__ == (3033954i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3033695 : Bool) && (_sr_3033695 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3033708 == ((_sr_3033695 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3034000i32;
                    } else {
                        _gotoNext = 3034020i32;
                    };
                } else if (__value__ == (3034000i32)) {
                    _i_3033647++;
                    _gotoNext = 3033655i32;
                } else if (__value__ == (3034020i32)) {
                    return false;
                    _i_3033647++;
                    _gotoNext = 3033655i32;
                } else if (__value__ == (3034080i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3034105i32;
                } else if (__value__ == (3034105i32)) {
                    _s = (_s.__slice__(_i_3033647) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3033647) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3034140i32;
                } else if (__value__ == (3034140i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3034171i32;
                    } else {
                        _gotoNext = 3035146i32;
                    };
                } else if (__value__ == (3034171i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3034252i32;
                    } else {
                        _gotoNext = 3034292i32;
                    };
                } else if (__value__ == (3034252i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3034214 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3034356i32;
                } else if (__value__ == (3034292i32)) {
                    _gotoNext = 3034292i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3034297 = __tmp__._0;
                        _size_3034300 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3034297;
                        final __tmp__1 = (_s.__slice__(_size_3034300) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3034214 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3034356i32;
                } else if (__value__ == (3034356i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3034380i32;
                    } else {
                        _gotoNext = 3034420i32;
                    };
                } else if (__value__ == (3034380i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3034218 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3034556i32;
                } else if (__value__ == (3034420i32)) {
                    _gotoNext = 3034420i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3034425 = __tmp__._0;
                        _size_3034428 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3034425;
                        final __tmp__1 = (_t.__slice__(_size_3034428) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3034218 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3034556i32;
                } else if (__value__ == (3034556i32)) {
                    if (_tr_3034218 == (_sr_3034214)) {
                        _gotoNext = 3034568i32;
                    } else {
                        _gotoNext = 3034633i32;
                    };
                } else if (__value__ == (3034568i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3034140i32;
                } else if (__value__ == (3034633i32)) {
                    if ((_tr_3034218 < _sr_3034214 : Bool)) {
                        _gotoNext = 3034644i32;
                    } else {
                        _gotoNext = 3034698i32;
                    };
                } else if (__value__ == (3034644i32)) {
                    {
                        final __tmp__0 = _sr_3034214;
                        final __tmp__1 = _tr_3034218;
                        _tr_3034218 = __tmp__0;
                        _sr_3034214 = __tmp__1;
                    };
                    _gotoNext = 3034698i32;
                } else if (__value__ == (3034698i32)) {
                    if ((_tr_3034218 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3034720i32;
                    } else {
                        _gotoNext = 3034973i32;
                    };
                } else if (__value__ == (3034720i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3034214 : Bool) && (_sr_3034214 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3034218 == ((_sr_3034214 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3034820i32;
                    } else {
                        _gotoNext = 3034843i32;
                    };
                } else if (__value__ == (3034820i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3034140i32;
                } else if (__value__ == (3034843i32)) {
                    return false;
                    _gotoNext = 3034973i32;
                } else if (__value__ == (3034973i32)) {
                    _r_3034973 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3034214);
                    var __blank__ = 0i32;
                    _gotoNext = 3035003i32;
                } else if (__value__ == (3035003i32)) {
                    if (((_r_3034973 != _sr_3034214) && (_r_3034973 < _tr_3034218 : Bool) : Bool)) {
                        _gotoNext = 3035025i32;
                    } else {
                        _gotoNext = 3035062i32;
                    };
                } else if (__value__ == (3035025i32)) {
                    _r_3034973 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3034973);
                    _gotoNext = 3035003i32;
                } else if (__value__ == (3035062i32)) {
                    if (_r_3034973 == (_tr_3034218)) {
                        _gotoNext = 3035073i32;
                    } else {
                        _gotoNext = 3035093i32;
                    };
                } else if (__value__ == (3035073i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3034140i32;
                } else if (__value__ == (3035093i32)) {
                    return false;
                    _gotoNext = 3034140i32;
                } else if (__value__ == (3035146i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
