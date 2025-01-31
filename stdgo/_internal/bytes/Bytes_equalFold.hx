package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2938192:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2937603:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2937542:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2938320:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2938195:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2938113:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2938109:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2937590:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2938868:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2938323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2937542 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2937550i32;
                } else if (__value__ == (2937550i32)) {
                    if (((_i_2937542 < (_s.length) : Bool) && (_i_2937542 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2937586i32;
                    } else {
                        _gotoNext = 2937975i32;
                    };
                } else if (__value__ == (2937586i32)) {
                    _sr_2937590 = _s[(_i_2937542 : stdgo.GoInt)];
                    _tr_2937603 = _t[(_i_2937542 : stdgo.GoInt)];
                    if (((_sr_2937590 | _tr_2937603 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2937642i32;
                    } else {
                        _gotoNext = 2937686i32;
                    };
                } else if (__value__ == (2937642i32)) {
                    _gotoNext = 2938000i32;
                } else if (__value__ == (2937686i32)) {
                    if (_tr_2937603 == (_sr_2937590)) {
                        _gotoNext = 2937698i32;
                    } else {
                        _gotoNext = 2937763i32;
                    };
                } else if (__value__ == (2937698i32)) {
                    _i_2937542++;
                    _gotoNext = 2937550i32;
                } else if (__value__ == (2937763i32)) {
                    if ((_tr_2937603 < _sr_2937590 : Bool)) {
                        _gotoNext = 2937774i32;
                    } else {
                        _gotoNext = 2937849i32;
                    };
                } else if (__value__ == (2937774i32)) {
                    {
                        final __tmp__0 = _sr_2937590;
                        final __tmp__1 = _tr_2937603;
                        _tr_2937603 = __tmp__0;
                        _sr_2937590 = __tmp__1;
                    };
                    _gotoNext = 2937849i32;
                } else if (__value__ == (2937849i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2937590 : Bool) && (_sr_2937590 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2937603 == ((_sr_2937590 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2937895i32;
                    } else {
                        _gotoNext = 2937915i32;
                    };
                } else if (__value__ == (2937895i32)) {
                    _i_2937542++;
                    _gotoNext = 2937550i32;
                } else if (__value__ == (2937915i32)) {
                    return false;
                    _i_2937542++;
                    _gotoNext = 2937550i32;
                } else if (__value__ == (2937975i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2938000i32;
                } else if (__value__ == (2938000i32)) {
                    _s = (_s.__slice__(_i_2937542) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2937542) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2938035i32;
                } else if (__value__ == (2938035i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2938066i32;
                    } else {
                        _gotoNext = 2939041i32;
                    };
                } else if (__value__ == (2938066i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2938147i32;
                    } else {
                        _gotoNext = 2938187i32;
                    };
                } else if (__value__ == (2938147i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2938109 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2938251i32;
                } else if (__value__ == (2938187i32)) {
                    _gotoNext = 2938187i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2938192 = @:tmpset0 __tmp__._0;
                        _size_2938195 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2938192;
                        final __tmp__1 = (_s.__slice__(_size_2938195) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2938109 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2938251i32;
                } else if (__value__ == (2938251i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2938275i32;
                    } else {
                        _gotoNext = 2938315i32;
                    };
                } else if (__value__ == (2938275i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2938113 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2938451i32;
                } else if (__value__ == (2938315i32)) {
                    _gotoNext = 2938315i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2938320 = @:tmpset0 __tmp__._0;
                        _size_2938323 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2938320;
                        final __tmp__1 = (_t.__slice__(_size_2938323) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2938113 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2938451i32;
                } else if (__value__ == (2938451i32)) {
                    if (_tr_2938113 == (_sr_2938109)) {
                        _gotoNext = 2938463i32;
                    } else {
                        _gotoNext = 2938528i32;
                    };
                } else if (__value__ == (2938463i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2938035i32;
                } else if (__value__ == (2938528i32)) {
                    if ((_tr_2938113 < _sr_2938109 : Bool)) {
                        _gotoNext = 2938539i32;
                    } else {
                        _gotoNext = 2938593i32;
                    };
                } else if (__value__ == (2938539i32)) {
                    {
                        final __tmp__0 = _sr_2938109;
                        final __tmp__1 = _tr_2938113;
                        _tr_2938113 = __tmp__0;
                        _sr_2938109 = __tmp__1;
                    };
                    _gotoNext = 2938593i32;
                } else if (__value__ == (2938593i32)) {
                    if ((_tr_2938113 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2938615i32;
                    } else {
                        _gotoNext = 2938868i32;
                    };
                } else if (__value__ == (2938615i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2938109 : Bool) && (_sr_2938109 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2938113 == ((_sr_2938109 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2938715i32;
                    } else {
                        _gotoNext = 2938738i32;
                    };
                } else if (__value__ == (2938715i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2938035i32;
                } else if (__value__ == (2938738i32)) {
                    return false;
                    _gotoNext = 2938868i32;
                } else if (__value__ == (2938868i32)) {
                    _r_2938868 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2938109);
                    var __blank__ = 0i32;
                    _gotoNext = 2938898i32;
                } else if (__value__ == (2938898i32)) {
                    if (((_r_2938868 != _sr_2938109) && (_r_2938868 < _tr_2938113 : Bool) : Bool)) {
                        _gotoNext = 2938920i32;
                    } else {
                        _gotoNext = 2938957i32;
                    };
                } else if (__value__ == (2938920i32)) {
                    _r_2938868 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2938868);
                    _gotoNext = 2938898i32;
                } else if (__value__ == (2938957i32)) {
                    if (_r_2938868 == (_tr_2938113)) {
                        _gotoNext = 2938968i32;
                    } else {
                        _gotoNext = 2938988i32;
                    };
                } else if (__value__ == (2938968i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2938035i32;
                } else if (__value__ == (2938988i32)) {
                    return false;
                    _gotoNext = 2938035i32;
                } else if (__value__ == (2939041i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
