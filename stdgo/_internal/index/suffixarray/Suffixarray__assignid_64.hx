package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _last_3353330:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_3353291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3352969:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3352974_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _id_3352896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3353364:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_3353306:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_3353088:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_3352941:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_3352905:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3352896 = (0 : stdgo.GoInt);
                    _lastLen_3352905 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3352941 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3353525i32;
                    } else {
                        _gotoNext = 3353529i32;
                    };
                } else if (__value__ == (3353000i32)) {
                    _j_3352969 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3352974_0 : stdgo.GoInt)];
                    _n_3353088 = _sa[((_j_3352969 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3353088 != (_lastLen_3352905)) {
                        _gotoNext = 3353119i32;
                    } else {
                        _gotoNext = 3353139i32;
                    };
                } else if (__value__ == (3353119i32)) {
                    _gotoNext = 3353456i32;
                } else if (__value__ == (3353139i32)) {
                    if (((_n_3353088 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3353173i32;
                    } else {
                        _gotoNext = 3353258i32;
                    };
                } else if (__value__ == (3353173i32)) {
                    _gotoNext = 3353497i32;
                } else if (__value__ == (3353258i32)) {
                    _n_3353291 = (_n_3353088 : stdgo.GoInt);
                    _this_3353306 = ((_text.__slice__(_j_3352969) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3353291) : stdgo.Slice<stdgo.GoInt64>);
                    _last_3353330 = ((_text.__slice__(_lastPos_3352941) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_3353291) : stdgo.Slice<stdgo.GoInt64>);
                    _i_3353364 = (0 : stdgo.GoInt);
                    _gotoNext = 3353360i32;
                    {
                        _gotoNext = 3353258i32;
                    };
                } else if (__value__ == (3353360i32)) {
                    if ((_i_3353364 < _n_3353291 : Bool)) {
                        _gotoNext = 3353383i32;
                    } else {
                        _gotoNext = 3353441i32;
                    };
                } else if (__value__ == (3353379i32)) {
                    _i_3353364++;
                    _gotoNext = 3353360i32;
                } else if (__value__ == (3353383i32)) {
                    if (_this_3353306[(_i_3353364 : stdgo.GoInt)] != (_last_3353330[(_i_3353364 : stdgo.GoInt)])) {
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
                    _id_3352896++;
                    _lastPos_3352941 = _j_3352969;
                    _lastLen_3352905 = _n_3353088;
                    _gotoNext = 3353497i32;
                } else if (__value__ == (3353497i32)) {
                    _sa[((_j_3352969 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3352896 : stdgo.GoInt64);
                    _i_3352974_0++;
                    _gotoNext = 3353526i32;
                } else if (__value__ == (3353525i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3352974_0 = __tmp__0;
                        _j_3352969 = __tmp__1;
                    };
                    _gotoNext = 3353526i32;
                } else if (__value__ == (3353526i32)) {
                    if (_i_3352974_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3353000i32;
                    } else {
                        _gotoNext = 3353529i32;
                    };
                } else if (__value__ == (3353529i32)) {
                    return _id_3352896;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
