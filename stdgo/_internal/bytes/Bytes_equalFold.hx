package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2989697:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2989152:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2989021:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2988942:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2988432:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2989149:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2989024:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2988938:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2988419:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2988371:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2988371 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2988379i32;
                } else if (__value__ == (2988379i32)) {
                    if (((_i_2988371 < (_s.length) : Bool) && (_i_2988371 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2988415i32;
                    } else {
                        _gotoNext = 2988804i32;
                    };
                } else if (__value__ == (2988415i32)) {
                    _sr_2988419 = _s[(_i_2988371 : stdgo.GoInt)];
                    _tr_2988432 = _t[(_i_2988371 : stdgo.GoInt)];
                    if (((_sr_2988419 | _tr_2988432 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988471i32;
                    } else {
                        _gotoNext = 2988515i32;
                    };
                } else if (__value__ == (2988471i32)) {
                    _gotoNext = 2988829i32;
                } else if (__value__ == (2988515i32)) {
                    if (_tr_2988432 == (_sr_2988419)) {
                        _gotoNext = 2988527i32;
                    } else {
                        _gotoNext = 2988592i32;
                    };
                } else if (__value__ == (2988527i32)) {
                    _i_2988371++;
                    _gotoNext = 2988379i32;
                } else if (__value__ == (2988592i32)) {
                    if ((_tr_2988432 < _sr_2988419 : Bool)) {
                        _gotoNext = 2988603i32;
                    } else {
                        _gotoNext = 2988678i32;
                    };
                } else if (__value__ == (2988603i32)) {
                    {
                        final __tmp__0 = _sr_2988419;
                        final __tmp__1 = _tr_2988432;
                        _tr_2988432 = __tmp__0;
                        _sr_2988419 = __tmp__1;
                    };
                    _gotoNext = 2988678i32;
                } else if (__value__ == (2988678i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2988419 : Bool) && (_sr_2988419 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2988432 == ((_sr_2988419 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2988724i32;
                    } else {
                        _gotoNext = 2988744i32;
                    };
                } else if (__value__ == (2988724i32)) {
                    _i_2988371++;
                    _gotoNext = 2988379i32;
                } else if (__value__ == (2988744i32)) {
                    return false;
                    _i_2988371++;
                    _gotoNext = 2988379i32;
                } else if (__value__ == (2988804i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2988829i32;
                } else if (__value__ == (2988829i32)) {
                    _s = (_s.__slice__(_i_2988371) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2988371) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2988864i32;
                } else if (__value__ == (2988864i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2988895i32;
                    } else {
                        _gotoNext = 2989870i32;
                    };
                } else if (__value__ == (2988895i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988976i32;
                    } else {
                        _gotoNext = 2989016i32;
                    };
                } else if (__value__ == (2988976i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988938 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2989080i32;
                } else if (__value__ == (2989016i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2989021 = __tmp__._0;
                        _size_2989024 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2989021;
                        final __tmp__1 = (_s.__slice__(_size_2989024) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988938 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2989080i32;
                } else if (__value__ == (2989080i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2989104i32;
                    } else {
                        _gotoNext = 2989144i32;
                    };
                } else if (__value__ == (2989104i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988942 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2989280i32;
                } else if (__value__ == (2989144i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2989149 = __tmp__._0;
                        _size_2989152 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2989149;
                        final __tmp__1 = (_t.__slice__(_size_2989152) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988942 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2989280i32;
                } else if (__value__ == (2989280i32)) {
                    if (_tr_2988942 == (_sr_2988938)) {
                        _gotoNext = 2989292i32;
                    } else {
                        _gotoNext = 2989357i32;
                    };
                } else if (__value__ == (2989292i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988864i32;
                } else if (__value__ == (2989357i32)) {
                    if ((_tr_2988942 < _sr_2988938 : Bool)) {
                        _gotoNext = 2989368i32;
                    } else {
                        _gotoNext = 2989422i32;
                    };
                } else if (__value__ == (2989368i32)) {
                    {
                        final __tmp__0 = _sr_2988938;
                        final __tmp__1 = _tr_2988942;
                        _tr_2988942 = __tmp__0;
                        _sr_2988938 = __tmp__1;
                    };
                    _gotoNext = 2989422i32;
                } else if (__value__ == (2989422i32)) {
                    if ((_tr_2988942 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2989444i32;
                    } else {
                        _gotoNext = 2989697i32;
                    };
                } else if (__value__ == (2989444i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2988938 : Bool) && (_sr_2988938 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2988942 == ((_sr_2988938 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2989544i32;
                    } else {
                        _gotoNext = 2989567i32;
                    };
                } else if (__value__ == (2989544i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988864i32;
                } else if (__value__ == (2989567i32)) {
                    return false;
                    _gotoNext = 2989697i32;
                } else if (__value__ == (2989697i32)) {
                    _r_2989697 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2988938);
                    var __blank__ = 0i32;
                    _gotoNext = 2989727i32;
                } else if (__value__ == (2989727i32)) {
                    if (((_r_2989697 != _sr_2988938) && (_r_2989697 < _tr_2988942 : Bool) : Bool)) {
                        _gotoNext = 2989749i32;
                    } else {
                        _gotoNext = 2989786i32;
                    };
                } else if (__value__ == (2989749i32)) {
                    _r_2989697 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2989697);
                    _gotoNext = 2989727i32;
                } else if (__value__ == (2989786i32)) {
                    if (_r_2989697 == (_tr_2988942)) {
                        _gotoNext = 2989797i32;
                    } else {
                        _gotoNext = 2989817i32;
                    };
                } else if (__value__ == (2989797i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988864i32;
                } else if (__value__ == (2989817i32)) {
                    return false;
                    _gotoNext = 2988864i32;
                } else if (__value__ == (2989870i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
