package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3870152:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3869870:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3869575:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3869455:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3869226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3869231_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3869423:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _h_3869202:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3869202 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3869315i32;
                    } else {
                        _gotoNext = 3869319i32;
                    };
                } else if (__value__ == (3869241i32)) {
                    _x_3869226 = _stk[(_i_3869231_0 : stdgo.GoInt)];
                    _h_3869202 = ((_h_3869202 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3869202 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3869202 = (_h_3869202 + (((new stdgo.GoUIntptr(_x_3869226) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3869231_0++;
                    _gotoNext = 3869316i32;
                } else if (__value__ == (3869315i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3869231_0 = __tmp__0;
                        _x_3869226 = __tmp__1;
                    };
                    _gotoNext = 3869316i32;
                } else if (__value__ == (3869316i32)) {
                    if (_i_3869231_0 < (_stk.length)) {
                        _gotoNext = 3869241i32;
                    } else {
                        _gotoNext = 3869319i32;
                    };
                } else if (__value__ == (3869319i32)) {
                    _h_3869202 = ((_h_3869202 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3869202 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3869202 = (_h_3869202 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3869442i32;
                } else if (__value__ == (3869442i32)) {
                    _e_3869455 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3869202] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3869451i32;
                } else if (__value__ == (3869451i32)) {
                    if (!searchBreak && ((_e_3869455 != null && ((_e_3869455 : Dynamic).__nil__ == null || !(_e_3869455 : Dynamic).__nil__)))) {
                        _gotoNext = 3869505i32;
                    } else {
                        _gotoNext = 3869808i32;
                    };
                } else if (__value__ == (3869505i32)) {
                    if ((((@:checkr _e_3869455 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3869455 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3869551i32;
                    } else {
                        _gotoNext = 3869571i32;
                    };
                } else if (__value__ == (3869551i32)) {
                    {
                        final __tmp__0 = _e_3869455;
                        final __tmp__1 = (@:checkr _e_3869455 ?? throw "null pointer dereference")._nextHash;
                        _last_3869423 = __tmp__0;
                        _e_3869455 = __tmp__1;
                    };
                    _gotoNext = 3869451i32;
                } else if (__value__ == (3869571i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3869654i32;
                    } else {
                        _gotoNext = 3869679i32;
                    };
                } else if (__value__ == (3869575i32)) {
                    _j_3869575++;
                    _gotoNext = 3869655i32;
                } else if (__value__ == (3869590i32)) {
                    if ((@:checkr _e_3869455 ?? throw "null pointer dereference")._stk[(_j_3869575 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3869575 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3869626i32;
                    } else {
                        _gotoNext = 3869575i32;
                    };
                } else if (__value__ == (3869626i32)) {
                    {
                        final __tmp__0 = _e_3869455;
                        final __tmp__1 = (@:checkr _e_3869455 ?? throw "null pointer dereference")._nextHash;
                        _last_3869423 = __tmp__0;
                        _e_3869455 = __tmp__1;
                    };
                    _gotoNext = 3869451i32;
                } else if (__value__ == (3869654i32)) {
                    _j_3869575 = 0i32;
                    _gotoNext = 3869655i32;
                } else if (__value__ == (3869655i32)) {
                    if (_j_3869575 < (_stk.length)) {
                        _gotoNext = 3869590i32;
                    } else {
                        _gotoNext = 3869679i32;
                    };
                } else if (__value__ == (3869679i32)) {
                    if ((_last_3869423 != null && ((_last_3869423 : Dynamic).__nil__ == null || !(_last_3869423 : Dynamic).__nil__))) {
                        _gotoNext = 3869694i32;
                    } else {
                        _gotoNext = 3869775i32;
                    };
                } else if (__value__ == (3869694i32)) {
                    (@:checkr _last_3869423 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3869455 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3869455 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3869202] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3869202] = _e_3869455;
                    _gotoNext = 3869775i32;
                } else if (__value__ == (3869775i32)) {
                    return _e_3869455;
                    {
                        final __tmp__0 = _e_3869455;
                        final __tmp__1 = (@:checkr _e_3869455 ?? throw "null pointer dereference")._nextHash;
                        _last_3869423 = __tmp__0;
                        _e_3869455 = __tmp__1;
                    };
                    _gotoNext = 3869451i32;
                } else if (__value__ == (3869808i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869827i32;
                    } else {
                        _gotoNext = 3869870i32;
                    };
                } else if (__value__ == (3869827i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3869870i32;
                } else if (__value__ == (3869870i32)) {
                    _e_3869870 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3869870 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3869202] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3869870 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3869975i32;
                    } else {
                        _gotoNext = 3870074i32;
                    };
                } else if (__value__ == (3869975i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3870074i32;
                } else if (__value__ == (3870074i32)) {
                    (@:checkr _e_3869870 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3870198i32;
                    } else {
                        _gotoNext = 3870202i32;
                    };
                } else if (__value__ == (3870167i32)) {
                    (@:checkr _e_3869870 ?? throw "null pointer dereference")._stk[(_j_3870152 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3870152 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3870152++;
                    _gotoNext = 3870199i32;
                } else if (__value__ == (3870198i32)) {
                    _j_3870152 = 0i32;
                    _gotoNext = 3870199i32;
                } else if (__value__ == (3870199i32)) {
                    if (_j_3870152 < (_stk.length)) {
                        _gotoNext = 3870167i32;
                    } else {
                        _gotoNext = 3870202i32;
                    };
                } else if (__value__ == (3870202i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3870219i32;
                    } else {
                        _gotoNext = 3870268i32;
                    };
                } else if (__value__ == (3870219i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3870268i32;
                } else if (__value__ == (3870268i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3869202] = _e_3869870;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3870299i32;
                    } else {
                        _gotoNext = 3870334i32;
                    };
                } else if (__value__ == (3870299i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3869870;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3869870;
                    _gotoNext = 3870374i32;
                } else if (__value__ == (3870334i32)) {
                    _gotoNext = 3870334i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3869870;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3869870;
                    var __blank__ = 0i32;
                    _gotoNext = 3870374i32;
                } else if (__value__ == (3870374i32)) {
                    return _e_3869870;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
