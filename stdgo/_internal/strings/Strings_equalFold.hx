package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2840839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2841574:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2841495:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2841345 = @:invalid_type null;
        var _tr_2840900:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2840887:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2842130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2841577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2841339:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2841332 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2841332 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2840839 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2840847i32;
                } else if (__value__ == (2840847i32)) {
                    if (((_i_2840839 < (_s.length) : Bool) && (_i_2840839 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2840883i32;
                    } else {
                        _gotoNext = 2841272i32;
                    };
                } else if (__value__ == (2840883i32)) {
                    _sr_2840887 = _s[(_i_2840839 : stdgo.GoInt)];
                    _tr_2840900 = _t[(_i_2840839 : stdgo.GoInt)];
                    if (((_sr_2840887 | _tr_2840900 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2840939i32;
                    } else {
                        _gotoNext = 2840983i32;
                    };
                } else if (__value__ == (2840939i32)) {
                    _gotoNext = 2841297i32;
                } else if (__value__ == (2840983i32)) {
                    if (_tr_2840900 == (_sr_2840887)) {
                        _gotoNext = 2840995i32;
                    } else {
                        _gotoNext = 2841060i32;
                    };
                } else if (__value__ == (2840995i32)) {
                    _i_2840839++;
                    _gotoNext = 2840847i32;
                } else if (__value__ == (2841060i32)) {
                    if ((_tr_2840900 < _sr_2840887 : Bool)) {
                        _gotoNext = 2841071i32;
                    } else {
                        _gotoNext = 2841146i32;
                    };
                } else if (__value__ == (2841071i32)) {
                    {
                        final __tmp__0 = _sr_2840887;
                        final __tmp__1 = _tr_2840900;
                        _tr_2840900 = __tmp__0;
                        _sr_2840887 = __tmp__1;
                    };
                    _gotoNext = 2841146i32;
                } else if (__value__ == (2841146i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2840887 : Bool) && (_sr_2840887 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2840900 == ((_sr_2840887 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2841192i32;
                    } else {
                        _gotoNext = 2841212i32;
                    };
                } else if (__value__ == (2841192i32)) {
                    _i_2840839++;
                    _gotoNext = 2840847i32;
                } else if (__value__ == (2841212i32)) {
                    return false;
                    _i_2840839++;
                    _gotoNext = 2840847i32;
                } else if (__value__ == (2841272i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2841297i32;
                } else if (__value__ == (2841297i32)) {
                    _s = (_s.__slice__(_i_2840839) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2840839) : stdgo.GoString)?.__copy__();
                    _keys_2841332 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2841332 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2841332 = (_keys_2841332.__append__(_key));
                        _values_2841332 = (_values_2841332.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2841332.length)) {
                        _gotoNext = 2842263i32;
                    } else {
                        _gotoNext = 2842337i32;
                    };
                } else if (__value__ == (2841353i32)) {
                    _sr_2841339 = _values_2841332[@:invalid_index_invalid_type _i_2841345];
                    var __blank__ = _keys_2841332[@:invalid_index_invalid_type _i_2841345];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2841422i32;
                    } else {
                        _gotoNext = 2841491i32;
                    };
                } else if (__value__ == (2841422i32)) {
                    return false;
                    _gotoNext = 2841491i32;
                } else if (__value__ == (2841491i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2841529i32;
                    } else {
                        _gotoNext = 2841569i32;
                    };
                } else if (__value__ == (2841529i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2841495 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2841713i32;
                } else if (__value__ == (2841569i32)) {
                    _gotoNext = 2841569i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2841574 = @:tmpset0 __tmp__._0;
                        _size_2841577 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2841574;
                        final __tmp__1 = (_t.__slice__(_size_2841577) : stdgo.GoString)?.__copy__();
                        _tr_2841495 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2841713i32;
                } else if (__value__ == (2841713i32)) {
                    if (_tr_2841495 == (_sr_2841339)) {
                        _gotoNext = 2841725i32;
                    } else {
                        _gotoNext = 2841790i32;
                    };
                } else if (__value__ == (2841725i32)) {
                    _i_2841345++;
                    _gotoNext = 2842264i32;
                } else if (__value__ == (2841790i32)) {
                    if ((_tr_2841495 < _sr_2841339 : Bool)) {
                        _gotoNext = 2841801i32;
                    } else {
                        _gotoNext = 2841855i32;
                    };
                } else if (__value__ == (2841801i32)) {
                    {
                        final __tmp__0 = _sr_2841339;
                        final __tmp__1 = _tr_2841495;
                        _tr_2841495 = __tmp__0;
                        _sr_2841339 = __tmp__1;
                    };
                    _gotoNext = 2841855i32;
                } else if (__value__ == (2841855i32)) {
                    if ((_tr_2841495 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2841877i32;
                    } else {
                        _gotoNext = 2842130i32;
                    };
                } else if (__value__ == (2841877i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2841339 : Bool) && (_sr_2841339 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2841495 == ((_sr_2841339 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2841977i32;
                    } else {
                        _gotoNext = 2842000i32;
                    };
                } else if (__value__ == (2841977i32)) {
                    _i_2841345++;
                    _gotoNext = 2842264i32;
                } else if (__value__ == (2842000i32)) {
                    return false;
                    _gotoNext = 2842130i32;
                } else if (__value__ == (2842130i32)) {
                    _r_2842130 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2841339);
                    var __blank__ = 0i32;
                    _gotoNext = 2842160i32;
                } else if (__value__ == (2842160i32)) {
                    if (((_r_2842130 != _sr_2841339) && (_r_2842130 < _tr_2841495 : Bool) : Bool)) {
                        _gotoNext = 2842182i32;
                    } else {
                        _gotoNext = 2842219i32;
                    };
                } else if (__value__ == (2842182i32)) {
                    _r_2842130 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2842130);
                    _gotoNext = 2842160i32;
                } else if (__value__ == (2842219i32)) {
                    if (_r_2842130 == (_tr_2841495)) {
                        _gotoNext = 2842230i32;
                    } else {
                        _gotoNext = 2842250i32;
                    };
                } else if (__value__ == (2842230i32)) {
                    _i_2841345++;
                    _gotoNext = 2842264i32;
                } else if (__value__ == (2842250i32)) {
                    return false;
                    _i_2841345++;
                    _gotoNext = 2842264i32;
                } else if (__value__ == (2842263i32)) {
                    _i_2841345 = 0i32;
                    _gotoNext = 2842264i32;
                } else if (__value__ == (2842264i32)) {
                    if (_i_2841345 < (_keys_2841332.length)) {
                        _gotoNext = 2841353i32;
                    } else {
                        _gotoNext = 2842337i32;
                    };
                } else if (__value__ == (2842337i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
