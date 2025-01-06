package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2861795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2861190:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2861142:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2861923:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2861920:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2861792:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2861713:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2861709:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2861203:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2862468:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2861142 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2861150i32;
                } else if (__value__ == (2861150i32)) {
                    if (((_i_2861142 < (_s.length) : Bool) && (_i_2861142 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2861186i32;
                    } else {
                        _gotoNext = 2861575i32;
                    };
                } else if (__value__ == (2861186i32)) {
                    _sr_2861190 = _s[(_i_2861142 : stdgo.GoInt)];
                    _tr_2861203 = _t[(_i_2861142 : stdgo.GoInt)];
                    if (((_sr_2861190 | _tr_2861203 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861242i32;
                    } else {
                        _gotoNext = 2861286i32;
                    };
                } else if (__value__ == (2861242i32)) {
                    _gotoNext = 2861600i32;
                } else if (__value__ == (2861286i32)) {
                    if (_tr_2861203 == (_sr_2861190)) {
                        _gotoNext = 2861298i32;
                    } else {
                        _gotoNext = 2861363i32;
                    };
                } else if (__value__ == (2861298i32)) {
                    _i_2861142++;
                    _gotoNext = 2861150i32;
                } else if (__value__ == (2861363i32)) {
                    if ((_tr_2861203 < _sr_2861190 : Bool)) {
                        _gotoNext = 2861374i32;
                    } else {
                        _gotoNext = 2861449i32;
                    };
                } else if (__value__ == (2861374i32)) {
                    {
                        final __tmp__0 = _sr_2861190;
                        final __tmp__1 = _tr_2861203;
                        _tr_2861203 = __tmp__0;
                        _sr_2861190 = __tmp__1;
                    };
                    _gotoNext = 2861449i32;
                } else if (__value__ == (2861449i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2861190 : Bool) && (_sr_2861190 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2861203 == ((_sr_2861190 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2861495i32;
                    } else {
                        _gotoNext = 2861515i32;
                    };
                } else if (__value__ == (2861495i32)) {
                    _i_2861142++;
                    _gotoNext = 2861150i32;
                } else if (__value__ == (2861515i32)) {
                    return false;
                    _i_2861142++;
                    _gotoNext = 2861150i32;
                } else if (__value__ == (2861575i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2861600i32;
                } else if (__value__ == (2861600i32)) {
                    _s = (_s.__slice__(_i_2861142) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2861142) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2861635i32;
                } else if (__value__ == (2861635i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2861666i32;
                    } else {
                        _gotoNext = 2862641i32;
                    };
                } else if (__value__ == (2861666i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861747i32;
                    } else {
                        _gotoNext = 2861787i32;
                    };
                } else if (__value__ == (2861747i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2861709 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2861851i32;
                } else if (__value__ == (2861787i32)) {
                    _gotoNext = 2861787i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2861792 = __tmp__._0;
                        _size_2861795 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2861792;
                        final __tmp__1 = (_s.__slice__(_size_2861795) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2861709 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2861851i32;
                } else if (__value__ == (2861851i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2861875i32;
                    } else {
                        _gotoNext = 2861915i32;
                    };
                } else if (__value__ == (2861875i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2861713 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2862051i32;
                } else if (__value__ == (2861915i32)) {
                    _gotoNext = 2861915i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2861920 = __tmp__._0;
                        _size_2861923 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2861920;
                        final __tmp__1 = (_t.__slice__(_size_2861923) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2861713 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2862051i32;
                } else if (__value__ == (2862051i32)) {
                    if (_tr_2861713 == (_sr_2861709)) {
                        _gotoNext = 2862063i32;
                    } else {
                        _gotoNext = 2862128i32;
                    };
                } else if (__value__ == (2862063i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2861635i32;
                } else if (__value__ == (2862128i32)) {
                    if ((_tr_2861713 < _sr_2861709 : Bool)) {
                        _gotoNext = 2862139i32;
                    } else {
                        _gotoNext = 2862193i32;
                    };
                } else if (__value__ == (2862139i32)) {
                    {
                        final __tmp__0 = _sr_2861709;
                        final __tmp__1 = _tr_2861713;
                        _tr_2861713 = __tmp__0;
                        _sr_2861709 = __tmp__1;
                    };
                    _gotoNext = 2862193i32;
                } else if (__value__ == (2862193i32)) {
                    if ((_tr_2861713 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2862215i32;
                    } else {
                        _gotoNext = 2862468i32;
                    };
                } else if (__value__ == (2862215i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2861709 : Bool) && (_sr_2861709 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2861713 == ((_sr_2861709 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2862315i32;
                    } else {
                        _gotoNext = 2862338i32;
                    };
                } else if (__value__ == (2862315i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2861635i32;
                } else if (__value__ == (2862338i32)) {
                    return false;
                    _gotoNext = 2862468i32;
                } else if (__value__ == (2862468i32)) {
                    _r_2862468 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2861709);
                    var __blank__ = 0i32;
                    _gotoNext = 2862498i32;
                } else if (__value__ == (2862498i32)) {
                    if (((_r_2862468 != _sr_2861709) && (_r_2862468 < _tr_2861713 : Bool) : Bool)) {
                        _gotoNext = 2862520i32;
                    } else {
                        _gotoNext = 2862557i32;
                    };
                } else if (__value__ == (2862520i32)) {
                    _r_2862468 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2862468);
                    _gotoNext = 2862498i32;
                } else if (__value__ == (2862557i32)) {
                    if (_r_2862468 == (_tr_2861713)) {
                        _gotoNext = 2862568i32;
                    } else {
                        _gotoNext = 2862588i32;
                    };
                } else if (__value__ == (2862568i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2861635i32;
                } else if (__value__ == (2862588i32)) {
                    return false;
                    _gotoNext = 2861635i32;
                } else if (__value__ == (2862641i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
