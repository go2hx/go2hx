package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2879972:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2879844:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2879255:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2879242:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2879975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2879847:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2879765:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2879761:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2879194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2880520:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2879194 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2879202i32;
                } else if (__value__ == (2879202i32)) {
                    if (((_i_2879194 < (_s.length) : Bool) && (_i_2879194 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2879238i32;
                    } else {
                        _gotoNext = 2879627i32;
                    };
                } else if (__value__ == (2879238i32)) {
                    _sr_2879242 = _s[(_i_2879194 : stdgo.GoInt)];
                    _tr_2879255 = _t[(_i_2879194 : stdgo.GoInt)];
                    if (((_sr_2879242 | _tr_2879255 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2879294i32;
                    } else {
                        _gotoNext = 2879338i32;
                    };
                } else if (__value__ == (2879294i32)) {
                    _gotoNext = 2879652i32;
                } else if (__value__ == (2879338i32)) {
                    if (_tr_2879255 == (_sr_2879242)) {
                        _gotoNext = 2879350i32;
                    } else {
                        _gotoNext = 2879415i32;
                    };
                } else if (__value__ == (2879350i32)) {
                    _i_2879194++;
                    _gotoNext = 2879202i32;
                } else if (__value__ == (2879415i32)) {
                    if ((_tr_2879255 < _sr_2879242 : Bool)) {
                        _gotoNext = 2879426i32;
                    } else {
                        _gotoNext = 2879501i32;
                    };
                } else if (__value__ == (2879426i32)) {
                    {
                        final __tmp__0 = _sr_2879242;
                        final __tmp__1 = _tr_2879255;
                        _tr_2879255 = __tmp__0;
                        _sr_2879242 = __tmp__1;
                    };
                    _gotoNext = 2879501i32;
                } else if (__value__ == (2879501i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2879242 : Bool) && (_sr_2879242 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2879255 == ((_sr_2879242 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2879547i32;
                    } else {
                        _gotoNext = 2879567i32;
                    };
                } else if (__value__ == (2879547i32)) {
                    _i_2879194++;
                    _gotoNext = 2879202i32;
                } else if (__value__ == (2879567i32)) {
                    return false;
                    _i_2879194++;
                    _gotoNext = 2879202i32;
                } else if (__value__ == (2879627i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2879652i32;
                } else if (__value__ == (2879652i32)) {
                    _s = (_s.__slice__(_i_2879194) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2879194) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2879687i32;
                } else if (__value__ == (2879687i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2879718i32;
                    } else {
                        _gotoNext = 2880693i32;
                    };
                } else if (__value__ == (2879718i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2879799i32;
                    } else {
                        _gotoNext = 2879839i32;
                    };
                } else if (__value__ == (2879799i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2879761 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2879903i32;
                } else if (__value__ == (2879839i32)) {
                    _gotoNext = 2879839i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2879844 = __tmp__._0;
                        _size_2879847 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2879844;
                        final __tmp__1 = (_s.__slice__(_size_2879847) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2879761 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2879903i32;
                } else if (__value__ == (2879903i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2879927i32;
                    } else {
                        _gotoNext = 2879967i32;
                    };
                } else if (__value__ == (2879927i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2879765 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2880103i32;
                } else if (__value__ == (2879967i32)) {
                    _gotoNext = 2879967i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2879972 = __tmp__._0;
                        _size_2879975 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2879972;
                        final __tmp__1 = (_t.__slice__(_size_2879975) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2879765 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2880103i32;
                } else if (__value__ == (2880103i32)) {
                    if (_tr_2879765 == (_sr_2879761)) {
                        _gotoNext = 2880115i32;
                    } else {
                        _gotoNext = 2880180i32;
                    };
                } else if (__value__ == (2880115i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879687i32;
                } else if (__value__ == (2880180i32)) {
                    if ((_tr_2879765 < _sr_2879761 : Bool)) {
                        _gotoNext = 2880191i32;
                    } else {
                        _gotoNext = 2880245i32;
                    };
                } else if (__value__ == (2880191i32)) {
                    {
                        final __tmp__0 = _sr_2879761;
                        final __tmp__1 = _tr_2879765;
                        _tr_2879765 = __tmp__0;
                        _sr_2879761 = __tmp__1;
                    };
                    _gotoNext = 2880245i32;
                } else if (__value__ == (2880245i32)) {
                    if ((_tr_2879765 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2880267i32;
                    } else {
                        _gotoNext = 2880520i32;
                    };
                } else if (__value__ == (2880267i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2879761 : Bool) && (_sr_2879761 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2879765 == ((_sr_2879761 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2880367i32;
                    } else {
                        _gotoNext = 2880390i32;
                    };
                } else if (__value__ == (2880367i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879687i32;
                } else if (__value__ == (2880390i32)) {
                    return false;
                    _gotoNext = 2880520i32;
                } else if (__value__ == (2880520i32)) {
                    _r_2880520 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2879761);
                    var __blank__ = 0i32;
                    _gotoNext = 2880550i32;
                } else if (__value__ == (2880550i32)) {
                    if (((_r_2880520 != _sr_2879761) && (_r_2880520 < _tr_2879765 : Bool) : Bool)) {
                        _gotoNext = 2880572i32;
                    } else {
                        _gotoNext = 2880609i32;
                    };
                } else if (__value__ == (2880572i32)) {
                    _r_2880520 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2880520);
                    _gotoNext = 2880550i32;
                } else if (__value__ == (2880609i32)) {
                    if (_r_2880520 == (_tr_2879765)) {
                        _gotoNext = 2880620i32;
                    } else {
                        _gotoNext = 2880640i32;
                    };
                } else if (__value__ == (2880620i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2879687i32;
                } else if (__value__ == (2880640i32)) {
                    return false;
                    _gotoNext = 2879687i32;
                } else if (__value__ == (2880693i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
