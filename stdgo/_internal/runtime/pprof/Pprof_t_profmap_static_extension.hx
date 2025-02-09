package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3837447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3837165:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3836870:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3836718:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _i_3836526_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3836750:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3836521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3836497:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3836497 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836610i32;
                    } else {
                        _gotoNext = 3836614i32;
                    };
                } else if (__value__ == (3836536i32)) {
                    _x_3836521 = _stk[(_i_3836526_0 : stdgo.GoInt)];
                    _h_3836497 = ((_h_3836497 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836497 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836497 = (_h_3836497 + (((new stdgo.GoUIntptr(_x_3836521) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3836526_0++;
                    _gotoNext = 3836611i32;
                } else if (__value__ == (3836610i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3836526_0 = __tmp__0;
                        _x_3836521 = __tmp__1;
                    };
                    _gotoNext = 3836611i32;
                } else if (__value__ == (3836611i32)) {
                    if (_i_3836526_0 < (_stk.length)) {
                        _gotoNext = 3836536i32;
                    } else {
                        _gotoNext = 3836614i32;
                    };
                } else if (__value__ == (3836614i32)) {
                    _h_3836497 = ((_h_3836497 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836497 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836497 = (_h_3836497 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3836737i32;
                } else if (__value__ == (3836737i32)) {
                    _e_3836750 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836746i32)) {
                    if (!searchBreak && ((_e_3836750 != null && ((_e_3836750 : Dynamic).__nil__ == null || !(_e_3836750 : Dynamic).__nil__)))) {
                        _gotoNext = 3836800i32;
                    } else {
                        _gotoNext = 3837103i32;
                    };
                } else if (__value__ == (3836800i32)) {
                    if ((((@:checkr _e_3836750 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3836750 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3836846i32;
                    } else {
                        _gotoNext = 3836866i32;
                    };
                } else if (__value__ == (3836846i32)) {
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = (@:checkr _e_3836750 ?? throw "null pointer dereference")._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836866i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836949i32;
                    } else {
                        _gotoNext = 3836974i32;
                    };
                } else if (__value__ == (3836870i32)) {
                    _j_3836870++;
                    _gotoNext = 3836950i32;
                } else if (__value__ == (3836885i32)) {
                    if ((@:checkr _e_3836750 ?? throw "null pointer dereference")._stk[(_j_3836870 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3836870 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3836921i32;
                    } else {
                        _gotoNext = 3836870i32;
                    };
                } else if (__value__ == (3836921i32)) {
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = (@:checkr _e_3836750 ?? throw "null pointer dereference")._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836949i32)) {
                    _j_3836870 = 0i32;
                    _gotoNext = 3836950i32;
                } else if (__value__ == (3836950i32)) {
                    if (_j_3836870 < (_stk.length)) {
                        _gotoNext = 3836885i32;
                    } else {
                        _gotoNext = 3836974i32;
                    };
                } else if (__value__ == (3836974i32)) {
                    if ((_last_3836718 != null && ((_last_3836718 : Dynamic).__nil__ == null || !(_last_3836718 : Dynamic).__nil__))) {
                        _gotoNext = 3836989i32;
                    } else {
                        _gotoNext = 3837070i32;
                    };
                } else if (__value__ == (3836989i32)) {
                    (@:checkr _last_3836718 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3836750 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3836750 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836497] = _e_3836750;
                    _gotoNext = 3837070i32;
                } else if (__value__ == (3837070i32)) {
                    return _e_3836750;
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = (@:checkr _e_3836750 ?? throw "null pointer dereference")._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3837103i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3837122i32;
                    } else {
                        _gotoNext = 3837165i32;
                    };
                } else if (__value__ == (3837122i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3837165i32;
                } else if (__value__ == (3837165i32)) {
                    _e_3837165 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3837165 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3837165 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3837270i32;
                    } else {
                        _gotoNext = 3837369i32;
                    };
                } else if (__value__ == (3837270i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3837369i32;
                } else if (__value__ == (3837369i32)) {
                    (@:checkr _e_3837165 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3837493i32;
                    } else {
                        _gotoNext = 3837497i32;
                    };
                } else if (__value__ == (3837462i32)) {
                    (@:checkr _e_3837165 ?? throw "null pointer dereference")._stk[(_j_3837447 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3837447 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3837447++;
                    _gotoNext = 3837494i32;
                } else if (__value__ == (3837493i32)) {
                    _j_3837447 = 0i32;
                    _gotoNext = 3837494i32;
                } else if (__value__ == (3837494i32)) {
                    if (_j_3837447 < (_stk.length)) {
                        _gotoNext = 3837462i32;
                    } else {
                        _gotoNext = 3837497i32;
                    };
                } else if (__value__ == (3837497i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3837514i32;
                    } else {
                        _gotoNext = 3837563i32;
                    };
                } else if (__value__ == (3837514i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3837563i32;
                } else if (__value__ == (3837563i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3836497] = _e_3837165;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3837594i32;
                    } else {
                        _gotoNext = 3837629i32;
                    };
                } else if (__value__ == (3837594i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3837165;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3837165;
                    _gotoNext = 3837669i32;
                } else if (__value__ == (3837629i32)) {
                    _gotoNext = 3837629i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3837165;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3837165;
                    var __blank__ = 0i32;
                    _gotoNext = 3837669i32;
                } else if (__value__ == (3837669i32)) {
                    return _e_3837165;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
