package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_2988334:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2988209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2988127:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2987617:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2988882:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2988337:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2988206:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2988123:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2987604:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2987556:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2987556 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2987564i32;
                } else if (__value__ == (2987564i32)) {
                    if (((_i_2987556 < (_s.length) : Bool) && (_i_2987556 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2987600i32;
                    } else {
                        _gotoNext = 2987989i32;
                    };
                } else if (__value__ == (2987600i32)) {
                    _sr_2987604 = _s[(_i_2987556 : stdgo.GoInt)];
                    _tr_2987617 = _t[(_i_2987556 : stdgo.GoInt)];
                    if (((_sr_2987604 | _tr_2987617 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2987656i32;
                    } else {
                        _gotoNext = 2987700i32;
                    };
                } else if (__value__ == (2987656i32)) {
                    _gotoNext = 2988014i32;
                } else if (__value__ == (2987700i32)) {
                    if (_tr_2987617 == (_sr_2987604)) {
                        _gotoNext = 2987712i32;
                    } else {
                        _gotoNext = 2987777i32;
                    };
                } else if (__value__ == (2987712i32)) {
                    _i_2987556++;
                    _gotoNext = 2987564i32;
                } else if (__value__ == (2987777i32)) {
                    if ((_tr_2987617 < _sr_2987604 : Bool)) {
                        _gotoNext = 2987788i32;
                    } else {
                        _gotoNext = 2987863i32;
                    };
                } else if (__value__ == (2987788i32)) {
                    {
                        final __tmp__0 = _sr_2987604;
                        final __tmp__1 = _tr_2987617;
                        _tr_2987617 = __tmp__0;
                        _sr_2987604 = __tmp__1;
                    };
                    _gotoNext = 2987863i32;
                } else if (__value__ == (2987863i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2987604 : Bool) && (_sr_2987604 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2987617 == ((_sr_2987604 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2987909i32;
                    } else {
                        _gotoNext = 2987929i32;
                    };
                } else if (__value__ == (2987909i32)) {
                    _i_2987556++;
                    _gotoNext = 2987564i32;
                } else if (__value__ == (2987929i32)) {
                    return false;
                    _i_2987556++;
                    _gotoNext = 2987564i32;
                } else if (__value__ == (2987989i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2988014i32;
                } else if (__value__ == (2988014i32)) {
                    _s = (_s.__slice__(_i_2987556) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_2987556) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 2988049i32;
                } else if (__value__ == (2988049i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2988080i32;
                    } else {
                        _gotoNext = 2989055i32;
                    };
                } else if (__value__ == (2988080i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988161i32;
                    } else {
                        _gotoNext = 2988201i32;
                    };
                } else if (__value__ == (2988161i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988123 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 2988265i32;
                } else if (__value__ == (2988201i32)) {
                    _gotoNext = 2988201i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                        _r_2988206 = @:tmpset0 __tmp__._0;
                        _size_2988209 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2988206;
                        final __tmp__1 = (_s.__slice__(_size_2988209) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_2988123 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2988265i32;
                } else if (__value__ == (2988265i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2988289i32;
                    } else {
                        _gotoNext = 2988329i32;
                    };
                } else if (__value__ == (2988289i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988127 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2988465i32;
                } else if (__value__ == (2988329i32)) {
                    _gotoNext = 2988329i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_t);
                        _r_2988334 = @:tmpset0 __tmp__._0;
                        _size_2988337 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2988334;
                        final __tmp__1 = (_t.__slice__(_size_2988337) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_2988127 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2988465i32;
                } else if (__value__ == (2988465i32)) {
                    if (_tr_2988127 == (_sr_2988123)) {
                        _gotoNext = 2988477i32;
                    } else {
                        _gotoNext = 2988542i32;
                    };
                } else if (__value__ == (2988477i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988049i32;
                } else if (__value__ == (2988542i32)) {
                    if ((_tr_2988127 < _sr_2988123 : Bool)) {
                        _gotoNext = 2988553i32;
                    } else {
                        _gotoNext = 2988607i32;
                    };
                } else if (__value__ == (2988553i32)) {
                    {
                        final __tmp__0 = _sr_2988123;
                        final __tmp__1 = _tr_2988127;
                        _tr_2988127 = __tmp__0;
                        _sr_2988123 = __tmp__1;
                    };
                    _gotoNext = 2988607i32;
                } else if (__value__ == (2988607i32)) {
                    if ((_tr_2988127 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2988629i32;
                    } else {
                        _gotoNext = 2988882i32;
                    };
                } else if (__value__ == (2988629i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2988123 : Bool) && (_sr_2988123 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2988127 == ((_sr_2988123 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2988729i32;
                    } else {
                        _gotoNext = 2988752i32;
                    };
                } else if (__value__ == (2988729i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988049i32;
                } else if (__value__ == (2988752i32)) {
                    return false;
                    _gotoNext = 2988882i32;
                } else if (__value__ == (2988882i32)) {
                    _r_2988882 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2988123);
                    var __blank__ = 0i32;
                    _gotoNext = 2988912i32;
                } else if (__value__ == (2988912i32)) {
                    if (((_r_2988882 != _sr_2988123) && (_r_2988882 < _tr_2988127 : Bool) : Bool)) {
                        _gotoNext = 2988934i32;
                    } else {
                        _gotoNext = 2988971i32;
                    };
                } else if (__value__ == (2988934i32)) {
                    _r_2988882 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2988882);
                    _gotoNext = 2988912i32;
                } else if (__value__ == (2988971i32)) {
                    if (_r_2988882 == (_tr_2988127)) {
                        _gotoNext = 2988982i32;
                    } else {
                        _gotoNext = 2989002i32;
                    };
                } else if (__value__ == (2988982i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2988049i32;
                } else if (__value__ == (2989002i32)) {
                    return false;
                    _gotoNext = 2988049i32;
                } else if (__value__ == (2989055i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
