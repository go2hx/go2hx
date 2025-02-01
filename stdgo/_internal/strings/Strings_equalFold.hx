package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2935961:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2935719 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2935226:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2936517:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2935964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2935732 = @:invalid_type null;
        var _tr_2935287:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2935274:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2935882:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2935726:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2935719 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2935226 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2935234i32;
                } else if (__value__ == (2935234i32)) {
                    if (((_i_2935226 < (_s.length) : Bool) && (_i_2935226 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2935270i32;
                    } else {
                        _gotoNext = 2935659i32;
                    };
                } else if (__value__ == (2935270i32)) {
                    _sr_2935274 = _s[(_i_2935226 : stdgo.GoInt)];
                    _tr_2935287 = _t[(_i_2935226 : stdgo.GoInt)];
                    if (((_sr_2935274 | _tr_2935287 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935326i32;
                    } else {
                        _gotoNext = 2935370i32;
                    };
                } else if (__value__ == (2935326i32)) {
                    _gotoNext = 2935684i32;
                } else if (__value__ == (2935370i32)) {
                    if (_tr_2935287 == (_sr_2935274)) {
                        _gotoNext = 2935382i32;
                    } else {
                        _gotoNext = 2935447i32;
                    };
                } else if (__value__ == (2935382i32)) {
                    _i_2935226++;
                    _gotoNext = 2935234i32;
                } else if (__value__ == (2935447i32)) {
                    if ((_tr_2935287 < _sr_2935274 : Bool)) {
                        _gotoNext = 2935458i32;
                    } else {
                        _gotoNext = 2935533i32;
                    };
                } else if (__value__ == (2935458i32)) {
                    {
                        final __tmp__0 = _sr_2935274;
                        final __tmp__1 = _tr_2935287;
                        _tr_2935287 = __tmp__0;
                        _sr_2935274 = __tmp__1;
                    };
                    _gotoNext = 2935533i32;
                } else if (__value__ == (2935533i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2935274 : Bool) && (_sr_2935274 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2935287 == ((_sr_2935274 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2935579i32;
                    } else {
                        _gotoNext = 2935599i32;
                    };
                } else if (__value__ == (2935579i32)) {
                    _i_2935226++;
                    _gotoNext = 2935234i32;
                } else if (__value__ == (2935599i32)) {
                    return false;
                    _i_2935226++;
                    _gotoNext = 2935234i32;
                } else if (__value__ == (2935659i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2935684i32;
                } else if (__value__ == (2935684i32)) {
                    _s = (_s.__slice__(_i_2935226) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2935226) : stdgo.GoString)?.__copy__();
                    _keys_2935719 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2935719 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2935719 = (_keys_2935719.__append__(_key));
                        _values_2935719 = (_values_2935719.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2935719.length)) {
                        _gotoNext = 2936650i32;
                    } else {
                        _gotoNext = 2936724i32;
                    };
                } else if (__value__ == (2935740i32)) {
                    _sr_2935726 = _values_2935719[@:invalid_index_invalid_type _i_2935732];
                    var __blank__ = _keys_2935719[@:invalid_index_invalid_type _i_2935732];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2935809i32;
                    } else {
                        _gotoNext = 2935878i32;
                    };
                } else if (__value__ == (2935809i32)) {
                    return false;
                    _gotoNext = 2935878i32;
                } else if (__value__ == (2935878i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935916i32;
                    } else {
                        _gotoNext = 2935956i32;
                    };
                } else if (__value__ == (2935916i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2935882 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2936100i32;
                } else if (__value__ == (2935956i32)) {
                    _gotoNext = 2935956i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2935961 = @:tmpset0 __tmp__._0;
                        _size_2935964 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2935961;
                        final __tmp__1 = (_t.__slice__(_size_2935964) : stdgo.GoString)?.__copy__();
                        _tr_2935882 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2936100i32;
                } else if (__value__ == (2936100i32)) {
                    if (_tr_2935882 == (_sr_2935726)) {
                        _gotoNext = 2936112i32;
                    } else {
                        _gotoNext = 2936177i32;
                    };
                } else if (__value__ == (2936112i32)) {
                    _i_2935732++;
                    _gotoNext = 2936651i32;
                } else if (__value__ == (2936177i32)) {
                    if ((_tr_2935882 < _sr_2935726 : Bool)) {
                        _gotoNext = 2936188i32;
                    } else {
                        _gotoNext = 2936242i32;
                    };
                } else if (__value__ == (2936188i32)) {
                    {
                        final __tmp__0 = _sr_2935726;
                        final __tmp__1 = _tr_2935882;
                        _tr_2935882 = __tmp__0;
                        _sr_2935726 = __tmp__1;
                    };
                    _gotoNext = 2936242i32;
                } else if (__value__ == (2936242i32)) {
                    if ((_tr_2935882 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2936264i32;
                    } else {
                        _gotoNext = 2936517i32;
                    };
                } else if (__value__ == (2936264i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2935726 : Bool) && (_sr_2935726 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2935882 == ((_sr_2935726 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2936364i32;
                    } else {
                        _gotoNext = 2936387i32;
                    };
                } else if (__value__ == (2936364i32)) {
                    _i_2935732++;
                    _gotoNext = 2936651i32;
                } else if (__value__ == (2936387i32)) {
                    return false;
                    _gotoNext = 2936517i32;
                } else if (__value__ == (2936517i32)) {
                    _r_2936517 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2935726);
                    var __blank__ = 0i32;
                    _gotoNext = 2936547i32;
                } else if (__value__ == (2936547i32)) {
                    if (((_r_2936517 != _sr_2935726) && (_r_2936517 < _tr_2935882 : Bool) : Bool)) {
                        _gotoNext = 2936569i32;
                    } else {
                        _gotoNext = 2936606i32;
                    };
                } else if (__value__ == (2936569i32)) {
                    _r_2936517 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2936517);
                    _gotoNext = 2936547i32;
                } else if (__value__ == (2936606i32)) {
                    if (_r_2936517 == (_tr_2935882)) {
                        _gotoNext = 2936617i32;
                    } else {
                        _gotoNext = 2936637i32;
                    };
                } else if (__value__ == (2936617i32)) {
                    _i_2935732++;
                    _gotoNext = 2936651i32;
                } else if (__value__ == (2936637i32)) {
                    return false;
                    _i_2935732++;
                    _gotoNext = 2936651i32;
                } else if (__value__ == (2936650i32)) {
                    _i_2935732 = 0i32;
                    _gotoNext = 2936651i32;
                } else if (__value__ == (2936651i32)) {
                    if (_i_2935732 < (_keys_2935719.length)) {
                        _gotoNext = 2935740i32;
                    } else {
                        _gotoNext = 2936724i32;
                    };
                } else if (__value__ == (2936724i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
