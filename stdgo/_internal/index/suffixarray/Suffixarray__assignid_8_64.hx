package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _j_14:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3351558_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_12:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_17:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_15:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_11:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_10 = (0 : stdgo.GoInt);
                    _lastLen_11 = (-1i64 : stdgo.GoInt64);
                    _lastPos_12 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3352109i32;
                    } else {
                        _gotoNext = 3352113i32;
                    };
                } else if (__value__ == (3351584i32)) {
                    _j_14 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3351558_13 : stdgo.GoInt)];
                    _n_15 = _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_15 != (_lastLen_11)) {
                        _gotoNext = 3351703i32;
                    } else {
                        _gotoNext = 3351723i32;
                    };
                } else if (__value__ == (3351703i32)) {
                    _gotoNext = 3352040i32;
                } else if (__value__ == (3351723i32)) {
                    if (((_n_15 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3351757i32;
                    } else {
                        _gotoNext = 3351842i32;
                    };
                } else if (__value__ == (3351757i32)) {
                    _gotoNext = 3352081i32;
                } else if (__value__ == (3351842i32)) {
                    _n_16 = (_n_15 : stdgo.GoInt);
                    _this_17 = ((_text.__slice__(_j_14) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_18 = ((_text.__slice__(_lastPos_12) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_19 = (0 : stdgo.GoInt);
                    _gotoNext = 3351944i32;
                    {
                        _gotoNext = 3351842i32;
                    };
                } else if (__value__ == (3351944i32)) {
                    if ((_i_19 < _n_16 : Bool)) {
                        _gotoNext = 3351967i32;
                    } else {
                        _gotoNext = 3352025i32;
                    };
                } else if (__value__ == (3351963i32)) {
                    _i_19++;
                    _gotoNext = 3351944i32;
                } else if (__value__ == (3351967i32)) {
                    if (_this_17[(_i_19 : stdgo.GoInt)] != (_last_18[(_i_19 : stdgo.GoInt)])) {
                        _gotoNext = 3351995i32;
                    } else {
                        _gotoNext = 3351963i32;
                    };
                } else if (__value__ == (3351995i32)) {
                    _gotoNext = 3352040i32;
                } else if (__value__ == (3352025i32)) {
                    _gotoNext = 3352081i32;
                } else if (__value__ == (3352040i32)) {
                    _gotoNext = 3352040i32;
                    _id_10++;
                    _lastPos_12 = _j_14;
                    _lastLen_11 = _n_15;
                    _gotoNext = 3352081i32;
                } else if (__value__ == (3352081i32)) {
                    _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_10 : stdgo.GoInt64);
                    _i_3351558_13++;
                    _gotoNext = 3352110i32;
                } else if (__value__ == (3352109i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3351558_13 = __tmp__0;
                        _j_14 = __tmp__1;
                    };
                    _gotoNext = 3352110i32;
                } else if (__value__ == (3352110i32)) {
                    if (_i_3351558_13 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3351584i32;
                    } else {
                        _gotoNext = 3352113i32;
                    };
                } else if (__value__ == (3352113i32)) {
                    return _id_10;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
