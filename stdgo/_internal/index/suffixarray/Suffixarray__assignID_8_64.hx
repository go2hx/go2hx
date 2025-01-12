package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _j_3328041:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_3328046_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _id_3327968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3328436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3328402:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3328160:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _n_3328363:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_3328013:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_3327977:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _this_3328378:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3327968 = (0 : stdgo.GoInt);
                    _lastLen_3327977 = (-1i64 : stdgo.GoInt64);
                    _lastPos_3328013 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3328597i32;
                    } else {
                        _gotoNext = 3328601i32;
                    };
                } else if (__value__ == (3328072i32)) {
                    _j_3328041 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_3328046_0 : stdgo.GoInt)];
                    _n_3328160 = _sa[((_j_3328041 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_3328160 != (_lastLen_3327977)) {
                        _gotoNext = 3328191i32;
                    } else {
                        _gotoNext = 3328211i32;
                    };
                } else if (__value__ == (3328191i32)) {
                    _gotoNext = 3328528i32;
                } else if (__value__ == (3328211i32)) {
                    if (((_n_3328160 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3328245i32;
                    } else {
                        _gotoNext = 3328330i32;
                    };
                } else if (__value__ == (3328245i32)) {
                    _gotoNext = 3328569i32;
                } else if (__value__ == (3328330i32)) {
                    _n_3328363 = (_n_3328160 : stdgo.GoInt);
                    _this_3328378 = ((_text.__slice__(_j_3328041) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3328363) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3328402 = ((_text.__slice__(_lastPos_3328013) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3328363) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3328436 = (0 : stdgo.GoInt);
                    _gotoNext = 3328432i32;
                    {
                        _gotoNext = 3328330i32;
                    };
                } else if (__value__ == (3328432i32)) {
                    if ((_i_3328436 < _n_3328363 : Bool)) {
                        _gotoNext = 3328455i32;
                    } else {
                        _gotoNext = 3328513i32;
                    };
                } else if (__value__ == (3328451i32)) {
                    _i_3328436++;
                    _gotoNext = 3328432i32;
                } else if (__value__ == (3328455i32)) {
                    if (_this_3328378[(_i_3328436 : stdgo.GoInt)] != (_last_3328402[(_i_3328436 : stdgo.GoInt)])) {
                        _gotoNext = 3328483i32;
                    } else {
                        _gotoNext = 3328451i32;
                    };
                } else if (__value__ == (3328483i32)) {
                    _gotoNext = 3328528i32;
                } else if (__value__ == (3328513i32)) {
                    _gotoNext = 3328569i32;
                } else if (__value__ == (3328528i32)) {
                    _gotoNext = 3328528i32;
                    _id_3327968++;
                    _lastPos_3328013 = _j_3328041;
                    _lastLen_3327977 = _n_3328160;
                    _gotoNext = 3328569i32;
                } else if (__value__ == (3328569i32)) {
                    _sa[((_j_3328041 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_3327968 : stdgo.GoInt64);
                    _i_3328046_0++;
                    _gotoNext = 3328598i32;
                } else if (__value__ == (3328597i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_3328046_0 = __tmp__0;
                        _j_3328041 = __tmp__1;
                    };
                    _gotoNext = 3328598i32;
                } else if (__value__ == (3328598i32)) {
                    if (_i_3328046_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 3328072i32;
                    } else {
                        _gotoNext = 3328601i32;
                    };
                } else if (__value__ == (3328601i32)) {
                    return _id_3327968;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
