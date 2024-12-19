package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2882163 = @:invalid_type null;
        var _tr_2881718:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2881657:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2882948:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_2882392:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2882157:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _keys_2882150 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2882313:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2882150 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _sr_2881705:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_2882395:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2881657 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2881665i32;
                } else if (__value__ == (2881665i32)) {
                    if (((_i_2881657 < (_s.length) : Bool) && (_i_2881657 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2881701i32;
                    } else {
                        _gotoNext = 2882090i32;
                    };
                } else if (__value__ == (2881701i32)) {
                    _sr_2881705 = _s[(_i_2881657 : stdgo.GoInt)];
                    _tr_2881718 = _t[(_i_2881657 : stdgo.GoInt)];
                    if (((_sr_2881705 | _tr_2881718 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2881757i32;
                    } else {
                        _gotoNext = 2881801i32;
                    };
                } else if (__value__ == (2881757i32)) {
                    _gotoNext = 2882115i32;
                } else if (__value__ == (2881801i32)) {
                    if (_tr_2881718 == (_sr_2881705)) {
                        _gotoNext = 2881813i32;
                    } else {
                        _gotoNext = 2881878i32;
                    };
                } else if (__value__ == (2881813i32)) {
                    _i_2881657++;
                    _gotoNext = 2881665i32;
                } else if (__value__ == (2881878i32)) {
                    if ((_tr_2881718 < _sr_2881705 : Bool)) {
                        _gotoNext = 2881889i32;
                    } else {
                        _gotoNext = 2881964i32;
                    };
                } else if (__value__ == (2881889i32)) {
                    {
                        final __tmp__0 = _sr_2881705;
                        final __tmp__1 = _tr_2881718;
                        _tr_2881718 = __tmp__0;
                        _sr_2881705 = __tmp__1;
                    };
                    _gotoNext = 2881964i32;
                } else if (__value__ == (2881964i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2881705 : Bool) && (_sr_2881705 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2881718 == ((_sr_2881705 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2882010i32;
                    } else {
                        _gotoNext = 2882030i32;
                    };
                } else if (__value__ == (2882010i32)) {
                    _i_2881657++;
                    _gotoNext = 2881665i32;
                } else if (__value__ == (2882030i32)) {
                    return false;
                    _i_2881657++;
                    _gotoNext = 2881665i32;
                } else if (__value__ == (2882090i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2882115i32;
                } else if (__value__ == (2882115i32)) {
                    _s = (_s.__slice__(_i_2881657) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2881657) : stdgo.GoString)?.__copy__();
                    _keys_2882150 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2882150 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2882150 = (_keys_2882150.__append__(_key));
                        _values_2882150 = (_values_2882150.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2882150.length)) {
                        _gotoNext = 2883081i32;
                    } else {
                        _gotoNext = 2883155i32;
                    };
                } else if (__value__ == (2882171i32)) {
                    _sr_2882157 = _values_2882150[@:invalid_index_invalid_type _i_2882163];
                    var __blank__ = _keys_2882150[@:invalid_index_invalid_type _i_2882163];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2882240i32;
                    } else {
                        _gotoNext = 2882309i32;
                    };
                } else if (__value__ == (2882240i32)) {
                    return false;
                    _gotoNext = 2882309i32;
                } else if (__value__ == (2882309i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2882347i32;
                    } else {
                        _gotoNext = 2882387i32;
                    };
                } else if (__value__ == (2882347i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2882313 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2882531i32;
                } else if (__value__ == (2882387i32)) {
                    _gotoNext = 2882387i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2882392 = __tmp__._0;
                        _size_2882395 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2882392;
                        final __tmp__1 = (_t.__slice__(_size_2882395) : stdgo.GoString)?.__copy__();
                        _tr_2882313 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2882531i32;
                } else if (__value__ == (2882531i32)) {
                    if (_tr_2882313 == (_sr_2882157)) {
                        _gotoNext = 2882543i32;
                    } else {
                        _gotoNext = 2882608i32;
                    };
                } else if (__value__ == (2882543i32)) {
                    _i_2882163++;
                    _gotoNext = 2883082i32;
                } else if (__value__ == (2882608i32)) {
                    if ((_tr_2882313 < _sr_2882157 : Bool)) {
                        _gotoNext = 2882619i32;
                    } else {
                        _gotoNext = 2882673i32;
                    };
                } else if (__value__ == (2882619i32)) {
                    {
                        final __tmp__0 = _sr_2882157;
                        final __tmp__1 = _tr_2882313;
                        _tr_2882313 = __tmp__0;
                        _sr_2882157 = __tmp__1;
                    };
                    _gotoNext = 2882673i32;
                } else if (__value__ == (2882673i32)) {
                    if ((_tr_2882313 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2882695i32;
                    } else {
                        _gotoNext = 2882948i32;
                    };
                } else if (__value__ == (2882695i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2882157 : Bool) && (_sr_2882157 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2882313 == ((_sr_2882157 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2882795i32;
                    } else {
                        _gotoNext = 2882818i32;
                    };
                } else if (__value__ == (2882795i32)) {
                    _i_2882163++;
                    _gotoNext = 2883082i32;
                } else if (__value__ == (2882818i32)) {
                    return false;
                    _gotoNext = 2882948i32;
                } else if (__value__ == (2882948i32)) {
                    _r_2882948 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2882157);
                    var __blank__ = 0i32;
                    _gotoNext = 2882978i32;
                } else if (__value__ == (2882978i32)) {
                    if (((_r_2882948 != _sr_2882157) && (_r_2882948 < _tr_2882313 : Bool) : Bool)) {
                        _gotoNext = 2883000i32;
                    } else {
                        _gotoNext = 2883037i32;
                    };
                } else if (__value__ == (2883000i32)) {
                    _r_2882948 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2882948);
                    _gotoNext = 2882978i32;
                } else if (__value__ == (2883037i32)) {
                    if (_r_2882948 == (_tr_2882313)) {
                        _gotoNext = 2883048i32;
                    } else {
                        _gotoNext = 2883068i32;
                    };
                } else if (__value__ == (2883048i32)) {
                    _i_2882163++;
                    _gotoNext = 2883082i32;
                } else if (__value__ == (2883068i32)) {
                    return false;
                    _i_2882163++;
                    _gotoNext = 2883082i32;
                } else if (__value__ == (2883081i32)) {
                    _i_2882163 = 0i32;
                    _gotoNext = 2883082i32;
                } else if (__value__ == (2883082i32)) {
                    if (_i_2882163 < (_keys_2882150.length)) {
                        _gotoNext = 2882171i32;
                    } else {
                        _gotoNext = 2883155i32;
                    };
                } else if (__value__ == (2883155i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
