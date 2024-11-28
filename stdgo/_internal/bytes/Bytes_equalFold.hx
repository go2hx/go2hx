package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2902053:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2901925:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2901846:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2901842:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2901323:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2902601:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2902056:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2901928:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2901336:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2901275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2901275 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2901283i32;
                } else if (__value__ == (2901283i32)) {
                    if (((_i_2901275 < (_s.length) : Bool) && (_i_2901275 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2901319i32;
                    } else {
                        _gotoNext = 2901708i32;
                    };
                } else if (__value__ == (2901319i32)) {
                    _sr_2901323 = _s[(_i_2901275 : stdgo.GoInt)];
                    _tr_2901336 = _t[(_i_2901275 : stdgo.GoInt)];
                    if (((_sr_2901323 | _tr_2901336 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2901375i32;
                    } else {
                        _gotoNext = 2901419i32;
                    };
                } else if (__value__ == (2901375i32)) {
                    _gotoNext = 2901733i32;
                } else if (__value__ == (2901419i32)) {
                    if (_tr_2901336 == (_sr_2901323)) {
                        _gotoNext = 2901431i32;
                    } else {
                        _gotoNext = 2901496i32;
                    };
                } else if (__value__ == (2901431i32)) {
                    _i_2901275++;
                    _gotoNext = 2901283i32;
                } else if (__value__ == (2901496i32)) {
                    if ((_tr_2901336 < _sr_2901323 : Bool)) {
                        _gotoNext = 2901507i32;
                    } else {
                        _gotoNext = 2901582i32;
                    };
                } else if (__value__ == (2901507i32)) {
                    {
                        final __tmp__0 = _sr_2901323;
                        final __tmp__1 = _tr_2901336;
                        _tr_2901336 = __tmp__0;
                        _sr_2901323 = __tmp__1;
                    };
                    _gotoNext = 2901582i32;
                } else if (__value__ == (2901582i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2901323 : Bool) && (_sr_2901323 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2901336 == ((_sr_2901323 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2901628i32;
                    } else {
                        _gotoNext = 2901648i32;
                    };
                } else if (__value__ == (2901628i32)) {
                    _i_2901275++;
                    _gotoNext = 2901283i32;
                } else if (__value__ == (2901648i32)) {
                    return false;
                    _i_2901275++;
                    _gotoNext = 2901283i32;
                } else if (__value__ == (2901708i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2901733i32;
                } else if (__value__ == (2901733i32)) {
                    _s = (_s.__slice__(_i_2901275) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2901275) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2901768i32;
                } else if (__value__ == (2901768i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2901799i32;
                    } else {
                        _gotoNext = 2902774i32;
                    };
                } else if (__value__ == (2901799i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2901880i32;
                    } else {
                        _gotoNext = 2901920i32;
                    };
                } else if (__value__ == (2901880i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2901842 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2901984i32;
                } else if (__value__ == (2901920i32)) {
                    _gotoNext = 2901920i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2901925 = __tmp__._0;
                        _size_2901928 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2901925;
                        final __tmp__1 = (_s.__slice__(_size_2901928) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2901842 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2901984i32;
                } else if (__value__ == (2901984i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2902008i32;
                    } else {
                        _gotoNext = 2902048i32;
                    };
                } else if (__value__ == (2902008i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2901846 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2902184i32;
                } else if (__value__ == (2902048i32)) {
                    _gotoNext = 2902048i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2902053 = __tmp__._0;
                        _size_2902056 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2902053;
                        final __tmp__1 = (_t.__slice__(_size_2902056) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2901846 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2902184i32;
                } else if (__value__ == (2902184i32)) {
                    if (_tr_2901846 == (_sr_2901842)) {
                        _gotoNext = 2902196i32;
                    } else {
                        _gotoNext = 2902261i32;
                    };
                } else if (__value__ == (2902196i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2901768i32;
                } else if (__value__ == (2902261i32)) {
                    if ((_tr_2901846 < _sr_2901842 : Bool)) {
                        _gotoNext = 2902272i32;
                    } else {
                        _gotoNext = 2902326i32;
                    };
                } else if (__value__ == (2902272i32)) {
                    {
                        final __tmp__0 = _sr_2901842;
                        final __tmp__1 = _tr_2901846;
                        _tr_2901846 = __tmp__0;
                        _sr_2901842 = __tmp__1;
                    };
                    _gotoNext = 2902326i32;
                } else if (__value__ == (2902326i32)) {
                    if ((_tr_2901846 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2902348i32;
                    } else {
                        _gotoNext = 2902601i32;
                    };
                } else if (__value__ == (2902348i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2901842 : Bool) && (_sr_2901842 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2901846 == ((_sr_2901842 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2902448i32;
                    } else {
                        _gotoNext = 2902471i32;
                    };
                } else if (__value__ == (2902448i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2901768i32;
                } else if (__value__ == (2902471i32)) {
                    return false;
                    _gotoNext = 2902601i32;
                } else if (__value__ == (2902601i32)) {
                    _r_2902601 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2901842);
                    var __blank__ = 0i32;
                    _gotoNext = 2902631i32;
                } else if (__value__ == (2902631i32)) {
                    if (((_r_2902601 != _sr_2901842) && (_r_2902601 < _tr_2901846 : Bool) : Bool)) {
                        _gotoNext = 2902653i32;
                    } else {
                        _gotoNext = 2902690i32;
                    };
                } else if (__value__ == (2902653i32)) {
                    _r_2902601 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2902601);
                    _gotoNext = 2902631i32;
                } else if (__value__ == (2902690i32)) {
                    if (_r_2902601 == (_tr_2901846)) {
                        _gotoNext = 2902701i32;
                    } else {
                        _gotoNext = 2902721i32;
                    };
                } else if (__value__ == (2902701i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2901768i32;
                } else if (__value__ == (2902721i32)) {
                    return false;
                    _gotoNext = 2901768i32;
                } else if (__value__ == (2902774i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
