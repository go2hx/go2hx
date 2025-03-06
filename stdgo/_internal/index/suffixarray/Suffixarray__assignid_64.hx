package stdgo._internal.index.suffixarray;
function _assignID_64(_text:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        var _i_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_34:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _this_37:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _n_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_35:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i_4204480_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastPos_32:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _lastLen_31:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _id_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_38:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _id_30 = (0 : stdgo.GoInt);
                    _lastLen_31 = (-1i64 : stdgo.GoInt64);
                    _lastPos_32 = (0i64 : stdgo.GoInt64);
                    if ((0i32 : stdgo.GoInt) < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4205031i32;
                    } else {
                        _gotoNext = 4205035i32;
                    };
                } else if (__value__ == (4204506i32)) {
                    _j_34 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(_i_4204480_33 : stdgo.GoInt)];
                    _n_35 = _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)];
                    if (_n_35 != (_lastLen_31)) {
                        _gotoNext = 4204625i32;
                    } else {
                        _gotoNext = 4204645i32;
                    };
                } else if (__value__ == (4204625i32)) {
                    _gotoNext = 4204962i32;
                } else if (__value__ == (4204645i32)) {
                    if (((_n_35 : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 4204679i32;
                    } else {
                        _gotoNext = 4204764i32;
                    };
                } else if (__value__ == (4204679i32)) {
                    _gotoNext = 4205003i32;
                } else if (__value__ == (4204764i32)) {
                    _n_36 = (_n_35 : stdgo.GoInt);
                    _this_37 = ((_text.__slice__(_j_34) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _last_38 = ((_text.__slice__(_lastPos_32) : stdgo.Slice<stdgo.GoInt64>).__slice__(0, _n_36) : stdgo.Slice<stdgo.GoInt64>);
                    _i_39 = (0 : stdgo.GoInt);
                    _gotoNext = 4204866i32;
                    {
                        _gotoNext = 4204764i32;
                    };
                } else if (__value__ == (4204866i32)) {
                    if ((_i_39 < _n_36 : Bool)) {
                        _gotoNext = 4204889i32;
                    } else {
                        _gotoNext = 4204947i32;
                    };
                } else if (__value__ == (4204885i32)) {
                    _i_39++;
                    _gotoNext = 4204866i32;
                } else if (__value__ == (4204889i32)) {
                    if (_this_37[(_i_39 : stdgo.GoInt)] != (_last_38[(_i_39 : stdgo.GoInt)])) {
                        _gotoNext = 4204917i32;
                    } else {
                        _gotoNext = 4204885i32;
                    };
                } else if (__value__ == (4204917i32)) {
                    _gotoNext = 4204962i32;
                } else if (__value__ == (4204947i32)) {
                    _gotoNext = 4205003i32;
                } else if (__value__ == (4204962i32)) {
                    _gotoNext = 4204962i32;
                    _id_30++;
                    _lastPos_32 = _j_34;
                    _lastLen_31 = _n_35;
                    _gotoNext = 4205003i32;
                } else if (__value__ == (4205003i32)) {
                    _sa[((_j_34 / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id_30 : stdgo.GoInt64);
                    _i_4204480_33++;
                    _gotoNext = 4205032i32;
                } else if (__value__ == (4205031i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)[(0i32 : stdgo.GoInt)];
                        _i_4204480_33 = @:binopAssign __tmp__0;
                        _j_34 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4205032i32;
                } else if (__value__ == (4205032i32)) {
                    if (_i_4204480_33 < ((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>).length)) {
                        _gotoNext = 4204506i32;
                    } else {
                        _gotoNext = 4205035i32;
                    };
                } else if (__value__ == (4205035i32)) {
                    return _id_30;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
