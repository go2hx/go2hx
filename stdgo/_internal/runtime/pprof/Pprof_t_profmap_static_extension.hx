package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _e_3861754:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_3861722:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _h_3861501:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var searchBreak = false;
        var _j_3861874:stdgo.GoInt = (0 : stdgo.GoInt);
        var _x_3861525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3861530_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3862451:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3862169:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3861501 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3861614i32;
                    } else {
                        _gotoNext = 3861618i32;
                    };
                } else if (__value__ == (3861540i32)) {
                    _x_3861525 = _stk[(_i_3861530_0 : stdgo.GoInt)];
                    _h_3861501 = ((_h_3861501 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3861501 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3861501 = (_h_3861501 + (((new stdgo.GoUIntptr(_x_3861525) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3861530_0++;
                    _gotoNext = 3861615i32;
                } else if (__value__ == (3861614i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3861530_0 = __tmp__0;
                        _x_3861525 = __tmp__1;
                    };
                    _gotoNext = 3861615i32;
                } else if (__value__ == (3861615i32)) {
                    if (_i_3861530_0 < (_stk.length)) {
                        _gotoNext = 3861540i32;
                    } else {
                        _gotoNext = 3861618i32;
                    };
                } else if (__value__ == (3861618i32)) {
                    _h_3861501 = ((_h_3861501 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3861501 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3861501 = (_h_3861501 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3861741i32;
                } else if (__value__ == (3861741i32)) {
                    _e_3861754 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3861501] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3861750i32;
                } else if (__value__ == (3861750i32)) {
                    if (!searchBreak && ((_e_3861754 != null && ((_e_3861754 : Dynamic).__nil__ == null || !(_e_3861754 : Dynamic).__nil__)))) {
                        _gotoNext = 3861804i32;
                    } else {
                        _gotoNext = 3862107i32;
                    };
                } else if (__value__ == (3861804i32)) {
                    if ((((@:checkr _e_3861754 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3861754 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3861850i32;
                    } else {
                        _gotoNext = 3861870i32;
                    };
                } else if (__value__ == (3861850i32)) {
                    {
                        final __tmp__0 = _e_3861754;
                        final __tmp__1 = (@:checkr _e_3861754 ?? throw "null pointer dereference")._nextHash;
                        _last_3861722 = __tmp__0;
                        _e_3861754 = __tmp__1;
                    };
                    _gotoNext = 3861750i32;
                } else if (__value__ == (3861870i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3861953i32;
                    } else {
                        _gotoNext = 3861978i32;
                    };
                } else if (__value__ == (3861874i32)) {
                    _j_3861874++;
                    _gotoNext = 3861954i32;
                } else if (__value__ == (3861889i32)) {
                    if ((@:checkr _e_3861754 ?? throw "null pointer dereference")._stk[(_j_3861874 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3861874 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3861925i32;
                    } else {
                        _gotoNext = 3861874i32;
                    };
                } else if (__value__ == (3861925i32)) {
                    {
                        final __tmp__0 = _e_3861754;
                        final __tmp__1 = (@:checkr _e_3861754 ?? throw "null pointer dereference")._nextHash;
                        _last_3861722 = __tmp__0;
                        _e_3861754 = __tmp__1;
                    };
                    _gotoNext = 3861750i32;
                } else if (__value__ == (3861953i32)) {
                    _j_3861874 = 0i32;
                    _gotoNext = 3861954i32;
                } else if (__value__ == (3861954i32)) {
                    if (_j_3861874 < (_stk.length)) {
                        _gotoNext = 3861889i32;
                    } else {
                        _gotoNext = 3861978i32;
                    };
                } else if (__value__ == (3861978i32)) {
                    if ((_last_3861722 != null && ((_last_3861722 : Dynamic).__nil__ == null || !(_last_3861722 : Dynamic).__nil__))) {
                        _gotoNext = 3861993i32;
                    } else {
                        _gotoNext = 3862074i32;
                    };
                } else if (__value__ == (3861993i32)) {
                    (@:checkr _last_3861722 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3861754 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3861754 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3861501] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3861501] = _e_3861754;
                    _gotoNext = 3862074i32;
                } else if (__value__ == (3862074i32)) {
                    return _e_3861754;
                    {
                        final __tmp__0 = _e_3861754;
                        final __tmp__1 = (@:checkr _e_3861754 ?? throw "null pointer dereference")._nextHash;
                        _last_3861722 = __tmp__0;
                        _e_3861754 = __tmp__1;
                    };
                    _gotoNext = 3861750i32;
                } else if (__value__ == (3862107i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862126i32;
                    } else {
                        _gotoNext = 3862169i32;
                    };
                } else if (__value__ == (3862126i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3862169i32;
                } else if (__value__ == (3862169i32)) {
                    _e_3862169 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3862169 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3861501] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3862169 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3862274i32;
                    } else {
                        _gotoNext = 3862373i32;
                    };
                } else if (__value__ == (3862274i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3862373i32;
                } else if (__value__ == (3862373i32)) {
                    (@:checkr _e_3862169 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3862497i32;
                    } else {
                        _gotoNext = 3862501i32;
                    };
                } else if (__value__ == (3862466i32)) {
                    (@:checkr _e_3862169 ?? throw "null pointer dereference")._stk[(_j_3862451 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3862451 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3862451++;
                    _gotoNext = 3862498i32;
                } else if (__value__ == (3862497i32)) {
                    _j_3862451 = 0i32;
                    _gotoNext = 3862498i32;
                } else if (__value__ == (3862498i32)) {
                    if (_j_3862451 < (_stk.length)) {
                        _gotoNext = 3862466i32;
                    } else {
                        _gotoNext = 3862501i32;
                    };
                } else if (__value__ == (3862501i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3862518i32;
                    } else {
                        _gotoNext = 3862567i32;
                    };
                } else if (__value__ == (3862518i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3862567i32;
                } else if (__value__ == (3862567i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3861501] = _e_3862169;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3862598i32;
                    } else {
                        _gotoNext = 3862633i32;
                    };
                } else if (__value__ == (3862598i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3862169;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3862169;
                    _gotoNext = 3862673i32;
                } else if (__value__ == (3862633i32)) {
                    _gotoNext = 3862633i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3862169;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3862169;
                    var __blank__ = 0i32;
                    _gotoNext = 3862673i32;
                } else if (__value__ == (3862673i32)) {
                    return _e_3862169;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
