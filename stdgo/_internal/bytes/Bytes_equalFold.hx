package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2989066:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2988393:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2987740:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2988518:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2988390:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2988311:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2988307:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2987801:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2987788:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2988521:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2987740 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2987748i32;
                } else if (__value__ == (2987748i32)) {
                    if (((_i_2987740 < (_s.length) : Bool) && (_i_2987740 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2987784i32;
                    } else {
                        _gotoNext = 2988173i32;
                    };
                } else if (__value__ == (2987784i32)) {
                    _sr_2987788 = _s[(_i_2987740 : stdgo.GoInt)];
                    _tr_2987801 = _t[(_i_2987740 : stdgo.GoInt)];
                    if (((_sr_2987788 | _tr_2987801 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2987840i32;
                    } else {
                        _gotoNext = 2987884i32;
                    };
                } else if (__value__ == (2987840i32)) {
                    _gotoNext = 2988198i32;
                } else if (__value__ == (2987884i32)) {
                    if (_tr_2987801 == (_sr_2987788)) {
                        _gotoNext = 2987896i32;
                    } else {
                        _gotoNext = 2987961i32;
                    };
                } else if (__value__ == (2987896i32)) {
                    _i_2987740++;
                    _gotoNext = 2987748i32;
                } else if (__value__ == (2987961i32)) {
                    if ((_tr_2987801 < _sr_2987788 : Bool)) {
                        _gotoNext = 2987972i32;
                    } else {
                        _gotoNext = 2988047i32;
                    };
                } else if (__value__ == (2987972i32)) {
                    {
                        final __tmp__0 = _sr_2987788;
                        final __tmp__1 = _tr_2987801;
                        _tr_2987801 = __tmp__0;
                        _sr_2987788 = __tmp__1;
                    };
                    _gotoNext = 2988047i32;
                } else if (__value__ == (2988047i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2987788 : Bool) && (_sr_2987788 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2987801 == ((_sr_2987788 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2988093i32;
                    } else {
                        _gotoNext = 2988113i32;
                    };
                } else if (__value__ == (2988093i32)) {
                    _i_2987740++;
                    _gotoNext = 2987748i32;
                } else if (__value__ == (2988113i32)) {
                    return false;
                    _i_2987740++;
                    _gotoNext = 2987748i32;
                } else if (__value__ == (2988173i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2988198i32;
                } else if (__value__ == (2988198i32)) {
                    _s = (_s.__slice__(_i_2987740) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2987740) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2988233i32;
                } else if (__value__ == (2988233i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2988264i32;
                    } else {
                        _gotoNext = 2989239i32;
                    };
                } else if (__value__ == (2988264i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988345i32;
                    } else {
                        _gotoNext = 2988385i32;
                    };
                } else if (__value__ == (2988345i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988307 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2988449i32;
                } else if (__value__ == (2988385i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2988390 = __tmp__._0;
                        _size_2988393 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2988390;
                        final __tmp__1 = (_s.__slice__(_size_2988393) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988307 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2988449i32;
                } else if (__value__ == (2988449i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988473i32;
                    } else {
                        _gotoNext = 2988513i32;
                    };
                } else if (__value__ == (2988473i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988311 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2988649i32;
                } else if (__value__ == (2988513i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2988518 = __tmp__._0;
                        _size_2988521 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2988518;
                        final __tmp__1 = (_t.__slice__(_size_2988521) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988311 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2988649i32;
                } else if (__value__ == (2988649i32)) {
                    if (_tr_2988311 == (_sr_2988307)) {
                        _gotoNext = 2988661i32;
                    } else {
                        _gotoNext = 2988726i32;
                    };
                } else if (__value__ == (2988661i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988233i32;
                } else if (__value__ == (2988726i32)) {
                    if ((_tr_2988311 < _sr_2988307 : Bool)) {
                        _gotoNext = 2988737i32;
                    } else {
                        _gotoNext = 2988791i32;
                    };
                } else if (__value__ == (2988737i32)) {
                    {
                        final __tmp__0 = _sr_2988307;
                        final __tmp__1 = _tr_2988311;
                        _tr_2988311 = __tmp__0;
                        _sr_2988307 = __tmp__1;
                    };
                    _gotoNext = 2988791i32;
                } else if (__value__ == (2988791i32)) {
                    if ((_tr_2988311 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2988813i32;
                    } else {
                        _gotoNext = 2989066i32;
                    };
                } else if (__value__ == (2988813i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2988307 : Bool) && (_sr_2988307 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2988311 == ((_sr_2988307 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2988913i32;
                    } else {
                        _gotoNext = 2988936i32;
                    };
                } else if (__value__ == (2988913i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988233i32;
                } else if (__value__ == (2988936i32)) {
                    return false;
                    _gotoNext = 2989066i32;
                } else if (__value__ == (2989066i32)) {
                    _r_2989066 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2988307);
                    var __blank__ = 0i32;
                    _gotoNext = 2989096i32;
                } else if (__value__ == (2989096i32)) {
                    if (((_r_2989066 != _sr_2988307) && (_r_2989066 < _tr_2988311 : Bool) : Bool)) {
                        _gotoNext = 2989118i32;
                    } else {
                        _gotoNext = 2989155i32;
                    };
                } else if (__value__ == (2989118i32)) {
                    _r_2989066 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2989066);
                    _gotoNext = 2989096i32;
                } else if (__value__ == (2989155i32)) {
                    if (_r_2989066 == (_tr_2988311)) {
                        _gotoNext = 2989166i32;
                    } else {
                        _gotoNext = 2989186i32;
                    };
                } else if (__value__ == (2989166i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988233i32;
                } else if (__value__ == (2989186i32)) {
                    return false;
                    _gotoNext = 2988233i32;
                } else if (__value__ == (2989239i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
