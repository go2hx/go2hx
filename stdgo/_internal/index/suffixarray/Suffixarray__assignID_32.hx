package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _last_3362370:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _this_3362346:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _j_3362009:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_3361981:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3361936:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3362404:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3362331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3362128:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3362014_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3361945:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3361936 = (0 : stdgo.GoInt);
                    _lastLen_3361945 = (-1 : stdgo.GoInt32);
                    _lastPos_3361981 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3362565i32;
                    } else {
                        _gotoNext = 3362569i32;
                    };
                } else if (__value__ == (3362040i32)) {
                    _j_3362009 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3362014_0 : stdgo.GoInt)];
                    _n_3362128 = _sa[((_j_3362009 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3362128 != (_lastLen_3361945)) {
                        _gotoNext = 3362159i32;
                    } else {
                        _gotoNext = 3362179i32;
                    };
                } else if (__value__ == (3362159i32)) {
                    _gotoNext = 3362496i32;
                } else if (__value__ == (3362179i32)) {
                    if (((_n_3362128 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3362213i32;
                    } else {
                        _gotoNext = 3362298i32;
                    };
                } else if (__value__ == (3362213i32)) {
                    _gotoNext = 3362537i32;
                } else if (__value__ == (3362298i32)) {
                    _n_3362331 = (_n_3362128 : stdgo.GoInt);
                    _this_3362346 = ((_text.__slice__(_j_3362009) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3362331) : stdgo.Slice<stdgo.GoInt32>);
                    _last_3362370 = ((_text.__slice__(_lastPos_3361981) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3362331) : stdgo.Slice<stdgo.GoInt32>);
                    _i_3362404 = (0 : stdgo.GoInt);
                    _gotoNext = 3362400i32;
                    {
                        _gotoNext = 3362298i32;
                    };
                } else if (__value__ == (3362400i32)) {
                    if ((_i_3362404 < _n_3362331 : Bool)) {
                        _gotoNext = 3362423i32;
                    } else {
                        _gotoNext = 3362481i32;
                    };
                } else if (__value__ == (3362419i32)) {
                    _i_3362404++;
                    _gotoNext = 3362400i32;
                } else if (__value__ == (3362423i32)) {
                    if (_this_3362346[(_i_3362404 : stdgo.GoInt)] != (_last_3362370[(_i_3362404 : stdgo.GoInt)])) {
                        _gotoNext = 3362451i32;
                    } else {
                        _gotoNext = 3362419i32;
                    };
                } else if (__value__ == (3362451i32)) {
                    _gotoNext = 3362496i32;
                } else if (__value__ == (3362481i32)) {
                    _gotoNext = 3362537i32;
                } else if (__value__ == (3362496i32)) {
                    _gotoNext = 3362496i32;
                    _id_3361936++;
                    _lastPos_3361981 = _j_3362009;
                    _lastLen_3361945 = _n_3362128;
                    _gotoNext = 3362537i32;
                } else if (__value__ == (3362537i32)) {
                    _sa[((_j_3362009 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3361936 : stdgo.GoInt32);
                    _i_3362014_0++;
                    _gotoNext = 3362566i32;
                } else if (__value__ == (3362565i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3362014_0 = __tmp__0;
                        _j_3362009 = __tmp__1;
                    };
                    _gotoNext = 3362566i32;
                } else if (__value__ == (3362566i32)) {
                    if (_i_3362014_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3362040i32;
                    } else {
                        _gotoNext = 3362569i32;
                    };
                } else if (__value__ == (3362569i32)) {
                    return _id_3361936;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
