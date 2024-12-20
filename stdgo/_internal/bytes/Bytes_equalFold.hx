package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2819841:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2819165:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2818576:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2818563:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2818515:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2819296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2819293:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2819168:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2819086:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2819082:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2818515 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2818523i32;
                } else if (__value__ == (2818523i32)) {
                    if (((_i_2818515 < (_s.length) : Bool) && (_i_2818515 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2818559i32;
                    } else {
                        _gotoNext = 2818948i32;
                    };
                } else if (__value__ == (2818559i32)) {
                    _sr_2818563 = _s[(_i_2818515 : stdgo.GoInt)];
                    _tr_2818576 = _t[(_i_2818515 : stdgo.GoInt)];
                    if (((_sr_2818563 | _tr_2818576 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2818615i32;
                    } else {
                        _gotoNext = 2818659i32;
                    };
                } else if (__value__ == (2818615i32)) {
                    _gotoNext = 2818973i32;
                } else if (__value__ == (2818659i32)) {
                    if (_tr_2818576 == (_sr_2818563)) {
                        _gotoNext = 2818671i32;
                    } else {
                        _gotoNext = 2818736i32;
                    };
                } else if (__value__ == (2818671i32)) {
                    _i_2818515++;
                    _gotoNext = 2818523i32;
                } else if (__value__ == (2818736i32)) {
                    if ((_tr_2818576 < _sr_2818563 : Bool)) {
                        _gotoNext = 2818747i32;
                    } else {
                        _gotoNext = 2818822i32;
                    };
                } else if (__value__ == (2818747i32)) {
                    {
                        final __tmp__0 = _sr_2818563;
                        final __tmp__1 = _tr_2818576;
                        _tr_2818576 = __tmp__0;
                        _sr_2818563 = __tmp__1;
                    };
                    _gotoNext = 2818822i32;
                } else if (__value__ == (2818822i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2818563 : Bool) && (_sr_2818563 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2818576 == ((_sr_2818563 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2818868i32;
                    } else {
                        _gotoNext = 2818888i32;
                    };
                } else if (__value__ == (2818868i32)) {
                    _i_2818515++;
                    _gotoNext = 2818523i32;
                } else if (__value__ == (2818888i32)) {
                    return false;
                    _i_2818515++;
                    _gotoNext = 2818523i32;
                } else if (__value__ == (2818948i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2818973i32;
                } else if (__value__ == (2818973i32)) {
                    _s = (_s.__slice__(_i_2818515) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2818515) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2819008i32;
                } else if (__value__ == (2819008i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2819039i32;
                    } else {
                        _gotoNext = 2820014i32;
                    };
                } else if (__value__ == (2819039i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2819120i32;
                    } else {
                        _gotoNext = 2819160i32;
                    };
                } else if (__value__ == (2819120i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2819082 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2819224i32;
                } else if (__value__ == (2819160i32)) {
                    _gotoNext = 2819160i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2819165 = __tmp__._0;
                        _size_2819168 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2819165;
                        final __tmp__1 = (_s.__slice__(_size_2819168) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2819082 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2819224i32;
                } else if (__value__ == (2819224i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2819248i32;
                    } else {
                        _gotoNext = 2819288i32;
                    };
                } else if (__value__ == (2819248i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2819086 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2819424i32;
                } else if (__value__ == (2819288i32)) {
                    _gotoNext = 2819288i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2819293 = __tmp__._0;
                        _size_2819296 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2819293;
                        final __tmp__1 = (_t.__slice__(_size_2819296) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2819086 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2819424i32;
                } else if (__value__ == (2819424i32)) {
                    if (_tr_2819086 == (_sr_2819082)) {
                        _gotoNext = 2819436i32;
                    } else {
                        _gotoNext = 2819501i32;
                    };
                } else if (__value__ == (2819436i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2819008i32;
                } else if (__value__ == (2819501i32)) {
                    if ((_tr_2819086 < _sr_2819082 : Bool)) {
                        _gotoNext = 2819512i32;
                    } else {
                        _gotoNext = 2819566i32;
                    };
                } else if (__value__ == (2819512i32)) {
                    {
                        final __tmp__0 = _sr_2819082;
                        final __tmp__1 = _tr_2819086;
                        _tr_2819086 = __tmp__0;
                        _sr_2819082 = __tmp__1;
                    };
                    _gotoNext = 2819566i32;
                } else if (__value__ == (2819566i32)) {
                    if ((_tr_2819086 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2819588i32;
                    } else {
                        _gotoNext = 2819841i32;
                    };
                } else if (__value__ == (2819588i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2819082 : Bool) && (_sr_2819082 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2819086 == ((_sr_2819082 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2819688i32;
                    } else {
                        _gotoNext = 2819711i32;
                    };
                } else if (__value__ == (2819688i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2819008i32;
                } else if (__value__ == (2819711i32)) {
                    return false;
                    _gotoNext = 2819841i32;
                } else if (__value__ == (2819841i32)) {
                    _r_2819841 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2819082);
                    var __blank__ = 0i32;
                    _gotoNext = 2819871i32;
                } else if (__value__ == (2819871i32)) {
                    if (((_r_2819841 != _sr_2819082) && (_r_2819841 < _tr_2819086 : Bool) : Bool)) {
                        _gotoNext = 2819893i32;
                    } else {
                        _gotoNext = 2819930i32;
                    };
                } else if (__value__ == (2819893i32)) {
                    _r_2819841 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2819841);
                    _gotoNext = 2819871i32;
                } else if (__value__ == (2819930i32)) {
                    if (_r_2819841 == (_tr_2819086)) {
                        _gotoNext = 2819941i32;
                    } else {
                        _gotoNext = 2819961i32;
                    };
                } else if (__value__ == (2819941i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2819008i32;
                } else if (__value__ == (2819961i32)) {
                    return false;
                    _gotoNext = 2819008i32;
                } else if (__value__ == (2820014i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
