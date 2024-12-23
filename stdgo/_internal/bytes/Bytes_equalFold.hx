package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2880967:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2880963:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2881722:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2881174:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2881049:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2881046:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2880444:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2880396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2881177:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2880457:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2880396 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2880404i32;
                } else if (__value__ == (2880404i32)) {
                    if (((_i_2880396 < (_s.length) : Bool) && (_i_2880396 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2880440i32;
                    } else {
                        _gotoNext = 2880829i32;
                    };
                } else if (__value__ == (2880440i32)) {
                    _sr_2880444 = _s[(_i_2880396 : stdgo.GoInt)];
                    _tr_2880457 = _t[(_i_2880396 : stdgo.GoInt)];
                    if (((_sr_2880444 | _tr_2880457 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2880496i32;
                    } else {
                        _gotoNext = 2880540i32;
                    };
                } else if (__value__ == (2880496i32)) {
                    _gotoNext = 2880854i32;
                } else if (__value__ == (2880540i32)) {
                    if (_tr_2880457 == (_sr_2880444)) {
                        _gotoNext = 2880552i32;
                    } else {
                        _gotoNext = 2880617i32;
                    };
                } else if (__value__ == (2880552i32)) {
                    _i_2880396++;
                    _gotoNext = 2880404i32;
                } else if (__value__ == (2880617i32)) {
                    if ((_tr_2880457 < _sr_2880444 : Bool)) {
                        _gotoNext = 2880628i32;
                    } else {
                        _gotoNext = 2880703i32;
                    };
                } else if (__value__ == (2880628i32)) {
                    {
                        final __tmp__0 = _sr_2880444;
                        final __tmp__1 = _tr_2880457;
                        _tr_2880457 = __tmp__0;
                        _sr_2880444 = __tmp__1;
                    };
                    _gotoNext = 2880703i32;
                } else if (__value__ == (2880703i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2880444 : Bool) && (_sr_2880444 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2880457 == ((_sr_2880444 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2880749i32;
                    } else {
                        _gotoNext = 2880769i32;
                    };
                } else if (__value__ == (2880749i32)) {
                    _i_2880396++;
                    _gotoNext = 2880404i32;
                } else if (__value__ == (2880769i32)) {
                    return false;
                    _i_2880396++;
                    _gotoNext = 2880404i32;
                } else if (__value__ == (2880829i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2880854i32;
                } else if (__value__ == (2880854i32)) {
                    _s = (_s.__slice__(_i_2880396) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2880396) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2880889i32;
                } else if (__value__ == (2880889i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2880920i32;
                    } else {
                        _gotoNext = 2881895i32;
                    };
                } else if (__value__ == (2880920i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881001i32;
                    } else {
                        _gotoNext = 2881041i32;
                    };
                } else if (__value__ == (2881001i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2880963 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2881105i32;
                } else if (__value__ == (2881041i32)) {
                    _gotoNext = 2881041i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2881046 = __tmp__._0;
                        _size_2881049 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2881046;
                        final __tmp__1 = (_s.__slice__(_size_2881049) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2880963 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2881105i32;
                } else if (__value__ == (2881105i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881129i32;
                    } else {
                        _gotoNext = 2881169i32;
                    };
                } else if (__value__ == (2881129i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2880967 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2881305i32;
                } else if (__value__ == (2881169i32)) {
                    _gotoNext = 2881169i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2881174 = __tmp__._0;
                        _size_2881177 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2881174;
                        final __tmp__1 = (_t.__slice__(_size_2881177) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2880967 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2881305i32;
                } else if (__value__ == (2881305i32)) {
                    if (_tr_2880967 == (_sr_2880963)) {
                        _gotoNext = 2881317i32;
                    } else {
                        _gotoNext = 2881382i32;
                    };
                } else if (__value__ == (2881317i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2880889i32;
                } else if (__value__ == (2881382i32)) {
                    if ((_tr_2880967 < _sr_2880963 : Bool)) {
                        _gotoNext = 2881393i32;
                    } else {
                        _gotoNext = 2881447i32;
                    };
                } else if (__value__ == (2881393i32)) {
                    {
                        final __tmp__0 = _sr_2880963;
                        final __tmp__1 = _tr_2880967;
                        _tr_2880967 = __tmp__0;
                        _sr_2880963 = __tmp__1;
                    };
                    _gotoNext = 2881447i32;
                } else if (__value__ == (2881447i32)) {
                    if ((_tr_2880967 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2881469i32;
                    } else {
                        _gotoNext = 2881722i32;
                    };
                } else if (__value__ == (2881469i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2880963 : Bool) && (_sr_2880963 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2880967 == ((_sr_2880963 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2881569i32;
                    } else {
                        _gotoNext = 2881592i32;
                    };
                } else if (__value__ == (2881569i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2880889i32;
                } else if (__value__ == (2881592i32)) {
                    return false;
                    _gotoNext = 2881722i32;
                } else if (__value__ == (2881722i32)) {
                    _r_2881722 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2880963);
                    var __blank__ = 0i32;
                    _gotoNext = 2881752i32;
                } else if (__value__ == (2881752i32)) {
                    if (((_r_2881722 != _sr_2880963) && (_r_2881722 < _tr_2880967 : Bool) : Bool)) {
                        _gotoNext = 2881774i32;
                    } else {
                        _gotoNext = 2881811i32;
                    };
                } else if (__value__ == (2881774i32)) {
                    _r_2881722 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2881722);
                    _gotoNext = 2881752i32;
                } else if (__value__ == (2881811i32)) {
                    if (_r_2881722 == (_tr_2880967)) {
                        _gotoNext = 2881822i32;
                    } else {
                        _gotoNext = 2881842i32;
                    };
                } else if (__value__ == (2881822i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2880889i32;
                } else if (__value__ == (2881842i32)) {
                    return false;
                    _gotoNext = 2880889i32;
                } else if (__value__ == (2881895i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
