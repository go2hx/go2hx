package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_17:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_3975023_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_11:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _last_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_15:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_14:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_12:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_10 = (0 : stdgo.GoInt);
                    _lastLen_11 = (-1i64 : stdgo.GoInt64);
                    _lastPos_12 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3975574i32;
                    } else {
                        _gotoNext = 3975578i32;
                    };
                } else if (__value__ == (3975049i32)) {
                    _j_14 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_iterator_3975023_13 : stdgo.GoInt)];
                    _n_15 = _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_15 != (_lastLen_11)) {
                        _gotoNext = 3975168i32;
                    } else {
                        _gotoNext = 3975188i32;
                    };
                } else if (__value__ == (3975168i32)) {
                    _gotoNext = 3975505i32;
                } else if (__value__ == (3975188i32)) {
                    if (((_n_15 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3975222i32;
                    } else {
                        _gotoNext = 3975307i32;
                    };
                } else if (__value__ == (3975222i32)) {
                    _gotoNext = 3975546i32;
                } else if (__value__ == (3975307i32)) {
                    _n_16 = (_n_15 : stdgo.GoInt);
                    _this_17 = ((_text.__slice__(_j_14) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_18 = ((_text.__slice__(_lastPos_12) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_16) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_19 = (0 : stdgo.GoInt);
                    _gotoNext = 3975409i32;
                    {
                        _gotoNext = 3975307i32;
                    };
                } else if (__value__ == (3975409i32)) {
                    if ((_i_19 < _n_16 : Bool)) {
                        _gotoNext = 3975432i32;
                    } else {
                        _gotoNext = 3975490i32;
                    };
                } else if (__value__ == (3975428i32)) {
                    _i_19++;
                    _gotoNext = 3975409i32;
                } else if (__value__ == (3975432i32)) {
                    if (_this_17[(_i_19 : stdgo.GoInt)] != (_last_18[(_i_19 : stdgo.GoInt)])) {
                        _gotoNext = 3975460i32;
                    } else {
                        _gotoNext = 3975428i32;
                    };
                } else if (__value__ == (3975460i32)) {
                    _gotoNext = 3975505i32;
                } else if (__value__ == (3975490i32)) {
                    _gotoNext = 3975546i32;
                } else if (__value__ == (3975505i32)) {
                    _gotoNext = 3975505i32;
                    _id_10++;
                    _lastPos_12 = _j_14;
                    _lastLen_11 = _n_15;
                    _gotoNext = 3975546i32;
                } else if (__value__ == (3975546i32)) {
                    _sa[((_j_14 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_10 : stdgo.GoInt64);
                    _iterator_3975023_13++;
                    _gotoNext = 3975575i32;
                } else if (__value__ == (3975574i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _iterator_3975023_13 = @:binopAssign __tmp__0;
                        _j_14 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3975575i32;
                } else if (__value__ == (3975575i32)) {
                    if (_iterator_3975023_13 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3975049i32;
                    } else {
                        _gotoNext = 3975578i32;
                    };
                } else if (__value__ == (3975578i32)) {
                    return _id_10;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
