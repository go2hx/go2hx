package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_3361306_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3361696:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3361662:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_3361638:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _id_3361228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3361623:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3361420:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _j_3361301:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastPos_3361273:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_3361237:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3361228 = (0 : stdgo.GoInt);
                    _lastLen_3361237 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3361273 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3361857i32;
                    } else {
                        _gotoNext = 3361861i32;
                    };
                } else if (__value__ == (3361332i32)) {
                    _j_3361301 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3361306_0 : stdgo.GoInt)];
                    _n_3361420 = _sa[((_j_3361301 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3361420 != (_lastLen_3361237)) {
                        _gotoNext = 3361451i32;
                    } else {
                        _gotoNext = 3361471i32;
                    };
                } else if (__value__ == (3361451i32)) {
                    _gotoNext = 3361788i32;
                } else if (__value__ == (3361471i32)) {
                    if (((_n_3361420 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3361505i32;
                    } else {
                        _gotoNext = 3361590i32;
                    };
                } else if (__value__ == (3361505i32)) {
                    _gotoNext = 3361829i32;
                } else if (__value__ == (3361590i32)) {
                    _n_3361623 = (_n_3361420 : stdgo.GoInt);
                    _this_3361638 = ((_text.__slice__(_j_3361301) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3361623) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3361662 = ((_text.__slice__(_lastPos_3361273) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3361623) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3361696 = (0 : stdgo.GoInt);
                    _gotoNext = 3361692i32;
                    {
                        _gotoNext = 3361590i32;
                    };
                } else if (__value__ == (3361692i32)) {
                    if ((_i_3361696 < _n_3361623 : Bool)) {
                        _gotoNext = 3361715i32;
                    } else {
                        _gotoNext = 3361773i32;
                    };
                } else if (__value__ == (3361711i32)) {
                    _i_3361696++;
                    _gotoNext = 3361692i32;
                } else if (__value__ == (3361715i32)) {
                    if (_this_3361638[(_i_3361696 : stdgo.GoInt)] != (_last_3361662[(_i_3361696 : stdgo.GoInt)])) {
                        _gotoNext = 3361743i32;
                    } else {
                        _gotoNext = 3361711i32;
                    };
                } else if (__value__ == (3361743i32)) {
                    _gotoNext = 3361788i32;
                } else if (__value__ == (3361773i32)) {
                    _gotoNext = 3361829i32;
                } else if (__value__ == (3361788i32)) {
                    _gotoNext = 3361788i32;
                    _id_3361228++;
                    _lastPos_3361273 = _j_3361301;
                    _lastLen_3361237 = _n_3361420;
                    _gotoNext = 3361829i32;
                } else if (__value__ == (3361829i32)) {
                    _sa[((_j_3361301 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3361228 : stdgo.GoInt64);
                    _i_3361306_0++;
                    _gotoNext = 3361858i32;
                } else if (__value__ == (3361857i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3361306_0 = __tmp__0;
                        _j_3361301 = __tmp__1;
                    };
                    _gotoNext = 3361858i32;
                } else if (__value__ == (3361858i32)) {
                    if (_i_3361306_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3361332i32;
                    } else {
                        _gotoNext = 3361861i32;
                    };
                } else if (__value__ == (3361861i32)) {
                    return _id_3361228;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
