package stdgo._internal.index.suffixarray;
function _assignID_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _last_3329110:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _n_3328868:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3328754_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_3328721:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _lastLen_3328685:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3329144:stdgo.GoInt = (0 : stdgo.GoInt);
        var _this_3329086:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _n_3329071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3328749:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _id_3328676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_3328676 = (0 : stdgo.GoInt);
                    _lastLen_3328685 = (-1 : stdgo.GoInt32);
                    _lastPos_3328721 = (0 : stdgo.GoInt32);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3329305i32;
                    } else {
                        _gotoNext = 3329309i32;
                    };
                } else if (__value__ == (3328780i32)) {
                    _j_3328749 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(_i_3328754_0 : stdgo.GoInt)];
                    _n_3328868 = _sa[((_j_3328749 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (_n_3328868 != (_lastLen_3328685)) {
                        _gotoNext = 3328899i32;
                    } else {
                        _gotoNext = 3328919i32;
                    };
                } else if (__value__ == (3328899i32)) {
                    _gotoNext = 3329236i32;
                } else if (__value__ == (3328919i32)) {
                    if (((_n_3328868 : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3328953i32;
                    } else {
                        _gotoNext = 3329038i32;
                    };
                } else if (__value__ == (3328953i32)) {
                    _gotoNext = 3329277i32;
                } else if (__value__ == (3329038i32)) {
                    _n_3329071 = (_n_3328868 : stdgo.GoInt);
                    _this_3329086 = ((_text.__slice__(_j_3328749) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3329071) : stdgo.Slice<stdgo.GoInt32>);
                    _last_3329110 = ((_text.__slice__(_lastPos_3328721) : stdgo.Slice<stdgo.GoInt32>).__slice__(0, _n_3329071) : stdgo.Slice<stdgo.GoInt32>);
                    _i_3329144 = (0 : stdgo.GoInt);
                    _gotoNext = 3329140i32;
                    {
                        _gotoNext = 3329038i32;
                    };
                } else if (__value__ == (3329140i32)) {
                    if ((_i_3329144 < _n_3329071 : Bool)) {
                        _gotoNext = 3329163i32;
                    } else {
                        _gotoNext = 3329221i32;
                    };
                } else if (__value__ == (3329159i32)) {
                    _i_3329144++;
                    _gotoNext = 3329140i32;
                } else if (__value__ == (3329163i32)) {
                    if (_this_3329086[(_i_3329144 : stdgo.GoInt)] != (_last_3329110[(_i_3329144 : stdgo.GoInt)])) {
                        _gotoNext = 3329191i32;
                    } else {
                        _gotoNext = 3329159i32;
                    };
                } else if (__value__ == (3329191i32)) {
                    _gotoNext = 3329236i32;
                } else if (__value__ == (3329221i32)) {
                    _gotoNext = 3329277i32;
                } else if (__value__ == (3329236i32)) {
                    _gotoNext = 3329236i32;
                    _id_3328676++;
                    _lastPos_3328721 = _j_3328749;
                    _lastLen_3328685 = _n_3328868;
                    _gotoNext = 3329277i32;
                } else if (__value__ == (3329277i32)) {
                    _sa[((_j_3328749 / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id_3328676 : stdgo.GoInt32);
                    _i_3328754_0++;
                    _gotoNext = 3329306i32;
                } else if (__value__ == (3329305i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)[(0i32 : stdgo.GoInt)];
                        _i_3328754_0 = __tmp__0;
                        _j_3328749 = __tmp__1;
                    };
                    _gotoNext = 3329306i32;
                } else if (__value__ == (3329306i32)) {
                    if (_i_3328754_0 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).length)) {
                        _gotoNext = 3328780i32;
                    } else {
                        _gotoNext = 3329309i32;
                    };
                } else if (__value__ == (3329309i32)) {
                    return _id_3328676;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
