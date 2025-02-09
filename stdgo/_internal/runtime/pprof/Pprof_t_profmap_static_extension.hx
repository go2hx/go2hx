package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3863718:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _last_3862989:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3863141:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3863021:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3862792:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3862797_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3862768:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _e_3863436:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3862768 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3862881i32;
                    } else {
                        _gotoNext = 3862885i32;
                    };
                } else if (__value__ == (3862807i32)) {
                    _x_3862792 = _stk[(_i_3862797_0 : stdgo.GoInt)];
                    _h_3862768 = ((_h_3862768 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3862768 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3862768 = (_h_3862768 + (((new stdgo.GoUIntptr(_x_3862792) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3862797_0++;
                    _gotoNext = 3862882i32;
                } else if (__value__ == (3862881i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3862797_0 = __tmp__0;
                        _x_3862792 = __tmp__1;
                    };
                    _gotoNext = 3862882i32;
                } else if (__value__ == (3862882i32)) {
                    if (_i_3862797_0 < (_stk.length)) {
                        _gotoNext = 3862807i32;
                    } else {
                        _gotoNext = 3862885i32;
                    };
                } else if (__value__ == (3862885i32)) {
                    _h_3862768 = ((_h_3862768 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3862768 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3862768 = (_h_3862768 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3863008i32;
                } else if (__value__ == (3863008i32)) {
                    _e_3863021 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862768] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3863017i32;
                } else if (__value__ == (3863017i32)) {
                    if (!searchBreak && ((_e_3863021 != null && ((_e_3863021 : Dynamic).__nil__ == null || !(_e_3863021 : Dynamic).__nil__)))) {
                        _gotoNext = 3863071i32;
                    } else {
                        _gotoNext = 3863374i32;
                    };
                } else if (__value__ == (3863071i32)) {
                    if ((((@:checkr _e_3863021 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3863021 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3863117i32;
                    } else {
                        _gotoNext = 3863137i32;
                    };
                } else if (__value__ == (3863117i32)) {
                    {
                        final __tmp__0 = _e_3863021;
                        final __tmp__1 = (@:checkr _e_3863021 ?? throw "null pointer dereference")._nextHash;
                        _last_3862989 = __tmp__0;
                        _e_3863021 = __tmp__1;
                    };
                    _gotoNext = 3863017i32;
                } else if (__value__ == (3863137i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3863220i32;
                    } else {
                        _gotoNext = 3863245i32;
                    };
                } else if (__value__ == (3863141i32)) {
                    _j_3863141++;
                    _gotoNext = 3863221i32;
                } else if (__value__ == (3863156i32)) {
                    if ((@:checkr _e_3863021 ?? throw "null pointer dereference")._stk[(_j_3863141 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3863141 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3863192i32;
                    } else {
                        _gotoNext = 3863141i32;
                    };
                } else if (__value__ == (3863192i32)) {
                    {
                        final __tmp__0 = _e_3863021;
                        final __tmp__1 = (@:checkr _e_3863021 ?? throw "null pointer dereference")._nextHash;
                        _last_3862989 = __tmp__0;
                        _e_3863021 = __tmp__1;
                    };
                    _gotoNext = 3863017i32;
                } else if (__value__ == (3863220i32)) {
                    _j_3863141 = 0i32;
                    _gotoNext = 3863221i32;
                } else if (__value__ == (3863221i32)) {
                    if (_j_3863141 < (_stk.length)) {
                        _gotoNext = 3863156i32;
                    } else {
                        _gotoNext = 3863245i32;
                    };
                } else if (__value__ == (3863245i32)) {
                    if ((_last_3862989 != null && ((_last_3862989 : Dynamic).__nil__ == null || !(_last_3862989 : Dynamic).__nil__))) {
                        _gotoNext = 3863260i32;
                    } else {
                        _gotoNext = 3863341i32;
                    };
                } else if (__value__ == (3863260i32)) {
                    (@:checkr _last_3862989 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3863021 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3863021 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862768] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862768] = _e_3863021;
                    _gotoNext = 3863341i32;
                } else if (__value__ == (3863341i32)) {
                    return _e_3863021;
                    {
                        final __tmp__0 = _e_3863021;
                        final __tmp__1 = (@:checkr _e_3863021 ?? throw "null pointer dereference")._nextHash;
                        _last_3862989 = __tmp__0;
                        _e_3863021 = __tmp__1;
                    };
                    _gotoNext = 3863017i32;
                } else if (__value__ == (3863374i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3863393i32;
                    } else {
                        _gotoNext = 3863436i32;
                    };
                } else if (__value__ == (3863393i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3863436i32;
                } else if (__value__ == (3863436i32)) {
                    _e_3863436 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3863436 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862768] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3863436 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3863541i32;
                    } else {
                        _gotoNext = 3863640i32;
                    };
                } else if (__value__ == (3863541i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3863640i32;
                } else if (__value__ == (3863640i32)) {
                    (@:checkr _e_3863436 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3863764i32;
                    } else {
                        _gotoNext = 3863768i32;
                    };
                } else if (__value__ == (3863733i32)) {
                    (@:checkr _e_3863436 ?? throw "null pointer dereference")._stk[(_j_3863718 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3863718 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3863718++;
                    _gotoNext = 3863765i32;
                } else if (__value__ == (3863764i32)) {
                    _j_3863718 = 0i32;
                    _gotoNext = 3863765i32;
                } else if (__value__ == (3863765i32)) {
                    if (_j_3863718 < (_stk.length)) {
                        _gotoNext = 3863733i32;
                    } else {
                        _gotoNext = 3863768i32;
                    };
                } else if (__value__ == (3863768i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3863785i32;
                    } else {
                        _gotoNext = 3863834i32;
                    };
                } else if (__value__ == (3863785i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3863834i32;
                } else if (__value__ == (3863834i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862768] = _e_3863436;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3863865i32;
                    } else {
                        _gotoNext = 3863900i32;
                    };
                } else if (__value__ == (3863865i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3863436;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3863436;
                    _gotoNext = 3863940i32;
                } else if (__value__ == (3863900i32)) {
                    _gotoNext = 3863900i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3863436;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3863436;
                    var __blank__ = 0i32;
                    _gotoNext = 3863940i32;
                } else if (__value__ == (3863940i32)) {
                    return _e_3863436;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
