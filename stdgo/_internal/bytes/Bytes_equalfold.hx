package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_9:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2907035i32;
                } else if (__value__ == (2907035i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2907071i32;
                    } else {
                        _gotoNext = 2907460i32;
                    };
                } else if (__value__ == (2907071i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907127i32;
                    } else {
                        _gotoNext = 2907171i32;
                    };
                } else if (__value__ == (2907127i32)) {
                    _gotoNext = 2907485i32;
                } else if (__value__ == (2907171i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2907183i32;
                    } else {
                        _gotoNext = 2907248i32;
                    };
                } else if (__value__ == (2907183i32)) {
                    _i_0++;
                    _gotoNext = 2907035i32;
                } else if (__value__ == (2907248i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2907259i32;
                    } else {
                        _gotoNext = 2907334i32;
                    };
                } else if (__value__ == (2907259i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907334i32;
                } else if (__value__ == (2907334i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2907380i32;
                    } else {
                        _gotoNext = 2907400i32;
                    };
                } else if (__value__ == (2907380i32)) {
                    _i_0++;
                    _gotoNext = 2907035i32;
                } else if (__value__ == (2907400i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2907035i32;
                } else if (__value__ == (2907460i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2907485i32;
                } else if (__value__ == (2907485i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_0) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2907520i32;
                } else if (__value__ == (2907520i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2907551i32;
                    } else {
                        _gotoNext = 2908526i32;
                    };
                } else if (__value__ == (2907551i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907632i32;
                    } else {
                        _gotoNext = 2907672i32;
                    };
                } else if (__value__ == (2907632i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907736i32;
                } else if (__value__ == (2907672i32)) {
                    _gotoNext = 2907672i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_s.__slice__(_size_6) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3 = @:binopAssign __tmp__0;
                        _s = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2907736i32;
                } else if (__value__ == (2907736i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2907760i32;
                    } else {
                        _gotoNext = 2907800i32;
                    };
                } else if (__value__ == (2907760i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2907936i32;
                } else if (__value__ == (2907800i32)) {
                    _gotoNext = 2907800i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_7 = @:tmpset0 __tmp__._0;
                        _size_8 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_7;
                        final __tmp__1 = (_t.__slice__(_size_8) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2907936i32;
                } else if (__value__ == (2907936i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2907948i32;
                    } else {
                        _gotoNext = 2908013i32;
                    };
                } else if (__value__ == (2907948i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907520i32;
                } else if (__value__ == (2908013i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2908024i32;
                    } else {
                        _gotoNext = 2908078i32;
                    };
                } else if (__value__ == (2908024i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2908078i32;
                } else if (__value__ == (2908078i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2908100i32;
                    } else {
                        _gotoNext = 2908353i32;
                    };
                } else if (__value__ == (2908100i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2908200i32;
                    } else {
                        _gotoNext = 2908223i32;
                    };
                } else if (__value__ == (2908200i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907520i32;
                } else if (__value__ == (2908223i32)) {
                    return false;
                    _gotoNext = 2908353i32;
                } else if (__value__ == (2908353i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 2908383i32;
                } else if (__value__ == (2908383i32)) {
                    if (((_r_9 != _sr_3) && (_r_9 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2908405i32;
                    } else {
                        _gotoNext = 2908442i32;
                    };
                } else if (__value__ == (2908405i32)) {
                    _r_9 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_9);
                    _gotoNext = 2908383i32;
                } else if (__value__ == (2908442i32)) {
                    if (_r_9 == (_tr_4)) {
                        _gotoNext = 2908453i32;
                    } else {
                        _gotoNext = 2908473i32;
                    };
                } else if (__value__ == (2908453i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2907520i32;
                } else if (__value__ == (2908473i32)) {
                    return false;
                    _gotoNext = 2907520i32;
                } else if (__value__ == (2908526i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
