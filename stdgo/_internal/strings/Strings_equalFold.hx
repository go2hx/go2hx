package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _tr_2982930:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2982774:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2983565:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2982335:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2982322:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2982274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2983012:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2983009:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2982767 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2982767 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2982780 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2982274 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2982282i32;
                } else if (__value__ == (2982282i32)) {
                    if (((_i_2982274 < (_s.length) : Bool) && (_i_2982274 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2982318i32;
                    } else {
                        _gotoNext = 2982707i32;
                    };
                } else if (__value__ == (2982318i32)) {
                    _sr_2982322 = _s[(_i_2982274 : stdgo.GoInt)];
                    _tr_2982335 = _t[(_i_2982274 : stdgo.GoInt)];
                    if (((_sr_2982322 | _tr_2982335 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2982374i32;
                    } else {
                        _gotoNext = 2982418i32;
                    };
                } else if (__value__ == (2982374i32)) {
                    _gotoNext = 2982732i32;
                } else if (__value__ == (2982418i32)) {
                    if (_tr_2982335 == (_sr_2982322)) {
                        _gotoNext = 2982430i32;
                    } else {
                        _gotoNext = 2982495i32;
                    };
                } else if (__value__ == (2982430i32)) {
                    _i_2982274++;
                    _gotoNext = 2982282i32;
                } else if (__value__ == (2982495i32)) {
                    if ((_tr_2982335 < _sr_2982322 : Bool)) {
                        _gotoNext = 2982506i32;
                    } else {
                        _gotoNext = 2982581i32;
                    };
                } else if (__value__ == (2982506i32)) {
                    {
                        final __tmp__0 = _sr_2982322;
                        final __tmp__1 = _tr_2982335;
                        _tr_2982335 = __tmp__0;
                        _sr_2982322 = __tmp__1;
                    };
                    _gotoNext = 2982581i32;
                } else if (__value__ == (2982581i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2982322 : Bool) && (_sr_2982322 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2982335 == ((_sr_2982322 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2982627i32;
                    } else {
                        _gotoNext = 2982647i32;
                    };
                } else if (__value__ == (2982627i32)) {
                    _i_2982274++;
                    _gotoNext = 2982282i32;
                } else if (__value__ == (2982647i32)) {
                    return false;
                    _i_2982274++;
                    _gotoNext = 2982282i32;
                } else if (__value__ == (2982707i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2982732i32;
                } else if (__value__ == (2982732i32)) {
                    _s = (_s.__slice__(_i_2982274) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2982274) : stdgo.GoString)?.__copy__();
                    _keys_2982767 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2982767 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2982767 = (_keys_2982767.__append__(_key));
                        _values_2982767 = (_values_2982767.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2982767.length)) {
                        _gotoNext = 2983698i32;
                    } else {
                        _gotoNext = 2983772i32;
                    };
                } else if (__value__ == (2982788i32)) {
                    _sr_2982774 = _values_2982767[@:invalid_index_invalid_type _i_2982780];
                    var __blank__ = _keys_2982767[@:invalid_index_invalid_type _i_2982780];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2982857i32;
                    } else {
                        _gotoNext = 2982926i32;
                    };
                } else if (__value__ == (2982857i32)) {
                    return false;
                    _gotoNext = 2982926i32;
                } else if (__value__ == (2982926i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2982964i32;
                    } else {
                        _gotoNext = 2983004i32;
                    };
                } else if (__value__ == (2982964i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2982930 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2983148i32;
                } else if (__value__ == (2983004i32)) {
                    _gotoNext = 2983004i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2983009 = @:tmpset0 __tmp__._0;
                        _size_2983012 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2983009;
                        final __tmp__1 = (_t.__slice__(_size_2983012) : stdgo.GoString)?.__copy__();
                        _tr_2982930 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2983148i32;
                } else if (__value__ == (2983148i32)) {
                    if (_tr_2982930 == (_sr_2982774)) {
                        _gotoNext = 2983160i32;
                    } else {
                        _gotoNext = 2983225i32;
                    };
                } else if (__value__ == (2983160i32)) {
                    _i_2982780++;
                    _gotoNext = 2983699i32;
                } else if (__value__ == (2983225i32)) {
                    if ((_tr_2982930 < _sr_2982774 : Bool)) {
                        _gotoNext = 2983236i32;
                    } else {
                        _gotoNext = 2983290i32;
                    };
                } else if (__value__ == (2983236i32)) {
                    {
                        final __tmp__0 = _sr_2982774;
                        final __tmp__1 = _tr_2982930;
                        _tr_2982930 = __tmp__0;
                        _sr_2982774 = __tmp__1;
                    };
                    _gotoNext = 2983290i32;
                } else if (__value__ == (2983290i32)) {
                    if ((_tr_2982930 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2983312i32;
                    } else {
                        _gotoNext = 2983565i32;
                    };
                } else if (__value__ == (2983312i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2982774 : Bool) && (_sr_2982774 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2982930 == ((_sr_2982774 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2983412i32;
                    } else {
                        _gotoNext = 2983435i32;
                    };
                } else if (__value__ == (2983412i32)) {
                    _i_2982780++;
                    _gotoNext = 2983699i32;
                } else if (__value__ == (2983435i32)) {
                    return false;
                    _gotoNext = 2983565i32;
                } else if (__value__ == (2983565i32)) {
                    _r_2983565 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2982774);
                    var __blank__ = 0i32;
                    _gotoNext = 2983595i32;
                } else if (__value__ == (2983595i32)) {
                    if (((_r_2983565 != _sr_2982774) && (_r_2983565 < _tr_2982930 : Bool) : Bool)) {
                        _gotoNext = 2983617i32;
                    } else {
                        _gotoNext = 2983654i32;
                    };
                } else if (__value__ == (2983617i32)) {
                    _r_2983565 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2983565);
                    _gotoNext = 2983595i32;
                } else if (__value__ == (2983654i32)) {
                    if (_r_2983565 == (_tr_2982930)) {
                        _gotoNext = 2983665i32;
                    } else {
                        _gotoNext = 2983685i32;
                    };
                } else if (__value__ == (2983665i32)) {
                    _i_2982780++;
                    _gotoNext = 2983699i32;
                } else if (__value__ == (2983685i32)) {
                    return false;
                    _i_2982780++;
                    _gotoNext = 2983699i32;
                } else if (__value__ == (2983698i32)) {
                    _i_2982780 = 0i32;
                    _gotoNext = 2983699i32;
                } else if (__value__ == (2983699i32)) {
                    if (_i_2982780 < (_keys_2982767.length)) {
                        _gotoNext = 2982788i32;
                    } else {
                        _gotoNext = 2983772i32;
                    };
                } else if (__value__ == (2983772i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
