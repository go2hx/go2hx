package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _sr_2890529:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2891262:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2891259:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2891134:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2890481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2891807:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2891131:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2891052:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2891048:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2890542:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2890481 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2890489i32;
                } else if (__value__ == (2890489i32)) {
                    if (((_i_2890481 < (_s.length) : Bool) && (_i_2890481 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2890525i32;
                    } else {
                        _gotoNext = 2890914i32;
                    };
                } else if (__value__ == (2890525i32)) {
                    _sr_2890529 = _s[(_i_2890481 : stdgo.GoInt)];
                    _tr_2890542 = _t[(_i_2890481 : stdgo.GoInt)];
                    if (((_sr_2890529 | _tr_2890542 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2890581i32;
                    } else {
                        _gotoNext = 2890625i32;
                    };
                } else if (__value__ == (2890581i32)) {
                    _gotoNext = 2890939i32;
                } else if (__value__ == (2890625i32)) {
                    if (_tr_2890542 == (_sr_2890529)) {
                        _gotoNext = 2890637i32;
                    } else {
                        _gotoNext = 2890702i32;
                    };
                } else if (__value__ == (2890637i32)) {
                    _i_2890481++;
                    _gotoNext = 2890489i32;
                } else if (__value__ == (2890702i32)) {
                    if ((_tr_2890542 < _sr_2890529 : Bool)) {
                        _gotoNext = 2890713i32;
                    } else {
                        _gotoNext = 2890788i32;
                    };
                } else if (__value__ == (2890713i32)) {
                    {
                        final __tmp__0 = _sr_2890529;
                        final __tmp__1 = _tr_2890542;
                        _tr_2890542 = __tmp__0;
                        _sr_2890529 = __tmp__1;
                    };
                    _gotoNext = 2890788i32;
                } else if (__value__ == (2890788i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2890529 : Bool) && (_sr_2890529 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2890542 == ((_sr_2890529 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2890834i32;
                    } else {
                        _gotoNext = 2890854i32;
                    };
                } else if (__value__ == (2890834i32)) {
                    _i_2890481++;
                    _gotoNext = 2890489i32;
                } else if (__value__ == (2890854i32)) {
                    return false;
                    _i_2890481++;
                    _gotoNext = 2890489i32;
                } else if (__value__ == (2890914i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2890939i32;
                } else if (__value__ == (2890939i32)) {
                    _s = (_s.__slice__(_i_2890481) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2890481) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2890974i32;
                } else if (__value__ == (2890974i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2891005i32;
                    } else {
                        _gotoNext = 2891980i32;
                    };
                } else if (__value__ == (2891005i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2891086i32;
                    } else {
                        _gotoNext = 2891126i32;
                    };
                } else if (__value__ == (2891086i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2891048 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2891190i32;
                } else if (__value__ == (2891126i32)) {
                    _gotoNext = 2891126i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2891131 = @:tmpset0 __tmp__._0;
                        _size_2891134 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2891131;
                        final __tmp__1 = (_s.__slice__(_size_2891134) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2891048 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2891190i32;
                } else if (__value__ == (2891190i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2891214i32;
                    } else {
                        _gotoNext = 2891254i32;
                    };
                } else if (__value__ == (2891214i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2891052 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2891390i32;
                } else if (__value__ == (2891254i32)) {
                    _gotoNext = 2891254i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2891259 = @:tmpset0 __tmp__._0;
                        _size_2891262 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2891259;
                        final __tmp__1 = (_t.__slice__(_size_2891262) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2891052 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2891390i32;
                } else if (__value__ == (2891390i32)) {
                    if (_tr_2891052 == (_sr_2891048)) {
                        _gotoNext = 2891402i32;
                    } else {
                        _gotoNext = 2891467i32;
                    };
                } else if (__value__ == (2891402i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890974i32;
                } else if (__value__ == (2891467i32)) {
                    if ((_tr_2891052 < _sr_2891048 : Bool)) {
                        _gotoNext = 2891478i32;
                    } else {
                        _gotoNext = 2891532i32;
                    };
                } else if (__value__ == (2891478i32)) {
                    {
                        final __tmp__0 = _sr_2891048;
                        final __tmp__1 = _tr_2891052;
                        _tr_2891052 = __tmp__0;
                        _sr_2891048 = __tmp__1;
                    };
                    _gotoNext = 2891532i32;
                } else if (__value__ == (2891532i32)) {
                    if ((_tr_2891052 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2891554i32;
                    } else {
                        _gotoNext = 2891807i32;
                    };
                } else if (__value__ == (2891554i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2891048 : Bool) && (_sr_2891048 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2891052 == ((_sr_2891048 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2891654i32;
                    } else {
                        _gotoNext = 2891677i32;
                    };
                } else if (__value__ == (2891654i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890974i32;
                } else if (__value__ == (2891677i32)) {
                    return false;
                    _gotoNext = 2891807i32;
                } else if (__value__ == (2891807i32)) {
                    _r_2891807 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2891048);
                    var __blank__ = 0i32;
                    _gotoNext = 2891837i32;
                } else if (__value__ == (2891837i32)) {
                    if (((_r_2891807 != _sr_2891048) && (_r_2891807 < _tr_2891052 : Bool) : Bool)) {
                        _gotoNext = 2891859i32;
                    } else {
                        _gotoNext = 2891896i32;
                    };
                } else if (__value__ == (2891859i32)) {
                    _r_2891807 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2891807);
                    _gotoNext = 2891837i32;
                } else if (__value__ == (2891896i32)) {
                    if (_r_2891807 == (_tr_2891052)) {
                        _gotoNext = 2891907i32;
                    } else {
                        _gotoNext = 2891927i32;
                    };
                } else if (__value__ == (2891907i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2890974i32;
                } else if (__value__ == (2891927i32)) {
                    return false;
                    _gotoNext = 2890974i32;
                } else if (__value__ == (2891980i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
