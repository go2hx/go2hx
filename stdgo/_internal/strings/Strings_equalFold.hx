package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _keys_2876061 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2876074 = @:invalid_type null;
        var _r_2876859:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2876303:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2875616:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2875568:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2876306:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2876224:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2876068:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2876061 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2875629:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2875568 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2875576i32;
                } else if (__value__ == (2875576i32)) {
                    if (((_i_2875568 < (_s.length) : Bool) && (_i_2875568 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2875612i32;
                    } else {
                        _gotoNext = 2876001i32;
                    };
                } else if (__value__ == (2875612i32)) {
                    _sr_2875616 = _s[(_i_2875568 : stdgo.GoInt)];
                    _tr_2875629 = _t[(_i_2875568 : stdgo.GoInt)];
                    if (((_sr_2875616 | _tr_2875629 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2875668i32;
                    } else {
                        _gotoNext = 2875712i32;
                    };
                } else if (__value__ == (2875668i32)) {
                    _gotoNext = 2876026i32;
                } else if (__value__ == (2875712i32)) {
                    if (_tr_2875629 == (_sr_2875616)) {
                        _gotoNext = 2875724i32;
                    } else {
                        _gotoNext = 2875789i32;
                    };
                } else if (__value__ == (2875724i32)) {
                    _i_2875568++;
                    _gotoNext = 2875576i32;
                } else if (__value__ == (2875789i32)) {
                    if ((_tr_2875629 < _sr_2875616 : Bool)) {
                        _gotoNext = 2875800i32;
                    } else {
                        _gotoNext = 2875875i32;
                    };
                } else if (__value__ == (2875800i32)) {
                    {
                        final __tmp__0 = _sr_2875616;
                        final __tmp__1 = _tr_2875629;
                        _tr_2875629 = __tmp__0;
                        _sr_2875616 = __tmp__1;
                    };
                    _gotoNext = 2875875i32;
                } else if (__value__ == (2875875i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2875616 : Bool) && (_sr_2875616 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2875629 == ((_sr_2875616 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2875921i32;
                    } else {
                        _gotoNext = 2875941i32;
                    };
                } else if (__value__ == (2875921i32)) {
                    _i_2875568++;
                    _gotoNext = 2875576i32;
                } else if (__value__ == (2875941i32)) {
                    return false;
                    _i_2875568++;
                    _gotoNext = 2875576i32;
                } else if (__value__ == (2876001i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2876026i32;
                } else if (__value__ == (2876026i32)) {
                    _s = (_s.__slice__(_i_2875568) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2875568) : stdgo.GoString)?.__copy__();
                    _keys_2876061 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2876061 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2876061 = (_keys_2876061.__append__(_key));
                        _values_2876061 = (_values_2876061.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2876061.length)) {
                        _gotoNext = 2876992i32;
                    } else {
                        _gotoNext = 2877066i32;
                    };
                } else if (__value__ == (2876082i32)) {
                    _sr_2876068 = _values_2876061[@:invalid_index_invalid_type _i_2876074];
                    var __blank__ = _keys_2876061[@:invalid_index_invalid_type _i_2876074];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2876151i32;
                    } else {
                        _gotoNext = 2876220i32;
                    };
                } else if (__value__ == (2876151i32)) {
                    return false;
                    _gotoNext = 2876220i32;
                } else if (__value__ == (2876220i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2876258i32;
                    } else {
                        _gotoNext = 2876298i32;
                    };
                } else if (__value__ == (2876258i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2876224 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2876442i32;
                } else if (__value__ == (2876298i32)) {
                    _gotoNext = 2876298i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2876303 = @:tmpset0 __tmp__._0;
                        _size_2876306 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2876303;
                        final __tmp__1 = (_t.__slice__(_size_2876306) : stdgo.GoString)?.__copy__();
                        _tr_2876224 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2876442i32;
                } else if (__value__ == (2876442i32)) {
                    if (_tr_2876224 == (_sr_2876068)) {
                        _gotoNext = 2876454i32;
                    } else {
                        _gotoNext = 2876519i32;
                    };
                } else if (__value__ == (2876454i32)) {
                    _i_2876074++;
                    _gotoNext = 2876993i32;
                } else if (__value__ == (2876519i32)) {
                    if ((_tr_2876224 < _sr_2876068 : Bool)) {
                        _gotoNext = 2876530i32;
                    } else {
                        _gotoNext = 2876584i32;
                    };
                } else if (__value__ == (2876530i32)) {
                    {
                        final __tmp__0 = _sr_2876068;
                        final __tmp__1 = _tr_2876224;
                        _tr_2876224 = __tmp__0;
                        _sr_2876068 = __tmp__1;
                    };
                    _gotoNext = 2876584i32;
                } else if (__value__ == (2876584i32)) {
                    if ((_tr_2876224 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2876606i32;
                    } else {
                        _gotoNext = 2876859i32;
                    };
                } else if (__value__ == (2876606i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2876068 : Bool) && (_sr_2876068 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2876224 == ((_sr_2876068 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2876706i32;
                    } else {
                        _gotoNext = 2876729i32;
                    };
                } else if (__value__ == (2876706i32)) {
                    _i_2876074++;
                    _gotoNext = 2876993i32;
                } else if (__value__ == (2876729i32)) {
                    return false;
                    _gotoNext = 2876859i32;
                } else if (__value__ == (2876859i32)) {
                    _r_2876859 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2876068);
                    var __blank__ = 0i32;
                    _gotoNext = 2876889i32;
                } else if (__value__ == (2876889i32)) {
                    if (((_r_2876859 != _sr_2876068) && (_r_2876859 < _tr_2876224 : Bool) : Bool)) {
                        _gotoNext = 2876911i32;
                    } else {
                        _gotoNext = 2876948i32;
                    };
                } else if (__value__ == (2876911i32)) {
                    _r_2876859 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2876859);
                    _gotoNext = 2876889i32;
                } else if (__value__ == (2876948i32)) {
                    if (_r_2876859 == (_tr_2876224)) {
                        _gotoNext = 2876959i32;
                    } else {
                        _gotoNext = 2876979i32;
                    };
                } else if (__value__ == (2876959i32)) {
                    _i_2876074++;
                    _gotoNext = 2876993i32;
                } else if (__value__ == (2876979i32)) {
                    return false;
                    _i_2876074++;
                    _gotoNext = 2876993i32;
                } else if (__value__ == (2876992i32)) {
                    _i_2876074 = 0i32;
                    _gotoNext = 2876993i32;
                } else if (__value__ == (2876993i32)) {
                    if (_i_2876074 < (_keys_2876061.length)) {
                        _gotoNext = 2876082i32;
                    } else {
                        _gotoNext = 2877066i32;
                    };
                } else if (__value__ == (2877066i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
