package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _i_2863187:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sr_2863687:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2863680 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2863680 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _sr_2863235:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _tr_2863248:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2864478:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2863925:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2863922:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2863843:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2863693 = @:invalid_type null;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2863187 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2863195i32;
                } else if (__value__ == (2863195i32)) {
                    if (((_i_2863187 < (_s.length) : Bool) && (_i_2863187 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2863231i32;
                    } else {
                        _gotoNext = 2863620i32;
                    };
                } else if (__value__ == (2863231i32)) {
                    _sr_2863235 = _s[(_i_2863187 : stdgo.GoInt)];
                    _tr_2863248 = _t[(_i_2863187 : stdgo.GoInt)];
                    if (((_sr_2863235 | _tr_2863248 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863287i32;
                    } else {
                        _gotoNext = 2863331i32;
                    };
                } else if (__value__ == (2863287i32)) {
                    _gotoNext = 2863645i32;
                } else if (__value__ == (2863331i32)) {
                    if (_tr_2863248 == (_sr_2863235)) {
                        _gotoNext = 2863343i32;
                    } else {
                        _gotoNext = 2863408i32;
                    };
                } else if (__value__ == (2863343i32)) {
                    _i_2863187++;
                    _gotoNext = 2863195i32;
                } else if (__value__ == (2863408i32)) {
                    if ((_tr_2863248 < _sr_2863235 : Bool)) {
                        _gotoNext = 2863419i32;
                    } else {
                        _gotoNext = 2863494i32;
                    };
                } else if (__value__ == (2863419i32)) {
                    {
                        final __tmp__0 = _sr_2863235;
                        final __tmp__1 = _tr_2863248;
                        _tr_2863248 = __tmp__0;
                        _sr_2863235 = __tmp__1;
                    };
                    _gotoNext = 2863494i32;
                } else if (__value__ == (2863494i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2863235 : Bool) && (_sr_2863235 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2863248 == ((_sr_2863235 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2863540i32;
                    } else {
                        _gotoNext = 2863560i32;
                    };
                } else if (__value__ == (2863540i32)) {
                    _i_2863187++;
                    _gotoNext = 2863195i32;
                } else if (__value__ == (2863560i32)) {
                    return false;
                    _i_2863187++;
                    _gotoNext = 2863195i32;
                } else if (__value__ == (2863620i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2863645i32;
                } else if (__value__ == (2863645i32)) {
                    _s = (_s.__slice__(_i_2863187) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2863187) : stdgo.GoString)?.__copy__();
                    _keys_2863680 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2863680 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2863680 = (_keys_2863680.__append__(_key));
                        _values_2863680 = (_values_2863680.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2863680.length)) {
                        _gotoNext = 2864611i32;
                    } else {
                        _gotoNext = 2864685i32;
                    };
                } else if (__value__ == (2863701i32)) {
                    _sr_2863687 = _values_2863680[@:invalid_index_invalid_type _i_2863693];
                    var __blank__ = _keys_2863680[@:invalid_index_invalid_type _i_2863693];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2863770i32;
                    } else {
                        _gotoNext = 2863839i32;
                    };
                } else if (__value__ == (2863770i32)) {
                    return false;
                    _gotoNext = 2863839i32;
                } else if (__value__ == (2863839i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2863877i32;
                    } else {
                        _gotoNext = 2863917i32;
                    };
                } else if (__value__ == (2863877i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2863843 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2864061i32;
                } else if (__value__ == (2863917i32)) {
                    _gotoNext = 2863917i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2863922 = @:tmpset0 __tmp__._0;
                        _size_2863925 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2863922;
                        final __tmp__1 = (_t.__slice__(_size_2863925) : stdgo.GoString)?.__copy__();
                        _tr_2863843 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2864061i32;
                } else if (__value__ == (2864061i32)) {
                    if (_tr_2863843 == (_sr_2863687)) {
                        _gotoNext = 2864073i32;
                    } else {
                        _gotoNext = 2864138i32;
                    };
                } else if (__value__ == (2864073i32)) {
                    _i_2863693++;
                    _gotoNext = 2864612i32;
                } else if (__value__ == (2864138i32)) {
                    if ((_tr_2863843 < _sr_2863687 : Bool)) {
                        _gotoNext = 2864149i32;
                    } else {
                        _gotoNext = 2864203i32;
                    };
                } else if (__value__ == (2864149i32)) {
                    {
                        final __tmp__0 = _sr_2863687;
                        final __tmp__1 = _tr_2863843;
                        _tr_2863843 = __tmp__0;
                        _sr_2863687 = __tmp__1;
                    };
                    _gotoNext = 2864203i32;
                } else if (__value__ == (2864203i32)) {
                    if ((_tr_2863843 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2864225i32;
                    } else {
                        _gotoNext = 2864478i32;
                    };
                } else if (__value__ == (2864225i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2863687 : Bool) && (_sr_2863687 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2863843 == ((_sr_2863687 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2864325i32;
                    } else {
                        _gotoNext = 2864348i32;
                    };
                } else if (__value__ == (2864325i32)) {
                    _i_2863693++;
                    _gotoNext = 2864612i32;
                } else if (__value__ == (2864348i32)) {
                    return false;
                    _gotoNext = 2864478i32;
                } else if (__value__ == (2864478i32)) {
                    _r_2864478 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2863687);
                    var __blank__ = 0i32;
                    _gotoNext = 2864508i32;
                } else if (__value__ == (2864508i32)) {
                    if (((_r_2864478 != _sr_2863687) && (_r_2864478 < _tr_2863843 : Bool) : Bool)) {
                        _gotoNext = 2864530i32;
                    } else {
                        _gotoNext = 2864567i32;
                    };
                } else if (__value__ == (2864530i32)) {
                    _r_2864478 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2864478);
                    _gotoNext = 2864508i32;
                } else if (__value__ == (2864567i32)) {
                    if (_r_2864478 == (_tr_2863843)) {
                        _gotoNext = 2864578i32;
                    } else {
                        _gotoNext = 2864598i32;
                    };
                } else if (__value__ == (2864578i32)) {
                    _i_2863693++;
                    _gotoNext = 2864612i32;
                } else if (__value__ == (2864598i32)) {
                    return false;
                    _i_2863693++;
                    _gotoNext = 2864612i32;
                } else if (__value__ == (2864611i32)) {
                    _i_2863693 = 0i32;
                    _gotoNext = 2864612i32;
                } else if (__value__ == (2864612i32)) {
                    if (_i_2863693 < (_keys_2863680.length)) {
                        _gotoNext = 2863701i32;
                    } else {
                        _gotoNext = 2864685i32;
                    };
                } else if (__value__ == (2864685i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
