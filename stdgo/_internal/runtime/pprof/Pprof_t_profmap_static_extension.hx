package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3890373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3890091:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3889796:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3889676:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_3889644:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3889447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var searchBreak = false;
        var _i_3889452_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3889423:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3889423 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3889536i32;
                    } else {
                        _gotoNext = 3889540i32;
                    };
                } else if (__value__ == (3889462i32)) {
                    _x_3889447 = _stk[(_i_3889452_0 : stdgo.GoInt)];
                    _h_3889423 = ((_h_3889423 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3889423 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3889423 = (_h_3889423 + (((new stdgo.GoUIntptr(_x_3889447) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3889452_0++;
                    _gotoNext = 3889537i32;
                } else if (__value__ == (3889536i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3889452_0 = __tmp__0;
                        _x_3889447 = __tmp__1;
                    };
                    _gotoNext = 3889537i32;
                } else if (__value__ == (3889537i32)) {
                    if (_i_3889452_0 < (_stk.length)) {
                        _gotoNext = 3889462i32;
                    } else {
                        _gotoNext = 3889540i32;
                    };
                } else if (__value__ == (3889540i32)) {
                    _h_3889423 = ((_h_3889423 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3889423 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3889423 = (_h_3889423 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3889663i32;
                } else if (__value__ == (3889663i32)) {
                    _e_3889676 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889423] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3889672i32;
                } else if (__value__ == (3889672i32)) {
                    if (!searchBreak && ((_e_3889676 != null && ((_e_3889676 : Dynamic).__nil__ == null || !(_e_3889676 : Dynamic).__nil__)))) {
                        _gotoNext = 3889726i32;
                    } else {
                        _gotoNext = 3890029i32;
                    };
                } else if (__value__ == (3889726i32)) {
                    if ((((@:checkr _e_3889676 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3889676 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3889772i32;
                    } else {
                        _gotoNext = 3889792i32;
                    };
                } else if (__value__ == (3889772i32)) {
                    {
                        final __tmp__0 = _e_3889676;
                        final __tmp__1 = (@:checkr _e_3889676 ?? throw "null pointer dereference")._nextHash;
                        _last_3889644 = __tmp__0;
                        _e_3889676 = __tmp__1;
                    };
                    _gotoNext = 3889672i32;
                } else if (__value__ == (3889792i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3889875i32;
                    } else {
                        _gotoNext = 3889900i32;
                    };
                } else if (__value__ == (3889796i32)) {
                    _j_3889796++;
                    _gotoNext = 3889876i32;
                } else if (__value__ == (3889811i32)) {
                    if ((@:checkr _e_3889676 ?? throw "null pointer dereference")._stk[(_j_3889796 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3889796 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3889847i32;
                    } else {
                        _gotoNext = 3889796i32;
                    };
                } else if (__value__ == (3889847i32)) {
                    {
                        final __tmp__0 = _e_3889676;
                        final __tmp__1 = (@:checkr _e_3889676 ?? throw "null pointer dereference")._nextHash;
                        _last_3889644 = __tmp__0;
                        _e_3889676 = __tmp__1;
                    };
                    _gotoNext = 3889672i32;
                } else if (__value__ == (3889875i32)) {
                    _j_3889796 = 0i32;
                    _gotoNext = 3889876i32;
                } else if (__value__ == (3889876i32)) {
                    if (_j_3889796 < (_stk.length)) {
                        _gotoNext = 3889811i32;
                    } else {
                        _gotoNext = 3889900i32;
                    };
                } else if (__value__ == (3889900i32)) {
                    if ((_last_3889644 != null && ((_last_3889644 : Dynamic).__nil__ == null || !(_last_3889644 : Dynamic).__nil__))) {
                        _gotoNext = 3889915i32;
                    } else {
                        _gotoNext = 3889996i32;
                    };
                } else if (__value__ == (3889915i32)) {
                    (@:checkr _last_3889644 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3889676 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3889676 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889423] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889423] = _e_3889676;
                    _gotoNext = 3889996i32;
                } else if (__value__ == (3889996i32)) {
                    return _e_3889676;
                    {
                        final __tmp__0 = _e_3889676;
                        final __tmp__1 = (@:checkr _e_3889676 ?? throw "null pointer dereference")._nextHash;
                        _last_3889644 = __tmp__0;
                        _e_3889676 = __tmp__1;
                    };
                    _gotoNext = 3889672i32;
                } else if (__value__ == (3890029i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3890048i32;
                    } else {
                        _gotoNext = 3890091i32;
                    };
                } else if (__value__ == (3890048i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3890091i32;
                } else if (__value__ == (3890091i32)) {
                    _e_3890091 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3890091 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889423] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3890091 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3890196i32;
                    } else {
                        _gotoNext = 3890295i32;
                    };
                } else if (__value__ == (3890196i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3890295i32;
                } else if (__value__ == (3890295i32)) {
                    (@:checkr _e_3890091 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3890419i32;
                    } else {
                        _gotoNext = 3890423i32;
                    };
                } else if (__value__ == (3890388i32)) {
                    (@:checkr _e_3890091 ?? throw "null pointer dereference")._stk[(_j_3890373 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3890373 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3890373++;
                    _gotoNext = 3890420i32;
                } else if (__value__ == (3890419i32)) {
                    _j_3890373 = 0i32;
                    _gotoNext = 3890420i32;
                } else if (__value__ == (3890420i32)) {
                    if (_j_3890373 < (_stk.length)) {
                        _gotoNext = 3890388i32;
                    } else {
                        _gotoNext = 3890423i32;
                    };
                } else if (__value__ == (3890423i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3890440i32;
                    } else {
                        _gotoNext = 3890489i32;
                    };
                } else if (__value__ == (3890440i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3890489i32;
                } else if (__value__ == (3890489i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889423] = _e_3890091;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3890520i32;
                    } else {
                        _gotoNext = 3890555i32;
                    };
                } else if (__value__ == (3890520i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3890091;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3890091;
                    _gotoNext = 3890595i32;
                } else if (__value__ == (3890555i32)) {
                    _gotoNext = 3890555i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3890091;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3890091;
                    var __blank__ = 0i32;
                    _gotoNext = 3890595i32;
                } else if (__value__ == (3890595i32)) {
                    return _e_3890091;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
