package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _this_37:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3352974_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_32:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_38:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_35:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_34:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_31:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_30 = (0 : stdgo.GoInt);
                    _lastLen_31 = (-1i64 : stdgo.GoInt64);
                    _lastPos_32 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3353525i32;
                    } else {
                        _gotoNext = 3353529i32;
                    };
                } else if (__value__ == (3353000i32)) {
                    _j_34 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3352974_33 : stdgo.GoInt)];
                    _n_35 = _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_35 != (_lastLen_31)) {
                        _gotoNext = 3353119i32;
                    } else {
                        _gotoNext = 3353139i32;
                    };
                } else if (__value__ == (3353119i32)) {
                    _gotoNext = 3353456i32;
                } else if (__value__ == (3353139i32)) {
                    if (((_n_35 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3353173i32;
                    } else {
                        _gotoNext = 3353258i32;
                    };
                } else if (__value__ == (3353173i32)) {
                    _gotoNext = 3353497i32;
                } else if (__value__ == (3353258i32)) {
                    _n_36 = (_n_35 : stdgo.GoInt);
                    _this_37 = ((_text.__slice__(_j_34) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _last_38 = ((_text.__slice__(_lastPos_32) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _i_39 = (0 : stdgo.GoInt);
                    _gotoNext = 3353360i32;
                    {
                        _gotoNext = 3353258i32;
                    };
                } else if (__value__ == (3353360i32)) {
                    if ((_i_39 < _n_36 : Bool)) {
                        _gotoNext = 3353383i32;
                    } else {
                        _gotoNext = 3353441i32;
                    };
                } else if (__value__ == (3353379i32)) {
                    _i_39++;
                    _gotoNext = 3353360i32;
                } else if (__value__ == (3353383i32)) {
                    if (_this_37[(_i_39 : stdgo.GoInt)] != (_last_38[(_i_39 : stdgo.GoInt)])) {
                        _gotoNext = 3353411i32;
                    } else {
                        _gotoNext = 3353379i32;
                    };
                } else if (__value__ == (3353411i32)) {
                    _gotoNext = 3353456i32;
                } else if (__value__ == (3353441i32)) {
                    _gotoNext = 3353497i32;
                } else if (__value__ == (3353456i32)) {
                    _gotoNext = 3353456i32;
                    _id_30++;
                    _lastPos_32 = _j_34;
                    _lastLen_31 = _n_35;
                    _gotoNext = 3353497i32;
                } else if (__value__ == (3353497i32)) {
                    _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_30 : stdgo.GoInt64);
                    _i_3352974_33++;
                    _gotoNext = 3353526i32;
                } else if (__value__ == (3353525i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3352974_33 = __tmp__0;
                        _j_34 = __tmp__1;
                    };
                    _gotoNext = 3353526i32;
                } else if (__value__ == (3353526i32)) {
                    if (_i_3352974_33 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3353000i32;
                    } else {
                        _gotoNext = 3353529i32;
                    };
                } else if (__value__ == (3353529i32)) {
                    return _id_30;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
