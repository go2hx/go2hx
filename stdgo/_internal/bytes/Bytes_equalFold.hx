package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2855876:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2855203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2855200:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2855121:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2855117:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2854611:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2854598:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2854550:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2855331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2855328:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2854550 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2854558i32;
                } else if (__value__ == (2854558i32)) {
                    if (((_i_2854550 < (_s.length) : Bool) && (_i_2854550 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2854594i32;
                    } else {
                        _gotoNext = 2854983i32;
                    };
                } else if (__value__ == (2854594i32)) {
                    _sr_2854598 = _s[(_i_2854550 : stdgo.GoInt)];
                    _tr_2854611 = _t[(_i_2854550 : stdgo.GoInt)];
                    if (((_sr_2854598 | _tr_2854611 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2854650i32;
                    } else {
                        _gotoNext = 2854694i32;
                    };
                } else if (__value__ == (2854650i32)) {
                    _gotoNext = 2855008i32;
                } else if (__value__ == (2854694i32)) {
                    if (_tr_2854611 == (_sr_2854598)) {
                        _gotoNext = 2854706i32;
                    } else {
                        _gotoNext = 2854771i32;
                    };
                } else if (__value__ == (2854706i32)) {
                    _i_2854550++;
                    _gotoNext = 2854558i32;
                } else if (__value__ == (2854771i32)) {
                    if ((_tr_2854611 < _sr_2854598 : Bool)) {
                        _gotoNext = 2854782i32;
                    } else {
                        _gotoNext = 2854857i32;
                    };
                } else if (__value__ == (2854782i32)) {
                    {
                        final __tmp__0 = _sr_2854598;
                        final __tmp__1 = _tr_2854611;
                        _tr_2854611 = __tmp__0;
                        _sr_2854598 = __tmp__1;
                    };
                    _gotoNext = 2854857i32;
                } else if (__value__ == (2854857i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2854598 : Bool) && (_sr_2854598 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2854611 == ((_sr_2854598 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2854903i32;
                    } else {
                        _gotoNext = 2854923i32;
                    };
                } else if (__value__ == (2854903i32)) {
                    _i_2854550++;
                    _gotoNext = 2854558i32;
                } else if (__value__ == (2854923i32)) {
                    return false;
                    _i_2854550++;
                    _gotoNext = 2854558i32;
                } else if (__value__ == (2854983i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2855008i32;
                } else if (__value__ == (2855008i32)) {
                    _s = (_s.__slice__(_i_2854550) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2854550) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2855043i32;
                } else if (__value__ == (2855043i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2855074i32;
                    } else {
                        _gotoNext = 2856049i32;
                    };
                } else if (__value__ == (2855074i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855155i32;
                    } else {
                        _gotoNext = 2855195i32;
                    };
                } else if (__value__ == (2855155i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2855117 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2855259i32;
                } else if (__value__ == (2855195i32)) {
                    _gotoNext = 2855195i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2855200 = __tmp__._0;
                        _size_2855203 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2855200;
                        final __tmp__1 = (_s.__slice__(_size_2855203) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2855117 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2855259i32;
                } else if (__value__ == (2855259i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2855283i32;
                    } else {
                        _gotoNext = 2855323i32;
                    };
                } else if (__value__ == (2855283i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2855121 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2855459i32;
                } else if (__value__ == (2855323i32)) {
                    _gotoNext = 2855323i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2855328 = __tmp__._0;
                        _size_2855331 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2855328;
                        final __tmp__1 = (_t.__slice__(_size_2855331) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2855121 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2855459i32;
                } else if (__value__ == (2855459i32)) {
                    if (_tr_2855121 == (_sr_2855117)) {
                        _gotoNext = 2855471i32;
                    } else {
                        _gotoNext = 2855536i32;
                    };
                } else if (__value__ == (2855471i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855043i32;
                } else if (__value__ == (2855536i32)) {
                    if ((_tr_2855121 < _sr_2855117 : Bool)) {
                        _gotoNext = 2855547i32;
                    } else {
                        _gotoNext = 2855601i32;
                    };
                } else if (__value__ == (2855547i32)) {
                    {
                        final __tmp__0 = _sr_2855117;
                        final __tmp__1 = _tr_2855121;
                        _tr_2855121 = __tmp__0;
                        _sr_2855117 = __tmp__1;
                    };
                    _gotoNext = 2855601i32;
                } else if (__value__ == (2855601i32)) {
                    if ((_tr_2855121 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2855623i32;
                    } else {
                        _gotoNext = 2855876i32;
                    };
                } else if (__value__ == (2855623i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2855117 : Bool) && (_sr_2855117 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2855121 == ((_sr_2855117 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2855723i32;
                    } else {
                        _gotoNext = 2855746i32;
                    };
                } else if (__value__ == (2855723i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855043i32;
                } else if (__value__ == (2855746i32)) {
                    return false;
                    _gotoNext = 2855876i32;
                } else if (__value__ == (2855876i32)) {
                    _r_2855876 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2855117);
                    var __blank__ = 0i32;
                    _gotoNext = 2855906i32;
                } else if (__value__ == (2855906i32)) {
                    if (((_r_2855876 != _sr_2855117) && (_r_2855876 < _tr_2855121 : Bool) : Bool)) {
                        _gotoNext = 2855928i32;
                    } else {
                        _gotoNext = 2855965i32;
                    };
                } else if (__value__ == (2855928i32)) {
                    _r_2855876 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2855876);
                    _gotoNext = 2855906i32;
                } else if (__value__ == (2855965i32)) {
                    if (_r_2855876 == (_tr_2855121)) {
                        _gotoNext = 2855976i32;
                    } else {
                        _gotoNext = 2855996i32;
                    };
                } else if (__value__ == (2855976i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2855043i32;
                } else if (__value__ == (2855996i32)) {
                    return false;
                    _gotoNext = 2855043i32;
                } else if (__value__ == (2856049i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
