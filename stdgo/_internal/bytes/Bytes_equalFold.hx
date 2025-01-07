package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2904057:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2903512:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2902792:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2903509:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2903384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2903381:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2903302:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2903298:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2902779:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2902731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2902731 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2902739i32;
                } else if (__value__ == (2902739i32)) {
                    if (((_i_2902731 < (_s.length) : Bool) && (_i_2902731 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2902775i32;
                    } else {
                        _gotoNext = 2903164i32;
                    };
                } else if (__value__ == (2902775i32)) {
                    _sr_2902779 = _s[(_i_2902731 : stdgo.GoInt)];
                    _tr_2902792 = _t[(_i_2902731 : stdgo.GoInt)];
                    if (((_sr_2902779 | _tr_2902792 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902831i32;
                    } else {
                        _gotoNext = 2902875i32;
                    };
                } else if (__value__ == (2902831i32)) {
                    _gotoNext = 2903189i32;
                } else if (__value__ == (2902875i32)) {
                    if (_tr_2902792 == (_sr_2902779)) {
                        _gotoNext = 2902887i32;
                    } else {
                        _gotoNext = 2902952i32;
                    };
                } else if (__value__ == (2902887i32)) {
                    _i_2902731++;
                    _gotoNext = 2902739i32;
                } else if (__value__ == (2902952i32)) {
                    if ((_tr_2902792 < _sr_2902779 : Bool)) {
                        _gotoNext = 2902963i32;
                    } else {
                        _gotoNext = 2903038i32;
                    };
                } else if (__value__ == (2902963i32)) {
                    {
                        final __tmp__0 = _sr_2902779;
                        final __tmp__1 = _tr_2902792;
                        _tr_2902792 = __tmp__0;
                        _sr_2902779 = __tmp__1;
                    };
                    _gotoNext = 2903038i32;
                } else if (__value__ == (2903038i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2902779 : Bool) && (_sr_2902779 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2902792 == ((_sr_2902779 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2903084i32;
                    } else {
                        _gotoNext = 2903104i32;
                    };
                } else if (__value__ == (2903084i32)) {
                    _i_2902731++;
                    _gotoNext = 2902739i32;
                } else if (__value__ == (2903104i32)) {
                    return false;
                    _i_2902731++;
                    _gotoNext = 2902739i32;
                } else if (__value__ == (2903164i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2903189i32;
                } else if (__value__ == (2903189i32)) {
                    _s = (_s.__slice__(_i_2902731) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2902731) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2903224i32;
                } else if (__value__ == (2903224i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2903255i32;
                    } else {
                        _gotoNext = 2904230i32;
                    };
                } else if (__value__ == (2903255i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903336i32;
                    } else {
                        _gotoNext = 2903376i32;
                    };
                } else if (__value__ == (2903336i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2903298 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2903440i32;
                } else if (__value__ == (2903376i32)) {
                    _gotoNext = 2903376i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2903381 = __tmp__._0;
                        _size_2903384 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2903381;
                        final __tmp__1 = (_s.__slice__(_size_2903384) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2903298 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903440i32;
                } else if (__value__ == (2903440i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2903464i32;
                    } else {
                        _gotoNext = 2903504i32;
                    };
                } else if (__value__ == (2903464i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2903302 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2903640i32;
                } else if (__value__ == (2903504i32)) {
                    _gotoNext = 2903504i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2903509 = __tmp__._0;
                        _size_2903512 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2903509;
                        final __tmp__1 = (_t.__slice__(_size_2903512) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2903302 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2903640i32;
                } else if (__value__ == (2903640i32)) {
                    if (_tr_2903302 == (_sr_2903298)) {
                        _gotoNext = 2903652i32;
                    } else {
                        _gotoNext = 2903717i32;
                    };
                } else if (__value__ == (2903652i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903224i32;
                } else if (__value__ == (2903717i32)) {
                    if ((_tr_2903302 < _sr_2903298 : Bool)) {
                        _gotoNext = 2903728i32;
                    } else {
                        _gotoNext = 2903782i32;
                    };
                } else if (__value__ == (2903728i32)) {
                    {
                        final __tmp__0 = _sr_2903298;
                        final __tmp__1 = _tr_2903302;
                        _tr_2903302 = __tmp__0;
                        _sr_2903298 = __tmp__1;
                    };
                    _gotoNext = 2903782i32;
                } else if (__value__ == (2903782i32)) {
                    if ((_tr_2903302 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2903804i32;
                    } else {
                        _gotoNext = 2904057i32;
                    };
                } else if (__value__ == (2903804i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2903298 : Bool) && (_sr_2903298 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2903302 == ((_sr_2903298 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2903904i32;
                    } else {
                        _gotoNext = 2903927i32;
                    };
                } else if (__value__ == (2903904i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903224i32;
                } else if (__value__ == (2903927i32)) {
                    return false;
                    _gotoNext = 2904057i32;
                } else if (__value__ == (2904057i32)) {
                    _r_2904057 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2903298);
                    var __blank__ = 0i32;
                    _gotoNext = 2904087i32;
                } else if (__value__ == (2904087i32)) {
                    if (((_r_2904057 != _sr_2903298) && (_r_2904057 < _tr_2903302 : Bool) : Bool)) {
                        _gotoNext = 2904109i32;
                    } else {
                        _gotoNext = 2904146i32;
                    };
                } else if (__value__ == (2904109i32)) {
                    _r_2904057 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2904057);
                    _gotoNext = 2904087i32;
                } else if (__value__ == (2904146i32)) {
                    if (_r_2904057 == (_tr_2903302)) {
                        _gotoNext = 2904157i32;
                    } else {
                        _gotoNext = 2904177i32;
                    };
                } else if (__value__ == (2904157i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2903224i32;
                } else if (__value__ == (2904177i32)) {
                    return false;
                    _gotoNext = 2903224i32;
                } else if (__value__ == (2904230i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
