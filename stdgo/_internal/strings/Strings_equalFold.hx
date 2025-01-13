package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_2935220:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2935213 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2935213 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2935226 = @:invalid_type null;
        var _tr_2934781:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2936011:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_2935376:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_2935458:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_2935455:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2934768:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_2934720:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2934720 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2934728i32;
                } else if (__value__ == (2934728i32)) {
                    if (((_i_2934720 < (_s.length) : Bool) && (_i_2934720 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2934764i32;
                    } else {
                        _gotoNext = 2935153i32;
                    };
                } else if (__value__ == (2934764i32)) {
                    _sr_2934768 = _s[(_i_2934720 : stdgo.GoInt)];
                    _tr_2934781 = _t[(_i_2934720 : stdgo.GoInt)];
                    if (((_sr_2934768 | _tr_2934781 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2934820i32;
                    } else {
                        _gotoNext = 2934864i32;
                    };
                } else if (__value__ == (2934820i32)) {
                    _gotoNext = 2935178i32;
                } else if (__value__ == (2934864i32)) {
                    if (_tr_2934781 == (_sr_2934768)) {
                        _gotoNext = 2934876i32;
                    } else {
                        _gotoNext = 2934941i32;
                    };
                } else if (__value__ == (2934876i32)) {
                    _i_2934720++;
                    _gotoNext = 2934728i32;
                } else if (__value__ == (2934941i32)) {
                    if ((_tr_2934781 < _sr_2934768 : Bool)) {
                        _gotoNext = 2934952i32;
                    } else {
                        _gotoNext = 2935027i32;
                    };
                } else if (__value__ == (2934952i32)) {
                    {
                        final __tmp__0 = _sr_2934768;
                        final __tmp__1 = _tr_2934781;
                        _tr_2934781 = __tmp__0;
                        _sr_2934768 = __tmp__1;
                    };
                    _gotoNext = 2935027i32;
                } else if (__value__ == (2935027i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2934768 : Bool) && (_sr_2934768 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2934781 == ((_sr_2934768 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2935073i32;
                    } else {
                        _gotoNext = 2935093i32;
                    };
                } else if (__value__ == (2935073i32)) {
                    _i_2934720++;
                    _gotoNext = 2934728i32;
                } else if (__value__ == (2935093i32)) {
                    return false;
                    _i_2934720++;
                    _gotoNext = 2934728i32;
                } else if (__value__ == (2935153i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2935178i32;
                } else if (__value__ == (2935178i32)) {
                    _s = (_s.__slice__(_i_2934720) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2934720) : stdgo.GoString)?.__copy__();
                    _keys_2935213 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2935213 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2935213 = (_keys_2935213.__append__(_key));
                        _values_2935213 = (_values_2935213.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2935213.length)) {
                        _gotoNext = 2936144i32;
                    } else {
                        _gotoNext = 2936218i32;
                    };
                } else if (__value__ == (2935234i32)) {
                    _sr_2935220 = _values_2935213[@:invalid_index_invalid_type _i_2935226];
                    var __blank__ = _keys_2935213[@:invalid_index_invalid_type _i_2935226];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2935303i32;
                    } else {
                        _gotoNext = 2935372i32;
                    };
                } else if (__value__ == (2935303i32)) {
                    return false;
                    _gotoNext = 2935372i32;
                } else if (__value__ == (2935372i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2935410i32;
                    } else {
                        _gotoNext = 2935450i32;
                    };
                } else if (__value__ == (2935410i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2935376 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2935594i32;
                } else if (__value__ == (2935450i32)) {
                    _gotoNext = 2935450i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__());
                        _r_2935455 = __tmp__._0;
                        _size_2935458 = __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2935455;
                        final __tmp__1 = (_t.__slice__(_size_2935458) : stdgo.GoString)?.__copy__();
                        _tr_2935376 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2935594i32;
                } else if (__value__ == (2935594i32)) {
                    if (_tr_2935376 == (_sr_2935220)) {
                        _gotoNext = 2935606i32;
                    } else {
                        _gotoNext = 2935671i32;
                    };
                } else if (__value__ == (2935606i32)) {
                    _i_2935226++;
                    _gotoNext = 2936145i32;
                } else if (__value__ == (2935671i32)) {
                    if ((_tr_2935376 < _sr_2935220 : Bool)) {
                        _gotoNext = 2935682i32;
                    } else {
                        _gotoNext = 2935736i32;
                    };
                } else if (__value__ == (2935682i32)) {
                    {
                        final __tmp__0 = _sr_2935220;
                        final __tmp__1 = _tr_2935376;
                        _tr_2935376 = __tmp__0;
                        _sr_2935220 = __tmp__1;
                    };
                    _gotoNext = 2935736i32;
                } else if (__value__ == (2935736i32)) {
                    if ((_tr_2935376 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2935758i32;
                    } else {
                        _gotoNext = 2936011i32;
                    };
                } else if (__value__ == (2935758i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2935220 : Bool) && (_sr_2935220 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2935376 == ((_sr_2935220 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2935858i32;
                    } else {
                        _gotoNext = 2935881i32;
                    };
                } else if (__value__ == (2935858i32)) {
                    _i_2935226++;
                    _gotoNext = 2936145i32;
                } else if (__value__ == (2935881i32)) {
                    return false;
                    _gotoNext = 2936011i32;
                } else if (__value__ == (2936011i32)) {
                    _r_2936011 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr_2935220);
                    var __blank__ = 0i32;
                    _gotoNext = 2936041i32;
                } else if (__value__ == (2936041i32)) {
                    if (((_r_2936011 != _sr_2935220) && (_r_2936011 < _tr_2935376 : Bool) : Bool)) {
                        _gotoNext = 2936063i32;
                    } else {
                        _gotoNext = 2936100i32;
                    };
                } else if (__value__ == (2936063i32)) {
                    _r_2936011 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r_2936011);
                    _gotoNext = 2936041i32;
                } else if (__value__ == (2936100i32)) {
                    if (_r_2936011 == (_tr_2935376)) {
                        _gotoNext = 2936111i32;
                    } else {
                        _gotoNext = 2936131i32;
                    };
                } else if (__value__ == (2936111i32)) {
                    _i_2935226++;
                    _gotoNext = 2936145i32;
                } else if (__value__ == (2936131i32)) {
                    return false;
                    _i_2935226++;
                    _gotoNext = 2936145i32;
                } else if (__value__ == (2936144i32)) {
                    _i_2935226 = 0i32;
                    _gotoNext = 2936145i32;
                } else if (__value__ == (2936145i32)) {
                    if (_i_2935226 < (_keys_2935213.length)) {
                        _gotoNext = 2935234i32;
                    } else {
                        _gotoNext = 2936218i32;
                    };
                } else if (__value__ == (2936218i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
