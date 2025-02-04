package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3832391:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3832109:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3831814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3831694:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var searchBreak = false;
        var _last_3831662:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3831465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3831470_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3831441:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3831441 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3831554i32;
                    } else {
                        _gotoNext = 3831558i32;
                    };
                } else if (__value__ == (3831480i32)) {
                    _x_3831465 = _stk[(_i_3831470_0 : stdgo.GoInt)];
                    _h_3831441 = ((_h_3831441 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3831441 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3831441 = (_h_3831441 + (((new stdgo.GoUIntptr(_x_3831465) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3831470_0++;
                    _gotoNext = 3831555i32;
                } else if (__value__ == (3831554i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3831470_0 = __tmp__0;
                        _x_3831465 = __tmp__1;
                    };
                    _gotoNext = 3831555i32;
                } else if (__value__ == (3831555i32)) {
                    if (_i_3831470_0 < (_stk.length)) {
                        _gotoNext = 3831480i32;
                    } else {
                        _gotoNext = 3831558i32;
                    };
                } else if (__value__ == (3831558i32)) {
                    _h_3831441 = ((_h_3831441 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3831441 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3831441 = (_h_3831441 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3831681i32;
                } else if (__value__ == (3831681i32)) {
                    _e_3831694 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3831441] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3831690i32;
                } else if (__value__ == (3831690i32)) {
                    if (!searchBreak && ((_e_3831694 != null && ((_e_3831694 : Dynamic).__nil__ == null || !(_e_3831694 : Dynamic).__nil__)))) {
                        _gotoNext = 3831744i32;
                    } else {
                        _gotoNext = 3832047i32;
                    };
                } else if (__value__ == (3831744i32)) {
                    if ((((@:checkr _e_3831694 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3831694 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3831790i32;
                    } else {
                        _gotoNext = 3831810i32;
                    };
                } else if (__value__ == (3831790i32)) {
                    {
                        final __tmp__0 = _e_3831694;
                        final __tmp__1 = (@:checkr _e_3831694 ?? throw "null pointer dereference")._nextHash;
                        _last_3831662 = __tmp__0;
                        _e_3831694 = __tmp__1;
                    };
                    _gotoNext = 3831690i32;
                } else if (__value__ == (3831810i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3831893i32;
                    } else {
                        _gotoNext = 3831918i32;
                    };
                } else if (__value__ == (3831814i32)) {
                    _j_3831814++;
                    _gotoNext = 3831894i32;
                } else if (__value__ == (3831829i32)) {
                    if ((@:checkr _e_3831694 ?? throw "null pointer dereference")._stk[(_j_3831814 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3831814 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3831865i32;
                    } else {
                        _gotoNext = 3831814i32;
                    };
                } else if (__value__ == (3831865i32)) {
                    {
                        final __tmp__0 = _e_3831694;
                        final __tmp__1 = (@:checkr _e_3831694 ?? throw "null pointer dereference")._nextHash;
                        _last_3831662 = __tmp__0;
                        _e_3831694 = __tmp__1;
                    };
                    _gotoNext = 3831690i32;
                } else if (__value__ == (3831893i32)) {
                    _j_3831814 = 0i32;
                    _gotoNext = 3831894i32;
                } else if (__value__ == (3831894i32)) {
                    if (_j_3831814 < (_stk.length)) {
                        _gotoNext = 3831829i32;
                    } else {
                        _gotoNext = 3831918i32;
                    };
                } else if (__value__ == (3831918i32)) {
                    if ((_last_3831662 != null && ((_last_3831662 : Dynamic).__nil__ == null || !(_last_3831662 : Dynamic).__nil__))) {
                        _gotoNext = 3831933i32;
                    } else {
                        _gotoNext = 3832014i32;
                    };
                } else if (__value__ == (3831933i32)) {
                    (@:checkr _last_3831662 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3831694 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3831694 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3831441] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3831441] = _e_3831694;
                    _gotoNext = 3832014i32;
                } else if (__value__ == (3832014i32)) {
                    return _e_3831694;
                    {
                        final __tmp__0 = _e_3831694;
                        final __tmp__1 = (@:checkr _e_3831694 ?? throw "null pointer dereference")._nextHash;
                        _last_3831662 = __tmp__0;
                        _e_3831694 = __tmp__1;
                    };
                    _gotoNext = 3831690i32;
                } else if (__value__ == (3832047i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3832066i32;
                    } else {
                        _gotoNext = 3832109i32;
                    };
                } else if (__value__ == (3832066i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3832109i32;
                } else if (__value__ == (3832109i32)) {
                    _e_3832109 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3832109 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3831441] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3832109 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3832214i32;
                    } else {
                        _gotoNext = 3832313i32;
                    };
                } else if (__value__ == (3832214i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3832313i32;
                } else if (__value__ == (3832313i32)) {
                    (@:checkr _e_3832109 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3832437i32;
                    } else {
                        _gotoNext = 3832441i32;
                    };
                } else if (__value__ == (3832406i32)) {
                    (@:checkr _e_3832109 ?? throw "null pointer dereference")._stk[(_j_3832391 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3832391 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3832391++;
                    _gotoNext = 3832438i32;
                } else if (__value__ == (3832437i32)) {
                    _j_3832391 = 0i32;
                    _gotoNext = 3832438i32;
                } else if (__value__ == (3832438i32)) {
                    if (_j_3832391 < (_stk.length)) {
                        _gotoNext = 3832406i32;
                    } else {
                        _gotoNext = 3832441i32;
                    };
                } else if (__value__ == (3832441i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3832458i32;
                    } else {
                        _gotoNext = 3832507i32;
                    };
                } else if (__value__ == (3832458i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3832507i32;
                } else if (__value__ == (3832507i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3831441] = _e_3832109;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3832538i32;
                    } else {
                        _gotoNext = 3832573i32;
                    };
                } else if (__value__ == (3832538i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3832109;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3832109;
                    _gotoNext = 3832613i32;
                } else if (__value__ == (3832573i32)) {
                    _gotoNext = 3832573i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3832109;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3832109;
                    var __blank__ = 0i32;
                    _gotoNext = 3832613i32;
                } else if (__value__ == (3832613i32)) {
                    return _e_3832109;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
