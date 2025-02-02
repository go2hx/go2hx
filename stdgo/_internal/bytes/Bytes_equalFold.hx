package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3020878:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3020333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3020123:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3020119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3019613:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3020330:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3020205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3020202:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3019600:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3019552:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3019552 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3019560i32;
                } else if (__value__ == (3019560i32)) {
                    if (((_i_3019552 < (_s.length) : Bool) && (_i_3019552 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3019596i32;
                    } else {
                        _gotoNext = 3019985i32;
                    };
                } else if (__value__ == (3019596i32)) {
                    _sr_3019600 = _s[(_i_3019552 : stdgo.GoInt)];
                    _tr_3019613 = _t[(_i_3019552 : stdgo.GoInt)];
                    if (((_sr_3019600 | _tr_3019613 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3019652i32;
                    } else {
                        _gotoNext = 3019696i32;
                    };
                } else if (__value__ == (3019652i32)) {
                    _gotoNext = 3020010i32;
                } else if (__value__ == (3019696i32)) {
                    if (_tr_3019613 == (_sr_3019600)) {
                        _gotoNext = 3019708i32;
                    } else {
                        _gotoNext = 3019773i32;
                    };
                } else if (__value__ == (3019708i32)) {
                    _i_3019552++;
                    _gotoNext = 3019560i32;
                } else if (__value__ == (3019773i32)) {
                    if ((_tr_3019613 < _sr_3019600 : Bool)) {
                        _gotoNext = 3019784i32;
                    } else {
                        _gotoNext = 3019859i32;
                    };
                } else if (__value__ == (3019784i32)) {
                    {
                        final __tmp__0 = _sr_3019600;
                        final __tmp__1 = _tr_3019613;
                        _tr_3019613 = __tmp__0;
                        _sr_3019600 = __tmp__1;
                    };
                    _gotoNext = 3019859i32;
                } else if (__value__ == (3019859i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3019600 : Bool) && (_sr_3019600 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3019613 == ((_sr_3019600 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3019905i32;
                    } else {
                        _gotoNext = 3019925i32;
                    };
                } else if (__value__ == (3019905i32)) {
                    _i_3019552++;
                    _gotoNext = 3019560i32;
                } else if (__value__ == (3019925i32)) {
                    return false;
                    _i_3019552++;
                    _gotoNext = 3019560i32;
                } else if (__value__ == (3019985i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3020010i32;
                } else if (__value__ == (3020010i32)) {
                    _s = (_s.__slice__(_i_3019552) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3019552) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3020045i32;
                } else if (__value__ == (3020045i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3020076i32;
                    } else {
                        _gotoNext = 3021051i32;
                    };
                } else if (__value__ == (3020076i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020157i32;
                    } else {
                        _gotoNext = 3020197i32;
                    };
                } else if (__value__ == (3020157i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020119 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3020261i32;
                } else if (__value__ == (3020197i32)) {
                    _gotoNext = 3020197i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_3020202 = @:tmpset0 __tmp__._0;
                        _size_3020205 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3020202;
                        final __tmp__1 = (_s.__slice__(_size_3020205) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3020119 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3020261i32;
                } else if (__value__ == (3020261i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3020285i32;
                    } else {
                        _gotoNext = 3020325i32;
                    };
                } else if (__value__ == (3020285i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020123 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3020461i32;
                } else if (__value__ == (3020325i32)) {
                    _gotoNext = 3020325i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_3020330 = @:tmpset0 __tmp__._0;
                        _size_3020333 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3020330;
                        final __tmp__1 = (_t.__slice__(_size_3020333) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3020123 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3020461i32;
                } else if (__value__ == (3020461i32)) {
                    if (_tr_3020123 == (_sr_3020119)) {
                        _gotoNext = 3020473i32;
                    } else {
                        _gotoNext = 3020538i32;
                    };
                } else if (__value__ == (3020473i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020045i32;
                } else if (__value__ == (3020538i32)) {
                    if ((_tr_3020123 < _sr_3020119 : Bool)) {
                        _gotoNext = 3020549i32;
                    } else {
                        _gotoNext = 3020603i32;
                    };
                } else if (__value__ == (3020549i32)) {
                    {
                        final __tmp__0 = _sr_3020119;
                        final __tmp__1 = _tr_3020123;
                        _tr_3020123 = __tmp__0;
                        _sr_3020119 = __tmp__1;
                    };
                    _gotoNext = 3020603i32;
                } else if (__value__ == (3020603i32)) {
                    if ((_tr_3020123 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3020625i32;
                    } else {
                        _gotoNext = 3020878i32;
                    };
                } else if (__value__ == (3020625i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3020119 : Bool) && (_sr_3020119 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3020123 == ((_sr_3020119 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3020725i32;
                    } else {
                        _gotoNext = 3020748i32;
                    };
                } else if (__value__ == (3020725i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020045i32;
                } else if (__value__ == (3020748i32)) {
                    return false;
                    _gotoNext = 3020878i32;
                } else if (__value__ == (3020878i32)) {
                    _r_3020878 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3020119);
                    var __blank__ = 0i32;
                    _gotoNext = 3020908i32;
                } else if (__value__ == (3020908i32)) {
                    if (((_r_3020878 != _sr_3020119) && (_r_3020878 < _tr_3020123 : Bool) : Bool)) {
                        _gotoNext = 3020930i32;
                    } else {
                        _gotoNext = 3020967i32;
                    };
                } else if (__value__ == (3020930i32)) {
                    _r_3020878 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3020878);
                    _gotoNext = 3020908i32;
                } else if (__value__ == (3020967i32)) {
                    if (_r_3020878 == (_tr_3020123)) {
                        _gotoNext = 3020978i32;
                    } else {
                        _gotoNext = 3020998i32;
                    };
                } else if (__value__ == (3020978i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3020045i32;
                } else if (__value__ == (3020998i32)) {
                    return false;
                    _gotoNext = 3020045i32;
                } else if (__value__ == (3021051i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
