package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_3409326:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3409322:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3408803:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3408755:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_3409408:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3409405:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3410081:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3409536:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3409533:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3408816:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3408755 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3408763i32;
                } else if (__value__ == (3408763i32)) {
                    if (((_i_3408755 < (_s.length) : Bool) && (_i_3408755 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3408799i32;
                    } else {
                        _gotoNext = 3409188i32;
                    };
                } else if (__value__ == (3408799i32)) {
                    _sr_3408803 = _s[(_i_3408755 : stdgo.GoInt)];
                    _tr_3408816 = _t[(_i_3408755 : stdgo.GoInt)];
                    if (((_sr_3408803 | _tr_3408816 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3408855i32;
                    } else {
                        _gotoNext = 3408899i32;
                    };
                } else if (__value__ == (3408855i32)) {
                    _gotoNext = 3409213i32;
                } else if (__value__ == (3408899i32)) {
                    if (_tr_3408816 == (_sr_3408803)) {
                        _gotoNext = 3408911i32;
                    } else {
                        _gotoNext = 3408976i32;
                    };
                } else if (__value__ == (3408911i32)) {
                    _i_3408755++;
                    _gotoNext = 3408763i32;
                } else if (__value__ == (3408976i32)) {
                    if ((_tr_3408816 < _sr_3408803 : Bool)) {
                        _gotoNext = 3408987i32;
                    } else {
                        _gotoNext = 3409062i32;
                    };
                } else if (__value__ == (3408987i32)) {
                    {
                        final __tmp__0 = _sr_3408803;
                        final __tmp__1 = _tr_3408816;
                        _tr_3408816 = __tmp__0;
                        _sr_3408803 = __tmp__1;
                    };
                    _gotoNext = 3409062i32;
                } else if (__value__ == (3409062i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3408803 : Bool) && (_sr_3408803 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3408816 == ((_sr_3408803 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3409108i32;
                    } else {
                        _gotoNext = 3409128i32;
                    };
                } else if (__value__ == (3409108i32)) {
                    _i_3408755++;
                    _gotoNext = 3408763i32;
                } else if (__value__ == (3409128i32)) {
                    return false;
                    _i_3408755++;
                    _gotoNext = 3408763i32;
                } else if (__value__ == (3409188i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3409213i32;
                } else if (__value__ == (3409213i32)) {
                    _s = (_s.__slice__(_i_3408755) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3408755) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3409248i32;
                } else if (__value__ == (3409248i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3409279i32;
                    } else {
                        _gotoNext = 3410254i32;
                    };
                } else if (__value__ == (3409279i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3409360i32;
                    } else {
                        _gotoNext = 3409400i32;
                    };
                } else if (__value__ == (3409360i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3409322 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3409464i32;
                } else if (__value__ == (3409400i32)) {
                    _gotoNext = 3409400i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3409405 = __tmp__._0;
                        _size_3409408 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3409405;
                        final __tmp__1 = (_s.__slice__(_size_3409408) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3409322 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3409464i32;
                } else if (__value__ == (3409464i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3409488i32;
                    } else {
                        _gotoNext = 3409528i32;
                    };
                } else if (__value__ == (3409488i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3409326 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3409664i32;
                } else if (__value__ == (3409528i32)) {
                    _gotoNext = 3409528i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3409533 = __tmp__._0;
                        _size_3409536 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3409533;
                        final __tmp__1 = (_t.__slice__(_size_3409536) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3409326 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3409664i32;
                } else if (__value__ == (3409664i32)) {
                    if (_tr_3409326 == (_sr_3409322)) {
                        _gotoNext = 3409676i32;
                    } else {
                        _gotoNext = 3409741i32;
                    };
                } else if (__value__ == (3409676i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3409248i32;
                } else if (__value__ == (3409741i32)) {
                    if ((_tr_3409326 < _sr_3409322 : Bool)) {
                        _gotoNext = 3409752i32;
                    } else {
                        _gotoNext = 3409806i32;
                    };
                } else if (__value__ == (3409752i32)) {
                    {
                        final __tmp__0 = _sr_3409322;
                        final __tmp__1 = _tr_3409326;
                        _tr_3409326 = __tmp__0;
                        _sr_3409322 = __tmp__1;
                    };
                    _gotoNext = 3409806i32;
                } else if (__value__ == (3409806i32)) {
                    if ((_tr_3409326 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3409828i32;
                    } else {
                        _gotoNext = 3410081i32;
                    };
                } else if (__value__ == (3409828i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3409322 : Bool) && (_sr_3409322 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3409326 == ((_sr_3409322 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3409928i32;
                    } else {
                        _gotoNext = 3409951i32;
                    };
                } else if (__value__ == (3409928i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3409248i32;
                } else if (__value__ == (3409951i32)) {
                    return false;
                    _gotoNext = 3410081i32;
                } else if (__value__ == (3410081i32)) {
                    _r_3410081 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3409322);
                    var __blank__ = 0i32;
                    _gotoNext = 3410111i32;
                } else if (__value__ == (3410111i32)) {
                    if (((_r_3410081 != _sr_3409322) && (_r_3410081 < _tr_3409326 : Bool) : Bool)) {
                        _gotoNext = 3410133i32;
                    } else {
                        _gotoNext = 3410170i32;
                    };
                } else if (__value__ == (3410133i32)) {
                    _r_3410081 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3410081);
                    _gotoNext = 3410111i32;
                } else if (__value__ == (3410170i32)) {
                    if (_r_3410081 == (_tr_3409326)) {
                        _gotoNext = 3410181i32;
                    } else {
                        _gotoNext = 3410201i32;
                    };
                } else if (__value__ == (3410181i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3409248i32;
                } else if (__value__ == (3410201i32)) {
                    return false;
                    _gotoNext = 3409248i32;
                } else if (__value__ == (3410254i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
