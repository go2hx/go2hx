package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _n_3305643:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3305321:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3305326_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3305257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3305716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3305682:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _this_3305658:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3305440:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastPos_3305293:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3305248:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3305248 = (0 : stdgo.GoInt);
                    _lastLen_3305257 = (-1 : stdgo.GoInt32);
                    _lastPos_3305293 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3305877i32;
                    } else {
                        _gotoNext = 3305881i32;
                    };
                } else if (__value__ == (3305352i32)) {
                    _j_3305321 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3305326_0 : stdgo.GoInt)];
                    _n_3305440 = _sa[((_j_3305321 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3305440 != (_lastLen_3305257)) {
                        _gotoNext = 3305471i32;
                    } else {
                        _gotoNext = 3305491i32;
                    };
                } else if (__value__ == (3305471i32)) {
                    _gotoNext = 3305808i32;
                } else if (__value__ == (3305491i32)) {
                    if (((_n_3305440 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3305525i32;
                    } else {
                        _gotoNext = 3305610i32;
                    };
                } else if (__value__ == (3305525i32)) {
                    _gotoNext = 3305849i32;
                } else if (__value__ == (3305610i32)) {
                    _n_3305643 = (_n_3305440 : stdgo.GoInt);
                    _this_3305658 = ((_text.__slice__(_j_3305321) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3305643) : stdgo.Slice<stdgo.GoUInt8>);
                    _last_3305682 = ((_text.__slice__(_lastPos_3305293) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n_3305643) : stdgo.Slice<stdgo.GoUInt8>);
                    _i_3305716 = (0 : stdgo.GoInt);
                    _gotoNext = 3305712i32;
                    {
                        _gotoNext = 3305610i32;
                    };
                } else if (__value__ == (3305712i32)) {
                    if ((_i_3305716 < _n_3305643 : Bool)) {
                        _gotoNext = 3305735i32;
                    } else {
                        _gotoNext = 3305793i32;
                    };
                } else if (__value__ == (3305731i32)) {
                    _i_3305716++;
                    _gotoNext = 3305712i32;
                } else if (__value__ == (3305735i32)) {
                    if (_this_3305658[(_i_3305716 : stdgo.GoInt)] != (_last_3305682[(_i_3305716 : stdgo.GoInt)])) {
                        _gotoNext = 3305763i32;
                    } else {
                        _gotoNext = 3305731i32;
                    };
                } else if (__value__ == (3305763i32)) {
                    _gotoNext = 3305808i32;
                } else if (__value__ == (3305793i32)) {
                    _gotoNext = 3305849i32;
                } else if (__value__ == (3305808i32)) {
                    _gotoNext = 3305808i32;
                    _id_3305248++;
                    _lastPos_3305293 = _j_3305321;
                    _lastLen_3305257 = _n_3305440;
                    _gotoNext = 3305849i32;
                } else if (__value__ == (3305849i32)) {
                    _sa[((_j_3305321 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3305248 : stdgo.GoInt32);
                    _i_3305326_0++;
                    _gotoNext = 3305878i32;
                } else if (__value__ == (3305877i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3305326_0 = __tmp__0;
                        _j_3305321 = __tmp__1;
                    };
                    _gotoNext = 3305878i32;
                } else if (__value__ == (3305878i32)) {
                    if (_i_3305326_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3305352i32;
                    } else {
                        _gotoNext = 3305881i32;
                    };
                } else if (__value__ == (3305881i32)) {
                    return _id_3305248;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
