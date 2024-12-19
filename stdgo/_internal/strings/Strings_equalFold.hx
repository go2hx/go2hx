package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2841944:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2841937 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2841492:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2841444:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2842735:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2842100:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2842179:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2841937 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2841950 = @:invalid_type null;
        var _tr_2841505:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2842182:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2841444 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2841452i32;
                } else if (__value__ == (2841452i32)) {
                    if (((_i_2841444 < (_s.length) : Bool) && (_i_2841444 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2841488i32;
                    } else {
                        _gotoNext = 2841877i32;
                    };
                } else if (__value__ == (2841488i32)) {
                    _sr_2841492 = _s[(_i_2841444 : stdgo.GoInt)];
                    _tr_2841505 = _t[(_i_2841444 : stdgo.GoInt)];
                    if (((_sr_2841492 | _tr_2841505 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2841544i32;
                    } else {
                        _gotoNext = 2841588i32;
                    };
                } else if (__value__ == (2841544i32)) {
                    _gotoNext = 2841902i32;
                } else if (__value__ == (2841588i32)) {
                    if (_tr_2841505 == (_sr_2841492)) {
                        _gotoNext = 2841600i32;
                    } else {
                        _gotoNext = 2841665i32;
                    };
                } else if (__value__ == (2841600i32)) {
                    _i_2841444++;
                    _gotoNext = 2841452i32;
                } else if (__value__ == (2841665i32)) {
                    if ((_tr_2841505 < _sr_2841492 : Bool)) {
                        _gotoNext = 2841676i32;
                    } else {
                        _gotoNext = 2841751i32;
                    };
                } else if (__value__ == (2841676i32)) {
                    {
                        final __tmp__0 = _sr_2841492;
                        final __tmp__1 = _tr_2841505;
                        _tr_2841505 = __tmp__0;
                        _sr_2841492 = __tmp__1;
                    };
                    _gotoNext = 2841751i32;
                } else if (__value__ == (2841751i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2841492 : Bool) && (_sr_2841492 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2841505 == ((_sr_2841492 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2841797i32;
                    } else {
                        _gotoNext = 2841817i32;
                    };
                } else if (__value__ == (2841797i32)) {
                    _i_2841444++;
                    _gotoNext = 2841452i32;
                } else if (__value__ == (2841817i32)) {
                    return false;
                    _i_2841444++;
                    _gotoNext = 2841452i32;
                } else if (__value__ == (2841877i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2841902i32;
                } else if (__value__ == (2841902i32)) {
                    _s = (_s.__slice__(_i_2841444) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2841444) : stdgo.GoString)?.__copy__();
                    _keys_2841937 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2841937 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2841937 = (_keys_2841937.__append__(_key));
                        _values_2841937 = (_values_2841937.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2841937.length)) {
                        _gotoNext = 2842868i32;
                    } else {
                        _gotoNext = 2842942i32;
                    };
                } else if (__value__ == (2841958i32)) {
                    _sr_2841944 = _values_2841937[@:invalid_index_invalid_type _i_2841950];
                    var __blank__ = _keys_2841937[@:invalid_index_invalid_type _i_2841950];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2842027i32;
                    } else {
                        _gotoNext = 2842096i32;
                    };
                } else if (__value__ == (2842027i32)) {
                    return false;
                    _gotoNext = 2842096i32;
                } else if (__value__ == (2842096i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2842134i32;
                    } else {
                        _gotoNext = 2842174i32;
                    };
                } else if (__value__ == (2842134i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2842100 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2842318i32;
                } else if (__value__ == (2842174i32)) {
                    _gotoNext = 2842174i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2842179 = __tmp__._0;
                        _size_2842182 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2842179;
                        final __tmp__1 = (_t.__slice__(_size_2842182) : stdgo.GoString)?.__copy__();
                        _tr_2842100 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2842318i32;
                } else if (__value__ == (2842318i32)) {
                    if (_tr_2842100 == (_sr_2841944)) {
                        _gotoNext = 2842330i32;
                    } else {
                        _gotoNext = 2842395i32;
                    };
                } else if (__value__ == (2842330i32)) {
                    _i_2841950++;
                    _gotoNext = 2842869i32;
                } else if (__value__ == (2842395i32)) {
                    if ((_tr_2842100 < _sr_2841944 : Bool)) {
                        _gotoNext = 2842406i32;
                    } else {
                        _gotoNext = 2842460i32;
                    };
                } else if (__value__ == (2842406i32)) {
                    {
                        final __tmp__0 = _sr_2841944;
                        final __tmp__1 = _tr_2842100;
                        _tr_2842100 = __tmp__0;
                        _sr_2841944 = __tmp__1;
                    };
                    _gotoNext = 2842460i32;
                } else if (__value__ == (2842460i32)) {
                    if ((_tr_2842100 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2842482i32;
                    } else {
                        _gotoNext = 2842735i32;
                    };
                } else if (__value__ == (2842482i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2841944 : Bool) && (_sr_2841944 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2842100 == ((_sr_2841944 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2842582i32;
                    } else {
                        _gotoNext = 2842605i32;
                    };
                } else if (__value__ == (2842582i32)) {
                    _i_2841950++;
                    _gotoNext = 2842869i32;
                } else if (__value__ == (2842605i32)) {
                    return false;
                    _gotoNext = 2842735i32;
                } else if (__value__ == (2842735i32)) {
                    _r_2842735 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2841944);
                    var __blank__ = 0i32;
                    _gotoNext = 2842765i32;
                } else if (__value__ == (2842765i32)) {
                    if (((_r_2842735 != _sr_2841944) && (_r_2842735 < _tr_2842100 : Bool) : Bool)) {
                        _gotoNext = 2842787i32;
                    } else {
                        _gotoNext = 2842824i32;
                    };
                } else if (__value__ == (2842787i32)) {
                    _r_2842735 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2842735);
                    _gotoNext = 2842765i32;
                } else if (__value__ == (2842824i32)) {
                    if (_r_2842735 == (_tr_2842100)) {
                        _gotoNext = 2842835i32;
                    } else {
                        _gotoNext = 2842855i32;
                    };
                } else if (__value__ == (2842835i32)) {
                    _i_2841950++;
                    _gotoNext = 2842869i32;
                } else if (__value__ == (2842855i32)) {
                    return false;
                    _i_2841950++;
                    _gotoNext = 2842869i32;
                } else if (__value__ == (2842868i32)) {
                    _i_2841950 = 0i32;
                    _gotoNext = 2842869i32;
                } else if (__value__ == (2842869i32)) {
                    if (_i_2841950 < (_keys_2841937.length)) {
                        _gotoNext = 2841958i32;
                    } else {
                        _gotoNext = 2842942i32;
                    };
                } else if (__value__ == (2842942i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
