package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2823226:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2822591:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2822441 = @:invalid_type null;
        var _i_2821935:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2822673:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2822670:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2822435:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2822428 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2822428 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2821996:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2821983:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2821935 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2821943i32;
                } else if (__value__ == (2821943i32)) {
                    if (((_i_2821935 < (_s.length) : Bool) && (_i_2821935 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2821979i32;
                    } else {
                        _gotoNext = 2822368i32;
                    };
                } else if (__value__ == (2821979i32)) {
                    _sr_2821983 = _s[(_i_2821935 : stdgo.GoInt)];
                    _tr_2821996 = _t[(_i_2821935 : stdgo.GoInt)];
                    if (((_sr_2821983 | _tr_2821996 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2822035i32;
                    } else {
                        _gotoNext = 2822079i32;
                    };
                } else if (__value__ == (2822035i32)) {
                    _gotoNext = 2822393i32;
                } else if (__value__ == (2822079i32)) {
                    if (_tr_2821996 == (_sr_2821983)) {
                        _gotoNext = 2822091i32;
                    } else {
                        _gotoNext = 2822156i32;
                    };
                } else if (__value__ == (2822091i32)) {
                    _i_2821935++;
                    _gotoNext = 2821943i32;
                } else if (__value__ == (2822156i32)) {
                    if ((_tr_2821996 < _sr_2821983 : Bool)) {
                        _gotoNext = 2822167i32;
                    } else {
                        _gotoNext = 2822242i32;
                    };
                } else if (__value__ == (2822167i32)) {
                    {
                        final __tmp__0 = _sr_2821983;
                        final __tmp__1 = _tr_2821996;
                        _tr_2821996 = __tmp__0;
                        _sr_2821983 = __tmp__1;
                    };
                    _gotoNext = 2822242i32;
                } else if (__value__ == (2822242i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2821983 : Bool) && (_sr_2821983 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2821996 == ((_sr_2821983 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2822288i32;
                    } else {
                        _gotoNext = 2822308i32;
                    };
                } else if (__value__ == (2822288i32)) {
                    _i_2821935++;
                    _gotoNext = 2821943i32;
                } else if (__value__ == (2822308i32)) {
                    return false;
                    _i_2821935++;
                    _gotoNext = 2821943i32;
                } else if (__value__ == (2822368i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2822393i32;
                } else if (__value__ == (2822393i32)) {
                    _s = (_s.__slice__(_i_2821935) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2821935) : stdgo.GoString)?.__copy__();
                    _keys_2822428 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2822428 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2822428 = (_keys_2822428.__append__(_key));
                        _values_2822428 = (_values_2822428.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2822428.length)) {
                        _gotoNext = 2823359i32;
                    } else {
                        _gotoNext = 2823433i32;
                    };
                } else if (__value__ == (2822449i32)) {
                    _sr_2822435 = _values_2822428[@:invalid_index_invalid_type _i_2822441];
                    var __blank__ = _keys_2822428[@:invalid_index_invalid_type _i_2822441];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2822518i32;
                    } else {
                        _gotoNext = 2822587i32;
                    };
                } else if (__value__ == (2822518i32)) {
                    return false;
                    _gotoNext = 2822587i32;
                } else if (__value__ == (2822587i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2822625i32;
                    } else {
                        _gotoNext = 2822665i32;
                    };
                } else if (__value__ == (2822625i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2822591 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2822809i32;
                } else if (__value__ == (2822665i32)) {
                    _gotoNext = 2822665i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2822670 = @:tmpset0 __tmp__._0;
                        _size_2822673 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2822670;
                        final __tmp__1 = (_t.__slice__(_size_2822673) : stdgo.GoString)?.__copy__();
                        _tr_2822591 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2822809i32;
                } else if (__value__ == (2822809i32)) {
                    if (_tr_2822591 == (_sr_2822435)) {
                        _gotoNext = 2822821i32;
                    } else {
                        _gotoNext = 2822886i32;
                    };
                } else if (__value__ == (2822821i32)) {
                    _i_2822441++;
                    _gotoNext = 2823360i32;
                } else if (__value__ == (2822886i32)) {
                    if ((_tr_2822591 < _sr_2822435 : Bool)) {
                        _gotoNext = 2822897i32;
                    } else {
                        _gotoNext = 2822951i32;
                    };
                } else if (__value__ == (2822897i32)) {
                    {
                        final __tmp__0 = _sr_2822435;
                        final __tmp__1 = _tr_2822591;
                        _tr_2822591 = __tmp__0;
                        _sr_2822435 = __tmp__1;
                    };
                    _gotoNext = 2822951i32;
                } else if (__value__ == (2822951i32)) {
                    if ((_tr_2822591 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2822973i32;
                    } else {
                        _gotoNext = 2823226i32;
                    };
                } else if (__value__ == (2822973i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2822435 : Bool) && (_sr_2822435 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2822591 == ((_sr_2822435 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2823073i32;
                    } else {
                        _gotoNext = 2823096i32;
                    };
                } else if (__value__ == (2823073i32)) {
                    _i_2822441++;
                    _gotoNext = 2823360i32;
                } else if (__value__ == (2823096i32)) {
                    return false;
                    _gotoNext = 2823226i32;
                } else if (__value__ == (2823226i32)) {
                    _r_2823226 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2822435);
                    var __blank__ = 0i32;
                    _gotoNext = 2823256i32;
                } else if (__value__ == (2823256i32)) {
                    if (((_r_2823226 != _sr_2822435) && (_r_2823226 < _tr_2822591 : Bool) : Bool)) {
                        _gotoNext = 2823278i32;
                    } else {
                        _gotoNext = 2823315i32;
                    };
                } else if (__value__ == (2823278i32)) {
                    _r_2823226 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2823226);
                    _gotoNext = 2823256i32;
                } else if (__value__ == (2823315i32)) {
                    if (_r_2823226 == (_tr_2822591)) {
                        _gotoNext = 2823326i32;
                    } else {
                        _gotoNext = 2823346i32;
                    };
                } else if (__value__ == (2823326i32)) {
                    _i_2822441++;
                    _gotoNext = 2823360i32;
                } else if (__value__ == (2823346i32)) {
                    return false;
                    _i_2822441++;
                    _gotoNext = 2823360i32;
                } else if (__value__ == (2823359i32)) {
                    _i_2822441 = 0i32;
                    _gotoNext = 2823360i32;
                } else if (__value__ == (2823360i32)) {
                    if (_i_2822441 < (_keys_2822428.length)) {
                        _gotoNext = 2822449i32;
                    } else {
                        _gotoNext = 2823433i32;
                    };
                } else if (__value__ == (2823433i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
