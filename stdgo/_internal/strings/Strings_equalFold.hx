package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _values_3033174 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_3032742:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3032681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3033972:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3033419:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_3033174 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3033187 = @:invalid_type null;
        var _sr_3032729:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3033416:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3033337:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3033181:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3032681 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3032689i32;
                } else if (__value__ == (3032689i32)) {
                    if (((_i_3032681 < (_s.length) : Bool) && (_i_3032681 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3032725i32;
                    } else {
                        _gotoNext = 3033114i32;
                    };
                } else if (__value__ == (3032725i32)) {
                    _sr_3032729 = _s[(_i_3032681 : stdgo.GoInt)];
                    _tr_3032742 = _t[(_i_3032681 : stdgo.GoInt)];
                    if (((_sr_3032729 | _tr_3032742 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3032781i32;
                    } else {
                        _gotoNext = 3032825i32;
                    };
                } else if (__value__ == (3032781i32)) {
                    _gotoNext = 3033139i32;
                } else if (__value__ == (3032825i32)) {
                    if (_tr_3032742 == (_sr_3032729)) {
                        _gotoNext = 3032837i32;
                    } else {
                        _gotoNext = 3032902i32;
                    };
                } else if (__value__ == (3032837i32)) {
                    _i_3032681++;
                    _gotoNext = 3032689i32;
                } else if (__value__ == (3032902i32)) {
                    if ((_tr_3032742 < _sr_3032729 : Bool)) {
                        _gotoNext = 3032913i32;
                    } else {
                        _gotoNext = 3032988i32;
                    };
                } else if (__value__ == (3032913i32)) {
                    {
                        final __tmp__0 = _sr_3032729;
                        final __tmp__1 = _tr_3032742;
                        _tr_3032742 = __tmp__0;
                        _sr_3032729 = __tmp__1;
                    };
                    _gotoNext = 3032988i32;
                } else if (__value__ == (3032988i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3032729 : Bool) && (_sr_3032729 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3032742 == ((_sr_3032729 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3033034i32;
                    } else {
                        _gotoNext = 3033054i32;
                    };
                } else if (__value__ == (3033034i32)) {
                    _i_3032681++;
                    _gotoNext = 3032689i32;
                } else if (__value__ == (3033054i32)) {
                    return false;
                    _i_3032681++;
                    _gotoNext = 3032689i32;
                } else if (__value__ == (3033114i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3033139i32;
                } else if (__value__ == (3033139i32)) {
                    _s = (_s.__slice__(_i_3032681) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_3032681) : stdgo.GoString)?.__copy__();
                    _keys_3033174 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3033174 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3033174 = (_keys_3033174.__append__(_key));
                        _values_3033174 = (_values_3033174.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3033174.length)) {
                        _gotoNext = 3034105i32;
                    } else {
                        _gotoNext = 3034179i32;
                    };
                } else if (__value__ == (3033195i32)) {
                    _sr_3033181 = _values_3033174[@:invalid_index_invalid_type _i_3033187];
                    var __blank__ = _keys_3033174[@:invalid_index_invalid_type _i_3033187];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3033264i32;
                    } else {
                        _gotoNext = 3033333i32;
                    };
                } else if (__value__ == (3033264i32)) {
                    return false;
                    _gotoNext = 3033333i32;
                } else if (__value__ == (3033333i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3033371i32;
                    } else {
                        _gotoNext = 3033411i32;
                    };
                } else if (__value__ == (3033371i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_3033337 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3033555i32;
                } else if (__value__ == (3033411i32)) {
                    _gotoNext = 3033411i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_3033416 = @:tmpset0 __tmp__._0;
                        _size_3033419 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3033416;
                        final __tmp__1 = (_t.__slice__(_size_3033419) : stdgo.GoString)?.__copy__();
                        _tr_3033337 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3033555i32;
                } else if (__value__ == (3033555i32)) {
                    if (_tr_3033337 == (_sr_3033181)) {
                        _gotoNext = 3033567i32;
                    } else {
                        _gotoNext = 3033632i32;
                    };
                } else if (__value__ == (3033567i32)) {
                    _i_3033187++;
                    _gotoNext = 3034106i32;
                } else if (__value__ == (3033632i32)) {
                    if ((_tr_3033337 < _sr_3033181 : Bool)) {
                        _gotoNext = 3033643i32;
                    } else {
                        _gotoNext = 3033697i32;
                    };
                } else if (__value__ == (3033643i32)) {
                    {
                        final __tmp__0 = _sr_3033181;
                        final __tmp__1 = _tr_3033337;
                        _tr_3033337 = __tmp__0;
                        _sr_3033181 = __tmp__1;
                    };
                    _gotoNext = 3033697i32;
                } else if (__value__ == (3033697i32)) {
                    if ((_tr_3033337 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3033719i32;
                    } else {
                        _gotoNext = 3033972i32;
                    };
                } else if (__value__ == (3033719i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3033181 : Bool) && (_sr_3033181 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3033337 == ((_sr_3033181 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3033819i32;
                    } else {
                        _gotoNext = 3033842i32;
                    };
                } else if (__value__ == (3033819i32)) {
                    _i_3033187++;
                    _gotoNext = 3034106i32;
                } else if (__value__ == (3033842i32)) {
                    return false;
                    _gotoNext = 3033972i32;
                } else if (__value__ == (3033972i32)) {
                    _r_3033972 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_3033181);
                    var __blank__ = 0i32;
                    _gotoNext = 3034002i32;
                } else if (__value__ == (3034002i32)) {
                    if (((_r_3033972 != _sr_3033181) && (_r_3033972 < _tr_3033337 : Bool) : Bool)) {
                        _gotoNext = 3034024i32;
                    } else {
                        _gotoNext = 3034061i32;
                    };
                } else if (__value__ == (3034024i32)) {
                    _r_3033972 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_3033972);
                    _gotoNext = 3034002i32;
                } else if (__value__ == (3034061i32)) {
                    if (_r_3033972 == (_tr_3033337)) {
                        _gotoNext = 3034072i32;
                    } else {
                        _gotoNext = 3034092i32;
                    };
                } else if (__value__ == (3034072i32)) {
                    _i_3033187++;
                    _gotoNext = 3034106i32;
                } else if (__value__ == (3034092i32)) {
                    return false;
                    _i_3033187++;
                    _gotoNext = 3034106i32;
                } else if (__value__ == (3034105i32)) {
                    _i_3033187 = 0i32;
                    _gotoNext = 3034106i32;
                } else if (__value__ == (3034106i32)) {
                    if (_i_3033187 < (_keys_3033174.length)) {
                        _gotoNext = 3033195i32;
                    } else {
                        _gotoNext = 3034179i32;
                    };
                } else if (__value__ == (3034179i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
