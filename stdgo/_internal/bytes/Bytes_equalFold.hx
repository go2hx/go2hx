package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _tr_2832304:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2833569:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2833021:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2832893:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2832814:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2832810:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2832243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2833024:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2832896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2832291:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2832243 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2832251i32;
                } else if (__value__ == (2832251i32)) {
                    if (((_i_2832243 < (_s.length) : Bool) && (_i_2832243 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2832287i32;
                    } else {
                        _gotoNext = 2832676i32;
                    };
                } else if (__value__ == (2832287i32)) {
                    _sr_2832291 = _s[(_i_2832243 : stdgo.GoInt)];
                    _tr_2832304 = _t[(_i_2832243 : stdgo.GoInt)];
                    if (((_sr_2832291 | _tr_2832304 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2832343i32;
                    } else {
                        _gotoNext = 2832387i32;
                    };
                } else if (__value__ == (2832343i32)) {
                    _gotoNext = 2832701i32;
                } else if (__value__ == (2832387i32)) {
                    if (_tr_2832304 == (_sr_2832291)) {
                        _gotoNext = 2832399i32;
                    } else {
                        _gotoNext = 2832464i32;
                    };
                } else if (__value__ == (2832399i32)) {
                    _i_2832243++;
                    _gotoNext = 2832251i32;
                } else if (__value__ == (2832464i32)) {
                    if ((_tr_2832304 < _sr_2832291 : Bool)) {
                        _gotoNext = 2832475i32;
                    } else {
                        _gotoNext = 2832550i32;
                    };
                } else if (__value__ == (2832475i32)) {
                    {
                        final __tmp__0 = _sr_2832291;
                        final __tmp__1 = _tr_2832304;
                        _tr_2832304 = __tmp__0;
                        _sr_2832291 = __tmp__1;
                    };
                    _gotoNext = 2832550i32;
                } else if (__value__ == (2832550i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2832291 : Bool) && (_sr_2832291 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2832304 == ((_sr_2832291 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2832596i32;
                    } else {
                        _gotoNext = 2832616i32;
                    };
                } else if (__value__ == (2832596i32)) {
                    _i_2832243++;
                    _gotoNext = 2832251i32;
                } else if (__value__ == (2832616i32)) {
                    return false;
                    _i_2832243++;
                    _gotoNext = 2832251i32;
                } else if (__value__ == (2832676i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2832701i32;
                } else if (__value__ == (2832701i32)) {
                    _s = (_s.__slice__(_i_2832243) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2832243) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2832736i32;
                } else if (__value__ == (2832736i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2832767i32;
                    } else {
                        _gotoNext = 2833742i32;
                    };
                } else if (__value__ == (2832767i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2832848i32;
                    } else {
                        _gotoNext = 2832888i32;
                    };
                } else if (__value__ == (2832848i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2832810 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2832952i32;
                } else if (__value__ == (2832888i32)) {
                    _gotoNext = 2832888i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2832893 = @:tmpset0 __tmp__._0;
                        _size_2832896 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2832893;
                        final __tmp__1 = (_s.__slice__(_size_2832896) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2832810 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2832952i32;
                } else if (__value__ == (2832952i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2832976i32;
                    } else {
                        _gotoNext = 2833016i32;
                    };
                } else if (__value__ == (2832976i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2832814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2833152i32;
                } else if (__value__ == (2833016i32)) {
                    _gotoNext = 2833016i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2833021 = @:tmpset0 __tmp__._0;
                        _size_2833024 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2833021;
                        final __tmp__1 = (_t.__slice__(_size_2833024) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2832814 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2833152i32;
                } else if (__value__ == (2833152i32)) {
                    if (_tr_2832814 == (_sr_2832810)) {
                        _gotoNext = 2833164i32;
                    } else {
                        _gotoNext = 2833229i32;
                    };
                } else if (__value__ == (2833164i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832736i32;
                } else if (__value__ == (2833229i32)) {
                    if ((_tr_2832814 < _sr_2832810 : Bool)) {
                        _gotoNext = 2833240i32;
                    } else {
                        _gotoNext = 2833294i32;
                    };
                } else if (__value__ == (2833240i32)) {
                    {
                        final __tmp__0 = _sr_2832810;
                        final __tmp__1 = _tr_2832814;
                        _tr_2832814 = __tmp__0;
                        _sr_2832810 = __tmp__1;
                    };
                    _gotoNext = 2833294i32;
                } else if (__value__ == (2833294i32)) {
                    if ((_tr_2832814 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2833316i32;
                    } else {
                        _gotoNext = 2833569i32;
                    };
                } else if (__value__ == (2833316i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2832810 : Bool) && (_sr_2832810 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2832814 == ((_sr_2832810 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2833416i32;
                    } else {
                        _gotoNext = 2833439i32;
                    };
                } else if (__value__ == (2833416i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832736i32;
                } else if (__value__ == (2833439i32)) {
                    return false;
                    _gotoNext = 2833569i32;
                } else if (__value__ == (2833569i32)) {
                    _r_2833569 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2832810);
                    var __blank__ = 0i32;
                    _gotoNext = 2833599i32;
                } else if (__value__ == (2833599i32)) {
                    if (((_r_2833569 != _sr_2832810) && (_r_2833569 < _tr_2832814 : Bool) : Bool)) {
                        _gotoNext = 2833621i32;
                    } else {
                        _gotoNext = 2833658i32;
                    };
                } else if (__value__ == (2833621i32)) {
                    _r_2833569 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2833569);
                    _gotoNext = 2833599i32;
                } else if (__value__ == (2833658i32)) {
                    if (_r_2833569 == (_tr_2832814)) {
                        _gotoNext = 2833669i32;
                    } else {
                        _gotoNext = 2833689i32;
                    };
                } else if (__value__ == (2833669i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2832736i32;
                } else if (__value__ == (2833689i32)) {
                    return false;
                    _gotoNext = 2832736i32;
                } else if (__value__ == (2833742i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
