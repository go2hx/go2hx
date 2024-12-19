package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3063344:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3062627:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_3062614:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3063347:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3063137:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3063133:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3062566:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3063892:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3063219:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3063216:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3062566 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3062574i32;
                } else if (__value__ == (3062574i32)) {
                    if (((_i_3062566 < (_s.length) : Bool) && (_i_3062566 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3062610i32;
                    } else {
                        _gotoNext = 3062999i32;
                    };
                } else if (__value__ == (3062610i32)) {
                    _sr_3062614 = _s[(_i_3062566 : stdgo.GoInt)];
                    _tr_3062627 = _t[(_i_3062566 : stdgo.GoInt)];
                    if (((_sr_3062614 | _tr_3062627 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3062666i32;
                    } else {
                        _gotoNext = 3062710i32;
                    };
                } else if (__value__ == (3062666i32)) {
                    _gotoNext = 3063024i32;
                } else if (__value__ == (3062710i32)) {
                    if (_tr_3062627 == (_sr_3062614)) {
                        _gotoNext = 3062722i32;
                    } else {
                        _gotoNext = 3062787i32;
                    };
                } else if (__value__ == (3062722i32)) {
                    _i_3062566++;
                    _gotoNext = 3062574i32;
                } else if (__value__ == (3062787i32)) {
                    if ((_tr_3062627 < _sr_3062614 : Bool)) {
                        _gotoNext = 3062798i32;
                    } else {
                        _gotoNext = 3062873i32;
                    };
                } else if (__value__ == (3062798i32)) {
                    {
                        final __tmp__0 = _sr_3062614;
                        final __tmp__1 = _tr_3062627;
                        _tr_3062627 = __tmp__0;
                        _sr_3062614 = __tmp__1;
                    };
                    _gotoNext = 3062873i32;
                } else if (__value__ == (3062873i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3062614 : Bool) && (_sr_3062614 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3062627 == ((_sr_3062614 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3062919i32;
                    } else {
                        _gotoNext = 3062939i32;
                    };
                } else if (__value__ == (3062919i32)) {
                    _i_3062566++;
                    _gotoNext = 3062574i32;
                } else if (__value__ == (3062939i32)) {
                    return false;
                    _i_3062566++;
                    _gotoNext = 3062574i32;
                } else if (__value__ == (3062999i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3063024i32;
                } else if (__value__ == (3063024i32)) {
                    _s = (_s.__slice__(_i_3062566) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3062566) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3063059i32;
                } else if (__value__ == (3063059i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3063090i32;
                    } else {
                        _gotoNext = 3064065i32;
                    };
                } else if (__value__ == (3063090i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3063171i32;
                    } else {
                        _gotoNext = 3063211i32;
                    };
                } else if (__value__ == (3063171i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3063133 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3063275i32;
                } else if (__value__ == (3063211i32)) {
                    _gotoNext = 3063211i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3063216 = __tmp__._0;
                        _size_3063219 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3063216;
                        final __tmp__1 = (_s.__slice__(_size_3063219) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3063133 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3063275i32;
                } else if (__value__ == (3063275i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3063299i32;
                    } else {
                        _gotoNext = 3063339i32;
                    };
                } else if (__value__ == (3063299i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3063137 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3063475i32;
                } else if (__value__ == (3063339i32)) {
                    _gotoNext = 3063339i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3063344 = __tmp__._0;
                        _size_3063347 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3063344;
                        final __tmp__1 = (_t.__slice__(_size_3063347) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3063137 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3063475i32;
                } else if (__value__ == (3063475i32)) {
                    if (_tr_3063137 == (_sr_3063133)) {
                        _gotoNext = 3063487i32;
                    } else {
                        _gotoNext = 3063552i32;
                    };
                } else if (__value__ == (3063487i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3063059i32;
                } else if (__value__ == (3063552i32)) {
                    if ((_tr_3063137 < _sr_3063133 : Bool)) {
                        _gotoNext = 3063563i32;
                    } else {
                        _gotoNext = 3063617i32;
                    };
                } else if (__value__ == (3063563i32)) {
                    {
                        final __tmp__0 = _sr_3063133;
                        final __tmp__1 = _tr_3063137;
                        _tr_3063137 = __tmp__0;
                        _sr_3063133 = __tmp__1;
                    };
                    _gotoNext = 3063617i32;
                } else if (__value__ == (3063617i32)) {
                    if ((_tr_3063137 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3063639i32;
                    } else {
                        _gotoNext = 3063892i32;
                    };
                } else if (__value__ == (3063639i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3063133 : Bool) && (_sr_3063133 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3063137 == ((_sr_3063133 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3063739i32;
                    } else {
                        _gotoNext = 3063762i32;
                    };
                } else if (__value__ == (3063739i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3063059i32;
                } else if (__value__ == (3063762i32)) {
                    return false;
                    _gotoNext = 3063892i32;
                } else if (__value__ == (3063892i32)) {
                    _r_3063892 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3063133);
                    var __blank__ = 0i32;
                    _gotoNext = 3063922i32;
                } else if (__value__ == (3063922i32)) {
                    if (((_r_3063892 != _sr_3063133) && (_r_3063892 < _tr_3063137 : Bool) : Bool)) {
                        _gotoNext = 3063944i32;
                    } else {
                        _gotoNext = 3063981i32;
                    };
                } else if (__value__ == (3063944i32)) {
                    _r_3063892 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3063892);
                    _gotoNext = 3063922i32;
                } else if (__value__ == (3063981i32)) {
                    if (_r_3063892 == (_tr_3063137)) {
                        _gotoNext = 3063992i32;
                    } else {
                        _gotoNext = 3064012i32;
                    };
                } else if (__value__ == (3063992i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3063059i32;
                } else if (__value__ == (3064012i32)) {
                    return false;
                    _gotoNext = 3063059i32;
                } else if (__value__ == (3064065i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
