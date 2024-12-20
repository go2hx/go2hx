package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_3319396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastLen_3318937:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3318928:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3319362:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _this_3319338:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _n_3319120:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _j_3319001:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3319006_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_3318973:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _n_3319323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3318928 = (0 : stdgo.GoInt);
                    _lastLen_3318937 = (-1 : stdgo.GoInt32);
                    _lastPos_3318973 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3319557i32;
                    } else {
                        _gotoNext = 3319561i32;
                    };
                } else if (__value__ == (3319032i32)) {
                    _j_3319001 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3319006_0 : stdgo.GoInt)];
                    _n_3319120 = _sa[((_j_3319001 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3319120 != (_lastLen_3318937)) {
                        _gotoNext = 3319151i32;
                    } else {
                        _gotoNext = 3319171i32;
                    };
                } else if (__value__ == (3319151i32)) {
                    _gotoNext = 3319488i32;
                } else if (__value__ == (3319171i32)) {
                    if (((_n_3319120 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3319205i32;
                    } else {
                        _gotoNext = 3319290i32;
                    };
                } else if (__value__ == (3319205i32)) {
                    _gotoNext = 3319529i32;
                } else if (__value__ == (3319290i32)) {
                    _n_3319323 = (_n_3319120 : stdgo.GoInt);
                    _this_3319338 = ((_text.__slice__(_j_3319001) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3319323) : stdgo.Slice<stdgo.GoInt32>);
                    _last_3319362 = ((_text.__slice__(_lastPos_3318973) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3319323) : stdgo.Slice<stdgo.GoInt32>);
                    _i_3319396 = (0 : stdgo.GoInt);
                    _gotoNext = 3319392i32;
                    {
                        _gotoNext = 3319290i32;
                    };
                } else if (__value__ == (3319392i32)) {
                    if ((_i_3319396 < _n_3319323 : Bool)) {
                        _gotoNext = 3319415i32;
                    } else {
                        _gotoNext = 3319473i32;
                    };
                } else if (__value__ == (3319411i32)) {
                    _i_3319396++;
                    _gotoNext = 3319392i32;
                } else if (__value__ == (3319415i32)) {
                    if (_this_3319338[(_i_3319396 : stdgo.GoInt)] != (_last_3319362[(_i_3319396 : stdgo.GoInt)])) {
                        _gotoNext = 3319443i32;
                    } else {
                        _gotoNext = 3319411i32;
                    };
                } else if (__value__ == (3319443i32)) {
                    _gotoNext = 3319488i32;
                } else if (__value__ == (3319473i32)) {
                    _gotoNext = 3319529i32;
                } else if (__value__ == (3319488i32)) {
                    _gotoNext = 3319488i32;
                    _id_3318928++;
                    _lastPos_3318973 = _j_3319001;
                    _lastLen_3318937 = _n_3319120;
                    _gotoNext = 3319529i32;
                } else if (__value__ == (3319529i32)) {
                    _sa[((_j_3319001 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3318928 : stdgo.GoInt32);
                    _i_3319006_0++;
                    _gotoNext = 3319558i32;
                } else if (__value__ == (3319557i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3319006_0 = __tmp__0;
                        _j_3319001 = __tmp__1;
                    };
                    _gotoNext = 3319558i32;
                } else if (__value__ == (3319558i32)) {
                    if (_i_3319006_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3319032i32;
                    } else {
                        _gotoNext = 3319561i32;
                    };
                } else if (__value__ == (3319561i32)) {
                    return _id_3318928;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
