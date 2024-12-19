package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2923618:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2923112:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2923099:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2923829:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2923704:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2923701:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2923622:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2923051:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2924377:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2923832:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2923051 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923059i32)) {
                    if (((_i_2923051 < (_s.length) : Bool) && (_i_2923051 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2923095i32;
                    } else {
                        _gotoNext = 2923484i32;
                    };
                } else if (__value__ == (2923095i32)) {
                    _sr_2923099 = _s[(_i_2923051 : stdgo.GoInt)];
                    _tr_2923112 = _t[(_i_2923051 : stdgo.GoInt)];
                    if (((_sr_2923099 | _tr_2923112 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2923151i32;
                    } else {
                        _gotoNext = 2923195i32;
                    };
                } else if (__value__ == (2923151i32)) {
                    _gotoNext = 2923509i32;
                } else if (__value__ == (2923195i32)) {
                    if (_tr_2923112 == (_sr_2923099)) {
                        _gotoNext = 2923207i32;
                    } else {
                        _gotoNext = 2923272i32;
                    };
                } else if (__value__ == (2923207i32)) {
                    _i_2923051++;
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923272i32)) {
                    if ((_tr_2923112 < _sr_2923099 : Bool)) {
                        _gotoNext = 2923283i32;
                    } else {
                        _gotoNext = 2923358i32;
                    };
                } else if (__value__ == (2923283i32)) {
                    {
                        final __tmp__0 = _sr_2923099;
                        final __tmp__1 = _tr_2923112;
                        _tr_2923112 = __tmp__0;
                        _sr_2923099 = __tmp__1;
                    };
                    _gotoNext = 2923358i32;
                } else if (__value__ == (2923358i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2923099 : Bool) && (_sr_2923099 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2923112 == ((_sr_2923099 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2923404i32;
                    } else {
                        _gotoNext = 2923424i32;
                    };
                } else if (__value__ == (2923404i32)) {
                    _i_2923051++;
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923424i32)) {
                    return false;
                    _i_2923051++;
                    _gotoNext = 2923059i32;
                } else if (__value__ == (2923484i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2923509i32;
                } else if (__value__ == (2923509i32)) {
                    _s = (_s.__slice__(_i_2923051) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2923051) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2923544i32;
                } else if (__value__ == (2923544i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2923575i32;
                    } else {
                        _gotoNext = 2924550i32;
                    };
                } else if (__value__ == (2923575i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2923656i32;
                    } else {
                        _gotoNext = 2923696i32;
                    };
                } else if (__value__ == (2923656i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2923618 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2923760i32;
                } else if (__value__ == (2923696i32)) {
                    _gotoNext = 2923696i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2923701 = __tmp__._0;
                        _size_2923704 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2923701;
                        final __tmp__1 = (_s.__slice__(_size_2923704) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2923618 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2923760i32;
                } else if (__value__ == (2923760i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2923784i32;
                    } else {
                        _gotoNext = 2923824i32;
                    };
                } else if (__value__ == (2923784i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2923622 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2923960i32;
                } else if (__value__ == (2923824i32)) {
                    _gotoNext = 2923824i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2923829 = __tmp__._0;
                        _size_2923832 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2923829;
                        final __tmp__1 = (_t.__slice__(_size_2923832) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2923622 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2923960i32;
                } else if (__value__ == (2923960i32)) {
                    if (_tr_2923622 == (_sr_2923618)) {
                        _gotoNext = 2923972i32;
                    } else {
                        _gotoNext = 2924037i32;
                    };
                } else if (__value__ == (2923972i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2923544i32;
                } else if (__value__ == (2924037i32)) {
                    if ((_tr_2923622 < _sr_2923618 : Bool)) {
                        _gotoNext = 2924048i32;
                    } else {
                        _gotoNext = 2924102i32;
                    };
                } else if (__value__ == (2924048i32)) {
                    {
                        final __tmp__0 = _sr_2923618;
                        final __tmp__1 = _tr_2923622;
                        _tr_2923622 = __tmp__0;
                        _sr_2923618 = __tmp__1;
                    };
                    _gotoNext = 2924102i32;
                } else if (__value__ == (2924102i32)) {
                    if ((_tr_2923622 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2924124i32;
                    } else {
                        _gotoNext = 2924377i32;
                    };
                } else if (__value__ == (2924124i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2923618 : Bool) && (_sr_2923618 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2923622 == ((_sr_2923618 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2924224i32;
                    } else {
                        _gotoNext = 2924247i32;
                    };
                } else if (__value__ == (2924224i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2923544i32;
                } else if (__value__ == (2924247i32)) {
                    return false;
                    _gotoNext = 2924377i32;
                } else if (__value__ == (2924377i32)) {
                    _r_2924377 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2923618);
                    var __blank__ = 0i32;
                    _gotoNext = 2924407i32;
                } else if (__value__ == (2924407i32)) {
                    if (((_r_2924377 != _sr_2923618) && (_r_2924377 < _tr_2923622 : Bool) : Bool)) {
                        _gotoNext = 2924429i32;
                    } else {
                        _gotoNext = 2924466i32;
                    };
                } else if (__value__ == (2924429i32)) {
                    _r_2924377 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2924377);
                    _gotoNext = 2924407i32;
                } else if (__value__ == (2924466i32)) {
                    if (_r_2924377 == (_tr_2923622)) {
                        _gotoNext = 2924477i32;
                    } else {
                        _gotoNext = 2924497i32;
                    };
                } else if (__value__ == (2924477i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2923544i32;
                } else if (__value__ == (2924497i32)) {
                    return false;
                    _gotoNext = 2923544i32;
                } else if (__value__ == (2924550i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
