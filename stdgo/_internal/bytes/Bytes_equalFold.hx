package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2764201:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2764198:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2764115:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2763609:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2763596:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2763548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2764874:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2764326:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2764329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2764119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2763548 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2763556i32;
                } else if (__value__ == (2763556i32)) {
                    if (((_i_2763548 < (_s.length) : Bool) && (_i_2763548 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2763592i32;
                    } else {
                        _gotoNext = 2763981i32;
                    };
                } else if (__value__ == (2763592i32)) {
                    _sr_2763596 = _s[(_i_2763548 : stdgo.GoInt)];
                    _tr_2763609 = _t[(_i_2763548 : stdgo.GoInt)];
                    if (((_sr_2763596 | _tr_2763609 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2763648i32;
                    } else {
                        _gotoNext = 2763692i32;
                    };
                } else if (__value__ == (2763648i32)) {
                    _gotoNext = 2764006i32;
                } else if (__value__ == (2763692i32)) {
                    if (_tr_2763609 == (_sr_2763596)) {
                        _gotoNext = 2763704i32;
                    } else {
                        _gotoNext = 2763769i32;
                    };
                } else if (__value__ == (2763704i32)) {
                    _i_2763548++;
                    _gotoNext = 2763556i32;
                } else if (__value__ == (2763769i32)) {
                    if ((_tr_2763609 < _sr_2763596 : Bool)) {
                        _gotoNext = 2763780i32;
                    } else {
                        _gotoNext = 2763855i32;
                    };
                } else if (__value__ == (2763780i32)) {
                    {
                        final __tmp__0 = _sr_2763596;
                        final __tmp__1 = _tr_2763609;
                        _tr_2763609 = __tmp__0;
                        _sr_2763596 = __tmp__1;
                    };
                    _gotoNext = 2763855i32;
                } else if (__value__ == (2763855i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2763596 : Bool) && (_sr_2763596 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2763609 == ((_sr_2763596 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2763901i32;
                    } else {
                        _gotoNext = 2763921i32;
                    };
                } else if (__value__ == (2763901i32)) {
                    _i_2763548++;
                    _gotoNext = 2763556i32;
                } else if (__value__ == (2763921i32)) {
                    return false;
                    _i_2763548++;
                    _gotoNext = 2763556i32;
                } else if (__value__ == (2763981i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2764006i32;
                } else if (__value__ == (2764006i32)) {
                    _s = (_s.__slice__(_i_2763548) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2763548) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2764041i32;
                } else if (__value__ == (2764041i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2764072i32;
                    } else {
                        _gotoNext = 2765047i32;
                    };
                } else if (__value__ == (2764072i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2764153i32;
                    } else {
                        _gotoNext = 2764193i32;
                    };
                } else if (__value__ == (2764153i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2764115 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2764257i32;
                } else if (__value__ == (2764193i32)) {
                    _gotoNext = 2764193i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2764198 = @:tmpset0 __tmp__._0;
                        _size_2764201 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2764198;
                        final __tmp__1 = (_s.__slice__(_size_2764201) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2764115 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2764257i32;
                } else if (__value__ == (2764257i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2764281i32;
                    } else {
                        _gotoNext = 2764321i32;
                    };
                } else if (__value__ == (2764281i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2764119 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2764457i32;
                } else if (__value__ == (2764321i32)) {
                    _gotoNext = 2764321i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2764326 = @:tmpset0 __tmp__._0;
                        _size_2764329 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2764326;
                        final __tmp__1 = (_t.__slice__(_size_2764329) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2764119 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2764457i32;
                } else if (__value__ == (2764457i32)) {
                    if (_tr_2764119 == (_sr_2764115)) {
                        _gotoNext = 2764469i32;
                    } else {
                        _gotoNext = 2764534i32;
                    };
                } else if (__value__ == (2764469i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2764041i32;
                } else if (__value__ == (2764534i32)) {
                    if ((_tr_2764119 < _sr_2764115 : Bool)) {
                        _gotoNext = 2764545i32;
                    } else {
                        _gotoNext = 2764599i32;
                    };
                } else if (__value__ == (2764545i32)) {
                    {
                        final __tmp__0 = _sr_2764115;
                        final __tmp__1 = _tr_2764119;
                        _tr_2764119 = __tmp__0;
                        _sr_2764115 = __tmp__1;
                    };
                    _gotoNext = 2764599i32;
                } else if (__value__ == (2764599i32)) {
                    if ((_tr_2764119 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2764621i32;
                    } else {
                        _gotoNext = 2764874i32;
                    };
                } else if (__value__ == (2764621i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2764115 : Bool) && (_sr_2764115 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2764119 == ((_sr_2764115 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2764721i32;
                    } else {
                        _gotoNext = 2764744i32;
                    };
                } else if (__value__ == (2764721i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2764041i32;
                } else if (__value__ == (2764744i32)) {
                    return false;
                    _gotoNext = 2764874i32;
                } else if (__value__ == (2764874i32)) {
                    _r_2764874 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2764115);
                    var __blank__ = 0i32;
                    _gotoNext = 2764904i32;
                } else if (__value__ == (2764904i32)) {
                    if (((_r_2764874 != _sr_2764115) && (_r_2764874 < _tr_2764119 : Bool) : Bool)) {
                        _gotoNext = 2764926i32;
                    } else {
                        _gotoNext = 2764963i32;
                    };
                } else if (__value__ == (2764926i32)) {
                    _r_2764874 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2764874);
                    _gotoNext = 2764904i32;
                } else if (__value__ == (2764963i32)) {
                    if (_r_2764874 == (_tr_2764119)) {
                        _gotoNext = 2764974i32;
                    } else {
                        _gotoNext = 2764994i32;
                    };
                } else if (__value__ == (2764974i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2764041i32;
                } else if (__value__ == (2764994i32)) {
                    return false;
                    _gotoNext = 2764041i32;
                } else if (__value__ == (2765047i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
