package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_3052829 = @:invalid_type null;
        var _tr_3052384:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3052323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3053614:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3053058:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3052979:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3052816 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_3052816 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _size_3053061:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_3052823:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3052371:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3052323 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3052331i32;
                } else if (__value__ == (3052331i32)) {
                    if (((_i_3052323 < (_s.length) : Bool) && (_i_3052323 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3052367i32;
                    } else {
                        _gotoNext = 3052756i32;
                    };
                } else if (__value__ == (3052367i32)) {
                    _sr_3052371 = _s[(_i_3052323 : stdgo.GoInt)];
                    _tr_3052384 = _t[(_i_3052323 : stdgo.GoInt)];
                    if (((_sr_3052371 | _tr_3052384 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3052423i32;
                    } else {
                        _gotoNext = 3052467i32;
                    };
                } else if (__value__ == (3052423i32)) {
                    _gotoNext = 3052781i32;
                } else if (__value__ == (3052467i32)) {
                    if (_tr_3052384 == (_sr_3052371)) {
                        _gotoNext = 3052479i32;
                    } else {
                        _gotoNext = 3052544i32;
                    };
                } else if (__value__ == (3052479i32)) {
                    _i_3052323++;
                    _gotoNext = 3052331i32;
                } else if (__value__ == (3052544i32)) {
                    if ((_tr_3052384 < _sr_3052371 : Bool)) {
                        _gotoNext = 3052555i32;
                    } else {
                        _gotoNext = 3052630i32;
                    };
                } else if (__value__ == (3052555i32)) {
                    {
                        final __tmp__0 = _sr_3052371;
                        final __tmp__1 = _tr_3052384;
                        _tr_3052384 = __tmp__0;
                        _sr_3052371 = __tmp__1;
                    };
                    _gotoNext = 3052630i32;
                } else if (__value__ == (3052630i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3052371 : Bool) && (_sr_3052371 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3052384 == ((_sr_3052371 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3052676i32;
                    } else {
                        _gotoNext = 3052696i32;
                    };
                } else if (__value__ == (3052676i32)) {
                    _i_3052323++;
                    _gotoNext = 3052331i32;
                } else if (__value__ == (3052696i32)) {
                    return false;
                    _i_3052323++;
                    _gotoNext = 3052331i32;
                } else if (__value__ == (3052756i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3052781i32;
                } else if (__value__ == (3052781i32)) {
                    _s = (_s.__slice__(_i_3052323) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3052323) : stdgo.GoString)?.__copy__();
                    _keys_3052816 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3052816 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3052816 = (_keys_3052816.__append__(_key));
                        _values_3052816 = (_values_3052816.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3052816.length)) {
                        _gotoNext = 3053747i32;
                    } else {
                        _gotoNext = 3053821i32;
                    };
                } else if (__value__ == (3052837i32)) {
                    _sr_3052823 = _values_3052816[@:invalid_index_invalid_type _i_3052829];
                    var __blank__ = _keys_3052816[@:invalid_index_invalid_type _i_3052829];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3052906i32;
                    } else {
                        _gotoNext = 3052975i32;
                    };
                } else if (__value__ == (3052906i32)) {
                    return false;
                    _gotoNext = 3052975i32;
                } else if (__value__ == (3052975i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3053013i32;
                    } else {
                        _gotoNext = 3053053i32;
                    };
                } else if (__value__ == (3053013i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3052979 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3053197i32;
                } else if (__value__ == (3053053i32)) {
                    _gotoNext = 3053053i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3053058 = @:tmpset0 __tmp__._0;
                        _size_3053061 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3053058;
                        final __tmp__1 = (_t.__slice__(_size_3053061) : stdgo.GoString)?.__copy__();
                        _tr_3052979 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3053197i32;
                } else if (__value__ == (3053197i32)) {
                    if (_tr_3052979 == (_sr_3052823)) {
                        _gotoNext = 3053209i32;
                    } else {
                        _gotoNext = 3053274i32;
                    };
                } else if (__value__ == (3053209i32)) {
                    _i_3052829++;
                    _gotoNext = 3053748i32;
                } else if (__value__ == (3053274i32)) {
                    if ((_tr_3052979 < _sr_3052823 : Bool)) {
                        _gotoNext = 3053285i32;
                    } else {
                        _gotoNext = 3053339i32;
                    };
                } else if (__value__ == (3053285i32)) {
                    {
                        final __tmp__0 = _sr_3052823;
                        final __tmp__1 = _tr_3052979;
                        _tr_3052979 = __tmp__0;
                        _sr_3052823 = __tmp__1;
                    };
                    _gotoNext = 3053339i32;
                } else if (__value__ == (3053339i32)) {
                    if ((_tr_3052979 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3053361i32;
                    } else {
                        _gotoNext = 3053614i32;
                    };
                } else if (__value__ == (3053361i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3052823 : Bool) && (_sr_3052823 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3052979 == ((_sr_3052823 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3053461i32;
                    } else {
                        _gotoNext = 3053484i32;
                    };
                } else if (__value__ == (3053461i32)) {
                    _i_3052829++;
                    _gotoNext = 3053748i32;
                } else if (__value__ == (3053484i32)) {
                    return false;
                    _gotoNext = 3053614i32;
                } else if (__value__ == (3053614i32)) {
                    _r_3053614 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3052823);
                    var __blank__ = 0i32;
                    _gotoNext = 3053644i32;
                } else if (__value__ == (3053644i32)) {
                    if (((_r_3053614 != _sr_3052823) && (_r_3053614 < _tr_3052979 : Bool) : Bool)) {
                        _gotoNext = 3053666i32;
                    } else {
                        _gotoNext = 3053703i32;
                    };
                } else if (__value__ == (3053666i32)) {
                    _r_3053614 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3053614);
                    _gotoNext = 3053644i32;
                } else if (__value__ == (3053703i32)) {
                    if (_r_3053614 == (_tr_3052979)) {
                        _gotoNext = 3053714i32;
                    } else {
                        _gotoNext = 3053734i32;
                    };
                } else if (__value__ == (3053714i32)) {
                    _i_3052829++;
                    _gotoNext = 3053748i32;
                } else if (__value__ == (3053734i32)) {
                    return false;
                    _i_3052829++;
                    _gotoNext = 3053748i32;
                } else if (__value__ == (3053747i32)) {
                    _i_3052829 = 0i32;
                    _gotoNext = 3053748i32;
                } else if (__value__ == (3053748i32)) {
                    if (_i_3052829 < (_keys_3052816.length)) {
                        _gotoNext = 3052837i32;
                    } else {
                        _gotoNext = 3053821i32;
                    };
                } else if (__value__ == (3053821i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
