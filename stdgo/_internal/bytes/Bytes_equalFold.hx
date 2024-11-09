package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2874753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2874033:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2874543:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2874539:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2874020:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2873972:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2875298:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2874750:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2874625:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2874622:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2873972 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2873980i32;
                } else if (__value__ == (2873980i32)) {
                    if (((_i_2873972 < (_s.length) : Bool) && (_i_2873972 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2874016i32;
                    } else {
                        _gotoNext = 2874405i32;
                    };
                } else if (__value__ == (2874016i32)) {
                    _sr_2874020 = _s[(_i_2873972 : stdgo.GoInt)];
                    _tr_2874033 = _t[(_i_2873972 : stdgo.GoInt)];
                    if (((_sr_2874020 | _tr_2874033 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874072i32;
                    } else {
                        _gotoNext = 2874116i32;
                    };
                } else if (__value__ == (2874072i32)) {
                    _gotoNext = 2874430i32;
                } else if (__value__ == (2874116i32)) {
                    if (_tr_2874033 == (_sr_2874020)) {
                        _gotoNext = 2874128i32;
                    } else {
                        _gotoNext = 2874193i32;
                    };
                } else if (__value__ == (2874128i32)) {
                    _i_2873972++;
                    _gotoNext = 2873980i32;
                } else if (__value__ == (2874193i32)) {
                    if ((_tr_2874033 < _sr_2874020 : Bool)) {
                        _gotoNext = 2874204i32;
                    } else {
                        _gotoNext = 2874279i32;
                    };
                } else if (__value__ == (2874204i32)) {
                    {
                        final __tmp__0 = _sr_2874020;
                        final __tmp__1 = _tr_2874033;
                        _tr_2874033 = __tmp__0;
                        _sr_2874020 = __tmp__1;
                    };
                    _gotoNext = 2874279i32;
                } else if (__value__ == (2874279i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2874020 : Bool) && (_sr_2874020 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2874033 == ((_sr_2874020 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2874325i32;
                    } else {
                        _gotoNext = 2874345i32;
                    };
                } else if (__value__ == (2874325i32)) {
                    _i_2873972++;
                    _gotoNext = 2873980i32;
                } else if (__value__ == (2874345i32)) {
                    return false;
                    _i_2873972++;
                    _gotoNext = 2873980i32;
                } else if (__value__ == (2874405i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2874430i32;
                } else if (__value__ == (2874430i32)) {
                    _s = (_s.__slice__(_i_2873972) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2873972) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2874465i32;
                } else if (__value__ == (2874465i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2874496i32;
                    } else {
                        _gotoNext = 2875471i32;
                    };
                } else if (__value__ == (2874496i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874577i32;
                    } else {
                        _gotoNext = 2874617i32;
                    };
                } else if (__value__ == (2874577i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874539 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2874681i32;
                } else if (__value__ == (2874617i32)) {
                    _gotoNext = 2874617i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2874622 = __tmp__._0;
                        _size_2874625 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2874622;
                        final __tmp__1 = (_s.__slice__(_size_2874625) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2874539 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2874681i32;
                } else if (__value__ == (2874681i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2874705i32;
                    } else {
                        _gotoNext = 2874745i32;
                    };
                } else if (__value__ == (2874705i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874543 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2874881i32;
                } else if (__value__ == (2874745i32)) {
                    _gotoNext = 2874745i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2874750 = __tmp__._0;
                        _size_2874753 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2874750;
                        final __tmp__1 = (_t.__slice__(_size_2874753) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2874543 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2874881i32;
                } else if (__value__ == (2874881i32)) {
                    if (_tr_2874543 == (_sr_2874539)) {
                        _gotoNext = 2874893i32;
                    } else {
                        _gotoNext = 2874958i32;
                    };
                } else if (__value__ == (2874893i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874465i32;
                } else if (__value__ == (2874958i32)) {
                    if ((_tr_2874543 < _sr_2874539 : Bool)) {
                        _gotoNext = 2874969i32;
                    } else {
                        _gotoNext = 2875023i32;
                    };
                } else if (__value__ == (2874969i32)) {
                    {
                        final __tmp__0 = _sr_2874539;
                        final __tmp__1 = _tr_2874543;
                        _tr_2874543 = __tmp__0;
                        _sr_2874539 = __tmp__1;
                    };
                    _gotoNext = 2875023i32;
                } else if (__value__ == (2875023i32)) {
                    if ((_tr_2874543 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2875045i32;
                    } else {
                        _gotoNext = 2875298i32;
                    };
                } else if (__value__ == (2875045i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2874539 : Bool) && (_sr_2874539 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2874543 == ((_sr_2874539 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2875145i32;
                    } else {
                        _gotoNext = 2875168i32;
                    };
                } else if (__value__ == (2875145i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874465i32;
                } else if (__value__ == (2875168i32)) {
                    return false;
                    _gotoNext = 2875298i32;
                } else if (__value__ == (2875298i32)) {
                    _r_2875298 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2874539);
                    var __blank__ = 0i32;
                    _gotoNext = 2875328i32;
                } else if (__value__ == (2875328i32)) {
                    if (((_r_2875298 != _sr_2874539) && (_r_2875298 < _tr_2874543 : Bool) : Bool)) {
                        _gotoNext = 2875350i32;
                    } else {
                        _gotoNext = 2875387i32;
                    };
                } else if (__value__ == (2875350i32)) {
                    _r_2875298 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2875298);
                    _gotoNext = 2875328i32;
                } else if (__value__ == (2875387i32)) {
                    if (_r_2875298 == (_tr_2874543)) {
                        _gotoNext = 2875398i32;
                    } else {
                        _gotoNext = 2875418i32;
                    };
                } else if (__value__ == (2875398i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2874465i32;
                } else if (__value__ == (2875418i32)) {
                    return false;
                    _gotoNext = 2874465i32;
                } else if (__value__ == (2875471i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
