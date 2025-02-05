package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_3864792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3864640:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _i_3864448_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3864419:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_3865369:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3865087:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var searchBreak = false;
        var _e_3864672:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3864443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3864419 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3864532i32;
                    } else {
                        _gotoNext = 3864536i32;
                    };
                } else if (__value__ == (3864458i32)) {
                    _x_3864443 = _stk[(_i_3864448_0 : stdgo.GoInt)];
                    _h_3864419 = ((_h_3864419 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3864419 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3864419 = (_h_3864419 + (((new stdgo.GoUIntptr(_x_3864443) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3864448_0++;
                    _gotoNext = 3864533i32;
                } else if (__value__ == (3864532i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3864448_0 = __tmp__0;
                        _x_3864443 = __tmp__1;
                    };
                    _gotoNext = 3864533i32;
                } else if (__value__ == (3864533i32)) {
                    if (_i_3864448_0 < (_stk.length)) {
                        _gotoNext = 3864458i32;
                    } else {
                        _gotoNext = 3864536i32;
                    };
                } else if (__value__ == (3864536i32)) {
                    _h_3864419 = ((_h_3864419 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3864419 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3864419 = (_h_3864419 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3864659i32;
                } else if (__value__ == (3864659i32)) {
                    _e_3864672 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864419] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3864668i32;
                } else if (__value__ == (3864668i32)) {
                    if (!searchBreak && ((_e_3864672 != null && ((_e_3864672 : Dynamic).__nil__ == null || !(_e_3864672 : Dynamic).__nil__)))) {
                        _gotoNext = 3864722i32;
                    } else {
                        _gotoNext = 3865025i32;
                    };
                } else if (__value__ == (3864722i32)) {
                    if ((((@:checkr _e_3864672 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3864672 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3864768i32;
                    } else {
                        _gotoNext = 3864788i32;
                    };
                } else if (__value__ == (3864768i32)) {
                    {
                        final __tmp__0 = _e_3864672;
                        final __tmp__1 = (@:checkr _e_3864672 ?? throw "null pointer dereference")._nextHash;
                        _last_3864640 = __tmp__0;
                        _e_3864672 = __tmp__1;
                    };
                    _gotoNext = 3864668i32;
                } else if (__value__ == (3864788i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3864871i32;
                    } else {
                        _gotoNext = 3864896i32;
                    };
                } else if (__value__ == (3864792i32)) {
                    _j_3864792++;
                    _gotoNext = 3864872i32;
                } else if (__value__ == (3864807i32)) {
                    if ((@:checkr _e_3864672 ?? throw "null pointer dereference")._stk[(_j_3864792 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3864792 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3864843i32;
                    } else {
                        _gotoNext = 3864792i32;
                    };
                } else if (__value__ == (3864843i32)) {
                    {
                        final __tmp__0 = _e_3864672;
                        final __tmp__1 = (@:checkr _e_3864672 ?? throw "null pointer dereference")._nextHash;
                        _last_3864640 = __tmp__0;
                        _e_3864672 = __tmp__1;
                    };
                    _gotoNext = 3864668i32;
                } else if (__value__ == (3864871i32)) {
                    _j_3864792 = 0i32;
                    _gotoNext = 3864872i32;
                } else if (__value__ == (3864872i32)) {
                    if (_j_3864792 < (_stk.length)) {
                        _gotoNext = 3864807i32;
                    } else {
                        _gotoNext = 3864896i32;
                    };
                } else if (__value__ == (3864896i32)) {
                    if ((_last_3864640 != null && ((_last_3864640 : Dynamic).__nil__ == null || !(_last_3864640 : Dynamic).__nil__))) {
                        _gotoNext = 3864911i32;
                    } else {
                        _gotoNext = 3864992i32;
                    };
                } else if (__value__ == (3864911i32)) {
                    (@:checkr _last_3864640 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3864672 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3864672 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864419] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864419] = _e_3864672;
                    _gotoNext = 3864992i32;
                } else if (__value__ == (3864992i32)) {
                    return _e_3864672;
                    {
                        final __tmp__0 = _e_3864672;
                        final __tmp__1 = (@:checkr _e_3864672 ?? throw "null pointer dereference")._nextHash;
                        _last_3864640 = __tmp__0;
                        _e_3864672 = __tmp__1;
                    };
                    _gotoNext = 3864668i32;
                } else if (__value__ == (3865025i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3865044i32;
                    } else {
                        _gotoNext = 3865087i32;
                    };
                } else if (__value__ == (3865044i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3865087i32;
                } else if (__value__ == (3865087i32)) {
                    _e_3865087 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3865087 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864419] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3865087 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3865192i32;
                    } else {
                        _gotoNext = 3865291i32;
                    };
                } else if (__value__ == (3865192i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3865291i32;
                } else if (__value__ == (3865291i32)) {
                    (@:checkr _e_3865087 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865415i32;
                    } else {
                        _gotoNext = 3865419i32;
                    };
                } else if (__value__ == (3865384i32)) {
                    (@:checkr _e_3865087 ?? throw "null pointer dereference")._stk[(_j_3865369 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3865369 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3865369++;
                    _gotoNext = 3865416i32;
                } else if (__value__ == (3865415i32)) {
                    _j_3865369 = 0i32;
                    _gotoNext = 3865416i32;
                } else if (__value__ == (3865416i32)) {
                    if (_j_3865369 < (_stk.length)) {
                        _gotoNext = 3865384i32;
                    } else {
                        _gotoNext = 3865419i32;
                    };
                } else if (__value__ == (3865419i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3865436i32;
                    } else {
                        _gotoNext = 3865485i32;
                    };
                } else if (__value__ == (3865436i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3865485i32;
                } else if (__value__ == (3865485i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864419] = _e_3865087;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3865516i32;
                    } else {
                        _gotoNext = 3865551i32;
                    };
                } else if (__value__ == (3865516i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3865087;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3865087;
                    _gotoNext = 3865591i32;
                } else if (__value__ == (3865551i32)) {
                    _gotoNext = 3865551i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3865087;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3865087;
                    var __blank__ = 0i32;
                    _gotoNext = 3865591i32;
                } else if (__value__ == (3865591i32)) {
                    return _e_3865087;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
