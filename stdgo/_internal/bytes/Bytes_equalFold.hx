package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _size_2928780:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2928777:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2928652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2928649:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2928570:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2928060:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2928047:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2929325:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2928566:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2927999:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2927999 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2928007i32;
                } else if (__value__ == (2928007i32)) {
                    if (((_i_2927999 < (_s.length) : Bool) && (_i_2927999 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2928043i32;
                    } else {
                        _gotoNext = 2928432i32;
                    };
                } else if (__value__ == (2928043i32)) {
                    _sr_2928047 = _s[(_i_2927999 : stdgo.GoInt)];
                    _tr_2928060 = _t[(_i_2927999 : stdgo.GoInt)];
                    if (((_sr_2928047 | _tr_2928060 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2928099i32;
                    } else {
                        _gotoNext = 2928143i32;
                    };
                } else if (__value__ == (2928099i32)) {
                    _gotoNext = 2928457i32;
                } else if (__value__ == (2928143i32)) {
                    if (_tr_2928060 == (_sr_2928047)) {
                        _gotoNext = 2928155i32;
                    } else {
                        _gotoNext = 2928220i32;
                    };
                } else if (__value__ == (2928155i32)) {
                    _i_2927999++;
                    _gotoNext = 2928007i32;
                } else if (__value__ == (2928220i32)) {
                    if ((_tr_2928060 < _sr_2928047 : Bool)) {
                        _gotoNext = 2928231i32;
                    } else {
                        _gotoNext = 2928306i32;
                    };
                } else if (__value__ == (2928231i32)) {
                    {
                        final __tmp__0 = _sr_2928047;
                        final __tmp__1 = _tr_2928060;
                        _tr_2928060 = __tmp__0;
                        _sr_2928047 = __tmp__1;
                    };
                    _gotoNext = 2928306i32;
                } else if (__value__ == (2928306i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2928047 : Bool) && (_sr_2928047 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2928060 == ((_sr_2928047 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2928352i32;
                    } else {
                        _gotoNext = 2928372i32;
                    };
                } else if (__value__ == (2928352i32)) {
                    _i_2927999++;
                    _gotoNext = 2928007i32;
                } else if (__value__ == (2928372i32)) {
                    return false;
                    _i_2927999++;
                    _gotoNext = 2928007i32;
                } else if (__value__ == (2928432i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2928457i32;
                } else if (__value__ == (2928457i32)) {
                    _s = (_s.__slice__(_i_2927999) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2927999) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2928492i32;
                } else if (__value__ == (2928492i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2928523i32;
                    } else {
                        _gotoNext = 2929498i32;
                    };
                } else if (__value__ == (2928523i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2928604i32;
                    } else {
                        _gotoNext = 2928644i32;
                    };
                } else if (__value__ == (2928604i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2928566 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2928708i32;
                } else if (__value__ == (2928644i32)) {
                    _gotoNext = 2928644i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2928649 = __tmp__._0;
                        _size_2928652 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2928649;
                        final __tmp__1 = (_s.__slice__(_size_2928652) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2928566 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2928708i32;
                } else if (__value__ == (2928708i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2928732i32;
                    } else {
                        _gotoNext = 2928772i32;
                    };
                } else if (__value__ == (2928732i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2928570 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2928908i32;
                } else if (__value__ == (2928772i32)) {
                    _gotoNext = 2928772i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2928777 = __tmp__._0;
                        _size_2928780 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2928777;
                        final __tmp__1 = (_t.__slice__(_size_2928780) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2928570 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2928908i32;
                } else if (__value__ == (2928908i32)) {
                    if (_tr_2928570 == (_sr_2928566)) {
                        _gotoNext = 2928920i32;
                    } else {
                        _gotoNext = 2928985i32;
                    };
                } else if (__value__ == (2928920i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2928492i32;
                } else if (__value__ == (2928985i32)) {
                    if ((_tr_2928570 < _sr_2928566 : Bool)) {
                        _gotoNext = 2928996i32;
                    } else {
                        _gotoNext = 2929050i32;
                    };
                } else if (__value__ == (2928996i32)) {
                    {
                        final __tmp__0 = _sr_2928566;
                        final __tmp__1 = _tr_2928570;
                        _tr_2928570 = __tmp__0;
                        _sr_2928566 = __tmp__1;
                    };
                    _gotoNext = 2929050i32;
                } else if (__value__ == (2929050i32)) {
                    if ((_tr_2928570 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2929072i32;
                    } else {
                        _gotoNext = 2929325i32;
                    };
                } else if (__value__ == (2929072i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2928566 : Bool) && (_sr_2928566 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2928570 == ((_sr_2928566 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2929172i32;
                    } else {
                        _gotoNext = 2929195i32;
                    };
                } else if (__value__ == (2929172i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2928492i32;
                } else if (__value__ == (2929195i32)) {
                    return false;
                    _gotoNext = 2929325i32;
                } else if (__value__ == (2929325i32)) {
                    _r_2929325 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2928566);
                    var __blank__ = 0i32;
                    _gotoNext = 2929355i32;
                } else if (__value__ == (2929355i32)) {
                    if (((_r_2929325 != _sr_2928566) && (_r_2929325 < _tr_2928570 : Bool) : Bool)) {
                        _gotoNext = 2929377i32;
                    } else {
                        _gotoNext = 2929414i32;
                    };
                } else if (__value__ == (2929377i32)) {
                    _r_2929325 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2929325);
                    _gotoNext = 2929355i32;
                } else if (__value__ == (2929414i32)) {
                    if (_r_2929325 == (_tr_2928570)) {
                        _gotoNext = 2929425i32;
                    } else {
                        _gotoNext = 2929445i32;
                    };
                } else if (__value__ == (2929425i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2928492i32;
                } else if (__value__ == (2929445i32)) {
                    return false;
                    _gotoNext = 2928492i32;
                } else if (__value__ == (2929498i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
