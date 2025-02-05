package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3836479:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3836359:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3836130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3836106:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_3837056:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3836774:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_3836327:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _i_3836135_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3836106 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836219i32;
                    } else {
                        _gotoNext = 3836223i32;
                    };
                } else if (__value__ == (3836145i32)) {
                    _x_3836130 = _stk[(_i_3836135_0 : stdgo.GoInt)];
                    _h_3836106 = ((_h_3836106 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836106 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836106 = (_h_3836106 + (((new stdgo.GoUIntptr(_x_3836130) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3836135_0++;
                    _gotoNext = 3836220i32;
                } else if (__value__ == (3836219i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3836135_0 = __tmp__0;
                        _x_3836130 = __tmp__1;
                    };
                    _gotoNext = 3836220i32;
                } else if (__value__ == (3836220i32)) {
                    if (_i_3836135_0 < (_stk.length)) {
                        _gotoNext = 3836145i32;
                    } else {
                        _gotoNext = 3836223i32;
                    };
                } else if (__value__ == (3836223i32)) {
                    _h_3836106 = ((_h_3836106 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836106 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836106 = (_h_3836106 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3836346i32;
                } else if (__value__ == (3836346i32)) {
                    _e_3836359 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836106] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3836355i32;
                } else if (__value__ == (3836355i32)) {
                    if (!searchBreak && ((_e_3836359 != null && ((_e_3836359 : Dynamic).__nil__ == null || !(_e_3836359 : Dynamic).__nil__)))) {
                        _gotoNext = 3836409i32;
                    } else {
                        _gotoNext = 3836712i32;
                    };
                } else if (__value__ == (3836409i32)) {
                    if ((((@:checkr _e_3836359 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3836359 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3836455i32;
                    } else {
                        _gotoNext = 3836475i32;
                    };
                } else if (__value__ == (3836455i32)) {
                    {
                        final __tmp__0 = _e_3836359;
                        final __tmp__1 = (@:checkr _e_3836359 ?? throw "null pointer dereference")._nextHash;
                        _last_3836327 = __tmp__0;
                        _e_3836359 = __tmp__1;
                    };
                    _gotoNext = 3836355i32;
                } else if (__value__ == (3836475i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836558i32;
                    } else {
                        _gotoNext = 3836583i32;
                    };
                } else if (__value__ == (3836479i32)) {
                    _j_3836479++;
                    _gotoNext = 3836559i32;
                } else if (__value__ == (3836494i32)) {
                    if ((@:checkr _e_3836359 ?? throw "null pointer dereference")._stk[(_j_3836479 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3836479 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3836530i32;
                    } else {
                        _gotoNext = 3836479i32;
                    };
                } else if (__value__ == (3836530i32)) {
                    {
                        final __tmp__0 = _e_3836359;
                        final __tmp__1 = (@:checkr _e_3836359 ?? throw "null pointer dereference")._nextHash;
                        _last_3836327 = __tmp__0;
                        _e_3836359 = __tmp__1;
                    };
                    _gotoNext = 3836355i32;
                } else if (__value__ == (3836558i32)) {
                    _j_3836479 = 0i32;
                    _gotoNext = 3836559i32;
                } else if (__value__ == (3836559i32)) {
                    if (_j_3836479 < (_stk.length)) {
                        _gotoNext = 3836494i32;
                    } else {
                        _gotoNext = 3836583i32;
                    };
                } else if (__value__ == (3836583i32)) {
                    if ((_last_3836327 != null && ((_last_3836327 : Dynamic).__nil__ == null || !(_last_3836327 : Dynamic).__nil__))) {
                        _gotoNext = 3836598i32;
                    } else {
                        _gotoNext = 3836679i32;
                    };
                } else if (__value__ == (3836598i32)) {
                    (@:checkr _last_3836327 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3836359 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3836359 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836106] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836106] = _e_3836359;
                    _gotoNext = 3836679i32;
                } else if (__value__ == (3836679i32)) {
                    return _e_3836359;
                    {
                        final __tmp__0 = _e_3836359;
                        final __tmp__1 = (@:checkr _e_3836359 ?? throw "null pointer dereference")._nextHash;
                        _last_3836327 = __tmp__0;
                        _e_3836359 = __tmp__1;
                    };
                    _gotoNext = 3836355i32;
                } else if (__value__ == (3836712i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3836731i32;
                    } else {
                        _gotoNext = 3836774i32;
                    };
                } else if (__value__ == (3836731i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3836774i32;
                } else if (__value__ == (3836774i32)) {
                    _e_3836774 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3836774 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836106] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3836774 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3836879i32;
                    } else {
                        _gotoNext = 3836978i32;
                    };
                } else if (__value__ == (3836879i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3836978i32;
                } else if (__value__ == (3836978i32)) {
                    (@:checkr _e_3836774 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3837102i32;
                    } else {
                        _gotoNext = 3837106i32;
                    };
                } else if (__value__ == (3837071i32)) {
                    (@:checkr _e_3836774 ?? throw "null pointer dereference")._stk[(_j_3837056 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3837056 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3837056++;
                    _gotoNext = 3837103i32;
                } else if (__value__ == (3837102i32)) {
                    _j_3837056 = 0i32;
                    _gotoNext = 3837103i32;
                } else if (__value__ == (3837103i32)) {
                    if (_j_3837056 < (_stk.length)) {
                        _gotoNext = 3837071i32;
                    } else {
                        _gotoNext = 3837106i32;
                    };
                } else if (__value__ == (3837106i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3837123i32;
                    } else {
                        _gotoNext = 3837172i32;
                    };
                } else if (__value__ == (3837123i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3837172i32;
                } else if (__value__ == (3837172i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836106] = _e_3836774;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3837203i32;
                    } else {
                        _gotoNext = 3837238i32;
                    };
                } else if (__value__ == (3837203i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3836774;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3836774;
                    _gotoNext = 3837278i32;
                } else if (__value__ == (3837238i32)) {
                    _gotoNext = 3837238i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3836774;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3836774;
                    var __blank__ = 0i32;
                    _gotoNext = 3837278i32;
                } else if (__value__ == (3837278i32)) {
                    return _e_3836774;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
