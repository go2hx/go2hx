package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_4:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _h_0:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _last_3:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3865873_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_6:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_0 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865957i32;
                    } else {
                        _gotoNext = 3865961i32;
                    };
                } else if (__value__ == (3865883i32)) {
                    _x_2 = _stk[(_i_3865873_1 : stdgo.GoInt)];
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_x_2) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3865873_1++;
                    _gotoNext = 3865958i32;
                } else if (__value__ == (3865957i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3865873_1 = __tmp__0;
                        _x_2 = __tmp__1;
                    };
                    _gotoNext = 3865958i32;
                } else if (__value__ == (3865958i32)) {
                    if (_i_3865873_1 < (_stk.length)) {
                        _gotoNext = 3865883i32;
                    } else {
                        _gotoNext = 3865961i32;
                    };
                } else if (__value__ == (3865961i32)) {
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3866084i32;
                } else if (__value__ == (3866084i32)) {
                    _e_4 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866093i32)) {
                    if (!searchBreak && ((_e_4 != null && ((_e_4 : Dynamic).__nil__ == null || !(_e_4 : Dynamic).__nil__)))) {
                        _gotoNext = 3866147i32;
                    } else {
                        _gotoNext = 3866450i32;
                    };
                } else if (__value__ == (3866147i32)) {
                    if ((((@:checkr _e_4 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_4 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3866193i32;
                    } else {
                        _gotoNext = 3866213i32;
                    };
                } else if (__value__ == (3866193i32)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = __tmp__0;
                        _e_4 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866213i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866296i32;
                    } else {
                        _gotoNext = 3866321i32;
                    };
                } else if (__value__ == (3866217i32)) {
                    _j_5++;
                    _gotoNext = 3866297i32;
                } else if (__value__ == (3866232i32)) {
                    if ((@:checkr _e_4 ?? throw "null pointer dereference")._stk[(_j_5 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_5 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3866268i32;
                    } else {
                        _gotoNext = 3866217i32;
                    };
                } else if (__value__ == (3866268i32)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = __tmp__0;
                        _e_4 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866296i32)) {
                    _j_5 = 0i32;
                    _gotoNext = 3866297i32;
                } else if (__value__ == (3866297i32)) {
                    if (_j_5 < (_stk.length)) {
                        _gotoNext = 3866232i32;
                    } else {
                        _gotoNext = 3866321i32;
                    };
                } else if (__value__ == (3866321i32)) {
                    if ((_last_3 != null && ((_last_3 : Dynamic).__nil__ == null || !(_last_3 : Dynamic).__nil__))) {
                        _gotoNext = 3866336i32;
                    } else {
                        _gotoNext = 3866417i32;
                    };
                } else if (__value__ == (3866336i32)) {
                    (@:checkr _last_3 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_4;
                    _gotoNext = 3866417i32;
                } else if (__value__ == (3866417i32)) {
                    return _e_4;
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = __tmp__0;
                        _e_4 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866450i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866469i32;
                    } else {
                        _gotoNext = 3866512i32;
                    };
                } else if (__value__ == (3866469i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3866512i32;
                } else if (__value__ == (3866512i32)) {
                    _e_6 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_6 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_6 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3866617i32;
                    } else {
                        _gotoNext = 3866716i32;
                    };
                } else if (__value__ == (3866617i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3866716i32;
                } else if (__value__ == (3866716i32)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866840i32;
                    } else {
                        _gotoNext = 3866844i32;
                    };
                } else if (__value__ == (3866809i32)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk[(_j_7 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_7 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_7++;
                    _gotoNext = 3866841i32;
                } else if (__value__ == (3866840i32)) {
                    _j_7 = 0i32;
                    _gotoNext = 3866841i32;
                } else if (__value__ == (3866841i32)) {
                    if (_j_7 < (_stk.length)) {
                        _gotoNext = 3866809i32;
                    } else {
                        _gotoNext = 3866844i32;
                    };
                } else if (__value__ == (3866844i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3866861i32;
                    } else {
                        _gotoNext = 3866910i32;
                    };
                } else if (__value__ == (3866861i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3866910i32;
                } else if (__value__ == (3866910i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_6;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3866941i32;
                    } else {
                        _gotoNext = 3866976i32;
                    };
                } else if (__value__ == (3866941i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    _gotoNext = 3867016i32;
                } else if (__value__ == (3866976i32)) {
                    _gotoNext = 3866976i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    var __blank__ = 0i32;
                    _gotoNext = 3867016i32;
                } else if (__value__ == (3867016i32)) {
                    return _e_6;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
