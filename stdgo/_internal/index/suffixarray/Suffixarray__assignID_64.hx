package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _this_3320046:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_3320031:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3319709:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3319714_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _id_3319636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3320070:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _i_3320104:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3319828:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_3319681:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_3319645:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3319636 = (0 : stdgo.GoInt);
                    _lastLen_3319645 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3319681 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3320265i32;
                    } else {
                        _gotoNext = 3320269i32;
                    };
                } else if (__value__ == (3319740i32)) {
                    _j_3319709 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3319714_0 : stdgo.GoInt)];
                    _n_3319828 = _sa[((_j_3319709 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3319828 != (_lastLen_3319645)) {
                        _gotoNext = 3319859i32;
                    } else {
                        _gotoNext = 3319879i32;
                    };
                } else if (__value__ == (3319859i32)) {
                    _gotoNext = 3320196i32;
                } else if (__value__ == (3319879i32)) {
                    if (((_n_3319828 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3319913i32;
                    } else {
                        _gotoNext = 3319998i32;
                    };
                } else if (__value__ == (3319913i32)) {
                    _gotoNext = 3320237i32;
                } else if (__value__ == (3319998i32)) {
                    _n_3320031 = (_n_3319828 : stdgo.GoInt);
                    _this_3320046 = ((_text.__slice__(_j_3319709) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3320031) : stdgo.Slice<stdgo.GoInt64>);
                    _last_3320070 = ((_text.__slice__(_lastPos_3319681) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3320031) : stdgo.Slice<stdgo.GoInt64>);
                    _i_3320104 = (0 : stdgo.GoInt);
                    _gotoNext = 3320100i32;
                    {
                        _gotoNext = 3319998i32;
                    };
                } else if (__value__ == (3320100i32)) {
                    if ((_i_3320104 < _n_3320031 : Bool)) {
                        _gotoNext = 3320123i32;
                    } else {
                        _gotoNext = 3320181i32;
                    };
                } else if (__value__ == (3320119i32)) {
                    _i_3320104++;
                    _gotoNext = 3320100i32;
                } else if (__value__ == (3320123i32)) {
                    if (_this_3320046[(_i_3320104 : stdgo.GoInt)] != (_last_3320070[(_i_3320104 : stdgo.GoInt)])) {
                        _gotoNext = 3320151i32;
                    } else {
                        _gotoNext = 3320119i32;
                    };
                } else if (__value__ == (3320151i32)) {
                    _gotoNext = 3320196i32;
                } else if (__value__ == (3320181i32)) {
                    _gotoNext = 3320237i32;
                } else if (__value__ == (3320196i32)) {
                    _gotoNext = 3320196i32;
                    _id_3319636++;
                    _lastPos_3319681 = _j_3319709;
                    _lastLen_3319645 = _n_3319828;
                    _gotoNext = 3320237i32;
                } else if (__value__ == (3320237i32)) {
                    _sa[((_j_3319709 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3319636 : stdgo.GoInt64);
                    _i_3319714_0++;
                    _gotoNext = 3320266i32;
                } else if (__value__ == (3320265i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3319714_0 = __tmp__0;
                        _j_3319709 = __tmp__1;
                    };
                    _gotoNext = 3320266i32;
                } else if (__value__ == (3320266i32)) {
                    if (_i_3319714_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3319740i32;
                    } else {
                        _gotoNext = 3320269i32;
                    };
                } else if (__value__ == (3320269i32)) {
                    return _id_3319636;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
