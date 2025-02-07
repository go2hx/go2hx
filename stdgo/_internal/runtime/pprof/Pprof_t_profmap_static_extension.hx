package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _h_3859899:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_3860849:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3860272:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3860152:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3859923:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3859928_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3860120:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _e_3860567:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3859899 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860012i32;
                    } else {
                        _gotoNext = 3860016i32;
                    };
                } else if (__value__ == (3859938i32)) {
                    _x_3859923 = _stk[(_i_3859928_0 : stdgo.GoInt)];
                    _h_3859899 = ((_h_3859899 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3859899 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3859899 = (_h_3859899 + (((new stdgo.GoUIntptr(_x_3859923) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3859928_0++;
                    _gotoNext = 3860013i32;
                } else if (__value__ == (3860012i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3859928_0 = __tmp__0;
                        _x_3859923 = __tmp__1;
                    };
                    _gotoNext = 3860013i32;
                } else if (__value__ == (3860013i32)) {
                    if (_i_3859928_0 < (_stk.length)) {
                        _gotoNext = 3859938i32;
                    } else {
                        _gotoNext = 3860016i32;
                    };
                } else if (__value__ == (3860016i32)) {
                    _h_3859899 = ((_h_3859899 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3859899 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3859899 = (_h_3859899 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3860139i32;
                } else if (__value__ == (3860139i32)) {
                    _e_3860152 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860148i32)) {
                    if (!searchBreak && ((_e_3860152 != null && ((_e_3860152 : Dynamic).__nil__ == null || !(_e_3860152 : Dynamic).__nil__)))) {
                        _gotoNext = 3860202i32;
                    } else {
                        _gotoNext = 3860505i32;
                    };
                } else if (__value__ == (3860202i32)) {
                    if ((((@:checkr _e_3860152 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3860152 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3860248i32;
                    } else {
                        _gotoNext = 3860268i32;
                    };
                } else if (__value__ == (3860248i32)) {
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = (@:checkr _e_3860152 ?? throw "null pointer dereference")._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860268i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860351i32;
                    } else {
                        _gotoNext = 3860376i32;
                    };
                } else if (__value__ == (3860272i32)) {
                    _j_3860272++;
                    _gotoNext = 3860352i32;
                } else if (__value__ == (3860287i32)) {
                    if ((@:checkr _e_3860152 ?? throw "null pointer dereference")._stk[(_j_3860272 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3860272 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3860323i32;
                    } else {
                        _gotoNext = 3860272i32;
                    };
                } else if (__value__ == (3860323i32)) {
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = (@:checkr _e_3860152 ?? throw "null pointer dereference")._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860351i32)) {
                    _j_3860272 = 0i32;
                    _gotoNext = 3860352i32;
                } else if (__value__ == (3860352i32)) {
                    if (_j_3860272 < (_stk.length)) {
                        _gotoNext = 3860287i32;
                    } else {
                        _gotoNext = 3860376i32;
                    };
                } else if (__value__ == (3860376i32)) {
                    if ((_last_3860120 != null && ((_last_3860120 : Dynamic).__nil__ == null || !(_last_3860120 : Dynamic).__nil__))) {
                        _gotoNext = 3860391i32;
                    } else {
                        _gotoNext = 3860472i32;
                    };
                } else if (__value__ == (3860391i32)) {
                    (@:checkr _last_3860120 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3860152 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3860152 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3859899] = _e_3860152;
                    _gotoNext = 3860472i32;
                } else if (__value__ == (3860472i32)) {
                    return _e_3860152;
                    {
                        final __tmp__0 = _e_3860152;
                        final __tmp__1 = (@:checkr _e_3860152 ?? throw "null pointer dereference")._nextHash;
                        _last_3860120 = __tmp__0;
                        _e_3860152 = __tmp__1;
                    };
                    _gotoNext = 3860148i32;
                } else if (__value__ == (3860505i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3860524i32;
                    } else {
                        _gotoNext = 3860567i32;
                    };
                } else if (__value__ == (3860524i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3860567i32;
                } else if (__value__ == (3860567i32)) {
                    _e_3860567 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3860567 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3859899] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3860567 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3860672i32;
                    } else {
                        _gotoNext = 3860771i32;
                    };
                } else if (__value__ == (3860672i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3860771i32;
                } else if (__value__ == (3860771i32)) {
                    (@:checkr _e_3860567 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3860895i32;
                    } else {
                        _gotoNext = 3860899i32;
                    };
                } else if (__value__ == (3860864i32)) {
                    (@:checkr _e_3860567 ?? throw "null pointer dereference")._stk[(_j_3860849 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3860849 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3860849++;
                    _gotoNext = 3860896i32;
                } else if (__value__ == (3860895i32)) {
                    _j_3860849 = 0i32;
                    _gotoNext = 3860896i32;
                } else if (__value__ == (3860896i32)) {
                    if (_j_3860849 < (_stk.length)) {
                        _gotoNext = 3860864i32;
                    } else {
                        _gotoNext = 3860899i32;
                    };
                } else if (__value__ == (3860899i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3860916i32;
                    } else {
                        _gotoNext = 3860965i32;
                    };
                } else if (__value__ == (3860916i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3860965i32;
                } else if (__value__ == (3860965i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3859899] = _e_3860567;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3860996i32;
                    } else {
                        _gotoNext = 3861031i32;
                    };
                } else if (__value__ == (3860996i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3860567;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3860567;
                    _gotoNext = 3861071i32;
                } else if (__value__ == (3861031i32)) {
                    _gotoNext = 3861031i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3860567;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3860567;
                    var __blank__ = 0i32;
                    _gotoNext = 3861071i32;
                } else if (__value__ == (3861071i32)) {
                    return _e_3860567;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
