package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _e_3896525:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var searchBreak = false;
        var _x_3895881:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3896807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3896230:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3896110:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_3896078:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _i_3895886_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3895857:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3895857 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895970i32;
                    } else {
                        _gotoNext = 3895974i32;
                    };
                } else if (__value__ == (3895896i32)) {
                    _x_3895881 = _stk[(_i_3895886_0 : stdgo.GoInt)];
                    _h_3895857 = ((_h_3895857 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3895857 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3895857 = (_h_3895857 + (((new stdgo.GoUIntptr(_x_3895881) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3895886_0++;
                    _gotoNext = 3895971i32;
                } else if (__value__ == (3895970i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3895886_0 = __tmp__0;
                        _x_3895881 = __tmp__1;
                    };
                    _gotoNext = 3895971i32;
                } else if (__value__ == (3895971i32)) {
                    if (_i_3895886_0 < (_stk.length)) {
                        _gotoNext = 3895896i32;
                    } else {
                        _gotoNext = 3895974i32;
                    };
                } else if (__value__ == (3895974i32)) {
                    _h_3895857 = ((_h_3895857 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3895857 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3895857 = (_h_3895857 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3896097i32;
                } else if (__value__ == (3896097i32)) {
                    _e_3896110 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896106i32)) {
                    if (!searchBreak && ((_e_3896110 != null && ((_e_3896110 : Dynamic).__nil__ == null || !(_e_3896110 : Dynamic).__nil__)))) {
                        _gotoNext = 3896160i32;
                    } else {
                        _gotoNext = 3896463i32;
                    };
                } else if (__value__ == (3896160i32)) {
                    if ((((@:checkr _e_3896110 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3896110 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3896206i32;
                    } else {
                        _gotoNext = 3896226i32;
                    };
                } else if (__value__ == (3896206i32)) {
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = (@:checkr _e_3896110 ?? throw "null pointer dereference")._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896226i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3896309i32;
                    } else {
                        _gotoNext = 3896334i32;
                    };
                } else if (__value__ == (3896230i32)) {
                    _j_3896230++;
                    _gotoNext = 3896310i32;
                } else if (__value__ == (3896245i32)) {
                    if ((@:checkr _e_3896110 ?? throw "null pointer dereference")._stk[(_j_3896230 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3896230 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3896281i32;
                    } else {
                        _gotoNext = 3896230i32;
                    };
                } else if (__value__ == (3896281i32)) {
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = (@:checkr _e_3896110 ?? throw "null pointer dereference")._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896309i32)) {
                    _j_3896230 = 0i32;
                    _gotoNext = 3896310i32;
                } else if (__value__ == (3896310i32)) {
                    if (_j_3896230 < (_stk.length)) {
                        _gotoNext = 3896245i32;
                    } else {
                        _gotoNext = 3896334i32;
                    };
                } else if (__value__ == (3896334i32)) {
                    if ((_last_3896078 != null && ((_last_3896078 : Dynamic).__nil__ == null || !(_last_3896078 : Dynamic).__nil__))) {
                        _gotoNext = 3896349i32;
                    } else {
                        _gotoNext = 3896430i32;
                    };
                } else if (__value__ == (3896349i32)) {
                    (@:checkr _last_3896078 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3896110 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3896110 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3895857] = _e_3896110;
                    _gotoNext = 3896430i32;
                } else if (__value__ == (3896430i32)) {
                    return _e_3896110;
                    {
                        final __tmp__0 = _e_3896110;
                        final __tmp__1 = (@:checkr _e_3896110 ?? throw "null pointer dereference")._nextHash;
                        _last_3896078 = __tmp__0;
                        _e_3896110 = __tmp__1;
                    };
                    _gotoNext = 3896106i32;
                } else if (__value__ == (3896463i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3896482i32;
                    } else {
                        _gotoNext = 3896525i32;
                    };
                } else if (__value__ == (3896482i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3896525i32;
                } else if (__value__ == (3896525i32)) {
                    _e_3896525 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3896525 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3895857] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3896525 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3896630i32;
                    } else {
                        _gotoNext = 3896729i32;
                    };
                } else if (__value__ == (3896630i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3896729i32;
                } else if (__value__ == (3896729i32)) {
                    (@:checkr _e_3896525 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3896853i32;
                    } else {
                        _gotoNext = 3896857i32;
                    };
                } else if (__value__ == (3896822i32)) {
                    (@:checkr _e_3896525 ?? throw "null pointer dereference")._stk[(_j_3896807 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3896807 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3896807++;
                    _gotoNext = 3896854i32;
                } else if (__value__ == (3896853i32)) {
                    _j_3896807 = 0i32;
                    _gotoNext = 3896854i32;
                } else if (__value__ == (3896854i32)) {
                    if (_j_3896807 < (_stk.length)) {
                        _gotoNext = 3896822i32;
                    } else {
                        _gotoNext = 3896857i32;
                    };
                } else if (__value__ == (3896857i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3896874i32;
                    } else {
                        _gotoNext = 3896923i32;
                    };
                } else if (__value__ == (3896874i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3896923i32;
                } else if (__value__ == (3896923i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3895857] = _e_3896525;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3896954i32;
                    } else {
                        _gotoNext = 3896989i32;
                    };
                } else if (__value__ == (3896954i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3896525;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3896525;
                    _gotoNext = 3897029i32;
                } else if (__value__ == (3896989i32)) {
                    _gotoNext = 3896989i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3896525;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3896525;
                    var __blank__ = 0i32;
                    _gotoNext = 3897029i32;
                } else if (__value__ == (3897029i32)) {
                    return _e_3896525;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
