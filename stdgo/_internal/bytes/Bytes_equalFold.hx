package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2831609:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2831561:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2832887:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2832339:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2832214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2832132:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2832128:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2831622:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2832342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2832211:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2831561 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2831569i32;
                } else if (__value__ == (2831569i32)) {
                    if (((_i_2831561 < (_s.length) : Bool) && (_i_2831561 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2831605i32;
                    } else {
                        _gotoNext = 2831994i32;
                    };
                } else if (__value__ == (2831605i32)) {
                    _sr_2831609 = _s[(_i_2831561 : stdgo.GoInt)];
                    _tr_2831622 = _t[(_i_2831561 : stdgo.GoInt)];
                    if (((_sr_2831609 | _tr_2831622 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2831661i32;
                    } else {
                        _gotoNext = 2831705i32;
                    };
                } else if (__value__ == (2831661i32)) {
                    _gotoNext = 2832019i32;
                } else if (__value__ == (2831705i32)) {
                    if (_tr_2831622 == (_sr_2831609)) {
                        _gotoNext = 2831717i32;
                    } else {
                        _gotoNext = 2831782i32;
                    };
                } else if (__value__ == (2831717i32)) {
                    _i_2831561++;
                    _gotoNext = 2831569i32;
                } else if (__value__ == (2831782i32)) {
                    if ((_tr_2831622 < _sr_2831609 : Bool)) {
                        _gotoNext = 2831793i32;
                    } else {
                        _gotoNext = 2831868i32;
                    };
                } else if (__value__ == (2831793i32)) {
                    {
                        final __tmp__0 = _sr_2831609;
                        final __tmp__1 = _tr_2831622;
                        _tr_2831622 = __tmp__0;
                        _sr_2831609 = __tmp__1;
                    };
                    _gotoNext = 2831868i32;
                } else if (__value__ == (2831868i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2831609 : Bool) && (_sr_2831609 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2831622 == ((_sr_2831609 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2831914i32;
                    } else {
                        _gotoNext = 2831934i32;
                    };
                } else if (__value__ == (2831914i32)) {
                    _i_2831561++;
                    _gotoNext = 2831569i32;
                } else if (__value__ == (2831934i32)) {
                    return false;
                    _i_2831561++;
                    _gotoNext = 2831569i32;
                } else if (__value__ == (2831994i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2832019i32;
                } else if (__value__ == (2832019i32)) {
                    _s = (_s.__slice__(_i_2831561) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2831561) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2832054i32;
                } else if (__value__ == (2832054i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2832085i32;
                    } else {
                        _gotoNext = 2833060i32;
                    };
                } else if (__value__ == (2832085i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2832166i32;
                    } else {
                        _gotoNext = 2832206i32;
                    };
                } else if (__value__ == (2832166i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2832128 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2832270i32;
                } else if (__value__ == (2832206i32)) {
                    _gotoNext = 2832206i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2832211 = __tmp__._0;
                        _size_2832214 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2832211;
                        final __tmp__1 = (_s.__slice__(_size_2832214) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2832128 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2832270i32;
                } else if (__value__ == (2832270i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2832294i32;
                    } else {
                        _gotoNext = 2832334i32;
                    };
                } else if (__value__ == (2832294i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2832132 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2832470i32;
                } else if (__value__ == (2832334i32)) {
                    _gotoNext = 2832334i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2832339 = __tmp__._0;
                        _size_2832342 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2832339;
                        final __tmp__1 = (_t.__slice__(_size_2832342) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2832132 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2832470i32;
                } else if (__value__ == (2832470i32)) {
                    if (_tr_2832132 == (_sr_2832128)) {
                        _gotoNext = 2832482i32;
                    } else {
                        _gotoNext = 2832547i32;
                    };
                } else if (__value__ == (2832482i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832054i32;
                } else if (__value__ == (2832547i32)) {
                    if ((_tr_2832132 < _sr_2832128 : Bool)) {
                        _gotoNext = 2832558i32;
                    } else {
                        _gotoNext = 2832612i32;
                    };
                } else if (__value__ == (2832558i32)) {
                    {
                        final __tmp__0 = _sr_2832128;
                        final __tmp__1 = _tr_2832132;
                        _tr_2832132 = __tmp__0;
                        _sr_2832128 = __tmp__1;
                    };
                    _gotoNext = 2832612i32;
                } else if (__value__ == (2832612i32)) {
                    if ((_tr_2832132 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2832634i32;
                    } else {
                        _gotoNext = 2832887i32;
                    };
                } else if (__value__ == (2832634i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2832128 : Bool) && (_sr_2832128 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2832132 == ((_sr_2832128 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2832734i32;
                    } else {
                        _gotoNext = 2832757i32;
                    };
                } else if (__value__ == (2832734i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832054i32;
                } else if (__value__ == (2832757i32)) {
                    return false;
                    _gotoNext = 2832887i32;
                } else if (__value__ == (2832887i32)) {
                    _r_2832887 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2832128);
                    var __blank__ = 0i32;
                    _gotoNext = 2832917i32;
                } else if (__value__ == (2832917i32)) {
                    if (((_r_2832887 != _sr_2832128) && (_r_2832887 < _tr_2832132 : Bool) : Bool)) {
                        _gotoNext = 2832939i32;
                    } else {
                        _gotoNext = 2832976i32;
                    };
                } else if (__value__ == (2832939i32)) {
                    _r_2832887 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2832887);
                    _gotoNext = 2832917i32;
                } else if (__value__ == (2832976i32)) {
                    if (_r_2832887 == (_tr_2832132)) {
                        _gotoNext = 2832987i32;
                    } else {
                        _gotoNext = 2833007i32;
                    };
                } else if (__value__ == (2832987i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832054i32;
                } else if (__value__ == (2833007i32)) {
                    return false;
                    _gotoNext = 2832054i32;
                } else if (__value__ == (2833060i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
