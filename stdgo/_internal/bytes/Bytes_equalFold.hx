package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_3000190:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3000792:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3000713:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3000142:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3001468:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3000923:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3000920:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3000795:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3000709:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3000203:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3000142 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3000150i32;
                } else if (__value__ == (3000150i32)) {
                    if (((_i_3000142 < (_s.length) : Bool) && (_i_3000142 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3000186i32;
                    } else {
                        _gotoNext = 3000575i32;
                    };
                } else if (__value__ == (3000186i32)) {
                    _sr_3000190 = _s[(_i_3000142 : stdgo.GoInt)];
                    _tr_3000203 = _t[(_i_3000142 : stdgo.GoInt)];
                    if (((_sr_3000190 | _tr_3000203 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3000242i32;
                    } else {
                        _gotoNext = 3000286i32;
                    };
                } else if (__value__ == (3000242i32)) {
                    _gotoNext = 3000600i32;
                } else if (__value__ == (3000286i32)) {
                    if (_tr_3000203 == (_sr_3000190)) {
                        _gotoNext = 3000298i32;
                    } else {
                        _gotoNext = 3000363i32;
                    };
                } else if (__value__ == (3000298i32)) {
                    _i_3000142++;
                    _gotoNext = 3000150i32;
                } else if (__value__ == (3000363i32)) {
                    if ((_tr_3000203 < _sr_3000190 : Bool)) {
                        _gotoNext = 3000374i32;
                    } else {
                        _gotoNext = 3000449i32;
                    };
                } else if (__value__ == (3000374i32)) {
                    {
                        final __tmp__0 = _sr_3000190;
                        final __tmp__1 = _tr_3000203;
                        _tr_3000203 = __tmp__0;
                        _sr_3000190 = __tmp__1;
                    };
                    _gotoNext = 3000449i32;
                } else if (__value__ == (3000449i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3000190 : Bool) && (_sr_3000190 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3000203 == ((_sr_3000190 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3000495i32;
                    } else {
                        _gotoNext = 3000515i32;
                    };
                } else if (__value__ == (3000495i32)) {
                    _i_3000142++;
                    _gotoNext = 3000150i32;
                } else if (__value__ == (3000515i32)) {
                    return false;
                    _i_3000142++;
                    _gotoNext = 3000150i32;
                } else if (__value__ == (3000575i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3000600i32;
                } else if (__value__ == (3000600i32)) {
                    _s = (_s.__slice__(_i_3000142) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3000142) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3000635i32;
                } else if (__value__ == (3000635i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3000666i32;
                    } else {
                        _gotoNext = 3001641i32;
                    };
                } else if (__value__ == (3000666i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3000747i32;
                    } else {
                        _gotoNext = 3000787i32;
                    };
                } else if (__value__ == (3000747i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3000709 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3000851i32;
                } else if (__value__ == (3000787i32)) {
                    _gotoNext = 3000787i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3000792 = __tmp__._0;
                        _size_3000795 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3000792;
                        final __tmp__1 = (_s.__slice__(_size_3000795) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3000709 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3000851i32;
                } else if (__value__ == (3000851i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3000875i32;
                    } else {
                        _gotoNext = 3000915i32;
                    };
                } else if (__value__ == (3000875i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3000713 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3001051i32;
                } else if (__value__ == (3000915i32)) {
                    _gotoNext = 3000915i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3000920 = __tmp__._0;
                        _size_3000923 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3000920;
                        final __tmp__1 = (_t.__slice__(_size_3000923) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3000713 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3001051i32;
                } else if (__value__ == (3001051i32)) {
                    if (_tr_3000713 == (_sr_3000709)) {
                        _gotoNext = 3001063i32;
                    } else {
                        _gotoNext = 3001128i32;
                    };
                } else if (__value__ == (3001063i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3000635i32;
                } else if (__value__ == (3001128i32)) {
                    if ((_tr_3000713 < _sr_3000709 : Bool)) {
                        _gotoNext = 3001139i32;
                    } else {
                        _gotoNext = 3001193i32;
                    };
                } else if (__value__ == (3001139i32)) {
                    {
                        final __tmp__0 = _sr_3000709;
                        final __tmp__1 = _tr_3000713;
                        _tr_3000713 = __tmp__0;
                        _sr_3000709 = __tmp__1;
                    };
                    _gotoNext = 3001193i32;
                } else if (__value__ == (3001193i32)) {
                    if ((_tr_3000713 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3001215i32;
                    } else {
                        _gotoNext = 3001468i32;
                    };
                } else if (__value__ == (3001215i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3000709 : Bool) && (_sr_3000709 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3000713 == ((_sr_3000709 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3001315i32;
                    } else {
                        _gotoNext = 3001338i32;
                    };
                } else if (__value__ == (3001315i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3000635i32;
                } else if (__value__ == (3001338i32)) {
                    return false;
                    _gotoNext = 3001468i32;
                } else if (__value__ == (3001468i32)) {
                    _r_3001468 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3000709);
                    var __blank__ = 0i32;
                    _gotoNext = 3001498i32;
                } else if (__value__ == (3001498i32)) {
                    if (((_r_3001468 != _sr_3000709) && (_r_3001468 < _tr_3000713 : Bool) : Bool)) {
                        _gotoNext = 3001520i32;
                    } else {
                        _gotoNext = 3001557i32;
                    };
                } else if (__value__ == (3001520i32)) {
                    _r_3001468 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3001468);
                    _gotoNext = 3001498i32;
                } else if (__value__ == (3001557i32)) {
                    if (_r_3001468 == (_tr_3000713)) {
                        _gotoNext = 3001568i32;
                    } else {
                        _gotoNext = 3001588i32;
                    };
                } else if (__value__ == (3001568i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3000635i32;
                } else if (__value__ == (3001588i32)) {
                    return false;
                    _gotoNext = 3000635i32;
                } else if (__value__ == (3001641i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
