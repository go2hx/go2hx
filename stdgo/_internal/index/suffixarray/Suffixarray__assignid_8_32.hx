package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _this_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_2:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastLen_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_8:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _j_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_4072758_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _id_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_0 = (0 : stdgo.GoInt);
                    _lastLen_1 = (-1 : stdgo.GoInt32);
                    _lastPos_2 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4073309i32;
                    } else {
                        _gotoNext = 4073313i32;
                    };
                } else if (__value__ == (4072784i32)) {
                    _j_4 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_4072758_3 : stdgo.GoInt)];
                    _n_5 = _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_5 != (_lastLen_1)) {
                        _gotoNext = 4072903i32;
                    } else {
                        _gotoNext = 4072923i32;
                    };
                } else if (__value__ == (4072903i32)) {
                    _gotoNext = 4073240i32;
                } else if (__value__ == (4072923i32)) {
                    if (((_n_5 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 4072957i32;
                    } else {
                        _gotoNext = 4073042i32;
                    };
                } else if (__value__ == (4072957i32)) {
                    _gotoNext = 4073281i32;
                } else if (__value__ == (4073042i32)) {
                    _n_6 = (_n_5 : stdgo.GoInt);
                    _this_7 = ((_text.__slice__(_j_4) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_8 = ((_text.__slice__(_lastPos_2) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_6) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 4073144i32;
                    {
                        _gotoNext = 4073042i32;
                    };
                } else if (__value__ == (4073144i32)) {
                    if ((_i_9 < _n_6 : Bool)) {
                        _gotoNext = 4073167i32;
                    } else {
                        _gotoNext = 4073225i32;
                    };
                } else if (__value__ == (4073163i32)) {
                    _i_9++;
                    _gotoNext = 4073144i32;
                } else if (__value__ == (4073167i32)) {
                    if (_this_7[(_i_9 : stdgo.GoInt)] != (_last_8[(_i_9 : stdgo.GoInt)])) {
                        _gotoNext = 4073195i32;
                    } else {
                        _gotoNext = 4073163i32;
                    };
                } else if (__value__ == (4073195i32)) {
                    _gotoNext = 4073240i32;
                } else if (__value__ == (4073225i32)) {
                    _gotoNext = 4073281i32;
                } else if (__value__ == (4073240i32)) {
                    _gotoNext = 4073240i32;
                    _id_0++;
                    _lastPos_2 = _j_4;
                    _lastLen_1 = _n_5;
                    _gotoNext = 4073281i32;
                } else if (__value__ == (4073281i32)) {
                    _sa[((_j_4 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_0 : stdgo.GoInt32);
                    _i_4072758_3++;
                    _gotoNext = 4073310i32;
                } else if (__value__ == (4073309i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_4072758_3 = @:binopAssign __tmp__0;
                        _j_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4073310i32;
                } else if (__value__ == (4073310i32)) {
                    if (_i_4072758_3 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 4072784i32;
                    } else {
                        _gotoNext = 4073313i32;
                    };
                } else if (__value__ == (4073313i32)) {
                    return _id_0;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
